// ==========================================================================
// --------------------------------------------------------------------------
// Checksum Fixer
// --------------------------------------------------------------------------

#include <stdio.h>
#include <windows.h>

int main (int ArgNumber, char **ArgList, char **EnvList)

{
	if (ArgNumber <= 0x01)
	{
		printf ("Checksum Fixer - by MarkeyJester\n\n -> Arguments are: CheckFix.exe Input.bin\n\n    This tool will use the header information of the ROM to correctly\n    generate the right checksum value\n\nPress enter key to exit...\n");
		getchar ( );
	}
	else
	{
		FILE *File;
		if ((File = fopen (ArgList [0x01], "r+b")) == NULL)
		{
			printf ("CheckFix: Error, could not open %s\n", ArgList [0x01]);
		}
		else
		{
			fseek (File, 0x00, SEEK_END);
			int MemorySize = ftell (File);
			rewind (File);
			char *Memory = (char*) malloc (MemorySize);
			if (Memory == NULL)
			{
				fclose (File);
				printf ("CheckFix: Error, not enough memory\n");
			}
			else
			{
				fread (Memory, MemorySize, 0x01, File);

				int MemoryLoc, CheckSize, CheckValue, CheckWord;

				CheckSize = (Memory [0x0001A4] & 0xFF) << 0x18;
				CheckSize |= (Memory [0x0001A5] & 0xFF) << 0x10;
				CheckSize |= (Memory [0x0001A6] & 0xFF) << 0x08;
				CheckSize |= Memory [0x0001A7] & 0xFF;
				CheckSize = ((CheckSize + 0x01) - 0x200) / 0x02;
				for (MemoryLoc = 0x00200, CheckValue = 0x00; CheckSize > 0x00; CheckSize--)
				{
					CheckWord = (Memory [MemoryLoc++] & 0xFF) << 0x08;
					CheckWord |= Memory [MemoryLoc++] & 0xFF;
					CheckValue += CheckWord;
				}
				Memory [0x00018E] = CheckValue >> 0x08;
				Memory [0x00018F] = CheckValue;
				rewind (File);
				fwrite (Memory, MemorySize, 0x01, File);
				fclose (File);
				free (Memory);
			}
		}
	}
	return (0x00);
}

// ==========================================================================
