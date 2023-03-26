#include<SDL2/SDL_image.h>
#include<stdio.h>
#include<stdbool.h>

SDL_Window*win=NULL;
SDL_Surface*sur=NULL;

bool Init()
{
	if(SDL_Init(SDL_INIT_VIDEO)!=0)
		return false;

	win=SDL_CreateWindow("BREAK TIME", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 601, 600, SDL_WINDOW_SHOWN);

	if(win==NULL)
		return false;
	int img_flag=IMG_INIT_PNG;

	if(!(IMG_Init(img_flag) & img_flag))
	{
		printf("%s\n", IMG_GetError());
		return false;
	}

	sur=SDL_GetWindowSurface(win);

	return true;
}

SDL_Surface*loadSurface(const char*path)
{
	SDL_Surface*optSurf=NULL;
	SDL_Surface*loadedSurf=IMG_Load(path);

	if(loadSurface==NULL)
		return NULL;
	/* optimize the surface */
	optSurf=SDL_ConvertSurface(loadedSurf, (*sur).format, 0);

	if(optSurf==NULL)
		return NULL;

	SDL_FreeSurface(loadedSurf);

	return optSurf;
}
