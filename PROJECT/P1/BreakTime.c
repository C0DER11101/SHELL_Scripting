#include<SDL2/SDL_image.h>
#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>

extern SDL_Window*win;
extern SDL_Surface*sur;

bool Init();
SDL_Surface*loadSurface(const char*);

int main(void)
{
	if(!Init())
	{
		printf("%s\n", SDL_GetError());
		return 0;
	}

	SDL_Surface*image=loadSurface("/home/priyanuj/BreakTime.png");

	if(image==NULL)
	{
		printf("%s\n", IMG_GetError());
		return 0;
	}

	else
	{
		SDL_Event e; // event
		bool quit=false;
		SDL_Rect stretch;

		stretch.x=0;
		stretch.y=0;
		stretch.w=600;
		stretch.h=600;

		while(!quit)
		{
			while(SDL_PollEvent(&e)!=0)
			{
				if(e.type==SDL_QUIT)
					quit=true;
			}

			//SDL_BlitSurface(image, NULL, sur, NULL);
			SDL_BlitScaled(image, NULL, sur, &stretch); // stretching the image!!!
			SDL_UpdateWindowSurface(win);
		}
	}

	SDL_FreeSurface(image);
	SDL_DestroyWindow(win);

	IMG_Quit();
	SDL_Quit();

	return 0;
}
