; ModuleID = 'magick/type.c'
source_filename = "magick/type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._Fontmap = type { ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._TypeInfo = type { i64, ptr, ptr, ptr, ptr, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64 }

@type_semaphore = internal global ptr null, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@type_cache = internal unnamed_addr global ptr null, align 8
@GetTypeInfoByFamily.fontmap = internal unnamed_addr constant [8 x %struct._Fontmap] [%struct._Fontmap { ptr @.str.1, ptr @.str.2 }, %struct._Fontmap { ptr @.str.3, ptr @.str.2 }, %struct._Fontmap { ptr @.str.4, ptr @.str.2 }, %struct._Fontmap { ptr @.str.5, ptr @.str.6 }, %struct._Fontmap { ptr @.str.7, ptr @.str.2 }, %struct._Fontmap { ptr @.str.8, ptr @.str.2 }, %struct._Fontmap { ptr @.str.9, ptr @.str.10 }, %struct._Fontmap zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"courier\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"modern\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"monotype corsiva\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"news gothic\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"helvetica\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"terminal\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"wingdings\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"arial\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"magick/type.c\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"FontSubstitutionRequired\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"\0APath: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"  Font: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"    family: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"    style: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"    stretch: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"    weight: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"    glyphs: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"type.xml\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"MAGICK_FONT_PATH\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"built-in\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"Loading type configure file \22%s\22 ...\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"IncludeNodeNestedTooDeeply\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"<type\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"face\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"foundry\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"fullname\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"glyphs\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"stretch\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.57 = private unnamed_addr constant [157 x i8] c"<?xml version=\221.0\22?><typemap>  <type stealth=\22True\22 name=\22fixed\22 family=\22helvetica\22/>  <type stealth=\22True\22 name=\22helvetica\22 family=\22helvetica\22/></typemap>\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetTypeInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %59

7:                                                ; preds = %2
  %8 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @type_semaphore) #11
  br label %11

11:                                               ; preds = %10, %7
  %12 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %12) #11
  %13 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef null, ptr noundef nonnull @DestroyTypeNode) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #11
  call void @GetExceptionInfo(ptr noundef nonnull %3) #11
  %19 = tail call ptr @__errno_location() #12
  %20 = load i32, ptr %19, align 4, !tbaa !38
  %21 = call ptr @GetExceptionMessage(i32 noundef %20) #11
  %22 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 198, i32 noundef 700, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.15, ptr noundef %21) #11
  %23 = call ptr @DestroyString(ptr noundef %21) #11
  call void @CatchException(ptr noundef nonnull %3) #11
  %24 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #13
  unreachable

25:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #11
  store i8 0, ptr %4, align 16, !tbaa !40
  %26 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.26, ptr noundef %1) #11
  %27 = tail call ptr @GetNextValueInLinkedList(ptr noundef %26) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %36, %29 ], [ %27, %25 ]
  %31 = call ptr @GetStringInfoPath(ptr noundef nonnull %30) #11
  %32 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef %31, i64 noundef 4096) #11
  %33 = call ptr @GetStringInfoDatum(ptr noundef nonnull %30) #11
  %34 = call ptr @GetStringInfoPath(ptr noundef nonnull %30) #11
  %35 = call fastcc i32 @LoadTypeCache(ptr noundef nonnull %16, ptr noundef %33, ptr noundef %34, i64 noundef 0, ptr noundef %1)
  %36 = call ptr @GetNextValueInLinkedList(ptr noundef %26) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %29, !llvm.loop !41

38:                                               ; preds = %29, %25
  %39 = call ptr @DestroyConfigureOptions(ptr noundef %26) #11
  %40 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.28) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.29, ptr noundef nonnull %40, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26) #11
  %44 = call ptr @FileToString(ptr noundef nonnull %4, i64 noundef -1, ptr noundef %1) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = call fastcc i32 @LoadTypeCache(ptr noundef nonnull %16, ptr noundef nonnull %44, ptr noundef nonnull %4, i64 noundef 0, ptr noundef %1)
  %48 = call ptr @DestroyString(ptr noundef nonnull %44) #11
  br label %49

49:                                               ; preds = %46, %42
  %50 = call ptr @DestroyString(ptr noundef nonnull %40) #11
  br label %51

51:                                               ; preds = %49, %38
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #11
  %52 = call i64 @GetNumberOfNodesInSplayTree(ptr noundef nonnull %16) #11
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call fastcc i32 @LoadTypeCache(ptr noundef nonnull %16, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.31, i64 noundef 0, ptr noundef %1)
  br label %56

56:                                               ; preds = %54, %51
  store ptr %16, ptr @type_cache, align 8, !tbaa !34
  br label %57

57:                                               ; preds = %56, %11
  %58 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  call void @UnlockSemaphoreInfo(ptr noundef %58) #11
  br label %59

59:                                               ; preds = %2, %57
  %60 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %78, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  call void @LockSemaphoreInfo(ptr noundef %63) #11
  %64 = icmp eq ptr %0, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65, %62
  %69 = load ptr, ptr @type_cache, align 8, !tbaa !34
  call void @ResetSplayTreeIterator(ptr noundef %69) #11
  %70 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %71 = call ptr @GetNextValueInSplayTree(ptr noundef %70) #11
  br label %75

