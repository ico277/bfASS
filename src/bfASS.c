#include <stdio.h>
#include <string.h>
#include <stdbool.h>

bool starts_with(char* str, char* prefix) {
    
}


int main(int argc, char** argv) {
    // use stdin and stdout by default
    FILE* in = stdin;
    FILE* out = stdout;
#if defined(__x86_64__)
    char* target = "x86_64"; 
#elif defined(__aarch64__)
    char* target = "aarch64";
#else
#endif

    for(int i = 1; i < argc; i++) {
        char* arg = argv[i];
        if (strcmp(arg, "-i") || strcmp(arg, "--input")) {
            
        } 
    } 
}
