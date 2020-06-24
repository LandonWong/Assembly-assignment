int
myatoi(const char *nptr){
	while(*nptr == '\n' || *nptr == ' ' || *nptr == '\t')
		nptr++;
L:	return *nptr;
}