72:                                               ; preds = %65
  %73 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %74 = call ptr @GetValueFromSplayTree(ptr noundef %73, ptr noundef nonnull %0) #11
  br label %75

75:                                               ; preds = %68, %72
  %76 = phi ptr [ %74, %72 ], [ %71, %68 ]
  %77 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  call void @UnlockSemaphoreInfo(ptr noundef %77) #11
  br label %78

78:                                               ; preds = %75, %59
  %79 = phi ptr [ null, %59 ], [ %76, %75 ]
  ret ptr %79
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #2

declare ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #2

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetTypeInfoByFamily(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  br label %6

6:                                                ; preds = %179, %5
  %7 = phi ptr [ %0, %5 ], [ null, %179 ]
  %8 = tail call ptr @GetTypeInfo(ptr noundef nonnull @.str, ptr noundef %4)
  %9 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %181, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %12) #11
  %13 = load ptr, ptr @type_cache, align 8, !tbaa !34
  tail call void @ResetSplayTreeIterator(ptr noundef %13) #11
  %14 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %15 = tail call ptr @GetNextValueInSplayTree(ptr noundef %14) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %57, label %17

17:                                               ; preds = %11
  %18 = icmp eq ptr %7, null
  %19 = and i32 %1, -5
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq i64 %3, 0
  br label %22

22:                                               ; preds = %17, %27
  %23 = phi ptr [ %15, %17 ], [ %29, %27 ]
  %24 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %53, %48, %43, %39, %35
  %28 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %29 = tail call ptr @GetNextValueInSplayTree(ptr noundef %28) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %57, label %22, !llvm.loop !47

31:                                               ; preds = %22
  br i1 %18, label %32, label %39

32:                                               ; preds = %31
  %33 = tail call i32 @LocaleCompare(ptr noundef nonnull %25, ptr noundef nonnull @.str.11) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %24, align 8, !tbaa !44
  %37 = tail call i32 @LocaleCompare(ptr noundef %36, ptr noundef nonnull @.str.6) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %27

39:                                               ; preds = %31
  %40 = tail call i32 @LocaleCompare(ptr noundef nonnull %25, ptr noundef nonnull %7) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %27

42:                                               ; preds = %39, %32, %35
  br i1 %20, label %47, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !48
  %46 = icmp eq i32 %45, %1
  br i1 %46, label %47, label %27

47:                                               ; preds = %43, %42
  switch i32 %2, label %48 [
    i32 10, label %52
    i32 0, label %52
  ]

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 6
  %50 = load i32, ptr %49, align 4, !tbaa !49
  %51 = icmp eq i32 %50, %2
  br i1 %51, label %52, label %27

52:                                               ; preds = %47, %47, %48
  br i1 %21, label %57, label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 7
  %55 = load i64, ptr %54, align 8, !tbaa !50
  %56 = icmp eq i64 %55, %3
  br i1 %56, label %57, label %27

57:                                               ; preds = %27, %53, %52, %11
  %58 = phi ptr [ null, %11 ], [ null, %27 ], [ %23, %53 ], [ %23, %52 ]
  %59 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %59) #11
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %181

61:                                               ; preds = %57
  %62 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %62) #11
  %63 = load ptr, ptr @type_cache, align 8, !tbaa !34
  tail call void @ResetSplayTreeIterator(ptr noundef %63) #11
  %64 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %65 = tail call ptr @GetNextValueInSplayTree(ptr noundef %64) #11
  %66 = icmp eq ptr %65, null
  br i1 %66, label %145, label %67

67:                                               ; preds = %61
  %68 = icmp eq ptr %7, null
  %69 = and i32 %1, -5
  %70 = icmp eq i32 %69, 0
  %71 = and i32 %1, -2
  %72 = icmp eq i32 %71, 2
  %73 = icmp eq i64 %3, 0
  %74 = tail call i64 @llvm.umin.i64(i64 %3, i64 900)
  %75 = zext i32 %2 to i64
  br label %76

76:                                               ; preds = %67, %137
  %77 = phi i64 [ 0, %67 ], [ %141, %137 ]
  %78 = phi ptr [ %65, %67 ], [ %143, %137 ]
  %79 = phi ptr [ null, %67 ], [ %140, %137 ]
  br label %80

80:                                               ; preds = %76, %85
  %81 = phi ptr [ %78, %76 ], [ %87, %85 ]
  %82 = getelementptr inbounds %struct._TypeInfo, ptr %81, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !44
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80, %97, %93
  %86 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %87 = tail call ptr @GetNextValueInSplayTree(ptr noundef %86) #11
  %88 = icmp eq ptr %87, null
  br i1 %88, label %145, label %80, !llvm.loop !51

89:                                               ; preds = %80
  br i1 %68, label %90, label %97

90:                                               ; preds = %89
  %91 = tail call i32 @LocaleCompare(ptr noundef nonnull %83, ptr noundef nonnull @.str.11) #11
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %82, align 8, !tbaa !44
  %95 = tail call i32 @LocaleCompare(ptr noundef %94, ptr noundef nonnull @.str.6) #11
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %85

97:                                               ; preds = %89
  %98 = tail call i32 @LocaleCompare(ptr noundef nonnull %83, ptr noundef nonnull %7) #11
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %85

