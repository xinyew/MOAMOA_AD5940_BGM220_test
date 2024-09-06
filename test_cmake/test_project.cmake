#eyJidWlsZFByZXNldHMiOnsiZGVmYXVsdF9jb25maWciOnsibmFtZSI6ImRlZmF1bHRfY29uZmlnIiwiZGVmaW5pdGlvbnMiOlt7ImtleSI6IkNISVBTRUxfNTk0WCIsInZhbCI6IjEifSx7ImtleSI6IkFESV9ERUJVRyIsInZhbCI6IjEifV0sInJlbW92ZWRGbGFncyI6eyJDIjpbXSwiQ1hYIjpbXSwiQVNNIjpbXX0sImFkZGl0aW9uYWxGbGFncyI6eyJDIjpbXSwiQ1hYIjpbXSwiQVNNIjpbIi11IF9wcmludGZfZmxvYXQiXX19fSwiZGlyZWN0b3JpZXMiOlsiLi9hZDU5NDBsaWIiXX0=
target_sources(test PRIVATE
	"../BGM220Port.c"
	"../ad5940lib/AD5940Main.c"
	"../ad5940lib/SqrWaveVoltammetry.c"
	"../ad5940lib/ad5940.c"
)

include_directories(
	.././ad5940lib
)

add_compile_definitions(
	$<$<CONFIG:default_config>:CHIPSEL_594X=1>
	$<$<CONFIG:default_config>:ADI_DEBUG=1>
)

target_compile_options(test PRIVATE
	$<$<AND:$<CONFIG:default_config>,$<COMPILE_LANGUAGE:ASM>>:-u _printf_float>
)
