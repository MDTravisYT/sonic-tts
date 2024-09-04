// ==========================================================================
// --------------------------------------------------------------------------
// Converting list files into equates files
// --------------------------------------------------------------------------

#include <stdio.h>
#include <windows.h>

// ==========================================================================
// --------------------------------------------------------------------------
// Assembler/CPU list
// --------------------------------------------------------------------------
//
// 	--- Example ---
//
// const char *TYPE [] = {	"Name",		"CPU1",
//						"CPU2",
//						"CPU3",
//						0	};
//
// --------------------------------------------------------------------------

	// --- AS ---

const char *AS [] = {		"AS",		"z80",
						"68k",
						0	};

	// --- ASM68k ---

const char *ASM68K [] = {	"asm68k",	"68k",
						0	};

// --------------------------------------------------------------------------
// Main assembler list
// --------------------------------------------------------------------------

const char **ASM [] = {		AS,
				ASM68K,
				0	};

const char **Assem; int AssemID;
const char *CPU; int CPUID;
char *FileName;

// --------------------------------------------------------------------------
// Label/offset structure
// --------------------------------------------------------------------------

struct List

{
	u_int Offset;
	char Name [0x100];
	char Comment [0x200];
};

#define LABEL_SIZE 0x400

int LabelLoc = 0x00;
int LabelSize = (LABEL_SIZE * 2);
List *Label = NULL;

// ==========================================================================
// --------------------------------------------------------------------------
// Macro to perform fputs but with an snprintf
// --------------------------------------------------------------------------