100:                                              ; preds = %97, %90, %93
  br i1 %70, label %110, label %101

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct._TypeInfo, ptr %81, i64 0, i32 5
  %103 = load i32, ptr %102, align 8, !tbaa !48
  %104 = icmp eq i32 %103, %1
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = and i32 %103, -2
  %107 = icmp eq i32 %106, 2
  %108 = and i1 %72, %107
  %109 = select i1 %108, i64 25, i64 0
  br label %110

110:                                              ; preds = %105, %100, %101
  %111 = phi i64 [ 32, %101 ], [ 32, %100 ], [ %109, %105 ]
  br i1 %73, label %112, label %114

112:                                              ; preds = %110
  %113 = add nuw nsw i64 %111, 16
  br label %124

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct._TypeInfo, ptr %81, i64 0, i32 7
  %116 = load i64, ptr %115, align 8, !tbaa !50
  %117 = tail call i64 @llvm.umax.i64(i64 %74, i64 %116)
  %118 = tail call i64 @llvm.umin.i64(i64 %74, i64 %116)
  %119 = sub i64 %118, %117
  %120 = shl i64 %119, 4
  %121 = add i64 %120, 12800
  %122 = sdiv i64 %121, 800
  %123 = add nsw i64 %122, %111
  br label %124

124:                                              ; preds = %114, %112
  %125 = phi i64 [ %113, %112 ], [ %123, %114 ]
  switch i32 %2, label %128 [
    i32 10, label %126
    i32 0, label %126
  ]

126:                                              ; preds = %124, %124
  %127 = add nsw i64 %125, 8
  br label %137

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct._TypeInfo, ptr %81, i64 0, i32 6
  %130 = load i32, ptr %129, align 4, !tbaa !49
  %131 = zext i32 %130 to i64
  %132 = tail call i64 @llvm.umax.i64(i64 %75, i64 %131)
  %133 = tail call i64 @llvm.umin.i64(i64 %75, i64 %131)
  %134 = add nsw i64 %125, 8
  %135 = sub nsw i64 %134, %132
  %136 = add nsw i64 %135, %133
  br label %137

137:                                              ; preds = %128, %126
  %138 = phi i64 [ %127, %126 ], [ %136, %128 ]
  %139 = icmp ugt i64 %138, %77
  %140 = select i1 %139, ptr %81, ptr %79
  %141 = tail call i64 @llvm.umax.i64(i64 %138, i64 %77)
  %142 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %143 = tail call ptr @GetNextValueInSplayTree(ptr noundef %142) #11
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %76, !llvm.loop !51

145:                                              ; preds = %137, %85, %61
  %146 = phi ptr [ null, %61 ], [ %79, %85 ], [ %140, %137 ]
  %147 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %147) #11
  %148 = icmp eq ptr %146, null
  br i1 %148, label %149, label %181

149:                                              ; preds = %145
  %150 = icmp eq ptr %7, null
  br label %151

151:                                              ; preds = %149, %167
  %152 = phi ptr [ @.str.1, %149 ], [ %170, %167 ]
  %153 = phi i64 [ 0, %149 ], [ %168, %167 ]
  br i1 %150, label %154, label %160

154:                                              ; preds = %151
  %155 = tail call i32 @LocaleCompare(ptr noundef nonnull %152, ptr noundef nonnull @.str.11) #11
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = tail call i32 @LocaleCompare(ptr noundef nonnull %152, ptr noundef nonnull @.str.6) #11
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %167

160:                                              ; preds = %151
  %161 = tail call i32 @LocaleCompare(ptr noundef nonnull %152, ptr noundef nonnull %7) #11
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160, %154, %157
  %164 = getelementptr inbounds [8 x %struct._Fontmap], ptr @GetTypeInfoByFamily.fontmap, i64 0, i64 %153, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !52
  %166 = tail call ptr @GetTypeInfoByFamily(ptr noundef %165, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4)
  br label %172

167:                                              ; preds = %160, %157
  %168 = add nuw nsw i64 %153, 1
  %169 = getelementptr inbounds [8 x %struct._Fontmap], ptr @GetTypeInfoByFamily.fontmap, i64 0, i64 %168
  %170 = load ptr, ptr %169, align 16, !tbaa !54
  %171 = icmp eq i64 %168, 7
  br i1 %171, label %172, label %151, !llvm.loop !55

172:                                              ; preds = %167, %163
  %173 = phi ptr [ %166, %163 ], [ null, %167 ]
  %174 = icmp eq ptr %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct._TypeInfo, ptr %173, i64 0, i32 4
  %177 = load ptr, ptr %176, align 8, !tbaa !44
  %178 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 519, i32 noundef 405, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %177) #11
  br label %181

179:                                              ; preds = %172
  %180 = icmp eq ptr %7, null
  br i1 %180, label %181, label %6

