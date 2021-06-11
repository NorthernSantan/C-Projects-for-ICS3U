#include <stdio.h>
#include <math.h>
#define MIN_INPUT 0
#define MAX_INPUT 1000


int getValidInput (char *prompt) {

	int input;

	printf ("%s", prompt);
	scanf ("%i", &input);
	
	if (input < MIN_INPUT || input > MAX_INPUT) {
		getValidInput(prompt);
	}
	
	return input;
	
}

int main() {
	int numCircles;
	char prompt[] = "Enter the number of circles you wish to enter (Between 0 and 1000) : ";
	float circleRadius[MAX_INPUT];
	float circleArea[MAX_INPUT];
	float circleCircumfrence[MAX_INPUT];

	
	numCircles = getValidInput(prompt);
	
	for (int i = 0; i<numCircles; i++) {
		do {
			printf ("For circle %i please enter the radius : ", i+1);
			scanf ("%f", &circleRadius[i]);
			getchar();
		} while (circleRadius[i] < 0 || circleRadius[i] > 100);
		
		circleArea[i] = M_PI*pow(circleRadius[i],2);
		circleCircumfrence[i] = 2*M_PI*circleRadius[i];			
	
	}
	
	printf ("%15s", "circle");
	printf ("%15s", "radius");
	printf ("%15s", "area");
	printf ("%15s", "circumfrence");
	printf ("\n");
	
	for (int j=0; j<numCircles; j++) {
		if ((500 < circleArea[j] < 1000) || (circleCircumfrence[j] < 80)) {
			printf ("%15i%15.3f%15.3f%15.3f\n", j+1, circleRadius[j], circleArea[j], circleCircumfrence[j]);
		}
	}
	
	
	return 0;
}
