#import <Foundation/Foundation.h>

#define __BIT64__ (__LP64__ || TARGET_OS_EMBEDDED || TARGET_OS_IPHONE || TARGET_OS_WIN32 || NS_BUILD_32_LIKE_64)


int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSProcessInfo       *procInfo;
    NSArray             *args;
    NSDictionary        *env;
    NSString            *hostName,*osName,*osVersion,*procName,*globeUnique;
    NSUInteger          numProcs,numActProcs;
    unsigned long long  physMem;
    int                 procId;
    
    procInfo    = [NSProcessInfo processInfo];
    hostName    = [procInfo hostName];
    osName      = [procInfo operatingSystemName];
    osVersion   = [procInfo operatingSystemVersionString];
    numProcs    = [procInfo processorCount];
    numActProcs = [procInfo activeProcessorCount];
    physMem     = [procInfo physicalMemory];
    procName    = [procInfo processName];
    procId      = [procInfo processIdentifier];
    globeUnique = [procInfo globallyUniqueString];
    env         = [procInfo environment];
    args        = [procInfo arguments];
    
    
    
    printf("Host Name:\n");
    printf("\t%s\n",[hostName UTF8String]);
    
    printf("Operating System\n");
    printf("----------------\n");
    printf("\t%s\n",[osName UTF8String]);
    printf("\t%s\n",[osVersion UTF8String]);
    
    printf("Hardware\n");
    printf("--------\n");
    printf("Processor count:        ");
#if __BIT64__
    printf("%ld\n",numProcs);
#else
    printf("%d\n",numProcs);
#endif
    printf("Active processor count: ");
#if __BIT64__
    printf("%ld\n",numActProcs);
#else
    printf("%d\n",numActProcs);
#endif
    printf("Physical memory:        %llu bytes\n",physMem);
    
    printf("\n\n");
    
    printf("Process Name:           %s\n",[procName UTF8String]);
    printf("Process Identifier:     %d\n",procId);
    printf("Globally Unique String: %s\n",[globeUnique UTF8String]);

    printf("\n\n");
    
    printf("Environment\n");
    printf("-----------\n");
    for (NSString *thisEnvVar in [env allKeys]) {
        NSString *thisVarValue;
        thisVarValue = [env objectForKey:thisEnvVar];
        printf("%s:\n\t%s\n",[thisEnvVar UTF8String],[thisVarValue UTF8String]);
    }
    
    printf("Arguments\n");
    printf("---------\n");
    for (NSString *thisArg in args) {
        printf("%s\n",[thisArg UTF8String]);
    }
    
    
    
    [pool drain];
    return 0;
}