181:                                              ; preds = %179, %145, %57, %6, %175
  %182 = phi ptr [ %173, %175 ], [ null, %6 ], [ %58, %57 ], [ %146, %145 ], [ null, %179 ]
  ret ptr %182
}

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetTypeInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 594, ptr noundef nonnull @.str.16, ptr noundef %0) #11
  store i64 0, ptr %1, align 8, !tbaa !56
  %5 = tail call ptr @GetTypeInfo(ptr noundef nonnull @.str, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #11
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #11
  %15 = load ptr, ptr @type_cache, align 8, !tbaa !34
  tail call void @ResetSplayTreeIterator(ptr noundef %15) #11
  %16 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInSplayTree(ptr noundef %16) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._TypeInfo, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !57
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._TypeInfo, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i64 %20, 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %32, align 8, !tbaa !34
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = phi i64 [ %31, %30 ], [ %20, %25 ], [ %20, %19 ]
  %35 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %36 = tail call ptr @GetNextValueInSplayTree(ptr noundef %35) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !59

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #11
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @TypeInfoCompare) #11
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !34
  store i64 %39, ptr %1, align 8, !tbaa !56
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @GetNumberOfNodesInSplayTree(ptr noundef) local_unnamed_addr #2

declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @TypeInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct._TypeInfo, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct._TypeInfo, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef %8) #11
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = load ptr, ptr %1, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct._TypeInfo, ptr %11, i64 0, i32 1
  %14 = getelementptr inbounds %struct._TypeInfo, ptr %12, i64 0, i32 1
  %15 = getelementptr inbounds %struct._TypeInfo, ptr %11, i64 0, i32 2
  %16 = getelementptr inbounds %struct._TypeInfo, ptr %12, i64 0, i32 2
  %17 = select i1 %10, ptr %16, ptr %14
  %18 = select i1 %10, ptr %15, ptr %13
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = load ptr, ptr %17, align 8, !tbaa !34
  %21 = tail call i32 @LocaleCompare(ptr noundef %19, ptr noundef %20) #11
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetTypeList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 687, ptr noundef nonnull @.str.16, ptr noundef %0) #11
  store i64 0, ptr %1, align 8, !tbaa !56
  %5 = tail call ptr @GetTypeInfo(ptr noundef nonnull @.str, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #11
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #11
  %15 = load ptr, ptr @type_cache, align 8, !tbaa !34
  tail call void @ResetSplayTreeIterator(ptr noundef %15) #11
  %16 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInSplayTree(ptr noundef %16) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %13, %35
  %20 = phi i64 [ %36, %35 ], [ 0, %13 ]
  %21 = phi ptr [ %38, %35 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._TypeInfo, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !57
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._TypeInfo, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !58
  %32 = tail call ptr @ConstantString(ptr noundef %31) #11
  %33 = add nsw i64 %20, 1
  %34 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %32, ptr %34, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %30, %25, %19
  %36 = phi i64 [ %33, %30 ], [ %20, %25 ], [ %20, %19 ]
  %37 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %38 = tail call ptr @GetNextValueInSplayTree(ptr noundef %37) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !61

40:                                               ; preds = %35, %13
  %41 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %42 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #11
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %41, i64 noundef 8, ptr noundef nonnull @TypeCompare) #11
  %43 = getelementptr inbounds ptr, ptr %11, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !34
  store i64 %41, ptr %1, align 8, !tbaa !56
  br label %44

44:                                               ; preds = %7, %3, %40
  %45 = phi ptr [ %11, %40 ], [ null, %3 ], [ null, %7 ]
  ret ptr %45
}

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @TypeCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %4) #11
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ListTypeInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %5 = icmp eq ptr %0, null
  %6 = load ptr, ptr @stdout, align 8
  %7 = select i1 %5, ptr %6, ptr %0
  store i64 0, ptr %4, align 8, !tbaa !56
  %8 = call ptr @GetTypeInfoList(ptr noundef nonnull @.str, ptr noundef nonnull %4, ptr noundef %1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %79, label %10

10:                                               ; preds = %2
  store i8 0, ptr %3, align 16, !tbaa !40
  %11 = load i64, ptr %4, align 8, !tbaa !56
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %76

13:                                               ; preds = %10, %71
  %14 = phi i64 [ %73, %71 ], [ 0, %10 ]
  %15 = phi ptr [ %72, %71 ], [ null, %10 ]
  %16 = getelementptr inbounds ptr, ptr %8, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct._TypeInfo, ptr %17, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !57
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %13
  %22 = icmp eq ptr %15, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct._TypeInfo, ptr %17, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = call i32 @LocaleCompare(ptr noundef nonnull %15, ptr noundef %25) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23, %21
  %29 = load ptr, ptr %16, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct._TypeInfo, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.17, ptr noundef nonnull %31) #11
  br label %35

35:                                               ; preds = %33, %28, %23
  %36 = load ptr, ptr %16, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct._TypeInfo, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !60
  %39 = getelementptr inbounds %struct._TypeInfo, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, ptr @.str.18, ptr %40
  %43 = getelementptr inbounds %struct._TypeInfo, ptr %36, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr @.str.18, ptr %44
  %47 = getelementptr inbounds %struct._TypeInfo, ptr %36, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !48
  %49 = zext i32 %48 to i64
  %50 = call ptr @CommandOptionToMnemonic(i32 noundef 64, i64 noundef %49) #11
  %51 = load ptr, ptr %16, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct._TypeInfo, ptr %51, i64 0, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !49
  %54 = zext i32 %53 to i64
  %55 = call ptr @CommandOptionToMnemonic(i32 noundef 63, i64 noundef %54) #11
  %56 = load ptr, ptr %16, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct._TypeInfo, ptr %56, i64 0, i32 12
  %58 = load ptr, ptr %57, align 8, !tbaa !62
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, ptr @.str.18, ptr %58
  %61 = getelementptr inbounds %struct._TypeInfo, ptr %56, i64 0, i32 7
  %62 = load i64, ptr %61, align 8, !tbaa !50
  %63 = uitofp i64 %62 to double
  %64 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.19, double noundef %63) #11
  %65 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef nonnull %42) #11
  %66 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef nonnull %46) #11
  %67 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.22, ptr noundef %50) #11
  %68 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef %55) #11
  %69 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef nonnull %3) #11
  %70 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.25, ptr noundef nonnull %60) #11
  br label %71

