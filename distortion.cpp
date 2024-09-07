#include<iostream>
#include<cmath>
using namespace std;

void *readData(char *srcFilePath, size_t *byteLength)
{
	FILE *pFile = fopen(srcFilePath, "rb");
    if (pFile == NULL)
    {
        printf("Failed to open input file. 1\n");
        return 0;
    }
	fseek(pFile, 0, SEEK_END);
    *byteLength = ftell(pFile);
    fclose(pFile);
    //unsigned char *byteBuf = ( unsigned char *)malloc((*byteLength)*sizeof(unsigned char)); //sizeof(char)==1
	void *byteBuf = ( void *)malloc((*byteLength)*sizeof(unsigned char));
    pFile = fopen(srcFilePath, "rb");
    if (pFile == NULL)
    {
        printf("Failed to open input file. 2\n");
        return 0;
    }
    fread(byteBuf, 1, *byteLength, pFile);
    fclose(pFile);
    return byteBuf;
}
void print_doubleerror(double *ori_data,double *data,int nbEle){
	size_t i = 0;
	double Max = 0, Min = 0, diffMax = 0;     
	Max = ori_data[0];
	Min = ori_data[0];
	nbEle=nbEle>>3;
	diffMax = fabs(data[0] - ori_data[0]);
	double sum1 = 0, sum2 = 0, sum22 = 0;
	
	for (i = 0; i < nbEle; i++)
	{
		sum1 += ori_data[i];
		sum2 += data[i];
		sum22 += data[i]*data[i];
	}
	double mean1 = sum1/nbEle;
	double mean2 = sum2/nbEle;
	
	double sum3 = 0, sum4 = 0;
	double sum = 0, prodSum = 0, relerr = 0;

	double maxpw_relerr = 0; 
	for (i = 0; i < nbEle; i++)
	{
		if (Max < ori_data[i]) Max = ori_data[i];
		if (Min > ori_data[i]) Min = ori_data[i];
		
		float err = fabs(data[i] - ori_data[i]);
		if(ori_data[i]!=0)
		{
			relerr = err/fabs(ori_data[i]);
			//float rerr = err/0.0020479534287005662918;
			//if(rerr>0.001)
			//{printf("i=%zu, %.30G\n", i, relerr); break;}
			if(maxpw_relerr<relerr)
				maxpw_relerr = relerr;
		}

		if (diffMax < err)
			diffMax = err;
		prodSum += (ori_data[i]-mean1)*(data[i]-mean2);
		sum3 += (ori_data[i] - mean1)*(ori_data[i]-mean1);
		sum4 += (data[i] - mean2)*(data[i]-mean2);
		sum += err*err;	
	}
	double std1 = sqrt(sum3/nbEle);
	double std2 = sqrt(sum4/nbEle);
	double ee = prodSum/nbEle;
	double acEff = ee/std1/std2;

	double mse = sum/nbEle;
	double range = Max - Min;
	double psnr = 20*log10(range)-10*log10(mse);
	double nrmse = sqrt(mse)/range;
	//double compressionRatio = 1.0*nbEle*sizeof(float)/byteLength;
	double normErr = sqrt(sum);
	double normErr_norm = normErr/sqrt(sum22);		
	printf ("nrmse=%.4g max_abs=%.5g psnr=%.3f\n",nrmse,diffMax,psnr);
	// printf ("Min=%.20G, Max=%.20G, range=%.20G\n", Min, Max, range);
	// printf ("Max absolute error = %.10f\n", diffMax);
	// printf ("Max relative error = %f\n", diffMax/(Max-Min));
	// printf ("Max pw relative error = %f\n", maxpw_relerr);
	// printf ("PSNR = %f, NRMSE= %.20G\n", psnr,nrmse);
	// printf ("normError = %f, normErr_norm = %f\n", normErr, normErr_norm);
	// printf ("acEff=%f\n", acEff);	
	//printf ("compressionRatio=%f\n", compressionRatio);
	
	free(ori_data);
	free(data);	
}

void print_floaterror(float *ori_data,float *data,int nbEle){
	size_t i = 0;
	double Max = 0, Min = 0, diffMax = 0;     
	Max = ori_data[0];
	Min = ori_data[0];
	nbEle=nbEle>>2;
	diffMax = fabs(data[0] - ori_data[0]);
	double sum1 = 0, sum2 = 0, sum22 = 0;
	
	for (i = 0; i < nbEle; i++)
	{
		sum1 += ori_data[i];
		sum2 += data[i];
		sum22 += data[i]*data[i];
	}
	double mean1 = sum1/nbEle;
	double mean2 = sum2/nbEle;
	
	double sum3 = 0, sum4 = 0;
	double sum = 0, prodSum = 0, relerr = 0;

	double maxpw_relerr = 0; 
	for (i = 0; i < nbEle; i++)
	{
		if (Max < ori_data[i]) Max = ori_data[i];
		if (Min > ori_data[i]) Min = ori_data[i];
		
		float err = fabs(data[i] - ori_data[i]);
		if(ori_data[i]!=0)
		{
			relerr = err/fabs(ori_data[i]);
			//float rerr = err/0.0020479534287005662918;
			//if(rerr>0.001)
			//{printf("i=%zu, %.30G\n", i, relerr); break;}
			if(maxpw_relerr<relerr)
				maxpw_relerr = relerr;
		}

		if (diffMax < err)
			diffMax = err;
		prodSum += (ori_data[i]-mean1)*(data[i]-mean2);
		sum3 += (ori_data[i] - mean1)*(ori_data[i]-mean1);
		sum4 += (data[i] - mean2)*(data[i]-mean2);
		sum += err*err;	
	}
	double std1 = sqrt(sum3/nbEle);
	double std2 = sqrt(sum4/nbEle);
	double ee = prodSum/nbEle;
	double acEff = ee/std1/std2;

	double mse = sum/nbEle;
	double range = Max - Min;
	double psnr = 20*log10(range)-10*log10(mse);
	double nrmse = sqrt(mse)/range;
	//double compressionRatio = 1.0*nbEle*sizeof(float)/byteLength;
	double normErr = sqrt(sum);
	double normErr_norm = normErr/sqrt(sum22);		
	printf ("nrmse=%.4g max_abs=%.5g psnr=%.3f\n",nrmse,diffMax,psnr);
	// printf ("Min=%.20G, Max=%.20G, range=%.20G\n", Min, Max, range);
	// printf ("Max absolute error = %.10f\n", diffMax);
	// printf ("Max relative error = %f\n", diffMax/(Max-Min));
	// printf ("Max pw relative error = %f\n", maxpw_relerr);
	// printf ("PSNR = %f, NRMSE= %.20G\n", psnr,nrmse);
	// printf ("normError = %f, normErr_norm = %f\n", normErr, normErr_norm);
	// printf ("acEff=%f\n", acEff);	
	//printf ("compressionRatio=%f\n", compressionRatio);
	
	free(ori_data);
	free(data);	
}


int main(int argc, char *argv[]) {
	size_t nbEle,ori_size;
	char *ori_inPath = argv[2];
	char *inPath = argv[3];  
	if(argv[1][1]=='f') {
		float *ori_data = (float *)readData(ori_inPath,&ori_size);
		float *data = (float *)readData(inPath,&nbEle);
		print_floaterror(ori_data,data,nbEle);
	}
	else if(argv[1][1]=='d') {
		double *ori_data = (double *)readData(ori_inPath,&ori_size);
		double *data = (double *)readData(inPath,&nbEle);
		print_doubleerror(ori_data,data,nbEle);
	}
	return 0;
}