#define fputsn(STRNG,...)\
{\
	snprintf (ST, STS, STRNG, ##__VA_ARGS__);\
	fputs (ST, File);\
	fputc (0x0D, File);\
	fputc (0x0A, File);\
}

// ==========================================================================
// --------------------------------------------------------------------------
// Subroutine to find an ASCII hex number
// --------------------------------------------------------------------------

void FindHex (char *Memory, u_int &MemoryLoc)

{
	u_char Byte = Memory [MemoryLoc];
	while ((Byte < '0' || Byte > '9') && (Byte < 'A' || Byte > 'F') && (Byte != 0x0A || Byte != 0x0D))
	{
		Byte = Memory [++MemoryLoc];
	}
}

// ==========================================================================
// --------------------------------------------------------------------------
// Subroutine to get an ASCII hexadecimal number, and convert to an integer
// --------------------------------------------------------------------------

u_int GetHex (char *Memory, u_int &MemoryLoc)

{
	u_int Value = 0x00;
	u_char Byte = Memory [MemoryLoc];
	while (Byte >= '0' && Byte <= '9' || Byte >= 'A' && Byte <= 'F')
	{
		if (Byte > '9')
		{
			Byte -= 'A' - ('9' + 0x01);
		}
		Byte -= '0';
		Value <<= 0x04;
		Value |= Byte & 0x0F;
		Byte = Memory [++MemoryLoc];
	}
	return (Value);
}

// ==========================================================================
// --------------------------------------------------------------------------
// Subroutine to get ASCII text as a label
// --------------------------------------------------------------------------

int GetLabel (u_char *Text, char *Memory, u_int &MemoryLoc)

{
	u_int TextLoc = 0x00;
	u_char Byte = Memory [MemoryLoc];
	while (Byte != '	' && Byte != ' ' && Byte != ':')
	{
		Text [TextLoc++] = Byte;
		Byte = Memory [++MemoryLoc];
	}
	if (Byte == ':')
	{
		Text [TextLoc++] = Byte;
	}
	Text [TextLoc] = 0x00;
	return (TextLoc);
}

// ==========================================================================
// --------------------------------------------------------------------------
// Subroutine to read a memory list file as written by "AS" assembler
// --------------------------------------------------------------------------

void ReadAS (char *Memory, u_int MemorySize)

{
	u_char Text [0x1000]; u_int TextLoc;
	u_int MemoryLoc = 0x00;
	u_char Byte;
	u_int Value;
	Label [LabelLoc].Comment [0x00] = 0x00;
	while (MemoryLoc < MemorySize)
	{
		u_int SourceLoc = MemoryLoc + 0x28;	// Start of line code
		Byte = Memory [MemoryLoc++];
		if (Byte != 0x0D && Byte != 0x0C)
		{
			MemoryLoc += 0x07;
			if ((Memory [MemoryLoc++] & 0xFF) == '/')
			{
				FindHex (Memory, MemoryLoc);
				Value = GetHex (Memory, MemoryLoc);
				MemoryLoc += 0x03;
				if ((Memory [MemoryLoc++] & 0xFF) == '=')
				{
					// --- Equate ---

					FindHex (Memory, MemoryLoc);
					Value = GetHex (Memory, MemoryLoc);
					u_int CommentLoc = MemoryLoc - 0x01;
					u_int CommentStart = -0x01;
					do
					{
						Byte = Memory [++CommentLoc];
						if (Byte == ';')
						{
							CommentStart = CommentLoc;
						}
					}
					while (Byte != 0x0D && Byte != 0x0A);
					if (CommentStart != -0x01)
					{
						Memory [CommentLoc] = 0x00;
						const char *CommOff = (const char*) Memory + CommentStart;
						strcpy (Label [LabelLoc].Comment, CommOff);
						Memory [CommentLoc] = Byte;
					}
				}
				MemoryLoc = SourceLoc;
				Byte = Memory [MemoryLoc];
				if (Byte != 0x0D && Byte != 0x0C)
				{
					if (Byte != ';')
					{
						// --- Non-comment ---

						bool Found = TRUE;
						if (Byte == ' ' || Byte == '	')
						{
							// --- Indent Label ---

							do
							{
								Byte = Memory [++MemoryLoc];
							}
							while (Byte == '	' || Byte == ' ');
							if (Byte == '+' || Byte == '-')
							{
								Found = FALSE;
							}
							else
							{
								TextLoc = GetLabel (Text, Memory, MemoryLoc);
								if (Text [--TextLoc] != ':')
								{
									Found = FALSE;
								}
								Text [TextLoc] = 0x00;
							}
						}
						else
						{
							// --- Non-Indent Label ---

							if (Byte == '+' || Byte == '-')
							{
								Found = FALSE;
							}
							else
							{
								TextLoc = GetLabel (Text, Memory, MemoryLoc);
								if (Text [TextLoc - 0x01] == ':')
								{
									Text [--TextLoc] = 0x00;
								}
							}
						}
						if (Found == TRUE)
						{
							if (LabelLoc >= (LabelSize - LABEL_SIZE))
							{
								LabelSize += LABEL_SIZE;
								List *NewLabel = (List*) realloc (Label, LabelSize * sizeof (List));
								if (NewLabel != NULL)
								{
									Label = NewLabel;
								}
							}
							const char *TextOff = (const char*) Text;
							Label [LabelLoc].Offset = Value;
							strcpy (Label [LabelLoc++].Name, TextOff);
							Label [LabelLoc].Comment [0x00] = 0x00;
						}
					}
				}
			}
		}
		while (Byte != 0x0A)
		{
			Byte = Memory [MemoryLoc++];
		}
	}
}

// ==========================================================================
// --------------------------------------------------------------------------
// Subroutine to read a memory list file as written by "asm68k" assembler
// --------------------------------------------------------------------------

void ReadASM68K (char *Memory, u_int MemorySize)

{
	u_char Text [0x1000]; u_int TextLoc;
	u_int MemoryLoc = 0x00;
	u_char Byte;
	u_int Value;
	Label [LabelLoc].Comment [0x00] = 0x00;
	while (MemoryLoc < MemorySize)
	{

		u_int SourceLoc = MemoryLoc + 0x24;	// Start of line code
		Byte = Memory [MemoryLoc++];
		if (Byte != 0x0D)
		{
			FindHex (Memory, MemoryLoc);
			Value = GetHex (Memory, MemoryLoc);
			MemoryLoc++;
			if ((Memory [MemoryLoc++] & 0xFF) == '=')
			{
				// --- Equate ---

				FindHex (Memory, MemoryLoc);
				Value = GetHex (Memory, MemoryLoc);
				u_int CommentLoc = MemoryLoc - 0x01;
				u_int CommentStart = -0x01;
				do
				{
					Byte = Memory [++CommentLoc];
					if (Byte == ';')
					{
						CommentStart = CommentLoc;
					}
				}
				while (Byte != 0x0D && Byte != 0x0A);
				if (CommentStart != -0x01)
				{
					Memory [CommentLoc] = 0x00;
					const char *CommOff = (const char*) Memory + CommentStart;
					strcpy (Label [LabelLoc].Comment, CommOff);
					Memory [CommentLoc] = Byte;
				}
			}
			MemoryLoc = SourceLoc;
			Byte = Memory [MemoryLoc];
			if (Byte != 0x0D && Byte != 0x0C)
			{
				if (Byte != ';')
				{
					// --- Non-comment ---

					bool Found = TRUE;
					if (Byte == ' ' || Byte == '	')
					{
						// --- Indent Label ---

						do
						{
							Byte = Memory [++MemoryLoc];
						}
						while (Byte == '	' || Byte == ' ');
						if (Byte == '@')
						{
							Found = FALSE;
						}
						else
						{
							TextLoc = GetLabel (Text, Memory, MemoryLoc);
							if (Text [--TextLoc] != ':')
							{
								Found = FALSE;
							}
							Text [TextLoc] = 0x00;
						}
					}
					else
					{
						// --- Non-Indent Label ---

						if (Byte == '@')
						{
							Found = FALSE;
						}
						else
						{
							TextLoc = GetLabel (Text, Memory, MemoryLoc);
							if (Text [TextLoc - 0x01] == ':')
							{
								Text [--TextLoc] = 0x00;
							}
						}
					}
					if (Found == TRUE)
					{
						if (LabelLoc >= (LabelSize - LABEL_SIZE))
						{
							LabelSize += LABEL_SIZE;
							List *NewLabel = (List*) realloc (Label, LabelSize * sizeof (List));
							if (NewLabel != NULL)
							{
								Label = NewLabel;
							}
						}
						const char *TextOff = (const char*) Text;
						Label [LabelLoc].Offset = Value;
						strcpy (Label [LabelLoc++].Name, TextOff);
						Label [LabelLoc].Comment [0x00] = 0x00;
					}
				}
			}
		}
		while (Byte != 0x0A)
		{
			Byte = Memory [MemoryLoc++];
		}
	}
}

// ==========================================================================
// --------------------------------------------------------------------------
// Subroutine to load the Assembler and CPU type from the arguements list
// --------------------------------------------------------------------------

bool GetType (char **ArgList, int &ArgCount)

{
	char *Entry = ArgList [ArgCount++];
	AssemID = -0x01;
	for ( ; ; )
	{
		Assem = ASM [++AssemID];
		if (Assem == 0)
		{
			return (FALSE);
		}
		if ((strcmp (*Assem, Entry)) == 0)
		{
			break;
		}
	}
	Entry = ArgList [ArgCount++];
	CPUID = 0x00;
	for ( ; ; )
	{
		CPU = Assem [++CPUID];
		if (CPU == 0)
		{
			return (FALSE);
		}
		if ((strcmp (CPU, Entry)) == 0)
		{
			break;
		}
	}
	FileName = ArgList [ArgCount++];
	return (TRUE);
}

// ==========================================================================
// --------------------------------------------------------------------------
// Main Routine
// --------------------------------------------------------------------------

int main (int ArgNumber, char **ArgList, char **EnvList)

{
	if (ArgNumber <= 0x01)
	{
		printf ("ListEqu - by MarkeyJester\n\n");
		printf (" -> Arguements: ListEqu.exe INASM INCPU Input.lst OUTASM OUTCPU Output.asm\n\n");
		printf ("    This tool will convert a listings file into an equates file.\n\n");
		printf ("      INASM      = Assembler that produced the list file\n");
		printf ("      INCPU      = CPU the assembler assembled with\n");
		printf ("      Input.lst  = The list file to convert\n");
		printf ("      OUTASM     = Assembler to create the equates file for\n");
		printf ("      OUTCPU     = CPU that the assembler will assemble the equates file with\n");
		printf ("      Output.asm = The equates filename to save as\n");
		printf ("\nPress enter key to continue...\n");
		fflush (stdin);
		getchar ( );
		printf (" -> Supported assemblers/CPUs:\n");
		AssemID = -0x01;
		for ( ; ; )
		{
			Assem = ASM [++AssemID];
			if (Assem == 0)
			{
				break;
			}
			CPUID = -0x01;
			printf ("\n    %s:\n", Assem [++CPUID]);
			for ( ; ; )
			{
				CPU = Assem [++CPUID];
				if (CPU == 0)
				{
					break;
				}
				printf ("            %s\n", CPU);
			}
		}
		printf ("\nPress enter key to exit...\n");
		fflush (stdin);
		getchar ( );
		return (0x00);
	}
	int ArgCount = 0x01;
	FILE *File;

// --------------------------------------------------------------------------
// Loading listings
// --------------------------------------------------------------------------

	if ((GetType (ArgList, ArgCount)) == FALSE)
	{
		return (0x00);
	}
	if ((File = fopen (FileName, "rb")) == NULL)
	{
		printf ("ListEqu: Error, could not open \"%s\"\n", FileName);
		return (0x00);
	}
	fseek (File, 0x00, SEEK_END);
	u_int InputSize = ftell (File);
	char *Input = (char*) malloc (InputSize);
	if (Input == NULL)
	{
		fclose (File);
		printf ("ListEqu: Error, could not allocate input memory\n");
		return (0x00);
	}
	rewind (File);
	fread (Input, 0x01, InputSize, File);
	fclose (File);

	Label = (List*) malloc (LabelSize * sizeof (List));

	switch (AssemID)
	{
		case 0x00:	// AS
		{
			ReadAS (Input, InputSize);
		}
		break;
		case 0x01:	// ASM68K
		{
			ReadASM68K (Input, InputSize);
		}
		break;
	}
	LabelSize = LabelLoc;
	free (Input);

// --------------------------------------------------------------------------
// Creating equates
// --------------------------------------------------------------------------

	int STS = 0x1000;
	char ST [STS];
	char FileIn [0x1000];
	strcpy (FileIn, FileName);
	if ((GetType (ArgList, ArgCount)) == FALSE)
	{
		return (0x00);
	}
	if ((File = fopen (FileName, "wb")) == NULL)
	{
		free (Label);
		printf ("ListEqu: Error, could not create \"%s\"\n", FileName);
		return (0x00);
	}
	fputsn ("; ===========================================================================");
	fputsn ("; ---------------------------------------------------------------------------");
	fputsn ("; ListEqu.exe generated from \"%s\"", FileIn);
	fputsn ("; ---------------------------------------------------------------------------");
	fputsn ("");
	for (LabelLoc = 0x00; LabelLoc < LabelSize; LabelLoc++)
	{
		switch (AssemID)
		{
			case 0x00:	// AS
			{
				switch (CPUID)
				{
					case 0x01:	// z80
					{
						fputsn ("%s = 0%Xh %s", Label [LabelLoc].Name, Label [LabelLoc].Offset, Label [LabelLoc].Comment);
					}
					break;
					case 0x02:	//  68k
					{
						fputsn ("%s = $%X %s", Label [LabelLoc].Name, Label [LabelLoc].Offset, Label [LabelLoc].Comment);
					}
					break;
				}
			}
			break;
			case 0x01:	// ASM68K
			{
				switch (CPUID)
				{
					case 0x01:	//  68k
					{
						fputsn ("%s = $%X %s", Label [LabelLoc].Name, Label [LabelLoc].Offset, Label [LabelLoc].Comment);
					}
					break;
				}
			}
			break;
		}
	}
	fputsn ("");
	fputsn ("; ===========================================================================");
	fclose (File);
	free (Label);
	return (0x00);
}

// ==========================================================================