71:                                               ; preds = %13, %35
  %72 = phi ptr [ %15, %13 ], [ %38, %35 ]
  %73 = add nuw nsw i64 %14, 1
  %74 = load i64, ptr %4, align 8, !tbaa !56
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %13, label %76, !llvm.loop !63

76:                                               ; preds = %71, %10
  %77 = call i32 @fflush(ptr noundef %7)
  %78 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %8) #11
  br label %79

79:                                               ; preds = %2, %76
  %80 = phi i32 [ 1, %76 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #11
  ret i32 %80
}

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TypeComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #11
  store ptr %4, ptr @type_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @TypeComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @type_semaphore) #11
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %5) #11
  %6 = load ptr, ptr @type_cache, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @DestroySplayTree(ptr noundef nonnull %6) #11
  store ptr %9, ptr @type_cache, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr @type_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #11
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @type_semaphore) #11
  ret void
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #2

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @DestroyTypeNode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @DestroyString(ptr noundef nonnull %3) #11
  store ptr %6, ptr %2, align 8, !tbaa !60
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @DestroyString(ptr noundef nonnull %9) #11
  store ptr %12, ptr %8, align 8, !tbaa !58
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @DestroyString(ptr noundef nonnull %15) #11
  store ptr %18, ptr %14, align 8, !tbaa !64
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @DestroyString(ptr noundef nonnull %21) #11
  store ptr %24, ptr %20, align 8, !tbaa !44
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !65
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @DestroyString(ptr noundef nonnull %27) #11
  store ptr %30, ptr %26, align 8, !tbaa !65
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !66
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @DestroyString(ptr noundef nonnull %33) #11
  store ptr %36, ptr %32, align 8, !tbaa !66
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !67
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call ptr @DestroyString(ptr noundef nonnull %39) #11
  store ptr %42, ptr %38, align 8, !tbaa !67
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 11
  %45 = load ptr, ptr %44, align 8, !tbaa !68
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @DestroyString(ptr noundef nonnull %45) #11
  store ptr %48, ptr %44, align 8, !tbaa !68
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 12
  %51 = load ptr, ptr %50, align 8, !tbaa !62
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @DestroyString(ptr noundef nonnull %51) #11
  store ptr %54, ptr %50, align 8, !tbaa !62
  br label %55

55:                                               ; preds = %53, %49
  %56 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #11
  ret ptr %56
}

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #7

declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #2

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadTypeCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 1104, ptr noundef nonnull @.str.32, ptr noundef %2) #11
  %12 = icmp eq ptr %1, null
  br i1 %12, label %272, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @AcquireString(ptr noundef nonnull %1) #11
  store ptr %1, ptr %8, align 8, !tbaa !34
  %15 = load i8, ptr %1, align 1, !tbaa !40
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %269, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  %19 = icmp ugt i64 %3, 200
  %20 = add nuw nsw i64 %3, 1
  br label %21

21:                                               ; preds = %17, %43
  %22 = phi ptr [ %1, %17 ], [ %46, %43 ]
  %23 = phi ptr [ null, %17 ], [ %45, %43 ]
  %24 = phi i32 [ 1, %17 ], [ %44, %43 ]
  call void @GetMagickToken(ptr noundef nonnull %22, ptr noundef nonnull %8, ptr noundef %14) #11
  %25 = load i8, ptr %14, align 1, !tbaa !40
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %269, label %27

27:                                               ; preds = %21
  %28 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef %14, i64 noundef 4096) #11
  %29 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.33, i64 noundef 9) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load ptr, ptr %8, align 8, !tbaa !34
  %33 = call i32 @LocaleNCompare(ptr noundef %32, ptr noundef nonnull @.str.34, i64 noundef 2) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31, %39
  %36 = load ptr, ptr %8, align 8, !tbaa !34
  %37 = load i8, ptr %36, align 1, !tbaa !40
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  call void @GetMagickToken(ptr noundef nonnull %36, ptr noundef nonnull %8, ptr noundef %14) #11
  %40 = load ptr, ptr %8, align 8, !tbaa !34
  %41 = call i32 @LocaleNCompare(ptr noundef %40, ptr noundef nonnull @.str.34, i64 noundef 2) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %35, !llvm.loop !69

