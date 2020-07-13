int myatoi(const char *nptr){
	int sign = 1;
	int result = 0;
	while(*nptr == '\n' || *nptr == '\t' || *nptr == ' ')
		nptr++;
	if(*nptr == '+'){
		nptr++;
	}else if(*nptr == '-'){
		sign = 0;
		nptr++;
	}
	while(*nptr >= '0' && *nptr <= '9'){
		result = result * 10 + *nptr - '0';
		nptr++;
	}
	return sign ? result : -result;
}
