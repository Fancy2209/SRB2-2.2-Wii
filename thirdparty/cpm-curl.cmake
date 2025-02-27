set(
	internal_curl_options

	"BUILD_CURL_EXE OFF"
	"BUILD_SHARED_LIBS ${SRB2_CONFIG_SHARED_INTERNAL_LIBRARIES}"
	"CURL_DISABLE_TESTS ON"
	"HTTP_ONLY ON"
	"CURL_DISABLE_CRYPTO_AUTH ON"
	"CURL_DISABLE_NTLM ON"
	"ENABLE_MANUAL OFF"
	"ENABLE_THREADED_RESOLVER OFF"
	"CURL_USE_LIBPSL OFF"
	"CURL_USE_LIBSSH2 OFF"
	"USE_LIBIDN2 OFF"
	"CURL_ENABLE_EXPORT_TARGET OFF"
)
if(${CMAKE_SYSTEM} MATCHES Windows)
	list(APPEND internal_curl_options "CURL_USE_OPENSSL OFF")
	list(APPEND internal_curl_options "CURL_USE_SCHANNEL ON")
endif()
if(${CMAKE_SYSTEM} MATCHES Darwin)
	list(APPEND internal_curl_options "CURL_USE_OPENSSL OFF")
	list(APPEND internal_curl_options "CURL_USE_SECTRANSP ON")
endif()
if(${CMAKE_SYSTEM} MATCHES Linux)
	list(APPEND internal_curl_options "CURL_USE_OPENSSL ON")
endif()
if(WUT)
	list(APPEND internal_curl_options "ENABLE_IPV6 OFF")
	list(APPEND internal_curl_options "ENABLE_UNIX_SOCKETS OFF")
	list(APPEND internal_curl_options "HAVE_BASENAME OFF")
	list(APPEND internal_curl_options "CURL_DISABLE_SOCKETPAIR ON")
	list(APPEND internal_curl_options "CURL_USE_OPENSSL OFF")
	list(APPEND internal_curl_options "CURL_USE_MBEDTLS ON")
	list(APPEND internal_curl_options "CURL_CA_PATH /vol/storage_mlc01/sys/title/0005001b/10054000/content/scerts")
endif()

CPMAddPackage(
	NAME curl
	VERSION 7.86.0
	URL "https://github.com/curl/curl/archive/refs/tags/curl-7_86_0.zip"
	EXCLUDE_FROM_ALL ON
	OPTIONS ${internal_curl_options}
)