43:                                               ; preds = %60, %56, %39, %35, %76, %70, %73, %158, %164, %169, %175, %181, %187, %233, %239, %245, %252, %155, %184, %205, %190, %225, %210, %230, %249, %268, %265, %256, %151, %208, %228, %139, %144, %52, %31, %129, %134, %147
  %44 = phi i32 [ %24, %129 ], [ %24, %134 ], [ %24, %147 ], [ %24, %31 ], [ %24, %52 ], [ %142, %144 ], [ %142, %139 ], [ %24, %228 ], [ %24, %208 ], [ %24, %151 ], [ %24, %256 ], [ %24, %265 ], [ %24, %268 ], [ %24, %249 ], [ %24, %230 ], [ %24, %210 ], [ %24, %225 ], [ %24, %190 ], [ %24, %205 ], [ %24, %184 ], [ %24, %155 ], [ %24, %252 ], [ %24, %245 ], [ %24, %239 ], [ %24, %233 ], [ %24, %187 ], [ %24, %181 ], [ %24, %175 ], [ %24, %169 ], [ %24, %164 ], [ %24, %158 ], [ %68, %73 ], [ %68, %70 ], [ %68, %76 ], [ %24, %35 ], [ %24, %39 ], [ %24, %56 ], [ %24, %60 ]
  %45 = phi ptr [ %120, %129 ], [ null, %134 ], [ %23, %147 ], [ %23, %31 ], [ %23, %52 ], [ null, %144 ], [ null, %139 ], [ %23, %228 ], [ %23, %208 ], [ %23, %151 ], [ %23, %256 ], [ %23, %265 ], [ %23, %268 ], [ %23, %249 ], [ %23, %230 ], [ %23, %210 ], [ %227, %225 ], [ %23, %190 ], [ %207, %205 ], [ %23, %184 ], [ %23, %155 ], [ %23, %252 ], [ %23, %245 ], [ %23, %239 ], [ %23, %233 ], [ %23, %187 ], [ %23, %181 ], [ %23, %175 ], [ %23, %169 ], [ %23, %164 ], [ %23, %158 ], [ %23, %73 ], [ %23, %70 ], [ %23, %76 ], [ %23, %35 ], [ %23, %39 ], [ %23, %56 ], [ %23, %60 ]
  %46 = load ptr, ptr %8, align 8, !tbaa !34
  %47 = load i8, ptr %46, align 1, !tbaa !40
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %269, label %21, !llvm.loop !70

49:                                               ; preds = %27
  %50 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.35, i64 noundef 4) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load ptr, ptr %8, align 8, !tbaa !34
  %54 = call i32 @LocaleNCompare(ptr noundef %53, ptr noundef nonnull @.str.36, i64 noundef 2) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %43, label %56

56:                                               ; preds = %52, %60
  %57 = load ptr, ptr %8, align 8, !tbaa !34
  %58 = load i8, ptr %57, align 1, !tbaa !40
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %43, label %60

60:                                               ; preds = %56
  call void @GetMagickToken(ptr noundef nonnull %57, ptr noundef nonnull %8, ptr noundef %14) #11
  %61 = load ptr, ptr %8, align 8, !tbaa !34
  %62 = call i32 @LocaleNCompare(ptr noundef %61, ptr noundef nonnull @.str.36, i64 noundef 2) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %43, label %56, !llvm.loop !71

64:                                               ; preds = %49
  %65 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.37) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %116

67:                                               ; preds = %64, %114
  %68 = phi i32 [ %115, %114 ], [ %24, %64 ]
  br label %69

69:                                               ; preds = %92, %67
  br label %70

70:                                               ; preds = %69, %80
  %71 = load i8, ptr %14, align 1, !tbaa !40
  %72 = icmp eq i8 %71, 47
  br i1 %72, label %43, label %73

73:                                               ; preds = %70
  %74 = load i8, ptr %18, align 1, !tbaa !40
  %75 = icmp eq i8 %74, 62
  br i1 %75, label %43, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %8, align 8, !tbaa !34
  %78 = load i8, ptr %77, align 1, !tbaa !40
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %43, label %80

80:                                               ; preds = %76
  %81 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef %14, i64 noundef 4096) #11
  %82 = load ptr, ptr %8, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %82, ptr noundef nonnull %8, ptr noundef %14) #11
  %83 = load i8, ptr %14, align 1, !tbaa !40
  %84 = icmp eq i8 %83, 61
  br i1 %84, label %85, label %70, !llvm.loop !72

85:                                               ; preds = %80
  %86 = load ptr, ptr %8, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %86, ptr noundef nonnull %8, ptr noundef %14) #11
  %87 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.38) #11
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  br i1 %19, label %90, label %93

90:                                               ; preds = %89
  %91 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 1161, i32 noundef 495, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.15, ptr noundef %14) #11
  br label %92

92:                                               ; preds = %90, %85
  br label %69, !llvm.loop !72

93:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #11
  store i8 0, ptr %9, align 16, !tbaa !40
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %9) #11
  %94 = load i8, ptr %9, align 16, !tbaa !40
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.30, i64 noundef 4096) #11
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i8, ptr %14, align 1, !tbaa !40
  %100 = icmp eq i8 %99, 47
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef %14, i64 noundef 4096) #11
  br label %105

103:                                              ; preds = %98
  %104 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef %14, i64 noundef 4096) #11
  br label %105

105:                                              ; preds = %103, %101
  %106 = call ptr @AcquireExceptionInfo() #11
  %107 = call ptr @FileToString(ptr noundef nonnull %9, i64 noundef -1, ptr noundef %106) #11
  %108 = call ptr @DestroyExceptionInfo(ptr noundef %106) #11
  %109 = icmp eq ptr %107, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = call fastcc i32 @LoadTypeCache(ptr noundef %0, ptr noundef nonnull %107, ptr noundef nonnull %9, i64 noundef %20, ptr noundef %4)
  %112 = and i32 %111, %68
  %113 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %107) #11
  br label %114

