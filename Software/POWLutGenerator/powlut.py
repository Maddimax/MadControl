
numValues = 1023.0;

print "// This file was autogenerated by the POWLutGenerator ( see Software/POWLutGenerator )"
print 

print "const int powlut_numValues = %i;" % int(numValues);
print "const float powlut_numValuesf = %.1ff;" % numValues;

print 

print "PROGMEM float sp_pow3LUT[] = {";

for i in range(0, int(numValues)):
	print "\t%ff," % pow((i/numValues), 3),;
	if i % 8 == 7:
		print

print "\t%ff\n};" % pow(1.0, 3);


print "PROGMEM float sp_pow3LUTMirrored[] = {";

for i in range(0, int(numValues)):
	print "\t%ff," % ((pow( (i/numValues)*2.0-1.0 , 3)+1.0)*0.5),;
	if i % 8 == 7:
		print


print "\t%ff\n};" % ((pow( 1.0 , 3)+1.0)*0.5);

