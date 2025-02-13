; ModuleID = 'magick/option.c'
source_filename = "magick/option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._OptionInfo = type { ptr, i64, i64, i32 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@.str = private unnamed_addr constant [16 x i8] c"magick/option.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@AlignOptions = internal constant [8 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.9, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.10, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.11, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.12, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.13, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.14, i64 1, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@AlphaOptions = internal constant [16 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.15, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.16, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.17, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.18, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.19, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.20, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.21, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.22, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.23, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.24, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.25, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.26, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.27, i64 8, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.28, i64 10, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@BooleanOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.29, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.30, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.31, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.32, i64 1, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@CacheOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.33, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.34, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.35, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.36, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.37, i64 4, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@ChannelOptions = internal constant [34 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.38, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.39, i64 47, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.40, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.41, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.42, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.43, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.44, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.45, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.46, i64 134217719, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.47, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.48, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.49, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.50, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.51, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.52, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.53, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.54, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.55, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.56, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.57, i64 4, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.58, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.59, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.60, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.61, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.62, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.63, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.64, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.65, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.66, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.67, i64 256, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.68, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.69, i64 4, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@ClassOptions = internal constant [4 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.70, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.71, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@ClipPathOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.72, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.73, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.74, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@ColorspaceOptions = internal constant [36 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.75, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.76, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.77, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.48, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.78, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.79, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.80, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.81, i64 30, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.82, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.83, i64 31, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.84, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.85, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.86, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.87, i64 27, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.88, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.89, i64 26, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.90, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.91, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.92, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.93, i64 17, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.94, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.95, i64 19, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.96, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.97, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.98, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.99, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.28, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.100, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.101, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.102, i64 33, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.103, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.104, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.105, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.106, i64 11, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@CommandOptions = internal constant [590 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.107, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.108, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.109, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.110, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.111, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.112, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.113, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.114, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.115, i64 0, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.116, i64 1, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.117, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.118, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.119, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.120, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.121, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.122, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.123, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.124, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.125, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.126, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.127, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.128, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.129, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.130, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.131, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.132, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.133, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.134, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.135, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.136, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.137, i64 0, i64 33281, i32 0 }, %struct._OptionInfo { ptr @.str.138, i64 0, i64 33281, i32 0 }, %struct._OptionInfo { ptr @.str.139, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.140, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.141, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.142, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.143, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.144, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.145, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.146, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.147, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.148, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.149, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.150, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.151, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.152, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.153, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.154, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.155, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.156, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.157, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.158, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.159, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.160, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.161, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.162, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.163, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.164, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.165, i64 0, i64 32774, i32 0 }, %struct._OptionInfo { ptr @.str.166, i64 1, i64 32774, i32 0 }, %struct._OptionInfo { ptr @.str.167, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.168, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.169, i64 0, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.170, i64 1, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.171, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.172, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.173, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.174, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.175, i64 0, i64 514, i32 0 }, %struct._OptionInfo { ptr @.str.176, i64 1, i64 514, i32 0 }, %struct._OptionInfo { ptr @.str.177, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.178, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.179, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.180, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.181, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.182, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.183, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.184, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.185, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.186, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.187, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.188, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.189, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.190, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.191, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.192, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.193, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.194, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.195, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.196, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.197, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.198, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.199, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.200, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.201, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.202, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.203, i64 0, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.204, i64 1, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.205, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.206, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.207, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.208, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.209, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.210, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.211, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.212, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.213, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.214, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.215, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.216, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.217, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.218, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.219, i64 0, i64 1024, i32 1 }, %struct._OptionInfo { ptr @.str.220, i64 0, i64 1024, i32 1 }, %struct._OptionInfo { ptr @.str.221, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.222, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.223, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.224, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.225, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.226, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.227, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.228, i64 1, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.229, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.230, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.231, i64 0, i64 1041, i32 0 }, %struct._OptionInfo { ptr @.str.232, i64 1, i64 1041, i32 0 }, %struct._OptionInfo { ptr @.str.233, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.234, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.235, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.236, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.237, i64 1, i64 3, i32 0 }, %struct._OptionInfo { ptr @.str.238, i64 1, i64 3, i32 0 }, %struct._OptionInfo { ptr @.str.239, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.240, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.241, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.242, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.243, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.244, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.245, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.246, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.247, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.248, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.249, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.250, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.251, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.252, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.253, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.254, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.255, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.256, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.257, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.258, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.259, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.260, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.261, i64 0, i64 16386, i32 0 }, %struct._OptionInfo { ptr @.str.262, i64 1, i64 16386, i32 0 }, %struct._OptionInfo { ptr @.str.263, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.264, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.265, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.266, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.267, i64 0, i64 522, i32 0 }, %struct._OptionInfo { ptr @.str.268, i64 1, i64 522, i32 0 }, %struct._OptionInfo { ptr @.str.269, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.270, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.271, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.272, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.273, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.274, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.275, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.276, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.277, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.278, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.279, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.280, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.281, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.282, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.283, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.284, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.285, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.286, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.287, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.288, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.289, i64 2, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.290, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.291, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.292, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.293, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.294, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.295, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.296, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.297, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.298, i64 1, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.299, i64 0, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.300, i64 1, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.301, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.302, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.303, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.304, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.305, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.306, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.307, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.308, i64 0, i64 33281, i32 0 }, %struct._OptionInfo { ptr @.str.309, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.310, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.311, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.312, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.313, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.314, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.315, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.316, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.317, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.318, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.319, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.320, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.321, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.322, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.323, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.324, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.325, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.326, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.327, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.328, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.329, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.330, i64 1, i64 33024, i32 0 }, %struct._OptionInfo { ptr @.str.331, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.332, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.333, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.334, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.335, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.336, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.337, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.338, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.339, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.340, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.341, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.342, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.343, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.344, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.345, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.346, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.347, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.348, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.349, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.350, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.351, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.352, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.353, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.354, i64 0, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.355, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.356, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.357, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.358, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.359, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.360, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.361, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.362, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.363, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.364, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.365, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.366, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.367, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.368, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.369, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.370, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.371, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.372, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.373, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.374, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.375, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.376, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.377, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.378, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.379, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.380, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.381, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.382, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.383, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.384, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.385, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.386, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.387, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.388, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.389, i64 0, i64 17, i32 0 }, %struct._OptionInfo { ptr @.str.390, i64 2, i64 17, i32 0 }, %struct._OptionInfo { ptr @.str.391, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.392, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.393, i64 0, i64 32772, i32 0 }, %struct._OptionInfo { ptr @.str.394, i64 1, i64 32772, i32 0 }, %struct._OptionInfo { ptr @.str.395, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.396, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.397, i64 0, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.398, i64 1, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.399, i64 0, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.400, i64 1, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.401, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.402, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.403, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.404, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.405, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.406, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.407, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.408, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.409, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.410, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.411, i64 0, i64 33026, i32 0 }, %struct._OptionInfo { ptr @.str.412, i64 0, i64 33026, i32 0 }, %struct._OptionInfo { ptr @.str.413, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.414, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.415, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.416, i64 0, i64 33281, i32 0 }, %struct._OptionInfo { ptr @.str.417, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.418, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.419, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.420, i64 1, i64 33024, i32 0 }, %struct._OptionInfo { ptr @.str.421, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.422, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.423, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.424, i64 0, i64 32771, i32 0 }, %struct._OptionInfo { ptr @.str.425, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.426, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.427, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.428, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.429, i64 0, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.430, i64 0, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.431, i64 0, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.432, i64 0, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.433, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.434, i64 0, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.435, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.436, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.437, i64 2, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.438, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.439, i64 0, i64 33281, i32 0 }, %struct._OptionInfo { ptr @.str.440, i64 0, i64 33281, i32 0 }, %struct._OptionInfo { ptr @.str.441, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.442, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.443, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.444, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.445, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.446, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.447, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.448, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.449, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.450, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.451, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.452, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.453, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.454, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.455, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.456, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.457, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.458, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.459, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.460, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.461, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.462, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.463, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.464, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.465, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.466, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.467, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.468, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.469, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.470, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.471, i64 0, i64 32774, i32 0 }, %struct._OptionInfo { ptr @.str.472, i64 1, i64 32774, i32 0 }, %struct._OptionInfo { ptr @.str.473, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.474, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.475, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.476, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.477, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.478, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.479, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.480, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.481, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.482, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.483, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.484, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.485, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.486, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.487, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.488, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.489, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.490, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.491, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.492, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.493, i64 0, i64 8, i32 0 }, %struct._OptionInfo { ptr @.str.494, i64 1, i64 8, i32 0 }, %struct._OptionInfo { ptr @.str.495, i64 0, i64 17, i32 0 }, %struct._OptionInfo { ptr @.str.496, i64 0, i64 17, i32 0 }, %struct._OptionInfo { ptr @.str.497, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.498, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.499, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.500, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.501, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.502, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.503, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.504, i64 1, i64 33024, i32 0 }, %struct._OptionInfo { ptr @.str.505, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.506, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.507, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.508, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.509, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.510, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.511, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.512, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.513, i64 0, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.514, i64 0, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.515, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.516, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.517, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.518, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.519, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.520, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.521, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.522, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.523, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.524, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.525, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.526, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.527, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.528, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.529, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.530, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.531, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.532, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.533, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.534, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.535, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.536, i64 1, i64 16384, i32 1 }, %struct._OptionInfo { ptr @.str.537, i64 1, i64 16384, i32 1 }, %struct._OptionInfo { ptr @.str.538, i64 0, i64 16384, i32 1 }, %struct._OptionInfo { ptr @.str.539, i64 0, i64 16384, i32 1 }, %struct._OptionInfo { ptr @.str.540, i64 2, i64 16384, i32 1 }, %struct._OptionInfo { ptr @.str.541, i64 2, i64 16384, i32 1 }, %struct._OptionInfo { ptr @.str.542, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.543, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.544, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.545, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.546, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.547, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.548, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.549, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.550, i64 0, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.551, i64 1, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.552, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.553, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.554, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.555, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.556, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.557, i64 0, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.558, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.559, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.560, i64 1, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.561, i64 2, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.562, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.563, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.564, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.565, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.566, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.567, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.568, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.569, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.570, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.571, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.572, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.573, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.574, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.575, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.576, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.577, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.578, i64 0, i64 16386, i32 0 }, %struct._OptionInfo { ptr @.str.579, i64 1, i64 16386, i32 0 }, %struct._OptionInfo { ptr @.str.580, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.581, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.582, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.583, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.584, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.585, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.586, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.587, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.588, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.589, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.590, i64 2, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.591, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.592, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.593, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.594, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.595, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.596, i64 2, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.597, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.598, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.599, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.600, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.601, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.602, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.603, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.604, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.605, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.606, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.607, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.608, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.609, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.610, i64 0, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.611, i64 1, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.612, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.613, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.614, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.615, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.616, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.617, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.618, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.619, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.620, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.621, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.622, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.623, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.624, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.625, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.626, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.627, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.628, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.629, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.630, i64 0, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.631, i64 1, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.632, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.633, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.634, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.635, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.636, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.637, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.638, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.639, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.640, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.641, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.642, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.643, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.644, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.645, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.646, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.647, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.648, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.649, i64 1, i64 8, i32 0 }, %struct._OptionInfo { ptr @.str.650, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.651, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.652, i64 0, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.653, i64 1, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.654, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.655, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.656, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.657, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.658, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.659, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.660, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.661, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.662, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.663, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.664, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.665, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.666, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.667, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.668, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.669, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.670, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.671, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.672, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.673, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.674, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.675, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.676, i64 0, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.677, i64 1, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.678, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.679, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.680, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.681, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.682, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.683, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.684, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.685, i64 1, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.686, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.687, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.688, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.689, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.690, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.691, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.692, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.693, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.694, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.695, i64 1, i64 513, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@ComplexOptions = internal constant [9 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.696, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.697, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.698, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.699, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.700, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.701, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.702, i64 7, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@ComposeOptions = internal constant [73 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.703, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.704, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.705, i64 57, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.706, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.707, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.708, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.709, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.710, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.711, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.712, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.713, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.714, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.715, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.17, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.716, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.717, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.718, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.719, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.720, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.721, i64 66, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.722, i64 55, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.723, i64 64, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.724, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.725, i64 26, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.726, i64 27, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.727, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.728, i64 56, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.729, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.730, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.731, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.732, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.733, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.734, i64 30, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.51, i64 31, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.735, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.736, i64 33, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.737, i64 67, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.738, i64 62, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.739, i64 61, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.740, i64 34, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.741, i64 35, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.742, i64 63, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.743, i64 36, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.744, i64 65, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.745, i64 37, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.746, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.747, i64 52, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.700, i64 38, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.749, i64 39, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.750, i64 41, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.751, i64 40, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.752, i64 58, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.753, i64 60, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.754, i64 42, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.755, i64 43, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.756, i64 44, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.757, i64 45, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.758, i64 46, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.759, i64 48, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.760, i64 47, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.761, i64 49, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.762, i64 50, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.763, i64 51, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.764, i64 59, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.765, i64 54, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.696, i64 2, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.698, i64 55, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.766, i64 36, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.702, i64 52, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.767, i64 53, i64 32768, i32 1 }, %struct._OptionInfo zeroinitializer], align 16
@CompressOptions = internal constant [25 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.768, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.769, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.770, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.771, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.772, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.773, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.774, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.775, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.776, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.777, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.778, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.779, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.780, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.781, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.782, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.783, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.784, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.785, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.786, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.787, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.788, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.789, i64 14, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@DataTypeOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.790, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.791, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.792, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.793, i64 1, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@LogEventOptions = internal constant [22 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.39, i64 2147483646, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.794, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.795, i64 262144, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.796, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.797, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.798, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.799, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.800, i64 64, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.801, i64 128, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.802, i64 256, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.803, i64 1024, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.804, i64 2048, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.805, i64 4096, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.806, i64 8192, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.807, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.808, i64 16384, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.809, i64 36864, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.810, i64 65536, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.811, i64 131072, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@DecorateOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.812, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.813, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.814, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@DirectionOptions = internal constant [4 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.815, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.816, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@DisposeOptions = internal constant [10 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.16, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.817, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.31, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.32, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.818, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.819, i64 3, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@DistortOptions = internal constant [21 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.820, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.821, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.822, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.823, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.824, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.825, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.826, i64 6, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.827, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.828, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.829, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.830, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.831, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.832, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.833, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.834, i64 12, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.835, i64 13, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.836, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.837, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.838, i64 17, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@DitherOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.748, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.839, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.840, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@EndianOptions = internal constant [4 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.841, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.842, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@EvaluateOptions = internal constant [36 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.843, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.696, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.844, i64 26, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.845, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.846, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.847, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.698, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.848, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.849, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.850, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.851, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.852, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.853, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.90, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.854, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.855, i64 27, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.856, i64 30, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.857, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.858, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.700, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.859, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.860, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.861, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.862, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.25, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.863, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.864, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.702, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.865, i64 31, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.767, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.866, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.867, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.868, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.765, i64 12, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@FillRuleOptions = internal constant [4 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.869, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.870, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@FilterOptions = internal constant [35 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.871, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.872, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.873, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.874, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.875, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.847, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.876, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.877, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.878, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.879, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.880, i64 5, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.881, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.882, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.883, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.884, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.885, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.886, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.887, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.888, i64 30, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.889, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.890, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.891, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.892, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.893, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.894, i64 26, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.895, i64 27, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.896, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.897, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.898, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.899, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.900, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.901, i64 17, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.902, i64 13, i64 0, i32 1 }, %struct._OptionInfo zeroinitializer], align 16
@FunctionOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.829, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.903, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.904, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.905, i64 4, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@GravityOptions = internal constant [14 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.748, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.9, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.906, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.907, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.908, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.909, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.910, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.911, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.912, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.913, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.914, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.915, i64 10, i64 0, i32 1 }, %struct._OptionInfo zeroinitializer], align 16
@PixelIntensityOptions = internal constant [11 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.916, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.917, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.55, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.918, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.93, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.919, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.95, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.920, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.921, i64 8, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@IntentOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.922, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.923, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.924, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.65, i64 1, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@InterlaceOptions = internal constant [9 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.925, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.926, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.927, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.928, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.778, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.929, i64 7, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@InterpolateOptions = internal constant [17 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.916, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.930, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.931, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.932, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.16, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.933, i64 13, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.826, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.704, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.875, i64 13, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.934, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.935, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.936, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.937, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.898, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.938, i64 4, i64 0, i32 1 }, %struct._OptionInfo zeroinitializer], align 16
@KernelOptions = internal constant [40 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.939, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.877, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.940, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.941, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.705, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.942, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.943, i64 37, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.944, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.945, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.946, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.947, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.948, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.949, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.950, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.951, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.952, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.953, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.33, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.954, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.754, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.955, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.956, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.957, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.958, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.959, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.960, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.961, i64 25, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.962, i64 26, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.963, i64 27, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.964, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.965, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.966, i64 30, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.967, i64 31, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.968, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.969, i64 33, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.970, i64 34, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.971, i64 35, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.972, i64 36, i64 0, i32 1 }, %struct._OptionInfo zeroinitializer], align 16
@LayerOptions = internal constant [18 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.973, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.974, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.975, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.976, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.977, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.978, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.979, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.980, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.981, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.982, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.983, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.984, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.985, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.20, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.986, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.987, i64 16, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@LineCapOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.988, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.989, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.952, i64 3, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@LineJoinOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.990, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.991, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.989, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@ListOptions = internal constant [72 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.992, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.40, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.993, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.797, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.994, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.995, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.996, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.798, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.997, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.998, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.999, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1000, i64 69, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1001, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1002, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.799, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1003, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1004, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1005, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1006, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1007, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.977, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.728, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1008, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1009, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1010, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1011, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.938, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1012, i64 26, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1013, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1014, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1015, i64 30, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1016, i64 51, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1017, i64 31, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1018, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1019, i64 33, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1020, i64 34, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1021, i64 35, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1022, i64 36, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1023, i64 37, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1024, i64 38, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.803, i64 39, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1025, i64 40, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.90, i64 41, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1026, i64 42, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1027, i64 43, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1028, i64 44, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1029, i64 45, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1030, i64 46, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1031, i64 48, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.804, i64 47, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1032, i64 49, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1033, i64 50, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1034, i64 51, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.805, i64 52, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1035, i64 53, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1036, i64 54, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1037, i64 55, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1038, i64 56, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1039, i64 57, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.806, i64 59, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1040, i64 60, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1041, i64 61, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1042, i64 62, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1043, i64 63, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1044, i64 64, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.767, i64 65, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1045, i64 66, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1046, i64 58, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.8, i64 -1, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1047, i64 67, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1048, i64 68, i64 0, i32 0 }, %struct._OptionInfo { ptr null, i64 -1, i64 0, i32 0 }], align 16
@MetricOptions = internal constant [12 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1049, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1050, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1051, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1052, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1053, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1054, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1055, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1056, i64 255, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1057, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1058, i64 7, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@MethodOptions = internal constant [7 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1059, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1060, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.892, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.755, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.27, i64 5, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@ModeOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1061, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1062, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1063, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@MorphologyOptions = internal constant [30 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1064, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1065, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1066, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1067, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1068, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1069, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1070, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1071, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1072, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1073, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1074, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1075, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1076, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1077, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1078, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1079, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1080, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1081, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1082, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1083, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1084, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1085, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1086, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1087, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1088, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1089, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1090, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1091, i64 21, i64 0, i32 1 }, %struct._OptionInfo zeroinitializer], align 16
@NoiseOptions = internal constant [9 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.877, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1092, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.944, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1093, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1094, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1095, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1096, i64 1, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@OrientationOptions = internal constant [10 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1097, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1098, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1099, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1100, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1101, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1102, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1103, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1104, i64 8, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@PolicyDomainOptions = internal constant [8 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.798, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1006, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.938, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1105, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.806, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1106, i64 6, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@PolicyRightsOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.748, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1107, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1108, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1109, i64 4, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@PreviewOptions = internal constant [31 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1110, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.705, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.917, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1111, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1112, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1113, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1114, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1115, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1116, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.51, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1117, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.778, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1118, i64 27, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1119, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1120, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1121, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1122, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1123, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.65, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1124, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1125, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1126, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1127, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1128, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1129, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1130, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1131, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.767, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1132, i64 26, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@PrimitiveOptions = internal constant [17 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.830, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1133, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1134, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.997, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1135, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1136, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.925, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.59, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1105, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.892, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1137, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1138, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.953, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1139, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1140, i64 13, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@QuantumFormatOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1141, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1142, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1143, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr null, i64 1, i64 0, i32 0 }], align 16
@ResolutionOptions = internal constant [4 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1144, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1145, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@ResourceOptions = internal constant [9 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1146, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.33, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1147, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.35, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.36, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1148, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1149, i64 7, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@SparseColorOptions = internal constant [7 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1150, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.826, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1151, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.837, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1091, i64 18, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@StatisticOptions = internal constant [10 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1152, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1153, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.855, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.856, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1154, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1030, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1155, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1156, i64 8, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@StorageOptions = internal constant [9 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1157, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1158, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1159, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.934, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.791, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1160, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.792, i64 7, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@StretchOptions = internal constant [12 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1161, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1162, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1163, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1164, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1165, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1166, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1167, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1168, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1169, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1170, i64 9, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@StyleOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1161, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1171, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1166, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1172, i64 3, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@TypeOptions = internal constant [18 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1173, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1174, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1175, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1176, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1116, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1177, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1178, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.978, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1179, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1180, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1181, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1182, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1183, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1184, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1185, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1186, i64 6, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@ValidateOptions = internal constant [15 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.39, i64 2147483647, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.998, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1187, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.984, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1188, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1189, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1190, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1191, i64 64, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1192, i64 128, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1193, i64 256, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1194, i64 512, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1195, i64 1024, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 0, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@VirtualPixelOptions = internal constant [19 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.16, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.42, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1196, i64 1, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.1197, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1008, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1081, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.48, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1198, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1199, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1200, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1095, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1201, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.28, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1202, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1203, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1204, i64 12, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [10 x i8] c"Undefined\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Middle\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Activate\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Deactivate\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Extract\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Flatten\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Opaque\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Remove\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Set\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Shape\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Transparent\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Disk\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Distributed\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"Map\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Ping\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"Lightness\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"Luminance\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"Luminosity\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"Matte\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"Sync\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"DirectClass\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"PseudoClass\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"ObjectBoundingBox\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"UserSpace\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"UserSpaceOnUse\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"CIELab\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"CMY\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"CMYK\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"HCL\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"HCLp\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"HSB\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"HSI\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"HSL\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"HSV\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"HWB\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"Lab\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"LCH\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"LCHab\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"LCHuv\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"LMS\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"Log\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"Luv\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"OHTA\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"Rec601Luma\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"Rec601YCbCr\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"Rec709Luma\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"Rec709YCbCr\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"scRGB\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"sRGB\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"XYZ\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"YCbCr\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"YDbDr\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"YCC\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"YIQ\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"YPbPr\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"YUV\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"+adjoin\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"-adjoin\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"+adaptive-blur\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"-adaptive-blur\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"+adaptive-resize\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"-adaptive-resize\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"+adaptive-sharpen\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"-adaptive-sharpen\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"+affine\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"-affine\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"+affinity\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"-affinity\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"+alpha\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"-alpha\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"+annotate\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"-annotate\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"+antialias\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"-antialias\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"+append\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"-append\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"+attenuate\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"-attenuate\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"+authenticate\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"-authenticate\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"+auto-gamma\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"-auto-gamma\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"+auto-level\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"-auto-level\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"+auto-orient\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"-auto-orient\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"+average\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"-average\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"+backdrop\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"-backdrop\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"+background\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"-background\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"+bench\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"-bench\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"+bias\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"-bias\00", align 1
@.str.147 = private unnamed_addr constant [26 x i8] c"+black-point-compensation\00", align 1
@.str.148 = private unnamed_addr constant [26 x i8] c"-black-point-compensation\00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c"+black-threshold\00", align 1
@.str.150 = private unnamed_addr constant [17 x i8] c"-black-threshold\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"+blend\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"-blend\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"+blue-primary\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"-blue-primary\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"+blue-shift\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"-blue-shift\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"+blur\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"-blur\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"+border\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"-border\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"+bordercolor\00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"-bordercolor\00", align 1
@.str.163 = private unnamed_addr constant [13 x i8] c"+borderwidth\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"-borderwidth\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"+box\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"-box\00", align 1
@.str.167 = private unnamed_addr constant [21 x i8] c"+brightness-contrast\00", align 1
@.str.168 = private unnamed_addr constant [21 x i8] c"-brightness-contrast\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"+cache\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"-cache\00", align 1
@.str.171 = private unnamed_addr constant [7 x i8] c"+canny\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"-canny\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"+cdl\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"-cdl\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"+channel\00", align 1
@.str.176 = private unnamed_addr constant [9 x i8] c"-channel\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"+charcoal\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"-charcoal\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"+chop\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"-chop\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"+clamp\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"-clamp\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"+clip\00", align 1
@.str.184 = private unnamed_addr constant [6 x i8] c"-clip\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"+clip-mask\00", align 1
@.str.186 = private unnamed_addr constant [11 x i8] c"-clip-mask\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"+clip-path\00", align 1
@.str.188 = private unnamed_addr constant [11 x i8] c"-clip-path\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"+clone\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"-clone\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"+clut\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"-clut\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"+coalesce\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"-coalesce\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"+colorize\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"-colorize\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"+colormap\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c"-colormap\00", align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"+color-matrix\00", align 1
@.str.200 = private unnamed_addr constant [14 x i8] c"-color-matrix\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"+colors\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"-colors\00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"+colorspace\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"-colorspace\00", align 1
@.str.205 = private unnamed_addr constant [9 x i8] c"+combine\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"-combine\00", align 1
@.str.207 = private unnamed_addr constant [9 x i8] c"+comment\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"-comment\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"+compare\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"-compare\00", align 1
@.str.211 = private unnamed_addr constant [9 x i8] c"+complex\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"-complex\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"+compose\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"-compose\00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c"+composite\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"-composite\00", align 1
@.str.217 = private unnamed_addr constant [10 x i8] c"+compress\00", align 1
@.str.218 = private unnamed_addr constant [10 x i8] c"-compress\00", align 1
@.str.219 = private unnamed_addr constant [12 x i8] c"+concurrent\00", align 1
@.str.220 = private unnamed_addr constant [12 x i8] c"-concurrent\00", align 1
@.str.221 = private unnamed_addr constant [10 x i8] c"+contrast\00", align 1
@.str.222 = private unnamed_addr constant [10 x i8] c"-contrast\00", align 1
@.str.223 = private unnamed_addr constant [18 x i8] c"+contrast-stretch\00", align 1
@.str.224 = private unnamed_addr constant [18 x i8] c"-contrast-stretch\00", align 1
@.str.225 = private unnamed_addr constant [10 x i8] c"+convolve\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"-convolve\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"+crop\00", align 1
@.str.228 = private unnamed_addr constant [6 x i8] c"-crop\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"+cycle\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"-cycle\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"+debug\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"-debug\00", align 1
@.str.233 = private unnamed_addr constant [10 x i8] c"+decipher\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c"-decipher\00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"+deconstruct\00", align 1
@.str.236 = private unnamed_addr constant [13 x i8] c"-deconstruct\00", align 1
@.str.237 = private unnamed_addr constant [8 x i8] c"+define\00", align 1
@.str.238 = private unnamed_addr constant [8 x i8] c"-define\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"+delay\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c"-delay\00", align 1
@.str.241 = private unnamed_addr constant [8 x i8] c"+delete\00", align 1
@.str.242 = private unnamed_addr constant [8 x i8] c"-delete\00", align 1
@.str.243 = private unnamed_addr constant [9 x i8] c"+density\00", align 1
@.str.244 = private unnamed_addr constant [9 x i8] c"-density\00", align 1
@.str.245 = private unnamed_addr constant [7 x i8] c"+depth\00", align 1
@.str.246 = private unnamed_addr constant [7 x i8] c"-depth\00", align 1
@.str.247 = private unnamed_addr constant [9 x i8] c"+descend\00", align 1
@.str.248 = private unnamed_addr constant [9 x i8] c"-descend\00", align 1
@.str.249 = private unnamed_addr constant [8 x i8] c"+deskew\00", align 1
@.str.250 = private unnamed_addr constant [8 x i8] c"-deskew\00", align 1
@.str.251 = private unnamed_addr constant [11 x i8] c"+despeckle\00", align 1
@.str.252 = private unnamed_addr constant [11 x i8] c"-despeckle\00", align 1
@.str.253 = private unnamed_addr constant [11 x i8] c"+direction\00", align 1
@.str.254 = private unnamed_addr constant [11 x i8] c"-direction\00", align 1
@.str.255 = private unnamed_addr constant [10 x i8] c"+displace\00", align 1
@.str.256 = private unnamed_addr constant [10 x i8] c"-displace\00", align 1
@.str.257 = private unnamed_addr constant [9 x i8] c"+display\00", align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"-display\00", align 1
@.str.259 = private unnamed_addr constant [9 x i8] c"+dispose\00", align 1
@.str.260 = private unnamed_addr constant [9 x i8] c"-dispose\00", align 1
@.str.261 = private unnamed_addr constant [25 x i8] c"+dissimilarity-threshold\00", align 1
@.str.262 = private unnamed_addr constant [25 x i8] c"-dissimilarity-threshold\00", align 1
@.str.263 = private unnamed_addr constant [10 x i8] c"+dissolve\00", align 1
@.str.264 = private unnamed_addr constant [10 x i8] c"-dissolve\00", align 1
@.str.265 = private unnamed_addr constant [9 x i8] c"+distort\00", align 1
@.str.266 = private unnamed_addr constant [9 x i8] c"-distort\00", align 1
@.str.267 = private unnamed_addr constant [8 x i8] c"+dither\00", align 1
@.str.268 = private unnamed_addr constant [8 x i8] c"-dither\00", align 1
@.str.269 = private unnamed_addr constant [6 x i8] c"+draw\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"-draw\00", align 1
@.str.271 = private unnamed_addr constant [11 x i8] c"+duplicate\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"-duplicate\00", align 1
@.str.273 = private unnamed_addr constant [10 x i8] c"+duration\00", align 1
@.str.274 = private unnamed_addr constant [10 x i8] c"-duration\00", align 1
@.str.275 = private unnamed_addr constant [6 x i8] c"+edge\00", align 1
@.str.276 = private unnamed_addr constant [6 x i8] c"-edge\00", align 1
@.str.277 = private unnamed_addr constant [8 x i8] c"+emboss\00", align 1
@.str.278 = private unnamed_addr constant [8 x i8] c"-emboss\00", align 1
@.str.279 = private unnamed_addr constant [10 x i8] c"+encipher\00", align 1
@.str.280 = private unnamed_addr constant [10 x i8] c"-encipher\00", align 1
@.str.281 = private unnamed_addr constant [10 x i8] c"+encoding\00", align 1
@.str.282 = private unnamed_addr constant [10 x i8] c"-encoding\00", align 1
@.str.283 = private unnamed_addr constant [8 x i8] c"+endian\00", align 1
@.str.284 = private unnamed_addr constant [8 x i8] c"-endian\00", align 1
@.str.285 = private unnamed_addr constant [9 x i8] c"+enhance\00", align 1
@.str.286 = private unnamed_addr constant [9 x i8] c"-enhance\00", align 1
@.str.287 = private unnamed_addr constant [10 x i8] c"+equalize\00", align 1
@.str.288 = private unnamed_addr constant [10 x i8] c"-equalize\00", align 1
@.str.289 = private unnamed_addr constant [10 x i8] c"+evaluate\00", align 1
@.str.290 = private unnamed_addr constant [10 x i8] c"-evaluate\00", align 1
@.str.291 = private unnamed_addr constant [19 x i8] c"+evaluate-sequence\00", align 1
@.str.292 = private unnamed_addr constant [19 x i8] c"-evaluate-sequence\00", align 1
@.str.293 = private unnamed_addr constant [8 x i8] c"+extent\00", align 1
@.str.294 = private unnamed_addr constant [8 x i8] c"-extent\00", align 1
@.str.295 = private unnamed_addr constant [9 x i8] c"+extract\00", align 1
@.str.296 = private unnamed_addr constant [9 x i8] c"-extract\00", align 1
@.str.297 = private unnamed_addr constant [8 x i8] c"+family\00", align 1
@.str.298 = private unnamed_addr constant [8 x i8] c"-family\00", align 1
@.str.299 = private unnamed_addr constant [10 x i8] c"+features\00", align 1
@.str.300 = private unnamed_addr constant [10 x i8] c"-features\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"+fft\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c"-fft\00", align 1
@.str.303 = private unnamed_addr constant [6 x i8] c"+fill\00", align 1
@.str.304 = private unnamed_addr constant [6 x i8] c"-fill\00", align 1
@.str.305 = private unnamed_addr constant [8 x i8] c"+filter\00", align 1
@.str.306 = private unnamed_addr constant [8 x i8] c"-filter\00", align 1
@.str.307 = private unnamed_addr constant [9 x i8] c"+flatten\00", align 1
@.str.308 = private unnamed_addr constant [9 x i8] c"-flatten\00", align 1
@.str.309 = private unnamed_addr constant [6 x i8] c"+flip\00", align 1
@.str.310 = private unnamed_addr constant [6 x i8] c"-flip\00", align 1
@.str.311 = private unnamed_addr constant [6 x i8] c"+flop\00", align 1
@.str.312 = private unnamed_addr constant [6 x i8] c"-flop\00", align 1
@.str.313 = private unnamed_addr constant [11 x i8] c"+floodfill\00", align 1
@.str.314 = private unnamed_addr constant [11 x i8] c"-floodfill\00", align 1
@.str.315 = private unnamed_addr constant [6 x i8] c"+font\00", align 1
@.str.316 = private unnamed_addr constant [6 x i8] c"-font\00", align 1
@.str.317 = private unnamed_addr constant [12 x i8] c"+foreground\00", align 1
@.str.318 = private unnamed_addr constant [12 x i8] c"-foreground\00", align 1
@.str.319 = private unnamed_addr constant [8 x i8] c"+format\00", align 1
@.str.320 = private unnamed_addr constant [8 x i8] c"-format\00", align 1
@.str.321 = private unnamed_addr constant [7 x i8] c"+frame\00", align 1
@.str.322 = private unnamed_addr constant [7 x i8] c"-frame\00", align 1
@.str.323 = private unnamed_addr constant [6 x i8] c"+fuzz\00", align 1
@.str.324 = private unnamed_addr constant [6 x i8] c"-fuzz\00", align 1
@.str.325 = private unnamed_addr constant [4 x i8] c"+fx\00", align 1
@.str.326 = private unnamed_addr constant [4 x i8] c"-fx\00", align 1
@.str.327 = private unnamed_addr constant [7 x i8] c"+gamma\00", align 1
@.str.328 = private unnamed_addr constant [7 x i8] c"-gamma\00", align 1
@.str.329 = private unnamed_addr constant [10 x i8] c"+gaussian\00", align 1
@.str.330 = private unnamed_addr constant [10 x i8] c"-gaussian\00", align 1
@.str.331 = private unnamed_addr constant [15 x i8] c"+gaussian-blur\00", align 1
@.str.332 = private unnamed_addr constant [15 x i8] c"-gaussian-blur\00", align 1
@.str.333 = private unnamed_addr constant [10 x i8] c"+geometry\00", align 1
@.str.334 = private unnamed_addr constant [10 x i8] c"-geometry\00", align 1
@.str.335 = private unnamed_addr constant [9 x i8] c"+gravity\00", align 1
@.str.336 = private unnamed_addr constant [9 x i8] c"-gravity\00", align 1
@.str.337 = private unnamed_addr constant [11 x i8] c"+grayscale\00", align 1
@.str.338 = private unnamed_addr constant [11 x i8] c"-grayscale\00", align 1
@.str.339 = private unnamed_addr constant [15 x i8] c"+green-primary\00", align 1
@.str.340 = private unnamed_addr constant [15 x i8] c"-green-primary\00", align 1
@.str.341 = private unnamed_addr constant [11 x i8] c"+hald-clut\00", align 1
@.str.342 = private unnamed_addr constant [11 x i8] c"-hald-clut\00", align 1
@.str.343 = private unnamed_addr constant [6 x i8] c"+help\00", align 1
@.str.344 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.345 = private unnamed_addr constant [17 x i8] c"+highlight-color\00", align 1
@.str.346 = private unnamed_addr constant [17 x i8] c"-highlight-color\00", align 1
@.str.347 = private unnamed_addr constant [13 x i8] c"+hough-lines\00", align 1
@.str.348 = private unnamed_addr constant [13 x i8] c"-hough-lines\00", align 1
@.str.349 = private unnamed_addr constant [14 x i8] c"+iconGeometry\00", align 1
@.str.350 = private unnamed_addr constant [14 x i8] c"-iconGeometry\00", align 1
@.str.351 = private unnamed_addr constant [8 x i8] c"+iconic\00", align 1
@.str.352 = private unnamed_addr constant [8 x i8] c"-iconic\00", align 1
@.str.353 = private unnamed_addr constant [10 x i8] c"+identify\00", align 1
@.str.354 = private unnamed_addr constant [10 x i8] c"-identify\00", align 1
@.str.355 = private unnamed_addr constant [5 x i8] c"+ift\00", align 1
@.str.356 = private unnamed_addr constant [5 x i8] c"-ift\00", align 1
@.str.357 = private unnamed_addr constant [11 x i8] c"+immutable\00", align 1
@.str.358 = private unnamed_addr constant [11 x i8] c"-immutable\00", align 1
@.str.359 = private unnamed_addr constant [9 x i8] c"+implode\00", align 1
@.str.360 = private unnamed_addr constant [9 x i8] c"-implode\00", align 1
@.str.361 = private unnamed_addr constant [8 x i8] c"+insert\00", align 1
@.str.362 = private unnamed_addr constant [8 x i8] c"-insert\00", align 1
@.str.363 = private unnamed_addr constant [11 x i8] c"+intensity\00", align 1
@.str.364 = private unnamed_addr constant [11 x i8] c"-intensity\00", align 1
@.str.365 = private unnamed_addr constant [8 x i8] c"+intent\00", align 1
@.str.366 = private unnamed_addr constant [8 x i8] c"-intent\00", align 1
@.str.367 = private unnamed_addr constant [11 x i8] c"+interlace\00", align 1
@.str.368 = private unnamed_addr constant [11 x i8] c"-interlace\00", align 1
@.str.369 = private unnamed_addr constant [19 x i8] c"+interline-spacing\00", align 1
@.str.370 = private unnamed_addr constant [19 x i8] c"-interline-spacing\00", align 1
@.str.371 = private unnamed_addr constant [13 x i8] c"+interpolate\00", align 1
@.str.372 = private unnamed_addr constant [13 x i8] c"-interpolate\00", align 1
@.str.373 = private unnamed_addr constant [22 x i8] c"+interpolative-resize\00", align 1
@.str.374 = private unnamed_addr constant [22 x i8] c"-interpolative-resize\00", align 1
@.str.375 = private unnamed_addr constant [19 x i8] c"+interword-spacing\00", align 1
@.str.376 = private unnamed_addr constant [19 x i8] c"-interword-spacing\00", align 1
@.str.377 = private unnamed_addr constant [9 x i8] c"+kerning\00", align 1
@.str.378 = private unnamed_addr constant [9 x i8] c"-kerning\00", align 1
@.str.379 = private unnamed_addr constant [7 x i8] c"+label\00", align 1
@.str.380 = private unnamed_addr constant [7 x i8] c"-label\00", align 1
@.str.381 = private unnamed_addr constant [5 x i8] c"+lat\00", align 1
@.str.382 = private unnamed_addr constant [5 x i8] c"-lat\00", align 1
@.str.383 = private unnamed_addr constant [8 x i8] c"+layers\00", align 1
@.str.384 = private unnamed_addr constant [8 x i8] c"-layers\00", align 1
@.str.385 = private unnamed_addr constant [7 x i8] c"+level\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"-level\00", align 1
@.str.387 = private unnamed_addr constant [14 x i8] c"+level-colors\00", align 1
@.str.388 = private unnamed_addr constant [14 x i8] c"-level-colors\00", align 1
@.str.389 = private unnamed_addr constant [7 x i8] c"+limit\00", align 1
@.str.390 = private unnamed_addr constant [7 x i8] c"-limit\00", align 1
@.str.391 = private unnamed_addr constant [16 x i8] c"+linear-stretch\00", align 1
@.str.392 = private unnamed_addr constant [16 x i8] c"-linear-stretch\00", align 1
@.str.393 = private unnamed_addr constant [11 x i8] c"+linewidth\00", align 1
@.str.394 = private unnamed_addr constant [11 x i8] c"-linewidth\00", align 1
@.str.395 = private unnamed_addr constant [16 x i8] c"+liquid-rescale\00", align 1
@.str.396 = private unnamed_addr constant [16 x i8] c"-liquid-rescale\00", align 1
@.str.397 = private unnamed_addr constant [6 x i8] c"+list\00", align 1
@.str.398 = private unnamed_addr constant [6 x i8] c"-list\00", align 1
@.str.399 = private unnamed_addr constant [5 x i8] c"+log\00", align 1
@.str.400 = private unnamed_addr constant [5 x i8] c"-log\00", align 1
@.str.401 = private unnamed_addr constant [6 x i8] c"+loop\00", align 1
@.str.402 = private unnamed_addr constant [6 x i8] c"-loop\00", align 1
@.str.403 = private unnamed_addr constant [16 x i8] c"+lowlight-color\00", align 1
@.str.404 = private unnamed_addr constant [16 x i8] c"-lowlight-color\00", align 1
@.str.405 = private unnamed_addr constant [9 x i8] c"+magnify\00", align 1
@.str.406 = private unnamed_addr constant [9 x i8] c"-magnify\00", align 1
@.str.407 = private unnamed_addr constant [5 x i8] c"+map\00", align 1
@.str.408 = private unnamed_addr constant [5 x i8] c"-map\00", align 1
@.str.409 = private unnamed_addr constant [6 x i8] c"+mask\00", align 1
@.str.410 = private unnamed_addr constant [6 x i8] c"-mask\00", align 1
@.str.411 = private unnamed_addr constant [7 x i8] c"+matte\00", align 1
@.str.412 = private unnamed_addr constant [7 x i8] c"-matte\00", align 1
@.str.413 = private unnamed_addr constant [12 x i8] c"+mattecolor\00", align 1
@.str.414 = private unnamed_addr constant [12 x i8] c"-mattecolor\00", align 1
@.str.415 = private unnamed_addr constant [9 x i8] c"+maximum\00", align 1
@.str.416 = private unnamed_addr constant [9 x i8] c"-maximum\00", align 1
@.str.417 = private unnamed_addr constant [12 x i8] c"+mean-shift\00", align 1
@.str.418 = private unnamed_addr constant [12 x i8] c"-mean-shift\00", align 1
@.str.419 = private unnamed_addr constant [8 x i8] c"+median\00", align 1
@.str.420 = private unnamed_addr constant [8 x i8] c"-median\00", align 1
@.str.421 = private unnamed_addr constant [8 x i8] c"+metric\00", align 1
@.str.422 = private unnamed_addr constant [8 x i8] c"-metric\00", align 1
@.str.423 = private unnamed_addr constant [9 x i8] c"+minimum\00", align 1
@.str.424 = private unnamed_addr constant [9 x i8] c"-minimum\00", align 1
@.str.425 = private unnamed_addr constant [6 x i8] c"+mode\00", align 1
@.str.426 = private unnamed_addr constant [6 x i8] c"-mode\00", align 1
@.str.427 = private unnamed_addr constant [10 x i8] c"+modulate\00", align 1
@.str.428 = private unnamed_addr constant [10 x i8] c"-modulate\00", align 1
@.str.429 = private unnamed_addr constant [9 x i8] c"+moments\00", align 1
@.str.430 = private unnamed_addr constant [9 x i8] c"-moments\00", align 1
@.str.431 = private unnamed_addr constant [9 x i8] c"+monitor\00", align 1
@.str.432 = private unnamed_addr constant [9 x i8] c"-monitor\00", align 1
@.str.433 = private unnamed_addr constant [12 x i8] c"+monochrome\00", align 1
@.str.434 = private unnamed_addr constant [12 x i8] c"-monochrome\00", align 1
@.str.435 = private unnamed_addr constant [7 x i8] c"+morph\00", align 1
@.str.436 = private unnamed_addr constant [7 x i8] c"-morph\00", align 1
@.str.437 = private unnamed_addr constant [12 x i8] c"+morphology\00", align 1
@.str.438 = private unnamed_addr constant [12 x i8] c"-morphology\00", align 1
@.str.439 = private unnamed_addr constant [8 x i8] c"+mosaic\00", align 1
@.str.440 = private unnamed_addr constant [8 x i8] c"-mosaic\00", align 1
@.str.441 = private unnamed_addr constant [13 x i8] c"+motion-blur\00", align 1
@.str.442 = private unnamed_addr constant [13 x i8] c"-motion-blur\00", align 1
@.str.443 = private unnamed_addr constant [6 x i8] c"+name\00", align 1
@.str.444 = private unnamed_addr constant [6 x i8] c"-name\00", align 1
@.str.445 = private unnamed_addr constant [8 x i8] c"+negate\00", align 1
@.str.446 = private unnamed_addr constant [8 x i8] c"-negate\00", align 1
@.str.447 = private unnamed_addr constant [7 x i8] c"+noise\00", align 1
@.str.448 = private unnamed_addr constant [7 x i8] c"-noise\00", align 1
@.str.449 = private unnamed_addr constant [6 x i8] c"+noop\00", align 1
@.str.450 = private unnamed_addr constant [6 x i8] c"-noop\00", align 1
@.str.451 = private unnamed_addr constant [11 x i8] c"+normalize\00", align 1
@.str.452 = private unnamed_addr constant [11 x i8] c"-normalize\00", align 1
@.str.453 = private unnamed_addr constant [8 x i8] c"+opaque\00", align 1
@.str.454 = private unnamed_addr constant [8 x i8] c"-opaque\00", align 1
@.str.455 = private unnamed_addr constant [16 x i8] c"+ordered-dither\00", align 1
@.str.456 = private unnamed_addr constant [16 x i8] c"-ordered-dither\00", align 1
@.str.457 = private unnamed_addr constant [8 x i8] c"+orient\00", align 1
@.str.458 = private unnamed_addr constant [8 x i8] c"-orient\00", align 1
@.str.459 = private unnamed_addr constant [8 x i8] c"+origin\00", align 1
@.str.460 = private unnamed_addr constant [8 x i8] c"-origin\00", align 1
@.str.461 = private unnamed_addr constant [6 x i8] c"+page\00", align 1
@.str.462 = private unnamed_addr constant [6 x i8] c"-page\00", align 1
@.str.463 = private unnamed_addr constant [7 x i8] c"+paint\00", align 1
@.str.464 = private unnamed_addr constant [7 x i8] c"-paint\00", align 1
@.str.465 = private unnamed_addr constant [6 x i8] c"+path\00", align 1
@.str.466 = private unnamed_addr constant [6 x i8] c"-path\00", align 1
@.str.467 = private unnamed_addr constant [7 x i8] c"+pause\00", align 1
@.str.468 = private unnamed_addr constant [7 x i8] c"-pause\00", align 1
@.str.469 = private unnamed_addr constant [12 x i8] c"+passphrase\00", align 1
@.str.470 = private unnamed_addr constant [12 x i8] c"-passphrase\00", align 1
@.str.471 = private unnamed_addr constant [5 x i8] c"+pen\00", align 1
@.str.472 = private unnamed_addr constant [5 x i8] c"-pen\00", align 1
@.str.473 = private unnamed_addr constant [6 x i8] c"+ping\00", align 1
@.str.474 = private unnamed_addr constant [6 x i8] c"-ping\00", align 1
@.str.475 = private unnamed_addr constant [6 x i8] c"+poly\00", align 1
@.str.476 = private unnamed_addr constant [6 x i8] c"-poly\00", align 1
@.str.477 = private unnamed_addr constant [11 x i8] c"+pointsize\00", align 1
@.str.478 = private unnamed_addr constant [11 x i8] c"-pointsize\00", align 1
@.str.479 = private unnamed_addr constant [10 x i8] c"+polaroid\00", align 1
@.str.480 = private unnamed_addr constant [10 x i8] c"-polaroid\00", align 1
@.str.481 = private unnamed_addr constant [11 x i8] c"+posterize\00", align 1
@.str.482 = private unnamed_addr constant [11 x i8] c"-posterize\00", align 1
@.str.483 = private unnamed_addr constant [9 x i8] c"+preview\00", align 1
@.str.484 = private unnamed_addr constant [9 x i8] c"-preview\00", align 1
@.str.485 = private unnamed_addr constant [7 x i8] c"+print\00", align 1
@.str.486 = private unnamed_addr constant [7 x i8] c"-print\00", align 1
@.str.487 = private unnamed_addr constant [9 x i8] c"+process\00", align 1
@.str.488 = private unnamed_addr constant [9 x i8] c"-process\00", align 1
@.str.489 = private unnamed_addr constant [9 x i8] c"+profile\00", align 1
@.str.490 = private unnamed_addr constant [9 x i8] c"-profile\00", align 1
@.str.491 = private unnamed_addr constant [9 x i8] c"+quality\00", align 1
@.str.492 = private unnamed_addr constant [9 x i8] c"-quality\00", align 1
@.str.493 = private unnamed_addr constant [10 x i8] c"+quantize\00", align 1
@.str.494 = private unnamed_addr constant [10 x i8] c"-quantize\00", align 1
@.str.495 = private unnamed_addr constant [7 x i8] c"+quiet\00", align 1
@.str.496 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@.str.497 = private unnamed_addr constant [13 x i8] c"+radial-blur\00", align 1
@.str.498 = private unnamed_addr constant [13 x i8] c"-radial-blur\00", align 1
@.str.499 = private unnamed_addr constant [7 x i8] c"+raise\00", align 1
@.str.500 = private unnamed_addr constant [7 x i8] c"-raise\00", align 1
@.str.501 = private unnamed_addr constant [18 x i8] c"+random-threshold\00", align 1
@.str.502 = private unnamed_addr constant [18 x i8] c"-random-threshold\00", align 1
@.str.503 = private unnamed_addr constant [9 x i8] c"+recolor\00", align 1
@.str.504 = private unnamed_addr constant [9 x i8] c"-recolor\00", align 1
@.str.505 = private unnamed_addr constant [13 x i8] c"+red-primary\00", align 1
@.str.506 = private unnamed_addr constant [13 x i8] c"-red-primary\00", align 1
@.str.507 = private unnamed_addr constant [17 x i8] c"+regard-warnings\00", align 1
@.str.508 = private unnamed_addr constant [17 x i8] c"-regard-warnings\00", align 1
@.str.509 = private unnamed_addr constant [8 x i8] c"+region\00", align 1
@.str.510 = private unnamed_addr constant [8 x i8] c"-region\00", align 1
@.str.511 = private unnamed_addr constant [8 x i8] c"+remote\00", align 1
@.str.512 = private unnamed_addr constant [8 x i8] c"-remote\00", align 1
@.str.513 = private unnamed_addr constant [8 x i8] c"+render\00", align 1
@.str.514 = private unnamed_addr constant [8 x i8] c"-render\00", align 1
@.str.515 = private unnamed_addr constant [7 x i8] c"+remap\00", align 1
@.str.516 = private unnamed_addr constant [7 x i8] c"-remap\00", align 1
@.str.517 = private unnamed_addr constant [8 x i8] c"+repage\00", align 1
@.str.518 = private unnamed_addr constant [8 x i8] c"-repage\00", align 1
@.str.519 = private unnamed_addr constant [10 x i8] c"+resample\00", align 1
@.str.520 = private unnamed_addr constant [10 x i8] c"-resample\00", align 1
@.str.521 = private unnamed_addr constant [8 x i8] c"+resize\00", align 1
@.str.522 = private unnamed_addr constant [8 x i8] c"-resize\00", align 1
@.str.523 = private unnamed_addr constant [21 x i8] c"+respect-parenthesis\00", align 1
@.str.524 = private unnamed_addr constant [21 x i8] c"-respect-parenthesis\00", align 1
@.str.525 = private unnamed_addr constant [9 x i8] c"+reverse\00", align 1
@.str.526 = private unnamed_addr constant [9 x i8] c"-reverse\00", align 1
@.str.527 = private unnamed_addr constant [6 x i8] c"+roll\00", align 1
@.str.528 = private unnamed_addr constant [6 x i8] c"-roll\00", align 1
@.str.529 = private unnamed_addr constant [8 x i8] c"+rotate\00", align 1
@.str.530 = private unnamed_addr constant [8 x i8] c"-rotate\00", align 1
@.str.531 = private unnamed_addr constant [17 x i8] c"-rotational-blur\00", align 1
@.str.532 = private unnamed_addr constant [8 x i8] c"+sample\00", align 1
@.str.533 = private unnamed_addr constant [8 x i8] c"-sample\00", align 1
@.str.534 = private unnamed_addr constant [17 x i8] c"+sampling-factor\00", align 1
@.str.535 = private unnamed_addr constant [17 x i8] c"-sampling-factor\00", align 1
@.str.536 = private unnamed_addr constant [6 x i8] c"+sans\00", align 1
@.str.537 = private unnamed_addr constant [6 x i8] c"-sans\00", align 1
@.str.538 = private unnamed_addr constant [7 x i8] c"+sans0\00", align 1
@.str.539 = private unnamed_addr constant [7 x i8] c"-sans0\00", align 1
@.str.540 = private unnamed_addr constant [7 x i8] c"+sans2\00", align 1
@.str.541 = private unnamed_addr constant [7 x i8] c"-sans2\00", align 1
@.str.542 = private unnamed_addr constant [7 x i8] c"+scale\00", align 1
@.str.543 = private unnamed_addr constant [7 x i8] c"-scale\00", align 1
@.str.544 = private unnamed_addr constant [7 x i8] c"+scene\00", align 1
@.str.545 = private unnamed_addr constant [7 x i8] c"-scene\00", align 1
@.str.546 = private unnamed_addr constant [8 x i8] c"+scenes\00", align 1
@.str.547 = private unnamed_addr constant [8 x i8] c"-scenes\00", align 1
@.str.548 = private unnamed_addr constant [8 x i8] c"+screen\00", align 1
@.str.549 = private unnamed_addr constant [8 x i8] c"-screen\00", align 1
@.str.550 = private unnamed_addr constant [6 x i8] c"+seed\00", align 1
@.str.551 = private unnamed_addr constant [6 x i8] c"-seed\00", align 1
@.str.552 = private unnamed_addr constant [9 x i8] c"+segment\00", align 1
@.str.553 = private unnamed_addr constant [9 x i8] c"-segment\00", align 1
@.str.554 = private unnamed_addr constant [16 x i8] c"+selective-blur\00", align 1
@.str.555 = private unnamed_addr constant [16 x i8] c"-selective-blur\00", align 1
@.str.556 = private unnamed_addr constant [10 x i8] c"+separate\00", align 1
@.str.557 = private unnamed_addr constant [10 x i8] c"-separate\00", align 1
@.str.558 = private unnamed_addr constant [12 x i8] c"+sepia-tone\00", align 1
@.str.559 = private unnamed_addr constant [12 x i8] c"-sepia-tone\00", align 1
@.str.560 = private unnamed_addr constant [5 x i8] c"+set\00", align 1
@.str.561 = private unnamed_addr constant [5 x i8] c"-set\00", align 1
@.str.562 = private unnamed_addr constant [7 x i8] c"+shade\00", align 1
@.str.563 = private unnamed_addr constant [7 x i8] c"-shade\00", align 1
@.str.564 = private unnamed_addr constant [8 x i8] c"+shadow\00", align 1
@.str.565 = private unnamed_addr constant [8 x i8] c"-shadow\00", align 1
@.str.566 = private unnamed_addr constant [15 x i8] c"+shared-memory\00", align 1
@.str.567 = private unnamed_addr constant [15 x i8] c"-shared-memory\00", align 1
@.str.568 = private unnamed_addr constant [9 x i8] c"+sharpen\00", align 1
@.str.569 = private unnamed_addr constant [9 x i8] c"-sharpen\00", align 1
@.str.570 = private unnamed_addr constant [7 x i8] c"+shave\00", align 1
@.str.571 = private unnamed_addr constant [7 x i8] c"-shave\00", align 1
@.str.572 = private unnamed_addr constant [7 x i8] c"+shear\00", align 1
@.str.573 = private unnamed_addr constant [7 x i8] c"-shear\00", align 1
@.str.574 = private unnamed_addr constant [20 x i8] c"+sigmoidal-contrast\00", align 1
@.str.575 = private unnamed_addr constant [20 x i8] c"-sigmoidal-contrast\00", align 1
@.str.576 = private unnamed_addr constant [8 x i8] c"+silent\00", align 1
@.str.577 = private unnamed_addr constant [8 x i8] c"-silent\00", align 1
@.str.578 = private unnamed_addr constant [22 x i8] c"+similarity-threshold\00", align 1
@.str.579 = private unnamed_addr constant [22 x i8] c"-similarity-threshold\00", align 1
@.str.580 = private unnamed_addr constant [6 x i8] c"+size\00", align 1
@.str.581 = private unnamed_addr constant [6 x i8] c"-size\00", align 1
@.str.582 = private unnamed_addr constant [8 x i8] c"+sketch\00", align 1
@.str.583 = private unnamed_addr constant [8 x i8] c"-sketch\00", align 1
@.str.584 = private unnamed_addr constant [7 x i8] c"+smush\00", align 1
@.str.585 = private unnamed_addr constant [7 x i8] c"-smush\00", align 1
@.str.586 = private unnamed_addr constant [7 x i8] c"+snaps\00", align 1
@.str.587 = private unnamed_addr constant [7 x i8] c"-snaps\00", align 1
@.str.588 = private unnamed_addr constant [10 x i8] c"+solarize\00", align 1
@.str.589 = private unnamed_addr constant [10 x i8] c"-solarize\00", align 1
@.str.590 = private unnamed_addr constant [14 x i8] c"+sparse-color\00", align 1
@.str.591 = private unnamed_addr constant [14 x i8] c"-sparse-color\00", align 1
@.str.592 = private unnamed_addr constant [8 x i8] c"+splice\00", align 1
@.str.593 = private unnamed_addr constant [8 x i8] c"-splice\00", align 1
@.str.594 = private unnamed_addr constant [8 x i8] c"+spread\00", align 1
@.str.595 = private unnamed_addr constant [8 x i8] c"-spread\00", align 1
@.str.596 = private unnamed_addr constant [11 x i8] c"+statistic\00", align 1
@.str.597 = private unnamed_addr constant [11 x i8] c"-statistic\00", align 1
@.str.598 = private unnamed_addr constant [9 x i8] c"+stegano\00", align 1
@.str.599 = private unnamed_addr constant [9 x i8] c"-stegano\00", align 1
@.str.600 = private unnamed_addr constant [8 x i8] c"+stereo\00", align 1
@.str.601 = private unnamed_addr constant [8 x i8] c"-stereo\00", align 1
@.str.602 = private unnamed_addr constant [9 x i8] c"+stretch\00", align 1
@.str.603 = private unnamed_addr constant [9 x i8] c"-stretch\00", align 1
@.str.604 = private unnamed_addr constant [7 x i8] c"+strip\00", align 1
@.str.605 = private unnamed_addr constant [7 x i8] c"-strip\00", align 1
@.str.606 = private unnamed_addr constant [8 x i8] c"+stroke\00", align 1
@.str.607 = private unnamed_addr constant [8 x i8] c"-stroke\00", align 1
@.str.608 = private unnamed_addr constant [13 x i8] c"+strokewidth\00", align 1
@.str.609 = private unnamed_addr constant [13 x i8] c"-strokewidth\00", align 1
@.str.610 = private unnamed_addr constant [7 x i8] c"+style\00", align 1
@.str.611 = private unnamed_addr constant [7 x i8] c"-style\00", align 1
@.str.612 = private unnamed_addr constant [17 x i8] c"+subimage-search\00", align 1
@.str.613 = private unnamed_addr constant [17 x i8] c"-subimage-search\00", align 1
@.str.614 = private unnamed_addr constant [6 x i8] c"+swap\00", align 1
@.str.615 = private unnamed_addr constant [6 x i8] c"-swap\00", align 1
@.str.616 = private unnamed_addr constant [7 x i8] c"+swirl\00", align 1
@.str.617 = private unnamed_addr constant [7 x i8] c"-swirl\00", align 1
@.str.618 = private unnamed_addr constant [13 x i8] c"+synchronize\00", align 1
@.str.619 = private unnamed_addr constant [13 x i8] c"-synchronize\00", align 1
@.str.620 = private unnamed_addr constant [7 x i8] c"+taint\00", align 1
@.str.621 = private unnamed_addr constant [7 x i8] c"-taint\00", align 1
@.str.622 = private unnamed_addr constant [11 x i8] c"+text-font\00", align 1
@.str.623 = private unnamed_addr constant [11 x i8] c"-text-font\00", align 1
@.str.624 = private unnamed_addr constant [9 x i8] c"+texture\00", align 1
@.str.625 = private unnamed_addr constant [9 x i8] c"-texture\00", align 1
@.str.626 = private unnamed_addr constant [11 x i8] c"+threshold\00", align 1
@.str.627 = private unnamed_addr constant [11 x i8] c"-threshold\00", align 1
@.str.628 = private unnamed_addr constant [11 x i8] c"+thumbnail\00", align 1
@.str.629 = private unnamed_addr constant [11 x i8] c"-thumbnail\00", align 1
@.str.630 = private unnamed_addr constant [6 x i8] c"+tile\00", align 1
@.str.631 = private unnamed_addr constant [6 x i8] c"-tile\00", align 1
@.str.632 = private unnamed_addr constant [13 x i8] c"+tile-offset\00", align 1
@.str.633 = private unnamed_addr constant [13 x i8] c"-tile-offset\00", align 1
@.str.634 = private unnamed_addr constant [6 x i8] c"+tint\00", align 1
@.str.635 = private unnamed_addr constant [6 x i8] c"-tint\00", align 1
@.str.636 = private unnamed_addr constant [7 x i8] c"+title\00", align 1
@.str.637 = private unnamed_addr constant [7 x i8] c"-title\00", align 1
@.str.638 = private unnamed_addr constant [11 x i8] c"+transform\00", align 1
@.str.639 = private unnamed_addr constant [11 x i8] c"-transform\00", align 1
@.str.640 = private unnamed_addr constant [13 x i8] c"+transparent\00", align 1
@.str.641 = private unnamed_addr constant [13 x i8] c"-transparent\00", align 1
@.str.642 = private unnamed_addr constant [19 x i8] c"+transparent-color\00", align 1
@.str.643 = private unnamed_addr constant [19 x i8] c"-transparent-color\00", align 1
@.str.644 = private unnamed_addr constant [11 x i8] c"+transpose\00", align 1
@.str.645 = private unnamed_addr constant [11 x i8] c"-transpose\00", align 1
@.str.646 = private unnamed_addr constant [12 x i8] c"+transverse\00", align 1
@.str.647 = private unnamed_addr constant [12 x i8] c"-transverse\00", align 1
@.str.648 = private unnamed_addr constant [11 x i8] c"+treedepth\00", align 1
@.str.649 = private unnamed_addr constant [11 x i8] c"-treedepth\00", align 1
@.str.650 = private unnamed_addr constant [6 x i8] c"+trim\00", align 1
@.str.651 = private unnamed_addr constant [6 x i8] c"-trim\00", align 1
@.str.652 = private unnamed_addr constant [6 x i8] c"+type\00", align 1
@.str.653 = private unnamed_addr constant [6 x i8] c"-type\00", align 1
@.str.654 = private unnamed_addr constant [12 x i8] c"+undercolor\00", align 1
@.str.655 = private unnamed_addr constant [12 x i8] c"-undercolor\00", align 1
@.str.656 = private unnamed_addr constant [8 x i8] c"+unique\00", align 1
@.str.657 = private unnamed_addr constant [8 x i8] c"-unique\00", align 1
@.str.658 = private unnamed_addr constant [15 x i8] c"+unique-colors\00", align 1
@.str.659 = private unnamed_addr constant [15 x i8] c"-unique-colors\00", align 1
@.str.660 = private unnamed_addr constant [7 x i8] c"+units\00", align 1
@.str.661 = private unnamed_addr constant [7 x i8] c"-units\00", align 1
@.str.662 = private unnamed_addr constant [9 x i8] c"+unsharp\00", align 1
@.str.663 = private unnamed_addr constant [9 x i8] c"-unsharp\00", align 1
@.str.664 = private unnamed_addr constant [8 x i8] c"+update\00", align 1
@.str.665 = private unnamed_addr constant [8 x i8] c"-update\00", align 1
@.str.666 = private unnamed_addr constant [12 x i8] c"+use-pixmap\00", align 1
@.str.667 = private unnamed_addr constant [12 x i8] c"-use-pixmap\00", align 1
@.str.668 = private unnamed_addr constant [9 x i8] c"+verbose\00", align 1
@.str.669 = private unnamed_addr constant [9 x i8] c"-verbose\00", align 1
@.str.670 = private unnamed_addr constant [9 x i8] c"+version\00", align 1
@.str.671 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.672 = private unnamed_addr constant [6 x i8] c"+view\00", align 1
@.str.673 = private unnamed_addr constant [6 x i8] c"-view\00", align 1
@.str.674 = private unnamed_addr constant [10 x i8] c"+vignette\00", align 1
@.str.675 = private unnamed_addr constant [10 x i8] c"-vignette\00", align 1
@.str.676 = private unnamed_addr constant [15 x i8] c"+virtual-pixel\00", align 1
@.str.677 = private unnamed_addr constant [15 x i8] c"-virtual-pixel\00", align 1
@.str.678 = private unnamed_addr constant [8 x i8] c"+visual\00", align 1
@.str.679 = private unnamed_addr constant [8 x i8] c"-visual\00", align 1
@.str.680 = private unnamed_addr constant [11 x i8] c"+watermark\00", align 1
@.str.681 = private unnamed_addr constant [11 x i8] c"-watermark\00", align 1
@.str.682 = private unnamed_addr constant [6 x i8] c"+wave\00", align 1
@.str.683 = private unnamed_addr constant [6 x i8] c"-wave\00", align 1
@.str.684 = private unnamed_addr constant [8 x i8] c"+weight\00", align 1
@.str.685 = private unnamed_addr constant [8 x i8] c"-weight\00", align 1
@.str.686 = private unnamed_addr constant [13 x i8] c"+white-point\00", align 1
@.str.687 = private unnamed_addr constant [13 x i8] c"-white-point\00", align 1
@.str.688 = private unnamed_addr constant [17 x i8] c"+white-threshold\00", align 1
@.str.689 = private unnamed_addr constant [17 x i8] c"-white-threshold\00", align 1
@.str.690 = private unnamed_addr constant [8 x i8] c"+window\00", align 1
@.str.691 = private unnamed_addr constant [8 x i8] c"-window\00", align 1
@.str.692 = private unnamed_addr constant [14 x i8] c"+window-group\00", align 1
@.str.693 = private unnamed_addr constant [14 x i8] c"-window-group\00", align 1
@.str.694 = private unnamed_addr constant [7 x i8] c"+write\00", align 1
@.str.695 = private unnamed_addr constant [7 x i8] c"-write\00", align 1
@.str.696 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.697 = private unnamed_addr constant [10 x i8] c"Conjugate\00", align 1
@.str.698 = private unnamed_addr constant [7 x i8] c"Divide\00", align 1
@.str.699 = private unnamed_addr constant [15 x i8] c"MagnitudePhase\00", align 1
@.str.700 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.701 = private unnamed_addr constant [14 x i8] c"RealImaginary\00", align 1
@.str.702 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.703 = private unnamed_addr constant [5 x i8] c"Atop\00", align 1
@.str.704 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@.str.705 = private unnamed_addr constant [5 x i8] c"Blur\00", align 1
@.str.706 = private unnamed_addr constant [8 x i8] c"Bumpmap\00", align 1
@.str.707 = private unnamed_addr constant [11 x i8] c"ChangeMask\00", align 1
@.str.708 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.709 = private unnamed_addr constant [10 x i8] c"ColorBurn\00", align 1
@.str.710 = private unnamed_addr constant [11 x i8] c"ColorDodge\00", align 1
@.str.711 = private unnamed_addr constant [9 x i8] c"Colorize\00", align 1
@.str.712 = private unnamed_addr constant [10 x i8] c"CopyBlack\00", align 1
@.str.713 = private unnamed_addr constant [9 x i8] c"CopyBlue\00", align 1
@.str.714 = private unnamed_addr constant [9 x i8] c"CopyCyan\00", align 1
@.str.715 = private unnamed_addr constant [10 x i8] c"CopyGreen\00", align 1
@.str.716 = private unnamed_addr constant [12 x i8] c"CopyMagenta\00", align 1
@.str.717 = private unnamed_addr constant [12 x i8] c"CopyOpacity\00", align 1
@.str.718 = private unnamed_addr constant [8 x i8] c"CopyRed\00", align 1
@.str.719 = private unnamed_addr constant [11 x i8] c"CopyYellow\00", align 1
@.str.720 = private unnamed_addr constant [7 x i8] c"Darken\00", align 1
@.str.721 = private unnamed_addr constant [16 x i8] c"DarkenIntensity\00", align 1
@.str.722 = private unnamed_addr constant [10 x i8] c"DivideDst\00", align 1
@.str.723 = private unnamed_addr constant [10 x i8] c"DivideSrc\00", align 1
@.str.724 = private unnamed_addr constant [4 x i8] c"Dst\00", align 1
@.str.725 = private unnamed_addr constant [11 x i8] c"Difference\00", align 1
@.str.726 = private unnamed_addr constant [9 x i8] c"Displace\00", align 1
@.str.727 = private unnamed_addr constant [9 x i8] c"Dissolve\00", align 1
@.str.728 = private unnamed_addr constant [8 x i8] c"Distort\00", align 1
@.str.729 = private unnamed_addr constant [8 x i8] c"DstAtop\00", align 1
@.str.730 = private unnamed_addr constant [6 x i8] c"DstIn\00", align 1
@.str.731 = private unnamed_addr constant [7 x i8] c"DstOut\00", align 1
@.str.732 = private unnamed_addr constant [8 x i8] c"DstOver\00", align 1
@.str.733 = private unnamed_addr constant [10 x i8] c"Exclusion\00", align 1
@.str.734 = private unnamed_addr constant [10 x i8] c"HardLight\00", align 1
@.str.735 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.736 = private unnamed_addr constant [8 x i8] c"Lighten\00", align 1
@.str.737 = private unnamed_addr constant [17 x i8] c"LightenIntensity\00", align 1
@.str.738 = private unnamed_addr constant [11 x i8] c"LinearBurn\00", align 1
@.str.739 = private unnamed_addr constant [12 x i8] c"LinearDodge\00", align 1
@.str.740 = private unnamed_addr constant [12 x i8] c"LinearLight\00", align 1
@.str.741 = private unnamed_addr constant [9 x i8] c"Luminize\00", align 1
@.str.742 = private unnamed_addr constant [12 x i8] c"Mathematics\00", align 1
@.str.743 = private unnamed_addr constant [9 x i8] c"MinusDst\00", align 1
@.str.744 = private unnamed_addr constant [9 x i8] c"MinusSrc\00", align 1
@.str.745 = private unnamed_addr constant [9 x i8] c"Modulate\00", align 1
@.str.746 = private unnamed_addr constant [11 x i8] c"ModulusAdd\00", align 1
@.str.747 = private unnamed_addr constant [16 x i8] c"ModulusSubtract\00", align 1
@.str.748 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.749 = private unnamed_addr constant [4 x i8] c"Out\00", align 1
@.str.750 = private unnamed_addr constant [8 x i8] c"Overlay\00", align 1
@.str.751 = private unnamed_addr constant [5 x i8] c"Over\00", align 1
@.str.752 = private unnamed_addr constant [12 x i8] c"PegtopLight\00", align 1
@.str.753 = private unnamed_addr constant [9 x i8] c"PinLight\00", align 1
@.str.754 = private unnamed_addr constant [5 x i8] c"Plus\00", align 1
@.str.755 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.756 = private unnamed_addr constant [9 x i8] c"Saturate\00", align 1
@.str.757 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.758 = private unnamed_addr constant [10 x i8] c"SoftLight\00", align 1
@.str.759 = private unnamed_addr constant [4 x i8] c"Src\00", align 1
@.str.760 = private unnamed_addr constant [8 x i8] c"SrcAtop\00", align 1
@.str.761 = private unnamed_addr constant [6 x i8] c"SrcIn\00", align 1
@.str.762 = private unnamed_addr constant [7 x i8] c"SrcOut\00", align 1
@.str.763 = private unnamed_addr constant [8 x i8] c"SrcOver\00", align 1
@.str.764 = private unnamed_addr constant [11 x i8] c"VividLight\00", align 1
@.str.765 = private unnamed_addr constant [4 x i8] c"Xor\00", align 1
@.str.766 = private unnamed_addr constant [6 x i8] c"Minus\00", align 1
@.str.767 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.768 = private unnamed_addr constant [4 x i8] c"B44\00", align 1
@.str.769 = private unnamed_addr constant [5 x i8] c"B44A\00", align 1
@.str.770 = private unnamed_addr constant [5 x i8] c"BZip\00", align 1
@.str.771 = private unnamed_addr constant [5 x i8] c"DXT1\00", align 1
@.str.772 = private unnamed_addr constant [5 x i8] c"DXT3\00", align 1
@.str.773 = private unnamed_addr constant [5 x i8] c"DXT5\00", align 1
@.str.774 = private unnamed_addr constant [4 x i8] c"Fax\00", align 1
@.str.775 = private unnamed_addr constant [7 x i8] c"Group4\00", align 1
@.str.776 = private unnamed_addr constant [6 x i8] c"JBIG1\00", align 1
@.str.777 = private unnamed_addr constant [6 x i8] c"JBIG2\00", align 1
@.str.778 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@.str.779 = private unnamed_addr constant [9 x i8] c"JPEG2000\00", align 1
@.str.780 = private unnamed_addr constant [9 x i8] c"Lossless\00", align 1
@.str.781 = private unnamed_addr constant [13 x i8] c"LosslessJPEG\00", align 1
@.str.782 = private unnamed_addr constant [5 x i8] c"LZMA\00", align 1
@.str.783 = private unnamed_addr constant [4 x i8] c"LZW\00", align 1
@.str.784 = private unnamed_addr constant [4 x i8] c"Piz\00", align 1
@.str.785 = private unnamed_addr constant [6 x i8] c"Pxr24\00", align 1
@.str.786 = private unnamed_addr constant [4 x i8] c"RLE\00", align 1
@.str.787 = private unnamed_addr constant [4 x i8] c"Zip\00", align 1
@.str.788 = private unnamed_addr constant [17 x i8] c"RunlengthEncoded\00", align 1
@.str.789 = private unnamed_addr constant [5 x i8] c"ZipS\00", align 1
@.str.790 = private unnamed_addr constant [5 x i8] c"Byte\00", align 1
@.str.791 = private unnamed_addr constant [5 x i8] c"Long\00", align 1
@.str.792 = private unnamed_addr constant [6 x i8] c"Short\00", align 1
@.str.793 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.794 = private unnamed_addr constant [9 x i8] c"Annotate\00", align 1
@.str.795 = private unnamed_addr constant [11 x i8] c"Accelerate\00", align 1
@.str.796 = private unnamed_addr constant [5 x i8] c"Blob\00", align 1
@.str.797 = private unnamed_addr constant [6 x i8] c"Cache\00", align 1
@.str.798 = private unnamed_addr constant [6 x i8] c"Coder\00", align 1
@.str.799 = private unnamed_addr constant [10 x i8] c"Configure\00", align 1
@.str.800 = private unnamed_addr constant [10 x i8] c"Deprecate\00", align 1
@.str.801 = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@.str.802 = private unnamed_addr constant [10 x i8] c"Exception\00", align 1
@.str.803 = private unnamed_addr constant [7 x i8] c"Locale\00", align 1
@.str.804 = private unnamed_addr constant [7 x i8] c"Module\00", align 1
@.str.805 = private unnamed_addr constant [7 x i8] c"Policy\00", align 1
@.str.806 = private unnamed_addr constant [9 x i8] c"Resource\00", align 1
@.str.807 = private unnamed_addr constant [6 x i8] c"Trace\00", align 1
@.str.808 = private unnamed_addr constant [10 x i8] c"Transform\00", align 1
@.str.809 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.810 = private unnamed_addr constant [5 x i8] c"Wand\00", align 1
@.str.811 = private unnamed_addr constant [4 x i8] c"X11\00", align 1
@.str.812 = private unnamed_addr constant [12 x i8] c"LineThrough\00", align 1
@.str.813 = private unnamed_addr constant [9 x i8] c"Overline\00", align 1
@.str.814 = private unnamed_addr constant [10 x i8] c"Underline\00", align 1
@.str.815 = private unnamed_addr constant [14 x i8] c"right-to-left\00", align 1
@.str.816 = private unnamed_addr constant [14 x i8] c"left-to-right\00", align 1
@.str.817 = private unnamed_addr constant [9 x i8] c"Previous\00", align 1
@.str.818 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.819 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.820 = private unnamed_addr constant [7 x i8] c"Affine\00", align 1
@.str.821 = private unnamed_addr constant [17 x i8] c"AffineProjection\00", align 1
@.str.822 = private unnamed_addr constant [21 x i8] c"ScaleRotateTranslate\00", align 1
@.str.823 = private unnamed_addr constant [4 x i8] c"SRT\00", align 1
@.str.824 = private unnamed_addr constant [12 x i8] c"Perspective\00", align 1
@.str.825 = private unnamed_addr constant [22 x i8] c"PerspectiveProjection\00", align 1
@.str.826 = private unnamed_addr constant [9 x i8] c"Bilinear\00", align 1
@.str.827 = private unnamed_addr constant [16 x i8] c"BilinearForward\00", align 1
@.str.828 = private unnamed_addr constant [16 x i8] c"BilinearReverse\00", align 1
@.str.829 = private unnamed_addr constant [11 x i8] c"Polynomial\00", align 1
@.str.830 = private unnamed_addr constant [4 x i8] c"Arc\00", align 1
@.str.831 = private unnamed_addr constant [6 x i8] c"Polar\00", align 1
@.str.832 = private unnamed_addr constant [8 x i8] c"DePolar\00", align 1
@.str.833 = private unnamed_addr constant [7 x i8] c"Barrel\00", align 1
@.str.834 = private unnamed_addr constant [15 x i8] c"Cylinder2Plane\00", align 1
@.str.835 = private unnamed_addr constant [15 x i8] c"Plane2Cylinder\00", align 1
@.str.836 = private unnamed_addr constant [14 x i8] c"BarrelInverse\00", align 1
@.str.837 = private unnamed_addr constant [9 x i8] c"Shepards\00", align 1
@.str.838 = private unnamed_addr constant [7 x i8] c"Resize\00", align 1
@.str.839 = private unnamed_addr constant [15 x i8] c"FloydSteinberg\00", align 1
@.str.840 = private unnamed_addr constant [10 x i8] c"Riemersma\00", align 1
@.str.841 = private unnamed_addr constant [4 x i8] c"LSB\00", align 1
@.str.842 = private unnamed_addr constant [4 x i8] c"MSB\00", align 1
@.str.843 = private unnamed_addr constant [4 x i8] c"Abs\00", align 1
@.str.844 = private unnamed_addr constant [11 x i8] c"AddModulus\00", align 1
@.str.845 = private unnamed_addr constant [4 x i8] c"And\00", align 1
@.str.846 = private unnamed_addr constant [4 x i8] c"Cos\00", align 1
@.str.847 = private unnamed_addr constant [7 x i8] c"Cosine\00", align 1
@.str.848 = private unnamed_addr constant [4 x i8] c"Exp\00", align 1
@.str.849 = private unnamed_addr constant [12 x i8] c"Exponential\00", align 1
@.str.850 = private unnamed_addr constant [14 x i8] c"GaussianNoise\00", align 1
@.str.851 = private unnamed_addr constant [13 x i8] c"ImpulseNoise\00", align 1
@.str.852 = private unnamed_addr constant [15 x i8] c"LaplacianNoise\00", align 1
@.str.853 = private unnamed_addr constant [10 x i8] c"LeftShift\00", align 1
@.str.854 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.855 = private unnamed_addr constant [5 x i8] c"Mean\00", align 1
@.str.856 = private unnamed_addr constant [7 x i8] c"Median\00", align 1
@.str.857 = private unnamed_addr constant [4 x i8] c"Min\00", align 1
@.str.858 = private unnamed_addr constant [20 x i8] c"MultiplicativeNoise\00", align 1
@.str.859 = private unnamed_addr constant [3 x i8] c"Or\00", align 1
@.str.860 = private unnamed_addr constant [13 x i8] c"PoissonNoise\00", align 1
@.str.861 = private unnamed_addr constant [4 x i8] c"Pow\00", align 1
@.str.862 = private unnamed_addr constant [11 x i8] c"RightShift\00", align 1
@.str.863 = private unnamed_addr constant [4 x i8] c"Sin\00", align 1
@.str.864 = private unnamed_addr constant [5 x i8] c"Sine\00", align 1
@.str.865 = private unnamed_addr constant [4 x i8] c"Sum\00", align 1
@.str.866 = private unnamed_addr constant [15 x i8] c"ThresholdBlack\00", align 1
@.str.867 = private unnamed_addr constant [15 x i8] c"ThresholdWhite\00", align 1
@.str.868 = private unnamed_addr constant [13 x i8] c"UniformNoise\00", align 1
@.str.869 = private unnamed_addr constant [8 x i8] c"Evenodd\00", align 1
@.str.870 = private unnamed_addr constant [8 x i8] c"NonZero\00", align 1
@.str.871 = private unnamed_addr constant [9 x i8] c"Bartlett\00", align 1
@.str.872 = private unnamed_addr constant [9 x i8] c"Blackman\00", align 1
@.str.873 = private unnamed_addr constant [7 x i8] c"Bohman\00", align 1
@.str.874 = private unnamed_addr constant [4 x i8] c"Box\00", align 1
@.str.875 = private unnamed_addr constant [7 x i8] c"Catrom\00", align 1
@.str.876 = private unnamed_addr constant [6 x i8] c"Cubic\00", align 1
@.str.877 = private unnamed_addr constant [9 x i8] c"Gaussian\00", align 1
@.str.878 = private unnamed_addr constant [8 x i8] c"Hamming\00", align 1
@.str.879 = private unnamed_addr constant [5 x i8] c"Hann\00", align 1
@.str.880 = private unnamed_addr constant [8 x i8] c"Hanning\00", align 1
@.str.881 = private unnamed_addr constant [8 x i8] c"Hermite\00", align 1
@.str.882 = private unnamed_addr constant [5 x i8] c"Jinc\00", align 1
@.str.883 = private unnamed_addr constant [7 x i8] c"Kaiser\00", align 1
@.str.884 = private unnamed_addr constant [9 x i8] c"Lagrange\00", align 1
@.str.885 = private unnamed_addr constant [8 x i8] c"Lanczos\00", align 1
@.str.886 = private unnamed_addr constant [9 x i8] c"Lanczos2\00", align 1
@.str.887 = private unnamed_addr constant [14 x i8] c"Lanczos2Sharp\00", align 1
@.str.888 = private unnamed_addr constant [14 x i8] c"LanczosRadius\00", align 1
@.str.889 = private unnamed_addr constant [13 x i8] c"LanczosSharp\00", align 1
@.str.890 = private unnamed_addr constant [9 x i8] c"Mitchell\00", align 1
@.str.891 = private unnamed_addr constant [7 x i8] c"Parzen\00", align 1
@.str.892 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.893 = private unnamed_addr constant [10 x i8] c"Quadratic\00", align 1
@.str.894 = private unnamed_addr constant [9 x i8] c"Robidoux\00", align 1
@.str.895 = private unnamed_addr constant [14 x i8] c"RobidouxSharp\00", align 1
@.str.896 = private unnamed_addr constant [5 x i8] c"Sinc\00", align 1
@.str.897 = private unnamed_addr constant [9 x i8] c"SincFast\00", align 1
@.str.898 = private unnamed_addr constant [7 x i8] c"Spline\00", align 1
@.str.899 = private unnamed_addr constant [9 x i8] c"Triangle\00", align 1
@.str.900 = private unnamed_addr constant [6 x i8] c"Welch\00", align 1
@.str.901 = private unnamed_addr constant [6 x i8] c"Welsh\00", align 1
@.str.902 = private unnamed_addr constant [7 x i8] c"Bessel\00", align 1
@.str.903 = private unnamed_addr constant [9 x i8] c"Sinusoid\00", align 1
@.str.904 = private unnamed_addr constant [7 x i8] c"ArcSin\00", align 1
@.str.905 = private unnamed_addr constant [7 x i8] c"ArcTan\00", align 1
@.str.906 = private unnamed_addr constant [5 x i8] c"East\00", align 1
@.str.907 = private unnamed_addr constant [7 x i8] c"Forget\00", align 1
@.str.908 = private unnamed_addr constant [10 x i8] c"NorthEast\00", align 1
@.str.909 = private unnamed_addr constant [6 x i8] c"North\00", align 1
@.str.910 = private unnamed_addr constant [10 x i8] c"NorthWest\00", align 1
@.str.911 = private unnamed_addr constant [10 x i8] c"SouthEast\00", align 1
@.str.912 = private unnamed_addr constant [6 x i8] c"South\00", align 1
@.str.913 = private unnamed_addr constant [10 x i8] c"SouthWest\00", align 1
@.str.914 = private unnamed_addr constant [5 x i8] c"West\00", align 1
@.str.915 = private unnamed_addr constant [7 x i8] c"Static\00", align 1
@.str.916 = private unnamed_addr constant [8 x i8] c"Average\00", align 1
@.str.917 = private unnamed_addr constant [11 x i8] c"Brightness\00", align 1
@.str.918 = private unnamed_addr constant [3 x i8] c"MS\00", align 1
@.str.919 = private unnamed_addr constant [16 x i8] c"Rec601Luminance\00", align 1
@.str.920 = private unnamed_addr constant [16 x i8] c"Rec709Luminance\00", align 1
@.str.921 = private unnamed_addr constant [4 x i8] c"RMS\00", align 1
@.str.922 = private unnamed_addr constant [9 x i8] c"Absolute\00", align 1
@.str.923 = private unnamed_addr constant [11 x i8] c"Perceptual\00", align 1
@.str.924 = private unnamed_addr constant [9 x i8] c"Relative\00", align 1
@.str.925 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.926 = private unnamed_addr constant [6 x i8] c"Plane\00", align 1
@.str.927 = private unnamed_addr constant [10 x i8] c"Partition\00", align 1
@.str.928 = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@.str.929 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@.str.930 = private unnamed_addr constant [9 x i8] c"Average4\00", align 1
@.str.931 = private unnamed_addr constant [9 x i8] c"Average9\00", align 1
@.str.932 = private unnamed_addr constant [10 x i8] c"Average16\00", align 1
@.str.933 = private unnamed_addr constant [8 x i8] c"Bicubic\00", align 1
@.str.934 = private unnamed_addr constant [8 x i8] c"Integer\00", align 1
@.str.935 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.936 = private unnamed_addr constant [8 x i8] c"Nearest\00", align 1
@.str.937 = private unnamed_addr constant [16 x i8] c"NearestNeighbor\00", align 1
@.str.938 = private unnamed_addr constant [7 x i8] c"Filter\00", align 1
@.str.939 = private unnamed_addr constant [6 x i8] c"Unity\00", align 1
@.str.940 = private unnamed_addr constant [4 x i8] c"DoG\00", align 1
@.str.941 = private unnamed_addr constant [4 x i8] c"LoG\00", align 1
@.str.942 = private unnamed_addr constant [6 x i8] c"Comet\00", align 1
@.str.943 = private unnamed_addr constant [9 x i8] c"Binomial\00", align 1
@.str.944 = private unnamed_addr constant [10 x i8] c"Laplacian\00", align 1
@.str.945 = private unnamed_addr constant [6 x i8] c"Sobel\00", align 1
@.str.946 = private unnamed_addr constant [9 x i8] c"FreiChen\00", align 1
@.str.947 = private unnamed_addr constant [8 x i8] c"Roberts\00", align 1
@.str.948 = private unnamed_addr constant [8 x i8] c"Prewitt\00", align 1
@.str.949 = private unnamed_addr constant [8 x i8] c"Compass\00", align 1
@.str.950 = private unnamed_addr constant [7 x i8] c"Kirsch\00", align 1
@.str.951 = private unnamed_addr constant [8 x i8] c"Diamond\00", align 1
@.str.952 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@.str.953 = private unnamed_addr constant [10 x i8] c"Rectangle\00", align 1
@.str.954 = private unnamed_addr constant [8 x i8] c"Octagon\00", align 1
@.str.955 = private unnamed_addr constant [6 x i8] c"Cross\00", align 1
@.str.956 = private unnamed_addr constant [5 x i8] c"Ring\00", align 1
@.str.957 = private unnamed_addr constant [6 x i8] c"Peaks\00", align 1
@.str.958 = private unnamed_addr constant [6 x i8] c"Edges\00", align 1
@.str.959 = private unnamed_addr constant [8 x i8] c"Corners\00", align 1
@.str.960 = private unnamed_addr constant [10 x i8] c"Diagonals\00", align 1
@.str.961 = private unnamed_addr constant [14 x i8] c"ThinDiagonals\00", align 1
@.str.962 = private unnamed_addr constant [9 x i8] c"LineEnds\00", align 1
@.str.963 = private unnamed_addr constant [14 x i8] c"LineJunctions\00", align 1
@.str.964 = private unnamed_addr constant [7 x i8] c"Ridges\00", align 1
@.str.965 = private unnamed_addr constant [11 x i8] c"ConvexHull\00", align 1
@.str.966 = private unnamed_addr constant [7 x i8] c"ThinSe\00", align 1
@.str.967 = private unnamed_addr constant [9 x i8] c"Skeleton\00", align 1
@.str.968 = private unnamed_addr constant [10 x i8] c"Chebyshev\00", align 1
@.str.969 = private unnamed_addr constant [10 x i8] c"Manhattan\00", align 1
@.str.970 = private unnamed_addr constant [10 x i8] c"Octagonal\00", align 1
@.str.971 = private unnamed_addr constant [10 x i8] c"Euclidean\00", align 1
@.str.972 = private unnamed_addr constant [13 x i8] c"User Defined\00", align 1
@.str.973 = private unnamed_addr constant [9 x i8] c"Coalesce\00", align 1
@.str.974 = private unnamed_addr constant [11 x i8] c"CompareAny\00", align 1
@.str.975 = private unnamed_addr constant [13 x i8] c"CompareClear\00", align 1
@.str.976 = private unnamed_addr constant [15 x i8] c"CompareOverlay\00", align 1
@.str.977 = private unnamed_addr constant [8 x i8] c"Dispose\00", align 1
@.str.978 = private unnamed_addr constant [9 x i8] c"Optimize\00", align 1
@.str.979 = private unnamed_addr constant [14 x i8] c"OptimizeFrame\00", align 1
@.str.980 = private unnamed_addr constant [13 x i8] c"OptimizePlus\00", align 1
@.str.981 = private unnamed_addr constant [21 x i8] c"OptimizeTransparency\00", align 1
@.str.982 = private unnamed_addr constant [11 x i8] c"RemoveDups\00", align 1
@.str.983 = private unnamed_addr constant [11 x i8] c"RemoveZero\00", align 1
@.str.984 = private unnamed_addr constant [10 x i8] c"Composite\00", align 1
@.str.985 = private unnamed_addr constant [6 x i8] c"Merge\00", align 1
@.str.986 = private unnamed_addr constant [7 x i8] c"Mosaic\00", align 1
@.str.987 = private unnamed_addr constant [11 x i8] c"TrimBounds\00", align 1
@.str.988 = private unnamed_addr constant [5 x i8] c"Butt\00", align 1
@.str.989 = private unnamed_addr constant [6 x i8] c"Round\00", align 1
@.str.990 = private unnamed_addr constant [6 x i8] c"Bevel\00", align 1
@.str.991 = private unnamed_addr constant [6 x i8] c"Miter\00", align 1
@.str.992 = private unnamed_addr constant [6 x i8] c"Align\00", align 1
@.str.993 = private unnamed_addr constant [8 x i8] c"Boolean\00", align 1
@.str.994 = private unnamed_addr constant [8 x i8] c"Channel\00", align 1
@.str.995 = private unnamed_addr constant [6 x i8] c"Class\00", align 1
@.str.996 = private unnamed_addr constant [9 x i8] c"ClipPath\00", align 1
@.str.997 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.998 = private unnamed_addr constant [11 x i8] c"Colorspace\00", align 1
@.str.999 = private unnamed_addr constant [8 x i8] c"Command\00", align 1
@.str.1000 = private unnamed_addr constant [8 x i8] c"Complex\00", align 1
@.str.1001 = private unnamed_addr constant [8 x i8] c"Compose\00", align 1
@.str.1002 = private unnamed_addr constant [9 x i8] c"Compress\00", align 1
@.str.1003 = private unnamed_addr constant [9 x i8] c"DataType\00", align 1
@.str.1004 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.1005 = private unnamed_addr constant [11 x i8] c"Decoration\00", align 1
@.str.1006 = private unnamed_addr constant [9 x i8] c"Delegate\00", align 1
@.str.1007 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.1008 = private unnamed_addr constant [7 x i8] c"Dither\00", align 1
@.str.1009 = private unnamed_addr constant [7 x i8] c"Endian\00", align 1
@.str.1010 = private unnamed_addr constant [9 x i8] c"Evaluate\00", align 1
@.str.1011 = private unnamed_addr constant [9 x i8] c"FillRule\00", align 1
@.str.1012 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.1013 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.1014 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@.str.1015 = private unnamed_addr constant [8 x i8] c"Gravity\00", align 1
@.str.1016 = private unnamed_addr constant [10 x i8] c"Intensity\00", align 1
@.str.1017 = private unnamed_addr constant [7 x i8] c"Intent\00", align 1
@.str.1018 = private unnamed_addr constant [10 x i8] c"Interlace\00", align 1
@.str.1019 = private unnamed_addr constant [12 x i8] c"Interpolate\00", align 1
@.str.1020 = private unnamed_addr constant [7 x i8] c"Kernel\00", align 1
@.str.1021 = private unnamed_addr constant [7 x i8] c"Layers\00", align 1
@.str.1022 = private unnamed_addr constant [8 x i8] c"LineCap\00", align 1
@.str.1023 = private unnamed_addr constant [9 x i8] c"LineJoin\00", align 1
@.str.1024 = private unnamed_addr constant [5 x i8] c"List\00", align 1
@.str.1025 = private unnamed_addr constant [9 x i8] c"LogEvent\00", align 1
@.str.1026 = private unnamed_addr constant [6 x i8] c"Magic\00", align 1
@.str.1027 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.1028 = private unnamed_addr constant [7 x i8] c"Metric\00", align 1
@.str.1029 = private unnamed_addr constant [5 x i8] c"Mime\00", align 1
@.str.1030 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.1031 = private unnamed_addr constant [11 x i8] c"Morphology\00", align 1
@.str.1032 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@.str.1033 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.1034 = private unnamed_addr constant [15 x i8] c"PixelIntensity\00", align 1
@.str.1035 = private unnamed_addr constant [13 x i8] c"PolicyDomain\00", align 1
@.str.1036 = private unnamed_addr constant [13 x i8] c"PolicyRights\00", align 1
@.str.1037 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@.str.1038 = private unnamed_addr constant [10 x i8] c"Primitive\00", align 1
@.str.1039 = private unnamed_addr constant [14 x i8] c"QuantumFormat\00", align 1
@.str.1040 = private unnamed_addr constant [12 x i8] c"SparseColor\00", align 1
@.str.1041 = private unnamed_addr constant [10 x i8] c"Statistic\00", align 1
@.str.1042 = private unnamed_addr constant [8 x i8] c"Storage\00", align 1
@.str.1043 = private unnamed_addr constant [8 x i8] c"Stretch\00", align 1
@.str.1044 = private unnamed_addr constant [6 x i8] c"Style\00", align 1
@.str.1045 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.1046 = private unnamed_addr constant [6 x i8] c"Units\00", align 1
@.str.1047 = private unnamed_addr constant [9 x i8] c"Validate\00", align 1
@.str.1048 = private unnamed_addr constant [13 x i8] c"VirtualPixel\00", align 1
@.str.1049 = private unnamed_addr constant [3 x i8] c"AE\00", align 1
@.str.1050 = private unnamed_addr constant [5 x i8] c"Fuzz\00", align 1
@.str.1051 = private unnamed_addr constant [4 x i8] c"MAE\00", align 1
@.str.1052 = private unnamed_addr constant [5 x i8] c"MEPP\00", align 1
@.str.1053 = private unnamed_addr constant [4 x i8] c"MSE\00", align 1
@.str.1054 = private unnamed_addr constant [4 x i8] c"NCC\00", align 1
@.str.1055 = private unnamed_addr constant [4 x i8] c"PAE\00", align 1
@.str.1056 = private unnamed_addr constant [6 x i8] c"PHASH\00", align 1
@.str.1057 = private unnamed_addr constant [5 x i8] c"PSNR\00", align 1
@.str.1058 = private unnamed_addr constant [5 x i8] c"RMSE\00", align 1
@.str.1059 = private unnamed_addr constant [13 x i8] c"FillToBorder\00", align 1
@.str.1060 = private unnamed_addr constant [10 x i8] c"Floodfill\00", align 1
@.str.1061 = private unnamed_addr constant [12 x i8] c"Concatenate\00", align 1
@.str.1062 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.1063 = private unnamed_addr constant [8 x i8] c"Unframe\00", align 1
@.str.1064 = private unnamed_addr constant [10 x i8] c"Correlate\00", align 1
@.str.1065 = private unnamed_addr constant [9 x i8] c"Convolve\00", align 1
@.str.1066 = private unnamed_addr constant [7 x i8] c"Dilate\00", align 1
@.str.1067 = private unnamed_addr constant [6 x i8] c"Erode\00", align 1
@.str.1068 = private unnamed_addr constant [6 x i8] c"Close\00", align 1
@.str.1069 = private unnamed_addr constant [5 x i8] c"Open\00", align 1
@.str.1070 = private unnamed_addr constant [16 x i8] c"DilateIntensity\00", align 1
@.str.1071 = private unnamed_addr constant [15 x i8] c"ErodeIntensity\00", align 1
@.str.1072 = private unnamed_addr constant [15 x i8] c"CloseIntensity\00", align 1
@.str.1073 = private unnamed_addr constant [14 x i8] c"OpenIntensity\00", align 1
@.str.1074 = private unnamed_addr constant [8 x i8] c"DilateI\00", align 1
@.str.1075 = private unnamed_addr constant [7 x i8] c"ErodeI\00", align 1
@.str.1076 = private unnamed_addr constant [7 x i8] c"CloseI\00", align 1
@.str.1077 = private unnamed_addr constant [6 x i8] c"OpenI\00", align 1
@.str.1078 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.1079 = private unnamed_addr constant [8 x i8] c"EdgeOut\00", align 1
@.str.1080 = private unnamed_addr constant [7 x i8] c"EdgeIn\00", align 1
@.str.1081 = private unnamed_addr constant [5 x i8] c"Edge\00", align 1
@.str.1082 = private unnamed_addr constant [7 x i8] c"TopHat\00", align 1
@.str.1083 = private unnamed_addr constant [10 x i8] c"BottomHat\00", align 1
@.str.1084 = private unnamed_addr constant [4 x i8] c"Hmt\00", align 1
@.str.1085 = private unnamed_addr constant [9 x i8] c"HitNMiss\00", align 1
@.str.1086 = private unnamed_addr constant [11 x i8] c"HitAndMiss\00", align 1
@.str.1087 = private unnamed_addr constant [9 x i8] c"Thinning\00", align 1
@.str.1088 = private unnamed_addr constant [8 x i8] c"Thicken\00", align 1
@.str.1089 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.1090 = private unnamed_addr constant [18 x i8] c"IterativeDistance\00", align 1
@.str.1091 = private unnamed_addr constant [8 x i8] c"Voronoi\00", align 1
@.str.1092 = private unnamed_addr constant [8 x i8] c"Impulse\00", align 1
@.str.1093 = private unnamed_addr constant [15 x i8] c"Multiplicative\00", align 1
@.str.1094 = private unnamed_addr constant [8 x i8] c"Poisson\00", align 1
@.str.1095 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.1096 = private unnamed_addr constant [8 x i8] c"Uniform\00", align 1
@.str.1097 = private unnamed_addr constant [8 x i8] c"TopLeft\00", align 1
@.str.1098 = private unnamed_addr constant [9 x i8] c"TopRight\00", align 1
@.str.1099 = private unnamed_addr constant [12 x i8] c"BottomRight\00", align 1
@.str.1100 = private unnamed_addr constant [11 x i8] c"BottomLeft\00", align 1
@.str.1101 = private unnamed_addr constant [8 x i8] c"LeftTop\00", align 1
@.str.1102 = private unnamed_addr constant [9 x i8] c"RightTop\00", align 1
@.str.1103 = private unnamed_addr constant [12 x i8] c"RightBottom\00", align 1
@.str.1104 = private unnamed_addr constant [11 x i8] c"LeftBottom\00", align 1
@.str.1105 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.1106 = private unnamed_addr constant [7 x i8] c"System\00", align 1
@.str.1107 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.1108 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.1109 = private unnamed_addr constant [8 x i8] c"Execute\00", align 1
@.str.1110 = private unnamed_addr constant [9 x i8] c"AddNoise\00", align 1
@.str.1111 = private unnamed_addr constant [9 x i8] c"Charcoal\00", align 1
@.str.1112 = private unnamed_addr constant [10 x i8] c"Despeckle\00", align 1
@.str.1113 = private unnamed_addr constant [5 x i8] c"Dull\00", align 1
@.str.1114 = private unnamed_addr constant [11 x i8] c"EdgeDetect\00", align 1
@.str.1115 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.1116 = private unnamed_addr constant [10 x i8] c"Grayscale\00", align 1
@.str.1117 = private unnamed_addr constant [8 x i8] c"Implode\00", align 1
@.str.1118 = private unnamed_addr constant [9 x i8] c"OilPaint\00", align 1
@.str.1119 = private unnamed_addr constant [9 x i8] c"Quantize\00", align 1
@.str.1120 = private unnamed_addr constant [6 x i8] c"Raise\00", align 1
@.str.1121 = private unnamed_addr constant [12 x i8] c"ReduceNoise\00", align 1
@.str.1122 = private unnamed_addr constant [5 x i8] c"Roll\00", align 1
@.str.1123 = private unnamed_addr constant [7 x i8] c"Rotate\00", align 1
@.str.1124 = private unnamed_addr constant [8 x i8] c"Segment\00", align 1
@.str.1125 = private unnamed_addr constant [6 x i8] c"Shade\00", align 1
@.str.1126 = private unnamed_addr constant [8 x i8] c"Sharpen\00", align 1
@.str.1127 = private unnamed_addr constant [6 x i8] c"Shear\00", align 1
@.str.1128 = private unnamed_addr constant [9 x i8] c"Solarize\00", align 1
@.str.1129 = private unnamed_addr constant [6 x i8] c"Spiff\00", align 1
@.str.1130 = private unnamed_addr constant [7 x i8] c"Spread\00", align 1
@.str.1131 = private unnamed_addr constant [6 x i8] c"Swirl\00", align 1
@.str.1132 = private unnamed_addr constant [5 x i8] c"Wave\00", align 1
@.str.1133 = private unnamed_addr constant [7 x i8] c"Bezier\00", align 1
@.str.1134 = private unnamed_addr constant [7 x i8] c"Circle\00", align 1
@.str.1135 = private unnamed_addr constant [8 x i8] c"Ellipse\00", align 1
@.str.1136 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.1137 = private unnamed_addr constant [8 x i8] c"Polygon\00", align 1
@.str.1138 = private unnamed_addr constant [9 x i8] c"Polyline\00", align 1
@.str.1139 = private unnamed_addr constant [15 x i8] c"RoundRectangle\00", align 1
@.str.1140 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.1141 = private unnamed_addr constant [14 x i8] c"FloatingPoint\00", align 1
@.str.1142 = private unnamed_addr constant [7 x i8] c"Signed\00", align 1
@.str.1143 = private unnamed_addr constant [9 x i8] c"Unsigned\00", align 1
@.str.1144 = private unnamed_addr constant [14 x i8] c"PixelsPerInch\00", align 1
@.str.1145 = private unnamed_addr constant [20 x i8] c"PixelsPerCentimeter\00", align 1
@.str.1146 = private unnamed_addr constant [5 x i8] c"Area\00", align 1
@.str.1147 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.1148 = private unnamed_addr constant [7 x i8] c"Thread\00", align 1
@.str.1149 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.1150 = private unnamed_addr constant [12 x i8] c"Barycentric\00", align 1
@.str.1151 = private unnamed_addr constant [8 x i8] c"Inverse\00", align 1
@.str.1152 = private unnamed_addr constant [9 x i8] c"Gradient\00", align 1
@.str.1153 = private unnamed_addr constant [8 x i8] c"Maximum\00", align 1
@.str.1154 = private unnamed_addr constant [8 x i8] c"Minimum\00", align 1
@.str.1155 = private unnamed_addr constant [8 x i8] c"Nonpeak\00", align 1
@.str.1156 = private unnamed_addr constant [18 x i8] c"StandardDeviation\00", align 1
@.str.1157 = private unnamed_addr constant [5 x i8] c"Char\00", align 1
@.str.1158 = private unnamed_addr constant [7 x i8] c"Double\00", align 1
@.str.1159 = private unnamed_addr constant [6 x i8] c"Float\00", align 1
@.str.1160 = private unnamed_addr constant [8 x i8] c"Quantum\00", align 1
@.str.1161 = private unnamed_addr constant [4 x i8] c"Any\00", align 1
@.str.1162 = private unnamed_addr constant [10 x i8] c"Condensed\00", align 1
@.str.1163 = private unnamed_addr constant [9 x i8] c"Expanded\00", align 1
@.str.1164 = private unnamed_addr constant [15 x i8] c"ExtraCondensed\00", align 1
@.str.1165 = private unnamed_addr constant [14 x i8] c"ExtraExpanded\00", align 1
@.str.1166 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.1167 = private unnamed_addr constant [14 x i8] c"SemiCondensed\00", align 1
@.str.1168 = private unnamed_addr constant [13 x i8] c"SemiExpanded\00", align 1
@.str.1169 = private unnamed_addr constant [15 x i8] c"UltraCondensed\00", align 1
@.str.1170 = private unnamed_addr constant [14 x i8] c"UltraExpanded\00", align 1
@.str.1171 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@.str.1172 = private unnamed_addr constant [8 x i8] c"Oblique\00", align 1
@.str.1173 = private unnamed_addr constant [8 x i8] c"Bilevel\00", align 1
@.str.1174 = private unnamed_addr constant [16 x i8] c"ColorSeparation\00", align 1
@.str.1175 = private unnamed_addr constant [21 x i8] c"ColorSeparationAlpha\00", align 1
@.str.1176 = private unnamed_addr constant [21 x i8] c"ColorSeparationMatte\00", align 1
@.str.1177 = private unnamed_addr constant [15 x i8] c"GrayscaleAlpha\00", align 1
@.str.1178 = private unnamed_addr constant [15 x i8] c"GrayscaleMatte\00", align 1
@.str.1179 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@.str.1180 = private unnamed_addr constant [20 x i8] c"PaletteBilevelAlpha\00", align 1
@.str.1181 = private unnamed_addr constant [20 x i8] c"PaletteBilevelMatte\00", align 1
@.str.1182 = private unnamed_addr constant [13 x i8] c"PaletteAlpha\00", align 1
@.str.1183 = private unnamed_addr constant [13 x i8] c"PaletteMatte\00", align 1
@.str.1184 = private unnamed_addr constant [15 x i8] c"TrueColorAlpha\00", align 1
@.str.1185 = private unnamed_addr constant [15 x i8] c"TrueColorMatte\00", align 1
@.str.1186 = private unnamed_addr constant [10 x i8] c"TrueColor\00", align 1
@.str.1187 = private unnamed_addr constant [8 x i8] c"Compare\00", align 1
@.str.1188 = private unnamed_addr constant [8 x i8] c"Convert\00", align 1
@.str.1189 = private unnamed_addr constant [12 x i8] c"FormatsDisk\00", align 1
@.str.1190 = private unnamed_addr constant [11 x i8] c"FormatsMap\00", align 1
@.str.1191 = private unnamed_addr constant [14 x i8] c"FormatsMemory\00", align 1
@.str.1192 = private unnamed_addr constant [9 x i8] c"Identify\00", align 1
@.str.1193 = private unnamed_addr constant [13 x i8] c"ImportExport\00", align 1
@.str.1194 = private unnamed_addr constant [8 x i8] c"Montage\00", align 1
@.str.1195 = private unnamed_addr constant [7 x i8] c"Stream\00", align 1
@.str.1196 = private unnamed_addr constant [9 x i8] c"Constant\00", align 1
@.str.1197 = private unnamed_addr constant [12 x i8] c"CheckerTile\00", align 1
@.str.1198 = private unnamed_addr constant [15 x i8] c"HorizontalTile\00", align 1
@.str.1199 = private unnamed_addr constant [19 x i8] c"HorizontalTileEdge\00", align 1
@.str.1200 = private unnamed_addr constant [7 x i8] c"Mirror\00", align 1
@.str.1201 = private unnamed_addr constant [5 x i8] c"Tile\00", align 1
@.str.1202 = private unnamed_addr constant [13 x i8] c"VerticalTile\00", align 1
@.str.1203 = private unnamed_addr constant [17 x i8] c"VerticalTileEdge\00", align 1
@.str.1204 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@switch.table.GetOptionInfo = private unnamed_addr constant [71 x ptr] [ptr @AlignOptions, ptr @AlphaOptions, ptr @BooleanOptions, ptr @CacheOptions, ptr @ChannelOptions, ptr @ClassOptions, ptr @ClipPathOptions, ptr null, ptr null, ptr @ColorspaceOptions, ptr @CommandOptions, ptr @ComposeOptions, ptr @CompressOptions, ptr null, ptr @DataTypeOptions, ptr @LogEventOptions, ptr @DecorateOptions, ptr null, ptr @DirectionOptions, ptr @DisposeOptions, ptr @DistortOptions, ptr @DitherOptions, ptr @EndianOptions, ptr @EvaluateOptions, ptr @FillRuleOptions, ptr @FilterOptions, ptr null, ptr null, ptr null, ptr @FunctionOptions, ptr @GravityOptions, ptr @IntentOptions, ptr @InterlaceOptions, ptr @InterpolateOptions, ptr @KernelOptions, ptr @LayerOptions, ptr @LineCapOptions, ptr @LineJoinOptions, ptr @ListOptions, ptr null, ptr @LogEventOptions, ptr null, ptr null, ptr @MethodOptions, ptr @MetricOptions, ptr null, ptr @ModeOptions, ptr null, ptr @MorphologyOptions, ptr @NoiseOptions, ptr @OrientationOptions, ptr @PixelIntensityOptions, ptr null, ptr @PolicyDomainOptions, ptr @PolicyRightsOptions, ptr @PreviewOptions, ptr @PrimitiveOptions, ptr @QuantumFormatOptions, ptr @ResolutionOptions, ptr @ResourceOptions, ptr @SparseColorOptions, ptr @StatisticOptions, ptr @StorageOptions, ptr @StretchOptions, ptr @StyleOptions, ptr null, ptr @TypeOptions, ptr @ValidateOptions, ptr @VirtualPixelOptions, ptr @ComplexOptions, ptr @PixelIntensityOptions], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CloneImageOptions(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1698, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 40
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  tail call void @DestroyImageOptions(ptr noundef nonnull %0) #11
  %18 = load ptr, ptr %10, align 8, !tbaa !44
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ %11, %13 ]
  %21 = tail call ptr @CloneSplayTree(ptr noundef %20, ptr noundef nonnull @ConstantString, ptr noundef nonnull @ConstantString) #10
  store ptr %21, ptr %14, align 8, !tbaa !44
  br label %22

22:                                               ; preds = %19, %9
  ret i32 1
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DestroyImageOptions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1825, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 40
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroySplayTree(ptr noundef nonnull %10) #10
  store ptr %13, ptr %9, align 8, !tbaa !44
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: optsize
declare ptr @CloneSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DefineImageOption(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #12
  %5 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 4096) #10
  br label %6

6:                                                ; preds = %9, %2
  %7 = phi ptr [ %3, %2 ], [ %10, %9 ]
  %8 = load i8, ptr %7, align 1, !tbaa !45
  switch i8 %8, label %9 [
    i8 0, label %11
    i8 61, label %11
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  br label %6, !llvm.loop !46

11:                                               ; preds = %6, %6
  store i8 0, ptr %4, align 16, !tbaa !45
  %12 = icmp eq i8 %8, 61
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, ptr %7, i64 1
  %15 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %14, i64 noundef 4096) #10
  br label %16

16:                                               ; preds = %13, %11
  store i8 0, ptr %7, align 1, !tbaa !45
  %17 = call i32 @SetImageOption(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #12
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageOption(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2649, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #10
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.7) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 6
  %15 = tail call ptr @CloneString(ptr noundef nonnull %14, ptr noundef %2) #10
  br label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 40
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishMagickMemory) #10
  store ptr %21, ptr %17, align 8, !tbaa !44
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %18, %16 ]
  %24 = icmp eq ptr %2, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 @DeleteImageOption(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %31

27:                                               ; preds = %22
  %28 = tail call ptr @ConstantString(ptr noundef %1) #10
  %29 = tail call ptr @ConstantString(ptr noundef nonnull %2) #10
  %30 = tail call i32 @AddValueToSplayTree(ptr noundef %23, ptr noundef %28, ptr noundef %29) #10
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i32 [ %26, %25 ], [ %30, %27 ]
  ret i32 %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DeleteImageOption(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1791, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef nonnull %11, ptr noundef %1) #10
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageOption(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1865, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @GetValueFromSplayTree(ptr noundef nonnull %11, ptr noundef %1) #10
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %14, %13 ], [ null, %9 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetCommandOptionFlags(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #12
  %5 = tail call fastcc ptr @GetOptionInfo(i32 noundef %0) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %163, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 124) #13
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, i32 44, i32 124
  %11 = icmp eq ptr %2, null
  br i1 %11, label %163, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @__ctype_b_loc() #14
  %14 = ptrtoint ptr %4 to i64
  %15 = getelementptr inbounds i8, ptr %4, i64 1
  %16 = icmp eq i32 %1, 0
  br label %17

17:                                               ; preds = %12, %158
  %18 = phi i64 [ 0, %12 ], [ %153, %158 ]
  %19 = phi ptr [ %2, %12 ], [ %159, %158 ]
  %20 = load ptr, ptr %13, align 8, !tbaa !48
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi ptr [ %33, %21 ], [ %19, %17 ]
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds i16, ptr %20, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !49
  %27 = and i16 %26, 8192
  %28 = icmp eq i16 %27, 0
  %29 = sext i8 %23 to i32
  %30 = icmp ne i32 %10, %29
  %31 = icmp eq i8 %23, 0
  %32 = select i1 %28, i1 %30, i1 %31
  %33 = getelementptr inbounds i8, ptr %22, i64 1
  br i1 %32, label %34, label %21, !llvm.loop !50

34:                                               ; preds = %21
  %35 = icmp eq i8 %23, 33
  %36 = zext i1 %35 to i64
  %37 = getelementptr inbounds i8, ptr %22, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !45
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %20, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !49
  %42 = and i16 %41, 8192
  %43 = icmp ne i16 %42, 0
  %44 = sext i8 %38 to i32
  %45 = icmp eq i32 %10, %44
  %46 = select i1 %43, i1 true, i1 %45
  %47 = icmp eq i8 %38, 0
  %48 = or i1 %47, %46
  br i1 %48, label %71, label %49

49:                                               ; preds = %34, %49
  %50 = phi i8 [ %56, %49 ], [ %38, %34 ]
  %51 = phi ptr [ %53, %49 ], [ %37, %34 ]
  %52 = phi ptr [ %54, %49 ], [ %4, %34 ]
  %53 = getelementptr inbounds i8, ptr %51, i64 1
  %54 = getelementptr inbounds i8, ptr %52, i64 1
  store i8 %50, ptr %52, align 1, !tbaa !45
  %55 = load ptr, ptr %13, align 8, !tbaa !48
  %56 = load i8, ptr %53, align 1, !tbaa !45
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i16, ptr %55, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !49
  %60 = and i16 %59, 8192
  %61 = icmp ne i16 %60, 0
  %62 = sext i8 %56 to i32
  %63 = icmp eq i32 %10, %62
  %64 = select i1 %61, i1 true, i1 %63
  %65 = icmp eq i8 %56, 0
  %66 = or i1 %65, %64
  %67 = ptrtoint ptr %54 to i64
  %68 = sub i64 %67, %14
  %69 = icmp sgt i64 %68, 4094
  %70 = select i1 %66, i1 true, i1 %69
  br i1 %70, label %71, label %49, !llvm.loop !51

71:                                               ; preds = %49, %34
  %72 = phi ptr [ %4, %34 ], [ %54, %49 ]
  %73 = phi ptr [ %37, %34 ], [ %53, %49 ]
  store i8 0, ptr %72, align 1, !tbaa !45
  %74 = load ptr, ptr %5, align 8, !tbaa !52
  %75 = icmp eq ptr %74, null
  br i1 %75, label %101, label %76

76:                                               ; preds = %71
  %77 = call i32 @LocaleCompare(ptr noundef nonnull %4, ptr noundef nonnull %74) #10
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %95

79:                                               ; preds = %95
  %80 = call i32 @LocaleCompare(ptr noundef nonnull %4, ptr noundef nonnull %99) #10
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %95, !llvm.loop !54

82:                                               ; preds = %79, %76
  %83 = phi ptr [ %5, %76 ], [ %98, %79 ]
  %84 = phi i64 [ 0, %76 ], [ %97, %79 ]
  %85 = load i8, ptr %4, align 16, !tbaa !45
  %86 = icmp eq i8 %85, 33
  %87 = getelementptr inbounds %struct._OptionInfo, ptr %5, i64 %84, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !55
  %89 = or i64 %88, %18
  %90 = xor i64 %88, -1
  %91 = and i64 %18, %90
  %92 = select i1 %86, i64 %91, i64 %89
  %93 = load ptr, ptr %83, align 8, !tbaa !52
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %151

95:                                               ; preds = %76, %79
  %96 = phi i64 [ %97, %79 ], [ 0, %76 ]
  %97 = add nuw nsw i64 %96, 1
  %98 = getelementptr inbounds %struct._OptionInfo, ptr %5, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !52
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %79, !llvm.loop !54

101:                                              ; preds = %95, %71, %82
  %102 = phi i64 [ %84, %82 ], [ 0, %71 ], [ %97, %95 ]
  %103 = phi i64 [ %92, %82 ], [ %18, %71 ], [ %18, %95 ]
  %104 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 45) #13
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 95) #13
  %108 = icmp eq ptr %107, null
  br i1 %108, label %151, label %109

109:                                              ; preds = %112, %106
  %110 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 95) #13
  %111 = icmp eq ptr %110, null
  br i1 %111, label %120, label %123

112:                                              ; preds = %101, %112
  %113 = phi ptr [ %118, %112 ], [ %104, %101 ]
  %114 = getelementptr inbounds i8, ptr %113, i64 1
  %115 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %113) #13
  %116 = sub i64 4096, %115
  %117 = call i64 @CopyMagickString(ptr noundef nonnull %113, ptr noundef nonnull %114, i64 noundef %116) #10
  %118 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 45) #13
  %119 = icmp eq ptr %118, null
  br i1 %119, label %109, label %112, !llvm.loop !56

120:                                              ; preds = %123, %109
  %121 = load ptr, ptr %5, align 8, !tbaa !52
  %122 = icmp eq ptr %121, null
  br i1 %122, label %151, label %131

123:                                              ; preds = %109, %123
  %124 = phi ptr [ %129, %123 ], [ %110, %109 ]
  %125 = getelementptr inbounds i8, ptr %124, i64 1
  %126 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %124) #13
  %127 = sub i64 4096, %126
  %128 = call i64 @CopyMagickString(ptr noundef nonnull %124, ptr noundef nonnull %125, i64 noundef %127) #10
  %129 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 95) #13
  %130 = icmp eq ptr %129, null
  br i1 %130, label %120, label %123, !llvm.loop !57

131:                                              ; preds = %120, %146
  %132 = phi ptr [ %149, %146 ], [ %121, %120 ]
  %133 = phi i64 [ %147, %146 ], [ 0, %120 ]
  %134 = call i32 @LocaleCompare(ptr noundef nonnull %4, ptr noundef nonnull %132) #10
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load i8, ptr %4, align 16, !tbaa !45
  %138 = icmp eq i8 %137, 33
  %139 = getelementptr inbounds %struct._OptionInfo, ptr %5, i64 %133, i32 2
  %140 = load i64, ptr %139, align 8, !tbaa !55
  br i1 %138, label %141, label %144

141:                                              ; preds = %136
  %142 = xor i64 %140, -1
  %143 = and i64 %103, %142
  br label %151

144:                                              ; preds = %136
  %145 = or i64 %140, %103
  br label %151

146:                                              ; preds = %131
  %147 = add nuw nsw i64 %133, 1
  %148 = getelementptr inbounds %struct._OptionInfo, ptr %5, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !52
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %131, !llvm.loop !58

151:                                              ; preds = %146, %120, %144, %141, %106, %82
  %152 = phi i64 [ %133, %141 ], [ %133, %144 ], [ %102, %106 ], [ %84, %82 ], [ 0, %120 ], [ %147, %146 ]
  %153 = phi i64 [ %143, %141 ], [ %145, %144 ], [ %103, %106 ], [ %92, %82 ], [ %103, %120 ], [ %103, %146 ]
  %154 = getelementptr inbounds %struct._OptionInfo, ptr %5, i64 %152
  %155 = load ptr, ptr %154, align 8, !tbaa !52
  %156 = icmp eq ptr %155, null
  %157 = or i1 %156, %16
  br i1 %157, label %161, label %158

158:                                              ; preds = %151
  %159 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %73, i32 noundef %10) #13
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %17, !llvm.loop !59

161:                                              ; preds = %151
  %162 = select i1 %156, i64 -1, i64 %153
  br label %163

163:                                              ; preds = %158, %161, %7, %3
  %164 = phi i64 [ -1, %3 ], [ 0, %7 ], [ %162, %161 ], [ %153, %158 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #12
  ret i64 %164
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef ptr @GetOptionInfo(i32 noundef %0) unnamed_addr #3 !PGOFuncName !60 {
  %2 = icmp ult i32 %0, 71
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [71 x ptr], ptr @switch.table.GetOptionInfo, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetCommandOptions(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call fastcc ptr @GetOptionInfo(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %10, %5 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct._OptionInfo, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  %10 = add nuw i64 %6, 1
  br i1 %9, label %11, label %5, !llvm.loop !61

11:                                               ; preds = %5
  %12 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %3, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %24

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #12
  call void @GetExceptionInfo(ptr noundef nonnull %2) #10
  %18 = tail call ptr @__errno_location() #14
  %19 = load i32, ptr %18, align 4, !tbaa !62
  %20 = call ptr @GetExceptionMessage(i32 noundef %19) #10
  %21 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2095, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %20) #10
  %22 = call ptr @DestroyString(ptr noundef %20) #10
  call void @CatchException(ptr noundef nonnull %2) #10
  %23 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #10
  call void @MagickCoreTerminus() #10
  call void @_exit(i32 noundef 1) #16
  unreachable

24:                                               ; preds = %14, %24
  %25 = phi ptr [ %31, %24 ], [ %15, %14 ]
  %26 = phi i64 [ %29, %24 ], [ 0, %14 ]
  %27 = tail call ptr @AcquireString(ptr noundef nonnull %25) #10
  %28 = getelementptr inbounds ptr, ptr %12, i64 %26
  store ptr %27, ptr %28, align 8, !tbaa !48
  %29 = add nuw nsw i64 %26, 1
  %30 = getelementptr inbounds %struct._OptionInfo, ptr %3, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %24, !llvm.loop !63

33:                                               ; preds = %24, %14
  %34 = phi i64 [ 0, %14 ], [ %29, %24 ]
  %35 = getelementptr inbounds ptr, ptr %12, i64 %34
  store ptr null, ptr %35, align 8, !tbaa !48
  br label %36

36:                                               ; preds = %1, %33
  %37 = phi ptr [ %12, %33 ], [ null, %1 ]
  ret ptr %37
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextImageOption(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2129, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 40
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %10) #10
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IsCommandOption(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = load i8, ptr %0, align 1, !tbaa !45
  switch i8 %2, label %17 [
    i8 45, label %3
    i8 43, label %3
  ]

3:                                                ; preds = %1, %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %5 = icmp eq i64 %4, 1
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = tail call ptr @__ctype_b_loc() #14
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = load i8, ptr %7, align 1, !tbaa !45
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds i16, ptr %9, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !49
  %14 = lshr i16 %13, 10
  %15 = and i16 %14, 1
  %16 = zext nneg i16 %15 to i32
  br label %17

17:                                               ; preds = %6, %3, %1
  %18 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %16, %6 ]
  ret i32 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CommandOptionToMnemonic(i32 noundef %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = tail call fastcc ptr @GetOptionInfo(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !52
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._OptionInfo, ptr %3, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !64
  %11 = icmp eq i64 %10, %1
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %14, %18 ], [ 0, %8 ]
  %14 = add nuw nsw i64 %13, 1
  %15 = getelementptr inbounds %struct._OptionInfo, ptr %3, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18, !llvm.loop !65

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._OptionInfo, ptr %3, i64 %14, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !64
  %21 = icmp eq i64 %20, %1
  br i1 %21, label %22, label %12, !llvm.loop !65

22:                                               ; preds = %12, %18, %8, %5, %2
  %23 = phi ptr [ null, %2 ], [ @.str.5, %5 ], [ %6, %8 ], [ %16, %18 ], [ @.str.5, %12 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListCommandOptions(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = tail call fastcc ptr @GetOptionInfo(i32 noundef %1) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %9, %20
  %13 = phi ptr [ %23, %20 ], [ %10, %9 ]
  %14 = phi i64 [ %21, %20 ], [ 0, %9 ]
  %15 = getelementptr inbounds %struct._OptionInfo, ptr %7, i64 %14, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !66
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull %13) #10
  br label %20

20:                                               ; preds = %12, %18
  %21 = add nuw nsw i64 %14, 1
  %22 = getelementptr inbounds %struct._OptionInfo, ptr %7, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %12, !llvm.loop !67

25:                                               ; preds = %20, %9, %3
  %26 = phi i32 [ 0, %3 ], [ 1, %9 ], [ 1, %20 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @ParseChannelOption(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @ParseCommandOption(i32 noundef 4, i32 noundef 1, ptr noundef %0) #11
  %3 = icmp sgt i64 %2, -1
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %4, %27
  %8 = phi i64 [ %29, %27 ], [ 0, %4 ]
  %9 = phi i64 [ %30, %27 ], [ 0, %4 ]
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !45
  switch i8 %11, label %32 [
    i8 65, label %27
    i8 97, label %27
    i8 66, label %12
    i8 98, label %12
    i8 67, label %13
    i8 99, label %13
    i8 103, label %14
    i8 71, label %14
    i8 73, label %15
    i8 105, label %15
    i8 75, label %16
    i8 107, label %16
    i8 77, label %17
    i8 109, label %17
    i8 111, label %27
    i8 79, label %27
    i8 82, label %18
    i8 114, label %18
    i8 89, label %19
    i8 121, label %19
    i8 44, label %20
  ]

12:                                               ; preds = %7, %7
  br label %27

13:                                               ; preds = %7, %7
  br label %27

14:                                               ; preds = %7, %7
  br label %27

15:                                               ; preds = %7, %7
  br label %27

16:                                               ; preds = %7, %7
  br label %27

17:                                               ; preds = %7, %7
  br label %27

18:                                               ; preds = %7, %7
  br label %27

19:                                               ; preds = %7, %7
  br label %27

20:                                               ; preds = %7
  %21 = getelementptr inbounds i8, ptr %0, i64 %9
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  %23 = tail call i64 @ParseCommandOption(i32 noundef 4, i32 noundef 1, ptr noundef nonnull %22) #11
  %24 = icmp slt i64 %23, 0
  %25 = select i1 %24, i64 0, i64 %8
  %26 = or i64 %25, %23
  br label %32

27:                                               ; preds = %7, %7, %7, %7, %12, %13, %14, %15, %16, %17, %18, %19
  %28 = phi i64 [ 4, %12 ], [ 1, %13 ], [ 2, %14 ], [ 32, %15 ], [ 32, %16 ], [ 2, %17 ], [ 1, %18 ], [ 4, %19 ], [ 8, %7 ], [ 8, %7 ], [ 8, %7 ], [ 8, %7 ]
  %29 = or i64 %8, %28
  %30 = add nuw nsw i64 %9, 1
  %31 = icmp eq i64 %30, %5
  br i1 %31, label %32, label %7, !llvm.loop !68

32:                                               ; preds = %7, %27, %4, %1, %20
  %33 = phi i64 [ %26, %20 ], [ %2, %1 ], [ 0, %4 ], [ -1, %7 ], [ %29, %27 ]
  ret i64 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @ParseCommandOption(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #12
  %5 = tail call fastcc ptr @GetOptionInfo(i32 noundef %0) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %163, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 124) #13
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, i32 44, i32 124
  %11 = icmp eq ptr %2, null
  br i1 %11, label %163, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @__ctype_b_loc() #14
  %14 = ptrtoint ptr %4 to i64
  %15 = getelementptr inbounds i8, ptr %4, i64 1
  %16 = icmp eq i32 %1, 0
  br label %17

17:                                               ; preds = %12, %158
  %18 = phi i64 [ 0, %12 ], [ %153, %158 ]
  %19 = phi ptr [ %2, %12 ], [ %159, %158 ]
  %20 = load ptr, ptr %13, align 8, !tbaa !48
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi ptr [ %33, %21 ], [ %19, %17 ]
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds i16, ptr %20, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !49
  %27 = and i16 %26, 8192
  %28 = icmp eq i16 %27, 0
  %29 = sext i8 %23 to i32
  %30 = icmp ne i32 %10, %29
  %31 = icmp eq i8 %23, 0
  %32 = select i1 %28, i1 %30, i1 %31
  %33 = getelementptr inbounds i8, ptr %22, i64 1
  br i1 %32, label %34, label %21, !llvm.loop !69

34:                                               ; preds = %21
  %35 = icmp eq i8 %23, 33
  %36 = zext i1 %35 to i64
  %37 = getelementptr inbounds i8, ptr %22, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !45
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %20, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !49
  %42 = and i16 %41, 8192
  %43 = icmp ne i16 %42, 0
  %44 = sext i8 %38 to i32
  %45 = icmp eq i32 %10, %44
  %46 = select i1 %43, i1 true, i1 %45
  %47 = icmp eq i8 %38, 0
  %48 = or i1 %47, %46
  br i1 %48, label %71, label %49

49:                                               ; preds = %34, %49
  %50 = phi i8 [ %56, %49 ], [ %38, %34 ]
  %51 = phi ptr [ %53, %49 ], [ %37, %34 ]
  %52 = phi ptr [ %54, %49 ], [ %4, %34 ]
  %53 = getelementptr inbounds i8, ptr %51, i64 1
  %54 = getelementptr inbounds i8, ptr %52, i64 1
  store i8 %50, ptr %52, align 1, !tbaa !45
  %55 = load ptr, ptr %13, align 8, !tbaa !48
  %56 = load i8, ptr %53, align 1, !tbaa !45
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i16, ptr %55, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !49
  %60 = and i16 %59, 8192
  %61 = icmp ne i16 %60, 0
  %62 = sext i8 %56 to i32
  %63 = icmp eq i32 %10, %62
  %64 = select i1 %61, i1 true, i1 %63
  %65 = icmp eq i8 %56, 0
  %66 = or i1 %65, %64
  %67 = ptrtoint ptr %54 to i64
  %68 = sub i64 %67, %14
  %69 = icmp sgt i64 %68, 4094
  %70 = select i1 %66, i1 true, i1 %69
  br i1 %70, label %71, label %49, !llvm.loop !70

71:                                               ; preds = %49, %34
  %72 = phi ptr [ %4, %34 ], [ %54, %49 ]
  %73 = phi ptr [ %37, %34 ], [ %53, %49 ]
  store i8 0, ptr %72, align 1, !tbaa !45
  %74 = load ptr, ptr %5, align 8, !tbaa !52
  %75 = icmp eq ptr %74, null
  br i1 %75, label %101, label %76

76:                                               ; preds = %71
  %77 = call i32 @LocaleCompare(ptr noundef nonnull %4, ptr noundef nonnull %74) #10
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %95

79:                                               ; preds = %95
  %80 = call i32 @LocaleCompare(ptr noundef nonnull %4, ptr noundef nonnull %99) #10
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %95, !llvm.loop !71

82:                                               ; preds = %79, %76
  %83 = phi ptr [ %5, %76 ], [ %98, %79 ]
  %84 = phi i64 [ 0, %76 ], [ %97, %79 ]
  %85 = load i8, ptr %4, align 16, !tbaa !45
  %86 = icmp eq i8 %85, 33
  %87 = getelementptr inbounds %struct._OptionInfo, ptr %5, i64 %84, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !64
  %89 = or i64 %88, %18
  %90 = xor i64 %88, -1
  %91 = and i64 %18, %90
  %92 = select i1 %86, i64 %91, i64 %89
  %93 = load ptr, ptr %83, align 8, !tbaa !52
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %151

95:                                               ; preds = %76, %79
  %96 = phi i64 [ %97, %79 ], [ 0, %76 ]
  %97 = add nuw nsw i64 %96, 1
  %98 = getelementptr inbounds %struct._OptionInfo, ptr %5, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !52
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %79, !llvm.loop !71

101:                                              ; preds = %95, %71, %82
  %102 = phi i64 [ %84, %82 ], [ 0, %71 ], [ %97, %95 ]
  %103 = phi i64 [ %92, %82 ], [ %18, %71 ], [ %18, %95 ]
  %104 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 45) #13
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 95) #13
  %108 = icmp eq ptr %107, null
  br i1 %108, label %151, label %109

109:                                              ; preds = %112, %106
  %110 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 95) #13
  %111 = icmp eq ptr %110, null
  br i1 %111, label %120, label %123

112:                                              ; preds = %101, %112
  %113 = phi ptr [ %118, %112 ], [ %104, %101 ]
  %114 = getelementptr inbounds i8, ptr %113, i64 1
  %115 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %113) #13
  %116 = sub i64 4096, %115
  %117 = call i64 @CopyMagickString(ptr noundef nonnull %113, ptr noundef nonnull %114, i64 noundef %116) #10
  %118 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 45) #13
  %119 = icmp eq ptr %118, null
  br i1 %119, label %109, label %112, !llvm.loop !72

120:                                              ; preds = %123, %109
  %121 = load ptr, ptr %5, align 8, !tbaa !52
  %122 = icmp eq ptr %121, null
  br i1 %122, label %151, label %131

123:                                              ; preds = %109, %123
  %124 = phi ptr [ %129, %123 ], [ %110, %109 ]
  %125 = getelementptr inbounds i8, ptr %124, i64 1
  %126 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %124) #13
  %127 = sub i64 4096, %126
  %128 = call i64 @CopyMagickString(ptr noundef nonnull %124, ptr noundef nonnull %125, i64 noundef %127) #10
  %129 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 95) #13
  %130 = icmp eq ptr %129, null
  br i1 %130, label %120, label %123, !llvm.loop !73

131:                                              ; preds = %120, %146
  %132 = phi ptr [ %149, %146 ], [ %121, %120 ]
  %133 = phi i64 [ %147, %146 ], [ 0, %120 ]
  %134 = call i32 @LocaleCompare(ptr noundef nonnull %4, ptr noundef nonnull %132) #10
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load i8, ptr %4, align 16, !tbaa !45
  %138 = icmp eq i8 %137, 33
  %139 = getelementptr inbounds %struct._OptionInfo, ptr %5, i64 %133, i32 1
  %140 = load i64, ptr %139, align 8, !tbaa !64
  br i1 %138, label %141, label %144

141:                                              ; preds = %136
  %142 = xor i64 %140, -1
  %143 = and i64 %103, %142
  br label %151

144:                                              ; preds = %136
  %145 = or i64 %140, %103
  br label %151

146:                                              ; preds = %131
  %147 = add nuw nsw i64 %133, 1
  %148 = getelementptr inbounds %struct._OptionInfo, ptr %5, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !52
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %131, !llvm.loop !74

151:                                              ; preds = %146, %120, %144, %141, %106, %82
  %152 = phi i64 [ %133, %141 ], [ %133, %144 ], [ %102, %106 ], [ %84, %82 ], [ 0, %120 ], [ %147, %146 ]
  %153 = phi i64 [ %143, %141 ], [ %145, %144 ], [ %103, %106 ], [ %92, %82 ], [ %103, %120 ], [ %103, %146 ]
  %154 = getelementptr inbounds %struct._OptionInfo, ptr %5, i64 %152
  %155 = load ptr, ptr %154, align 8, !tbaa !52
  %156 = icmp eq ptr %155, null
  %157 = or i1 %156, %16
  br i1 %157, label %161, label %158

158:                                              ; preds = %151
  %159 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %73, i32 noundef %10) #13
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %17, !llvm.loop !75

161:                                              ; preds = %151
  %162 = select i1 %156, i64 -1, i64 %153
  br label %163

163:                                              ; preds = %158, %161, %7, %3
  %164 = phi i64 [ -1, %3 ], [ 0, %7 ], [ %162, %161 ], [ %153, %158 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #12
  ret i64 %164
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RemoveImageOption(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2536, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @RemoveNodeFromSplayTree(ptr noundef nonnull %11, ptr noundef %1) #10
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %14, %13 ], [ null, %9 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @RemoveNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ResetImageOptions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2573, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 40
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @ResetSplayTree(ptr noundef nonnull %10) #10
  br label %13

13:                                               ; preds = %8, %12
  ret void
}

; Function Attrs: optsize
declare void @ResetSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ResetImageOptionIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2609, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 40
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %10) #10
  br label %13

13:                                               ; preds = %8, %12
  ret void
}

; Function Attrs: optsize
declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) #1

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize willreturn memory(read) }
attributes #14 = { nounwind optsize willreturn memory(none) }
attributes #15 = { nounwind optsize allocsize(0,1) }
attributes #16 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 16712}
!35 = !{!"_ImageInfo", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !36, i64 80, !36, i64 84, !36, i64 88, !40, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !41, i64 144, !41, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !36, i64 184, !36, i64 188, !40, i64 192, !36, i64 200, !36, i64 204, !36, i64 208, !40, i64 216, !36, i64 224, !36, i64 228, !39, i64 232, !39, i64 240, !36, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !39, i64 312, !40, i64 320, !37, i64 328, !37, i64 4424, !37, i64 8520, !37, i64 12616, !36, i64 16712, !39, i64 16720, !40, i64 16728, !40, i64 16736, !42, i64 16744, !40, i64 16752, !36, i64 16760, !42, i64 16764, !39, i64 16776, !36, i64 16784}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!"double", !37, i64 0}
!42 = !{!"_PixelPacket", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6}
!43 = !{!"short", !37, i64 0}
!44 = !{!35, !39, i64 264}
!45 = !{!37, !37, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!39, !39, i64 0}
!49 = !{!43, !43, i64 0}
!50 = distinct !{!50, !47}
!51 = distinct !{!51, !47}
!52 = !{!53, !39, i64 0}
!53 = !{!"_OptionInfo", !39, i64 0, !40, i64 8, !40, i64 16, !36, i64 24}
!54 = distinct !{!54, !47}
!55 = !{!53, !40, i64 16}
!56 = distinct !{!56, !47}
!57 = distinct !{!57, !47}
!58 = distinct !{!58, !47}
!59 = distinct !{!59, !47}
!60 = !{!"option.c:GetOptionInfo"}
!61 = distinct !{!61, !47}
!62 = !{!36, !36, i64 0}
!63 = distinct !{!63, !47}
!64 = !{!53, !40, i64 8}
!65 = distinct !{!65, !47}
!66 = !{!53, !36, i64 24}
!67 = distinct !{!67, !47}
!68 = distinct !{!68, !47}
!69 = distinct !{!69, !47}
!70 = distinct !{!70, !47}
!71 = distinct !{!71, !47}
!72 = distinct !{!72, !47}
!73 = distinct !{!73, !47}
!74 = distinct !{!74, !47}
!75 = distinct !{!75, !47}