114:                                              ; preds = %110, %105
  %115 = phi i32 [ %112, %110 ], [ %68, %105 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #11
  br label %67, !llvm.loop !72

116:                                              ; preds = %64
  %117 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.40) #11
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = call dereferenceable_or_null(128) ptr @AcquireMagickMemory(i64 noundef 128) #15
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #11
  call void @GetExceptionInfo(ptr noundef nonnull %10) #11
  %123 = tail call ptr @__errno_location() #12
  %124 = load i32, ptr %123, align 4, !tbaa !38
  %125 = call ptr @GetExceptionMessage(i32 noundef %124) #11
  %126 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %10, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 1202, i32 noundef 700, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.15, ptr noundef %125) #11
  %127 = call ptr @DestroyString(ptr noundef %125) #11
  call void @CatchException(ptr noundef nonnull %10) #11
  %128 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %10) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #13
  unreachable

129:                                              ; preds = %119
  %130 = call ptr @ResetMagickMemory(ptr noundef nonnull %120, i32 noundef 0, i64 noundef 128) #11
  %131 = call ptr @ConstantString(ptr noundef %2) #11
  %132 = getelementptr inbounds %struct._TypeInfo, ptr %120, i64 0, i32 1
  store ptr %131, ptr %132, align 8, !tbaa !60
  %133 = getelementptr inbounds %struct._TypeInfo, ptr %120, i64 0, i32 16
  store i64 2880220587, ptr %133, align 8, !tbaa !73
  br label %43

134:                                              ; preds = %116
  %135 = icmp eq ptr %23, null
  br i1 %135, label %43, label %136

136:                                              ; preds = %134
  %137 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.41) #11
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !58
  %142 = call i32 @AddValueToSplayTree(ptr noundef %0, ptr noundef %141, ptr noundef %23) #11
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %43

144:                                              ; preds = %139
  %145 = load ptr, ptr %140, align 8, !tbaa !58
  %146 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 1214, i32 noundef 400, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.15, ptr noundef %145) #11
  br label %43

147:                                              ; preds = %136
  %148 = load ptr, ptr %8, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %148, ptr noundef null, ptr noundef %14) #11
  %149 = load i8, ptr %14, align 1, !tbaa !40
  %150 = icmp eq i8 %149, 61
  br i1 %150, label %151, label %43

151:                                              ; preds = %147
  %152 = load ptr, ptr %8, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %152, ptr noundef nonnull %8, ptr noundef nonnull %14) #11
  %153 = load ptr, ptr %8, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %153, ptr noundef nonnull %8, ptr noundef nonnull %14) #11
  %154 = load i8, ptr %7, align 16, !tbaa !40
  switch i8 %154, label %43 [
    i8 69, label %155
    i8 101, label %155
    i8 70, label %161
    i8 102, label %161
    i8 71, label %190
    i8 103, label %190
    i8 77, label %210
    i8 109, label %210
    i8 78, label %230
    i8 110, label %230
    i8 83, label %236
    i8 115, label %236
    i8 87, label %256
    i8 119, label %256
  ]

155:                                              ; preds = %151, %151
  %156 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.42) #11
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %43

158:                                              ; preds = %155
  %159 = call ptr @ConstantString(ptr noundef nonnull %14) #11
  %160 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 8
  store ptr %159, ptr %160, align 8, !tbaa !65
  br label %43

161:                                              ; preds = %151, %151
  %162 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.43) #11
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i64 @strtoul(ptr nocapture noundef nonnull %14, ptr noundef null, i32 noundef 10) #11
  store i64 %165, ptr %23, align 8, !tbaa !74
  br label %43

166:                                              ; preds = %161
  %167 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.44) #11
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = call ptr @ConstantString(ptr noundef nonnull %14) #11
  %171 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 4
  store ptr %170, ptr %171, align 8, !tbaa !44
  br label %43

172:                                              ; preds = %166
  %173 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.45) #11
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = call ptr @ConstantString(ptr noundef nonnull %14) #11
  %177 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 10
  store ptr %176, ptr %177, align 8, !tbaa !67
  br label %43

178:                                              ; preds = %172
  %179 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.46) #11
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = call ptr @ConstantString(ptr noundef nonnull %14) #11
  %183 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 9
  store ptr %182, ptr %183, align 8, !tbaa !66
  br label %43

184:                                              ; preds = %178
  %185 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.47) #11
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %43

187:                                              ; preds = %184
  %188 = call ptr @ConstantString(ptr noundef nonnull %14) #11
  %189 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 3
  store ptr %188, ptr %189, align 8, !tbaa !64
  br label %43

190:                                              ; preds = %151, %151
  %191 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.48) #11
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %43

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 12
  %195 = call ptr @ConstantString(ptr noundef nonnull %14) #11
  %196 = call i32 @IsPathAccessible(ptr noundef %195) #11
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %193
  %199 = call ptr @DestroyString(ptr noundef %195) #11
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %6) #11
  %200 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull @.str.30, i64 noundef 4096) #11
  %201 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull %14, i64 noundef 4096) #11
  %202 = call ptr @ConstantString(ptr noundef nonnull %6) #11
  %203 = call i32 @IsPathAccessible(ptr noundef %202) #11
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %198
  %206 = call ptr @DestroyString(ptr noundef %202) #11
  %207 = call ptr @DestroyTypeNode(ptr noundef %23)
  br label %43

