// ==========================================================================
// --------------------------------------------------------------------------
// Converting list files into equates files
// --------------------------------------------------------------------------

#include <stdio.h>
#include <windows.h>

// ==========================================================================
// --------------------------------------------------------------------------
// Main Routine
// --------------------------------------------------------------------------

int main (int ArgNumber, char **ArgList, char **EnvList)

{
	printf ("AddDAC - by MarkeyJester\n\n");
	if (ArgNumber <= 0x01)
	{
		printf (" -> Arguements: AddDAC.exe music81.bin music82.bin music83.bin etc...\n\n");
		printf ("    This tool will add an extra DAC channel to SMPS music\n\n");
		printf ("\nPress enter key to exit...\n");
		fflush (stdin);
		getchar ( );
		return (0x00);
	}
	int ArgCount;
	for (ArgCount = 0x01; ArgCount < ArgNumber; ArgCount++)
	{
		printf (" -> %s\n", ArgList [ArgCount]);
		FILE *File = fopen (ArgList [ArgCount], "rb");
		if (File == NULL)
		{
			printf ("    Error; could not open the file...\n");
			continue;
		}
		fseek (File, 0x00, SEEK_END);
		int MemorySize = ftell (File);
		char *Memory = (char*) malloc (MemorySize + 0x05);
		if (Memory == NULL)
		{
			printf ("    Error; could not allocate enough memory...\n");
			continue;
		}
		rewind (File);
		int MemoryLoc = 0x00;
		u_short Word = fgetc (File) << 0x08;
		Word |= fgetc (File) & 0xFF;
		Word += 0x04;
		Memory [MemoryLoc++] = Word >> 0x08;				// FM Voice Pointer
		Memory [MemoryLoc++] = Word;					// ''
		int CountFM = fgetc (File) - 0x01;
		Memory [MemoryLoc++] = CountFM + 0x01 + 0x01;			// FM channels
		int CountPSG = fgetc (File);
		Memory [MemoryLoc++] = CountPSG;				// PSG channels
		Memory [MemoryLoc++] = fgetc (File);				// Tempo
		Memory [MemoryLoc++] = fgetc (File);				// ''
		Word = fgetc (File) << 0x08;
		Word |= fgetc (File) & 0xFF;
		Word += 0x04;
		Memory [MemoryLoc++] = Word >> 0x08;				// DAC 1 Pointer
		Memory [MemoryLoc++] = Word;					// ''
		Memory [MemoryLoc++] = fgetc (File);				// DAC 1 Volume/Pitch (unused here...)
		Memory [MemoryLoc++] = fgetc (File);				// ''

		Memory [MemoryLoc++] = ((MemorySize + 0x04) >> 0x08) & 0xFF; 	// DAC 2 Pointer
		Memory [MemoryLoc++] = (MemorySize + 0x04) & 0xFF;		// ''
		Memory [MemoryLoc++] = 0x00;					// DAC 2 Volume/Pitch (unused here...)
		Memory [MemoryLoc++] = 0x00;					// ''

		while (CountFM-- > 0x00)
		{
			Word = fgetc (File) << 0x08;
			Word |= fgetc (File) & 0xFF;
			Word += 0x04;
			Memory [MemoryLoc++] = Word >> 0x08;			// FM Pointer
			Memory [MemoryLoc++] = Word;				// ''
			Memory [MemoryLoc++] = fgetc (File);			// FM Volume/Pitch
			Memory [MemoryLoc++] = fgetc (File);			// ''
		}
		while (CountPSG-- > 0x00)
		{
			Word = fgetc (File) << 0x08;
			Word |= fgetc (File) & 0xFF;
			Word += 0x04;
			Memory [MemoryLoc++] = Word >> 0x08;			// PSG Pointer
			Memory [MemoryLoc++] = Word;				// ''
			Memory [MemoryLoc++] = fgetc (File);			// PSG Volume/Pitch
			Memory [MemoryLoc++] = fgetc (File);			// ''
			Memory [MemoryLoc++] = fgetc (File);			// PSG Voice ID
			Memory [MemoryLoc++] = fgetc (File);			// ''
		}
		MemorySize += 0x04;
		while (MemoryLoc < MemorySize)
		{
			Memory [MemoryLoc++] = fgetc (File);			// SMPS tracker data, etc...
		}
		Memory [MemorySize++] = 0xF2;					// Null out DAC 2 channel
		fclose (File);
		File = fopen (ArgList [ArgCount], "wb");
		if (File == NULL)
		{
			printf ("    Error; could not create the file...\n");
			continue;
		}
		for (MemoryLoc = 0x00; MemoryLoc < MemorySize; MemoryLoc++)
		{
			fputc (Memory [MemoryLoc], File);
		}
		fclose (File);
		free (Memory);
	}
	printf ("\nPress enter key to exit...\n");
	fflush (stdin);
	getchar ( );
	return (0x00);
}

// ==========================================================================
