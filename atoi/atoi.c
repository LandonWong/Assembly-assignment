int
myatoi(const char *nptr){
	int sign,result;
	sign = 1;
	result = 0;
	while(*nptr == '\n' || *nptr == ' ' || *nptr == '\t')
		nptr++;
	if(*nptr == '-'){
		sign = -1;
		nptr++;
	}else if(*nptr == '+'){
		nptr++;
	}
	while(*nptr >= '0' && *nptr <= '9'){
		result = result * 10;
		result = result + *nptr - '0';
		if(result > 0x70000)
			return 0x7fffffff;
		nptr++;
	}
	return sign * result;
}