208:                                              ; preds = %198, %193
  %209 = phi ptr [ %202, %198 ], [ %195, %193 ]
  store ptr %209, ptr %194, align 8, !tbaa !34
  br label %43

210:                                              ; preds = %151, %151
  %211 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.49) #11
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %43

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 11
  %215 = call ptr @ConstantString(ptr noundef nonnull %14) #11
  %216 = call i32 @IsPathAccessible(ptr noundef %215) #11
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %213
  %219 = call ptr @DestroyString(ptr noundef %215) #11
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %6) #11
  %220 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull @.str.30, i64 noundef 4096) #11
  %221 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull %14, i64 noundef 4096) #11
  %222 = call ptr @ConstantString(ptr noundef nonnull %6) #11
  %223 = call i32 @IsPathAccessible(ptr noundef %222) #11
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = call ptr @DestroyString(ptr noundef %222) #11
  %227 = call ptr @DestroyTypeNode(ptr noundef %23)
  br label %43

228:                                              ; preds = %218, %213
  %229 = phi ptr [ %222, %218 ], [ %215, %213 ]
  store ptr %229, ptr %214, align 8, !tbaa !34
  br label %43

230:                                              ; preds = %151, %151
  %231 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.50) #11
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %43

233:                                              ; preds = %230
  %234 = call ptr @ConstantString(ptr noundef nonnull %14) #11
  %235 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 2
  store ptr %234, ptr %235, align 8, !tbaa !58
  br label %43

236:                                              ; preds = %151, %151
  %237 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.51) #11
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = call i32 @IsMagickTrue(ptr noundef nonnull %14) #11
  %241 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 13
  store i32 %240, ptr %241, align 8, !tbaa !57
  br label %43

242:                                              ; preds = %236
  %243 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.52) #11
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = call i64 @ParseCommandOption(i32 noundef 63, i32 noundef 0, ptr noundef nonnull %14) #11
  %247 = trunc i64 %246 to i32
  %248 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 6
  store i32 %247, ptr %248, align 4, !tbaa !49
  br label %43

249:                                              ; preds = %242
  %250 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.53) #11
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %43

252:                                              ; preds = %249
  %253 = call i64 @ParseCommandOption(i32 noundef 64, i32 noundef 0, ptr noundef nonnull %14) #11
  %254 = trunc i64 %253 to i32
  %255 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 5
  store i32 %254, ptr %255, align 8, !tbaa !48
  br label %43

256:                                              ; preds = %151, %151
  %257 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.54) #11
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %43

259:                                              ; preds = %256
  %260 = call i64 @strtoul(ptr nocapture noundef nonnull %14, ptr noundef null, i32 noundef 10) #11
  %261 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 7
  store i64 %260, ptr %261, align 8, !tbaa !50
  %262 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.55) #11
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %259
  store i64 700, ptr %261, align 8, !tbaa !50
  br label %265

265:                                              ; preds = %264, %259
  %266 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.56) #11
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %43

268:                                              ; preds = %265
  store i64 400, ptr %261, align 8, !tbaa !50
  br label %43

269:                                              ; preds = %43, %21, %13
  %270 = phi i32 [ 1, %13 ], [ %44, %43 ], [ %24, %21 ]
  %271 = call ptr @RelinquishMagickMemory(ptr noundef %14) #11
  br label %272

272:                                              ; preds = %5, %269
  %273 = phi i32 [ %270, %269 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #11
  ret i32 %273
}

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #2

declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #2

declare ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #8

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!36, !36, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !35, i64 32}
!45 = !{!"_TypeInfo", !46, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !39, i64 40, !39, i64 44, !46, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !39, i64 96, !35, i64 104, !35, i64 112, !46, i64 120}
!46 = !{!"long", !36, i64 0}
!47 = distinct !{!47, !42, !43}
!48 = !{!45, !39, i64 40}
!49 = !{!45, !39, i64 44}
!50 = !{!45, !46, i64 48}
!51 = distinct !{!51, !42, !43}
!52 = !{!53, !35, i64 8}
!53 = !{!"_Fontmap", !35, i64 0, !35, i64 8}
!54 = !{!53, !35, i64 0}
!55 = distinct !{!55, !42, !43}
!56 = !{!46, !46, i64 0}
!57 = !{!45, !39, i64 96}
!58 = !{!45, !35, i64 16}
!59 = distinct !{!59, !42, !43}
!60 = !{!45, !35, i64 8}
!61 = distinct !{!61, !42, !43}
!62 = !{!45, !35, i64 88}
!63 = distinct !{!63, !42, !43}
!64 = !{!45, !35, i64 24}
!65 = !{!45, !35, i64 56}
!66 = !{!45, !35, i64 64}
!67 = !{!45, !35, i64 72}
!68 = !{!45, !35, i64 80}
!69 = distinct !{!69, !42, !43}
!70 = distinct !{!70, !42, !43}
!71 = distinct !{!71, !42, !43}
!72 = distinct !{!72, !42, !43}
!73 = !{!45, !46, i64 120}
!74 = !{!45, !46, i64 0}
