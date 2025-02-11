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
@.str.1 = private unnamed_addr constant [9 x i8] c"type.xml\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"magick/type.c\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"MAGICK_FONT_PATH\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"built-in\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Loading type configure file \22%s\22 ...\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"IncludeNodeNestedTooDeeply\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"<type\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"face\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"foundry\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"fullname\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"glyphs\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"stretch\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.35 = private unnamed_addr constant [157 x i8] c"<?xml version=\221.0\22?><typemap>  <type stealth=\22True\22 name=\22fixed\22 family=\22helvetica\22/>  <type stealth=\22True\22 name=\22helvetica\22 family=\22helvetica\22/></typemap>\00", align 1
@GetTypeInfoByFamily.fontmap = internal unnamed_addr constant [8 x %struct._Fontmap] [%struct._Fontmap { ptr @.str.36, ptr @.str.37 }, %struct._Fontmap { ptr @.str.38, ptr @.str.37 }, %struct._Fontmap { ptr @.str.39, ptr @.str.37 }, %struct._Fontmap { ptr @.str.40, ptr @.str.41 }, %struct._Fontmap { ptr @.str.42, ptr @.str.37 }, %struct._Fontmap { ptr @.str.43, ptr @.str.37 }, %struct._Fontmap { ptr @.str.44, ptr @.str.45 }, %struct._Fontmap zeroinitializer], align 16
@.str.36 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"courier\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"modern\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"monotype corsiva\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"news gothic\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"helvetica\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"terminal\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"wingdings\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"arial\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"FontSubstitutionRequired\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [11 x i8] c"\0APath: %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"  Font: %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"    family: %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"    style: %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"    stretch: %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"    weight: %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"    glyphs: %s\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetTypeInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @IsTypeTreeInstantiated(ptr noundef %1) #13, !range !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @LockSemaphoreInfo(ptr noundef %6) #14
  %7 = icmp eq ptr %0, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8, %5
  %12 = load ptr, ptr @type_cache, align 8, !tbaa !7
  tail call void @ResetSplayTreeIterator(ptr noundef %12) #14
  %13 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %14 = tail call ptr @GetNextValueInSplayTree(ptr noundef %13) #14
  br label %18

15:                                               ; preds = %8
  %16 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %17 = tail call ptr @GetValueFromSplayTree(ptr noundef %16, ptr noundef nonnull %0) #14
  br label %18

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %17, %15 ], [ %14, %11 ]
  %20 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %20) #14
  br label %21

21:                                               ; preds = %18, %2
  %22 = phi ptr [ null, %2 ], [ %19, %18 ]
  ret ptr %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @IsTypeTreeInstantiated(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @type_semaphore) #14
  %8 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ %5, %4 ]
  tail call void @LockSemaphoreInfo(ptr noundef %10) #14
  %11 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @AcquireTypeCache(ptr noundef %0) #13
  store ptr %14, ptr @type_cache, align 8, !tbaa !7
  br label %15

15:                                               ; preds = %13, %9
  %16 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #14
  %17 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i32 [ %19, %15 ], [ 1, %1 ]
  ret i32 %21
}

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireTypeCache(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef null, ptr noundef nonnull @DestroyTypeNode) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @GetExceptionInfo(ptr noundef nonnull %2) #14
  %7 = tail call ptr @__errno_location() #16
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #14
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef 198, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %9) #14
  %11 = call ptr @DestroyString(ptr noundef %9) #14
  call void @CatchException(ptr noundef nonnull %2) #14
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #17
  unreachable

13:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #15
  store i8 0, ptr %3, align 16, !tbaa !13
  %14 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.1, ptr noundef %0) #14
  %15 = tail call ptr @GetNextValueInLinkedList(ptr noundef %14) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %24, %17 ], [ %15, %13 ]
  %19 = call ptr @GetStringInfoPath(ptr noundef nonnull %18) #14
  %20 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %19, i64 noundef 4096) #14
  %21 = call ptr @GetStringInfoDatum(ptr noundef nonnull %18) #14
  %22 = call ptr @GetStringInfoPath(ptr noundef nonnull %18) #14
  %23 = call fastcc i32 @LoadTypeCache(ptr noundef nonnull %4, ptr noundef %21, ptr noundef %22, i64 noundef 0, ptr noundef %0) #13
  %24 = call ptr @GetNextValueInLinkedList(ptr noundef %14) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %17, !llvm.loop !14

26:                                               ; preds = %17, %13
  %27 = call ptr @DestroyConfigureOptions(ptr noundef %14) #14
  %28 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.6) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef nonnull %28, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1) #14
  %32 = call ptr @FileToString(ptr noundef nonnull %3, i64 noundef -1, ptr noundef %0) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = call fastcc i32 @LoadTypeCache(ptr noundef nonnull %4, ptr noundef nonnull %32, ptr noundef nonnull %3, i64 noundef 0, ptr noundef %0) #13
  %36 = call ptr @DestroyString(ptr noundef nonnull %32) #14
  br label %37

37:                                               ; preds = %34, %30
  %38 = call ptr @DestroyString(ptr noundef nonnull %28) #14
  br label %39

39:                                               ; preds = %37, %26
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #15
  %40 = call i64 @GetNumberOfNodesInSplayTree(ptr noundef nonnull %4) #14
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call fastcc i32 @LoadTypeCache(ptr noundef nonnull %4, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.9, i64 noundef 0, ptr noundef %0) #13
  br label %44

44:                                               ; preds = %42, %39
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @DestroyTypeNode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @DestroyString(ptr noundef nonnull %3) #14
  store ptr %6, ptr %2, align 8, !tbaa !16
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @DestroyString(ptr noundef nonnull %9) #14
  store ptr %12, ptr %8, align 8, !tbaa !19
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @DestroyString(ptr noundef nonnull %15) #14
  store ptr %18, ptr %14, align 8, !tbaa !20
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @DestroyString(ptr noundef nonnull %21) #14
  store ptr %24, ptr %20, align 8, !tbaa !21
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @DestroyString(ptr noundef nonnull %27) #14
  store ptr %30, ptr %26, align 8, !tbaa !22
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !23
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @DestroyString(ptr noundef nonnull %33) #14
  store ptr %36, ptr %32, align 8, !tbaa !23
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !24
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call ptr @DestroyString(ptr noundef nonnull %39) #14
  store ptr %42, ptr %38, align 8, !tbaa !24
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 11
  %45 = load ptr, ptr %44, align 8, !tbaa !25
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @DestroyString(ptr noundef nonnull %45) #14
  store ptr %48, ptr %44, align 8, !tbaa !25
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 12
  %51 = load ptr, ptr %50, align 8, !tbaa !26
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @DestroyString(ptr noundef nonnull %51) #14
  store ptr %54, ptr %50, align 8, !tbaa !26
  br label %55

55:                                               ; preds = %53, %49
  %56 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #14
  ret ptr %56
}

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @LoadTypeCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef 1104, ptr noundef nonnull @.str.10, ptr noundef %2) #14
  %12 = icmp eq ptr %1, null
  br i1 %12, label %251, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @AcquireString(ptr noundef nonnull %1) #14
  store ptr %1, ptr %8, align 8, !tbaa !7
  %15 = load i8, ptr %1, align 1, !tbaa !13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %248, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  %19 = icmp ugt i64 %3, 200
  %20 = add nuw nsw i64 %3, 1
  br label %21

21:                                               ; preds = %17, %43
  %22 = phi ptr [ %1, %17 ], [ %46, %43 ]
  %23 = phi ptr [ null, %17 ], [ %45, %43 ]
  %24 = phi i32 [ 1, %17 ], [ %44, %43 ]
  call void @GetMagickToken(ptr noundef nonnull %22, ptr noundef nonnull %8, ptr noundef %14) #14
  %25 = load i8, ptr %14, align 1, !tbaa !13
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %248, label %27

27:                                               ; preds = %21
  %28 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %14, i64 noundef 4096) #14
  %29 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.11, i64 noundef 9) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load ptr, ptr %8, align 8, !tbaa !7
  %33 = call i32 @LocaleNCompare(ptr noundef %32, ptr noundef nonnull @.str.12, i64 noundef 2) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31, %39
  %36 = load ptr, ptr %8, align 8, !tbaa !7
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  call void @GetMagickToken(ptr noundef nonnull %36, ptr noundef nonnull %8, ptr noundef %14) #14
  %40 = load ptr, ptr %8, align 8, !tbaa !7
  %41 = call i32 @LocaleNCompare(ptr noundef %40, ptr noundef nonnull @.str.12, i64 noundef 2) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %35, !llvm.loop !27

43:                                               ; preds = %60, %56, %39, %35, %77, %71, %74, %159, %165, %170, %176, %182, %188, %212, %218, %224, %231, %156, %185, %198, %194, %191, %207, %203, %200, %209, %228, %247, %244, %235, %152, %140, %145, %52, %31, %130, %135, %148
  %44 = phi i32 [ %24, %130 ], [ %24, %135 ], [ %24, %148 ], [ %24, %31 ], [ %24, %52 ], [ 0, %145 ], [ %143, %140 ], [ %24, %152 ], [ %24, %235 ], [ %24, %244 ], [ %24, %247 ], [ %24, %228 ], [ %24, %209 ], [ %24, %200 ], [ %24, %203 ], [ %24, %207 ], [ %24, %191 ], [ %24, %194 ], [ %24, %198 ], [ %24, %185 ], [ %24, %156 ], [ %24, %231 ], [ %24, %224 ], [ %24, %218 ], [ %24, %212 ], [ %24, %188 ], [ %24, %182 ], [ %24, %176 ], [ %24, %170 ], [ %24, %165 ], [ %24, %159 ], [ %68, %74 ], [ %68, %71 ], [ %68, %77 ], [ %24, %35 ], [ %24, %39 ], [ %24, %56 ], [ %24, %60 ]
  %45 = phi ptr [ %121, %130 ], [ null, %135 ], [ %23, %148 ], [ %23, %31 ], [ %23, %52 ], [ null, %145 ], [ null, %140 ], [ %23, %152 ], [ %23, %235 ], [ %23, %244 ], [ %23, %247 ], [ %23, %228 ], [ %23, %209 ], [ %23, %200 ], [ %23, %203 ], [ %208, %207 ], [ %23, %191 ], [ %23, %194 ], [ %199, %198 ], [ %23, %185 ], [ %23, %156 ], [ %23, %231 ], [ %23, %224 ], [ %23, %218 ], [ %23, %212 ], [ %23, %188 ], [ %23, %182 ], [ %23, %176 ], [ %23, %170 ], [ %23, %165 ], [ %23, %159 ], [ %23, %74 ], [ %23, %71 ], [ %23, %77 ], [ %23, %35 ], [ %23, %39 ], [ %23, %56 ], [ %23, %60 ]
  %46 = load ptr, ptr %8, align 8, !tbaa !7
  %47 = load i8, ptr %46, align 1, !tbaa !13
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %248, label %21, !llvm.loop !28

49:                                               ; preds = %27
  %50 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.13, i64 noundef 4) #14
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load ptr, ptr %8, align 8, !tbaa !7
  %54 = call i32 @LocaleNCompare(ptr noundef %53, ptr noundef nonnull @.str.14, i64 noundef 2) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %43, label %56

56:                                               ; preds = %52, %60
  %57 = load ptr, ptr %8, align 8, !tbaa !7
  %58 = load i8, ptr %57, align 1, !tbaa !13
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %43, label %60

60:                                               ; preds = %56
  call void @GetMagickToken(ptr noundef nonnull %57, ptr noundef nonnull %8, ptr noundef %14) #14
  %61 = load ptr, ptr %8, align 8, !tbaa !7
  %62 = call i32 @LocaleNCompare(ptr noundef %61, ptr noundef nonnull @.str.14, i64 noundef 2) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %43, label %56, !llvm.loop !29

64:                                               ; preds = %49
  %65 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.15) #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %117

67:                                               ; preds = %64, %115
  %68 = phi i32 [ %116, %115 ], [ %24, %64 ]
  br label %69

69:                                               ; preds = %93, %67
  %70 = load i8, ptr %14, align 1, !tbaa !13
  br label %71

71:                                               ; preds = %69, %81
  %72 = phi i8 [ %70, %69 ], [ %84, %81 ]
  %73 = icmp eq i8 %72, 47
  br i1 %73, label %43, label %74

74:                                               ; preds = %71
  %75 = load i8, ptr %18, align 1, !tbaa !13
  %76 = icmp eq i8 %75, 62
  br i1 %76, label %43, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %8, align 8, !tbaa !7
  %79 = load i8, ptr %78, align 1, !tbaa !13
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %43, label %81

81:                                               ; preds = %77
  %82 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %14, i64 noundef 4096) #14
  %83 = load ptr, ptr %8, align 8, !tbaa !7
  call void @GetMagickToken(ptr noundef %83, ptr noundef nonnull %8, ptr noundef nonnull %14) #14
  %84 = load i8, ptr %14, align 1, !tbaa !13
  %85 = icmp eq i8 %84, 61
  br i1 %85, label %86, label %71, !llvm.loop !30

86:                                               ; preds = %81
  %87 = load ptr, ptr %8, align 8, !tbaa !7
  call void @GetMagickToken(ptr noundef %87, ptr noundef nonnull %8, ptr noundef nonnull %14) #14
  %88 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.16) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  br i1 %19, label %91, label %94

91:                                               ; preds = %90
  %92 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef 1161, i32 noundef 495, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, ptr noundef nonnull %14) #14
  br label %93

93:                                               ; preds = %91, %86
  br label %69, !llvm.loop !30

94:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #15
  store i8 0, ptr %9, align 16, !tbaa !13
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %9) #14
  %95 = load i8, ptr %9, align 16, !tbaa !13
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.8, i64 noundef 4096) #14
  br label %99

99:                                               ; preds = %97, %94
  %100 = load i8, ptr %14, align 1, !tbaa !13
  %101 = icmp eq i8 %100, 47
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef nonnull %14, i64 noundef 4096) #14
  br label %106

104:                                              ; preds = %99
  %105 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull %14, i64 noundef 4096) #14
  br label %106

106:                                              ; preds = %104, %102
  %107 = call ptr @AcquireExceptionInfo() #14
  %108 = call ptr @FileToString(ptr noundef nonnull %9, i64 noundef -1, ptr noundef %107) #14
  %109 = call ptr @DestroyExceptionInfo(ptr noundef %107) #14
  %110 = icmp eq ptr %108, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = call fastcc i32 @LoadTypeCache(ptr noundef %0, ptr noundef nonnull %108, ptr noundef nonnull %9, i64 noundef %20, ptr noundef %4) #13
  %113 = and i32 %112, %68
  %114 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %108) #14
  br label %115

115:                                              ; preds = %111, %106
  %116 = phi i32 [ %113, %111 ], [ %68, %106 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #15
  br label %67, !llvm.loop !30

117:                                              ; preds = %64
  %118 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.18) #14
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = call dereferenceable_or_null(128) ptr @AcquireMagickMemory(i64 noundef 128) #18
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #15
  call void @GetExceptionInfo(ptr noundef nonnull %10) #14
  %124 = tail call ptr @__errno_location() #16
  %125 = load i32, ptr %124, align 4, !tbaa !11
  %126 = call ptr @GetExceptionMessage(i32 noundef %125) #14
  %127 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %10, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef 1202, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %126) #14
  %128 = call ptr @DestroyString(ptr noundef %126) #14
  call void @CatchException(ptr noundef nonnull %10) #14
  %129 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %10) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #17
  unreachable

130:                                              ; preds = %120
  %131 = call ptr @ResetMagickMemory(ptr noundef nonnull %121, i32 noundef 0, i64 noundef 128) #14
  %132 = call ptr @ConstantString(ptr noundef %2) #14
  %133 = getelementptr inbounds %struct._TypeInfo, ptr %121, i64 0, i32 1
  store ptr %132, ptr %133, align 8, !tbaa !16
  %134 = getelementptr inbounds %struct._TypeInfo, ptr %121, i64 0, i32 16
  store i64 2880220587, ptr %134, align 8, !tbaa !31
  br label %43

135:                                              ; preds = %117
  %136 = icmp eq ptr %23, null
  br i1 %136, label %43, label %137

137:                                              ; preds = %135
  %138 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.19) #14
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !19
  %143 = call i32 @AddValueToSplayTree(ptr noundef %0, ptr noundef %142, ptr noundef nonnull %23) #14
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %43

145:                                              ; preds = %140
  %146 = load ptr, ptr %141, align 8, !tbaa !19
  %147 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef 1214, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %146) #14
  br label %43

148:                                              ; preds = %137
  %149 = load ptr, ptr %8, align 8, !tbaa !7
  call void @GetMagickToken(ptr noundef %149, ptr noundef null, ptr noundef nonnull %14) #14
  %150 = load i8, ptr %14, align 1, !tbaa !13
  %151 = icmp eq i8 %150, 61
  br i1 %151, label %152, label %43

152:                                              ; preds = %148
  %153 = load ptr, ptr %8, align 8, !tbaa !7
  call void @GetMagickToken(ptr noundef %153, ptr noundef nonnull %8, ptr noundef nonnull %14) #14
  %154 = load ptr, ptr %8, align 8, !tbaa !7
  call void @GetMagickToken(ptr noundef %154, ptr noundef nonnull %8, ptr noundef nonnull %14) #14
  %155 = load i8, ptr %7, align 16, !tbaa !13
  switch i8 %155, label %43 [
    i8 69, label %156
    i8 101, label %156
    i8 70, label %162
    i8 102, label %162
    i8 71, label %191
    i8 103, label %191
    i8 77, label %200
    i8 109, label %200
    i8 78, label %209
    i8 110, label %209
    i8 83, label %215
    i8 115, label %215
    i8 87, label %235
    i8 119, label %235
  ]

156:                                              ; preds = %152, %152
  %157 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.20) #14
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %43

159:                                              ; preds = %156
  %160 = call ptr @ConstantString(ptr noundef nonnull %14) #14
  %161 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 8
  store ptr %160, ptr %161, align 8, !tbaa !22
  br label %43

162:                                              ; preds = %152, %152
  %163 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.21) #14
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %14) #13
  store i64 %166, ptr %23, align 8, !tbaa !32
  br label %43

167:                                              ; preds = %162
  %168 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.22) #14
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = call ptr @ConstantString(ptr noundef nonnull %14) #14
  %172 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 4
  store ptr %171, ptr %172, align 8, !tbaa !21
  br label %43

173:                                              ; preds = %167
  %174 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.23) #14
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = call ptr @ConstantString(ptr noundef nonnull %14) #14
  %178 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 10
  store ptr %177, ptr %178, align 8, !tbaa !24
  br label %43

179:                                              ; preds = %173
  %180 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.24) #14
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = call ptr @ConstantString(ptr noundef nonnull %14) #14
  %184 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 9
  store ptr %183, ptr %184, align 8, !tbaa !23
  br label %43

185:                                              ; preds = %179
  %186 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.25) #14
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %43

188:                                              ; preds = %185
  %189 = call ptr @ConstantString(ptr noundef nonnull %14) #14
  %190 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 3
  store ptr %189, ptr %190, align 8, !tbaa !20
  br label %43

191:                                              ; preds = %152, %152
  %192 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.26) #14
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %43

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 12
  %196 = call fastcc i32 @SetTypeNodePath(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef nonnull %195) #13, !range !6
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %43

198:                                              ; preds = %194
  %199 = call ptr @DestroyTypeNode(ptr noundef nonnull %23) #13
  br label %43

200:                                              ; preds = %152, %152
  %201 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.27) #14
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %43

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 11
  %205 = call fastcc i32 @SetTypeNodePath(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef nonnull %204) #13, !range !6
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %43

207:                                              ; preds = %203
  %208 = call ptr @DestroyTypeNode(ptr noundef nonnull %23) #13
  br label %43

209:                                              ; preds = %152, %152
  %210 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.28) #14
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %43

212:                                              ; preds = %209
  %213 = call ptr @ConstantString(ptr noundef nonnull %14) #14
  %214 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 2
  store ptr %213, ptr %214, align 8, !tbaa !19
  br label %43

215:                                              ; preds = %152, %152
  %216 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.29) #14
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = call i32 @IsMagickTrue(ptr noundef nonnull %14) #14
  %220 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 13
  store i32 %219, ptr %220, align 8, !tbaa !33
  br label %43

221:                                              ; preds = %215
  %222 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.30) #14
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = call i64 @ParseCommandOption(i32 noundef 63, i32 noundef 0, ptr noundef nonnull %14) #14
  %226 = trunc i64 %225 to i32
  %227 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 6
  store i32 %226, ptr %227, align 4, !tbaa !34
  br label %43

228:                                              ; preds = %221
  %229 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.31) #14
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %43

231:                                              ; preds = %228
  %232 = call i64 @ParseCommandOption(i32 noundef 64, i32 noundef 0, ptr noundef nonnull %14) #14
  %233 = trunc i64 %232 to i32
  %234 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 5
  store i32 %233, ptr %234, align 8, !tbaa !35
  br label %43

235:                                              ; preds = %152, %152
  %236 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.32) #14
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %43

238:                                              ; preds = %235
  %239 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %14) #13
  %240 = getelementptr inbounds %struct._TypeInfo, ptr %23, i64 0, i32 7
  store i64 %239, ptr %240, align 8, !tbaa !36
  %241 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.33) #14
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  store i64 700, ptr %240, align 8, !tbaa !36
  br label %244

244:                                              ; preds = %243, %238
  %245 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.34) #14
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %43

247:                                              ; preds = %244
  store i64 400, ptr %240, align 8, !tbaa !36
  br label %43

248:                                              ; preds = %43, %21, %13
  %249 = phi i32 [ 1, %13 ], [ %24, %21 ], [ %44, %43 ]
  %250 = call ptr @RelinquishMagickMemory(ptr noundef %14) #14
  br label %251

251:                                              ; preds = %5, %248
  %252 = phi i32 [ %249, %248 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #15
  ret i32 %252
}

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetNumberOfNodesInSplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToUnsignedLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call i64 @strtoul(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #14
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @SetTypeNodePath(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = tail call ptr @ConstantString(ptr noundef %2) #14
  %6 = tail call i32 @IsPathAccessible(ptr noundef %5) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = tail call ptr @DestroyString(ptr noundef %5) #14
  tail call void @GetPathComponent(ptr noundef %0, i32 noundef 3, ptr noundef %1) #14
  %10 = tail call i64 @ConcatenateMagickString(ptr noundef %1, ptr noundef nonnull @.str.8, i64 noundef 4096) #14
  %11 = tail call i64 @ConcatenateMagickString(ptr noundef %1, ptr noundef %2, i64 noundef 4096) #14
  %12 = tail call ptr @ConstantString(ptr noundef %1) #14
  %13 = tail call i32 @IsPathAccessible(ptr noundef %12) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = tail call ptr @DestroyString(ptr noundef %12) #14
  br label %19

17:                                               ; preds = %8, %4
  %18 = phi ptr [ %12, %8 ], [ %5, %4 ]
  store ptr %18, ptr %3, align 8, !tbaa !7
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ 0, %15 ], [ 1, %17 ]
  ret i32 %20
}

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetTypeInfoByFamily(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %1, -5
  %7 = icmp eq i32 %6, 0
  %8 = icmp eq i64 %3, 0
  %9 = and i32 %1, -2
  %10 = icmp eq i32 %9, 2
  %11 = zext i32 %2 to i64
  br label %12

12:                                               ; preds = %175, %5
  %13 = phi ptr [ %0, %5 ], [ null, %175 ]
  %14 = tail call ptr @GetTypeInfo(ptr noundef nonnull @.str, ptr noundef %4) #13
  %15 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %176, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @LockSemaphoreInfo(ptr noundef %18) #14
  %19 = load ptr, ptr @type_cache, align 8, !tbaa !7
  tail call void @ResetSplayTreeIterator(ptr noundef %19) #14
  %20 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %21 = tail call ptr @GetNextValueInSplayTree(ptr noundef %20) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %62, label %23

23:                                               ; preds = %17
  %24 = icmp eq ptr %13, null
  br label %25

25:                                               ; preds = %23, %30
  %26 = phi ptr [ %21, %23 ], [ %32, %30 ]
  %27 = getelementptr inbounds %struct._TypeInfo, ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %56, %51, %46, %42, %38
  %31 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %32 = tail call ptr @GetNextValueInSplayTree(ptr noundef %31) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %62, label %25, !llvm.loop !37

34:                                               ; preds = %25
  br i1 %24, label %35, label %42

35:                                               ; preds = %34
  %36 = tail call i32 @LocaleCompare(ptr noundef nonnull %28, ptr noundef nonnull @.str.46) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %27, align 8, !tbaa !21
  %40 = tail call i32 @LocaleCompare(ptr noundef %39, ptr noundef nonnull @.str.41) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %30

42:                                               ; preds = %34
  %43 = tail call i32 @LocaleCompare(ptr noundef nonnull %28, ptr noundef nonnull %13) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %30

45:                                               ; preds = %42, %35, %38
  br i1 %7, label %50, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct._TypeInfo, ptr %26, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !35
  %49 = icmp eq i32 %48, %1
  br i1 %49, label %50, label %30

50:                                               ; preds = %46, %45
  switch i32 %2, label %51 [
    i32 10, label %55
    i32 0, label %55
  ]

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct._TypeInfo, ptr %26, i64 0, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !34
  %54 = icmp eq i32 %53, %2
  br i1 %54, label %55, label %30

55:                                               ; preds = %50, %50, %51
  br i1 %8, label %60, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct._TypeInfo, ptr %26, i64 0, i32 7
  %58 = load i64, ptr %57, align 8, !tbaa !36
  %59 = icmp eq i64 %58, %3
  br i1 %59, label %60, label %30

60:                                               ; preds = %56, %55
  %61 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %61) #14
  br label %176

62:                                               ; preds = %30, %17
  %63 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %63) #14
  %64 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @LockSemaphoreInfo(ptr noundef %64) #14
  %65 = load ptr, ptr @type_cache, align 8, !tbaa !7
  tail call void @ResetSplayTreeIterator(ptr noundef %65) #14
  %66 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %67 = tail call ptr @GetNextValueInSplayTree(ptr noundef %66) #14
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %70) #14
  br label %147

71:                                               ; preds = %62
  %72 = icmp eq ptr %13, null
  br label %73

73:                                               ; preds = %71, %135
  %74 = phi i64 [ 0, %71 ], [ %139, %135 ]
  %75 = phi ptr [ %67, %71 ], [ %141, %135 ]
  %76 = phi ptr [ null, %71 ], [ %138, %135 ]
  br label %77

77:                                               ; preds = %73, %82
  %78 = phi ptr [ %75, %73 ], [ %84, %82 ]
  %79 = getelementptr inbounds %struct._TypeInfo, ptr %78, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !21
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %77, %94, %90
  %83 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %84 = tail call ptr @GetNextValueInSplayTree(ptr noundef %83) #14
  %85 = icmp eq ptr %84, null
  br i1 %85, label %143, label %77, !llvm.loop !38

86:                                               ; preds = %77
  br i1 %72, label %87, label %94

87:                                               ; preds = %86
  %88 = tail call i32 @LocaleCompare(ptr noundef nonnull %80, ptr noundef nonnull @.str.46) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %79, align 8, !tbaa !21
  %92 = tail call i32 @LocaleCompare(ptr noundef %91, ptr noundef nonnull @.str.41) #14
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %82

94:                                               ; preds = %86
  %95 = tail call i32 @LocaleCompare(ptr noundef nonnull %80, ptr noundef nonnull %13) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %82

97:                                               ; preds = %94, %87, %90
  br i1 %7, label %107, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct._TypeInfo, ptr %78, i64 0, i32 5
  %100 = load i32, ptr %99, align 8, !tbaa !35
  %101 = icmp eq i32 %100, %1
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = and i32 %100, -2
  %104 = icmp eq i32 %103, 2
  %105 = and i1 %10, %104
  %106 = select i1 %105, i64 25, i64 0
  br label %107

107:                                              ; preds = %102, %97, %98
  %108 = phi i64 [ 32, %98 ], [ 32, %97 ], [ %106, %102 ]
  br i1 %8, label %109, label %111

109:                                              ; preds = %107
  %110 = add nuw nsw i64 %108, 16
  br label %122

111:                                              ; preds = %107
  %112 = tail call fastcc i64 @MagickMin(i64 noundef %3, i64 noundef 900) #13
  %113 = getelementptr inbounds %struct._TypeInfo, ptr %78, i64 0, i32 7
  %114 = load i64, ptr %113, align 8, !tbaa !36
  %115 = tail call fastcc i64 @MagickMax(i64 noundef %112, i64 noundef %114) #13
  %116 = tail call fastcc i64 @MagickMin(i64 noundef %112, i64 noundef %114) #13
  %117 = sub i64 %116, %115
  %118 = shl i64 %117, 4
  %119 = add i64 %118, 12800
  %120 = sdiv i64 %119, 800
  %121 = add nsw i64 %120, %108
  br label %122

122:                                              ; preds = %111, %109
  %123 = phi i64 [ %110, %109 ], [ %121, %111 ]
  switch i32 %2, label %126 [
    i32 10, label %124
    i32 0, label %124
  ]

124:                                              ; preds = %122, %122
  %125 = add nsw i64 %123, 8
  br label %135

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct._TypeInfo, ptr %78, i64 0, i32 6
  %128 = load i32, ptr %127, align 4, !tbaa !34
  %129 = zext i32 %128 to i64
  %130 = tail call fastcc i64 @MagickMax(i64 noundef %11, i64 noundef %129) #13
  %131 = tail call fastcc i64 @MagickMin(i64 noundef %11, i64 noundef %129) #13
  %132 = add nsw i64 %123, 8
  %133 = sub i64 %132, %130
  %134 = add i64 %133, %131
  br label %135

135:                                              ; preds = %126, %124
  %136 = phi i64 [ %125, %124 ], [ %134, %126 ]
  %137 = icmp ugt i64 %136, %74
  %138 = select i1 %137, ptr %78, ptr %76
  %139 = tail call i64 @llvm.umax.i64(i64 %136, i64 %74)
  %140 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %141 = tail call ptr @GetNextValueInSplayTree(ptr noundef %140) #14
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %73, !llvm.loop !38

143:                                              ; preds = %135, %82
  %144 = phi ptr [ %76, %82 ], [ %138, %135 ]
  %145 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %145) #14
  %146 = icmp eq ptr %144, null
  br i1 %146, label %147, label %176

147:                                              ; preds = %69, %143
  %148 = icmp eq ptr %13, null
  br label %149

149:                                              ; preds = %147, %161
  %150 = phi ptr [ @.str.36, %147 ], [ %164, %161 ]
  %151 = phi i64 [ 0, %147 ], [ %162, %161 ]
  br i1 %148, label %152, label %158

152:                                              ; preds = %149
  %153 = tail call i32 @LocaleCompare(ptr noundef nonnull %150, ptr noundef nonnull @.str.46) #14
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %152
  %156 = tail call i32 @LocaleCompare(ptr noundef nonnull %150, ptr noundef nonnull @.str.41) #14
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %166, label %161

158:                                              ; preds = %149
  %159 = tail call i32 @LocaleCompare(ptr noundef nonnull %150, ptr noundef nonnull %13) #14
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %158, %155
  %162 = add nuw nsw i64 %151, 1
  %163 = getelementptr inbounds [8 x %struct._Fontmap], ptr @GetTypeInfoByFamily.fontmap, i64 0, i64 %162
  %164 = load ptr, ptr %163, align 16, !tbaa !39
  %165 = icmp eq i64 %162, 7
  br i1 %165, label %175, label %149, !llvm.loop !41

166:                                              ; preds = %155, %152, %158
  %167 = getelementptr inbounds [8 x %struct._Fontmap], ptr @GetTypeInfoByFamily.fontmap, i64 0, i64 %151, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !42
  %169 = tail call ptr @GetTypeInfoByFamily(ptr noundef %168, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4) #13
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct._TypeInfo, ptr %169, i64 0, i32 4
  %173 = load ptr, ptr %172, align 8, !tbaa !21
  %174 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef 519, i32 noundef 405, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.5, ptr noundef %173) #14
  br label %176

175:                                              ; preds = %161, %166
  br i1 %148, label %176, label %12

176:                                              ; preds = %175, %143, %12, %60, %171
  %177 = phi ptr [ %169, %171 ], [ %26, %60 ], [ null, %175 ], [ %144, %143 ], [ null, %12 ]
  ret ptr %177
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMax(i64 noundef %0, i64 noundef %1) unnamed_addr #8 {
  %3 = tail call i64 @llvm.umax.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0, i64 noundef %1) unnamed_addr #8 {
  %3 = tail call i64 @llvm.umin.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetTypeInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef 594, ptr noundef nonnull @.str.48, ptr noundef %0) #14
  store i64 0, ptr %1, align 8, !tbaa !43
  %5 = tail call ptr @GetTypeInfo(ptr noundef nonnull @.str, ptr noundef %2) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #14
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @LockSemaphoreInfo(ptr noundef %14) #14
  %15 = load ptr, ptr @type_cache, align 8, !tbaa !7
  tail call void @ResetSplayTreeIterator(ptr noundef %15) #14
  %16 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %17 = tail call ptr @GetNextValueInSplayTree(ptr noundef %16) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._TypeInfo, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !33
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._TypeInfo, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i64 %20, 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %32, align 8, !tbaa !7
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = phi i64 [ %31, %30 ], [ %20, %25 ], [ %20, %19 ]
  %35 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %36 = tail call ptr @GetNextValueInSplayTree(ptr noundef %35) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !44

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #14
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @TypeInfoCompare) #14
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !7
  store i64 %39, ptr %1, align 8, !tbaa !43
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @TypeInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = getelementptr inbounds %struct._TypeInfo, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = load ptr, ptr %1, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct._TypeInfo, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef %8) #14
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr %0, align 8, !tbaa !7
  %12 = load ptr, ptr %1, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct._TypeInfo, ptr %11, i64 0, i32 1
  %14 = getelementptr inbounds %struct._TypeInfo, ptr %12, i64 0, i32 1
  %15 = getelementptr inbounds %struct._TypeInfo, ptr %11, i64 0, i32 2
  %16 = getelementptr inbounds %struct._TypeInfo, ptr %12, i64 0, i32 2
  %17 = select i1 %10, ptr %16, ptr %14
  %18 = select i1 %10, ptr %15, ptr %13
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = load ptr, ptr %17, align 8, !tbaa !7
  %21 = tail call i32 @LocaleCompare(ptr noundef %19, ptr noundef %20) #14
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetTypeList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef 687, ptr noundef nonnull @.str.48, ptr noundef %0) #14
  store i64 0, ptr %1, align 8, !tbaa !43
  %5 = tail call ptr @GetTypeInfo(ptr noundef nonnull @.str, ptr noundef %2) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #14
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @LockSemaphoreInfo(ptr noundef %14) #14
  %15 = load ptr, ptr @type_cache, align 8, !tbaa !7
  tail call void @ResetSplayTreeIterator(ptr noundef %15) #14
  %16 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %17 = tail call ptr @GetNextValueInSplayTree(ptr noundef %16) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %13, %35
  %20 = phi i64 [ %36, %35 ], [ 0, %13 ]
  %21 = phi ptr [ %38, %35 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._TypeInfo, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !33
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._TypeInfo, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !19
  %32 = tail call ptr @ConstantString(ptr noundef %31) #14
  %33 = add nsw i64 %20, 1
  %34 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %32, ptr %34, align 8, !tbaa !7
  br label %35

35:                                               ; preds = %30, %25, %19
  %36 = phi i64 [ %33, %30 ], [ %20, %25 ], [ %20, %19 ]
  %37 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %38 = tail call ptr @GetNextValueInSplayTree(ptr noundef %37) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !45

40:                                               ; preds = %35, %13
  %41 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %42 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #14
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %41, i64 noundef 8, ptr noundef nonnull @TypeCompare) #14
  %43 = getelementptr inbounds ptr, ptr %11, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !7
  store i64 %41, ptr %1, align 8, !tbaa !43
  br label %44

44:                                               ; preds = %7, %3, %40
  %45 = phi ptr [ %11, %40 ], [ null, %3 ], [ null, %7 ]
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @TypeCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = load ptr, ptr %1, align 8, !tbaa !7
  %5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %4) #14
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListTypeInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = icmp eq ptr %0, null
  %6 = load ptr, ptr @stdout, align 8
  %7 = select i1 %5, ptr %6, ptr %0
  store i64 0, ptr %4, align 8, !tbaa !43
  %8 = call ptr @GetTypeInfoList(ptr noundef nonnull @.str, ptr noundef nonnull %4, ptr noundef %1) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %83, label %10

10:                                               ; preds = %2
  store i8 0, ptr %3, align 16, !tbaa !13
  %11 = load i64, ptr %4, align 8, !tbaa !43
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %80

13:                                               ; preds = %10, %75
  %14 = phi i64 [ %76, %75 ], [ %11, %10 ]
  %15 = phi i64 [ %78, %75 ], [ 0, %10 ]
  %16 = phi ptr [ %77, %75 ], [ null, %10 ]
  %17 = getelementptr inbounds ptr, ptr %8, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  %19 = getelementptr inbounds %struct._TypeInfo, ptr %18, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !33
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %75

22:                                               ; preds = %13
  %23 = icmp eq ptr %16, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct._TypeInfo, ptr %18, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = call i32 @LocaleCompare(ptr noundef nonnull %16, ptr noundef %26) #14
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr %17, align 8, !tbaa !7
  br i1 %28, label %38, label %30

30:                                               ; preds = %24, %22
  %31 = phi ptr [ %18, %22 ], [ %29, %24 ]
  %32 = getelementptr inbounds %struct._TypeInfo, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.49, ptr noundef nonnull %33) #14
  %37 = load ptr, ptr %17, align 8, !tbaa !7
  br label %38

38:                                               ; preds = %35, %30, %24
  %39 = phi ptr [ %37, %35 ], [ %31, %30 ], [ %29, %24 ]
  %40 = getelementptr inbounds %struct._TypeInfo, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !16
  %42 = getelementptr inbounds %struct._TypeInfo, ptr %39, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !19
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr @.str.50, ptr %43
  %46 = getelementptr inbounds %struct._TypeInfo, ptr %39, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !21
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, ptr @.str.50, ptr %47
  %50 = getelementptr inbounds %struct._TypeInfo, ptr %39, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !35
  %52 = zext i32 %51 to i64
  %53 = call ptr @CommandOptionToMnemonic(i32 noundef 64, i64 noundef %52) #14
  %54 = load ptr, ptr %17, align 8, !tbaa !7
  %55 = getelementptr inbounds %struct._TypeInfo, ptr %54, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !34
  %57 = zext i32 %56 to i64
  %58 = call ptr @CommandOptionToMnemonic(i32 noundef 63, i64 noundef %57) #14
  %59 = load ptr, ptr %17, align 8, !tbaa !7
  %60 = getelementptr inbounds %struct._TypeInfo, ptr %59, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !26
  %62 = icmp eq ptr %61, null
  %63 = select i1 %62, ptr @.str.50, ptr %61
  %64 = getelementptr inbounds %struct._TypeInfo, ptr %59, i64 0, i32 7
  %65 = load i64, ptr %64, align 8, !tbaa !36
  %66 = uitofp i64 %65 to double
  %67 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.51, double noundef %66) #14
  %68 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.52, ptr noundef nonnull %45) #14
  %69 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.53, ptr noundef nonnull %49) #14
  %70 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.54, ptr noundef %53) #14
  %71 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.55, ptr noundef %58) #14
  %72 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.56, ptr noundef nonnull %3) #14
  %73 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.57, ptr noundef nonnull %63) #14
  %74 = load i64, ptr %4, align 8, !tbaa !43
  br label %75

75:                                               ; preds = %13, %38
  %76 = phi i64 [ %14, %13 ], [ %74, %38 ]
  %77 = phi ptr [ %16, %13 ], [ %41, %38 ]
  %78 = add nuw nsw i64 %15, 1
  %79 = icmp slt i64 %78, %76
  br i1 %79, label %13, label %80, !llvm.loop !46

80:                                               ; preds = %75, %10
  %81 = call i32 @fflush(ptr noundef %7) #13
  %82 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %8) #14
  br label %83

83:                                               ; preds = %2, %80
  %84 = phi i32 [ 1, %80 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #15
  ret i32 %84
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @TypeComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #14
  store ptr %4, ptr @type_semaphore, align 8, !tbaa !7
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TypeComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @type_semaphore) #14
  %4 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #14
  %7 = load ptr, ptr @type_cache, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroySplayTree(ptr noundef nonnull %7) #14
  store ptr %10, ptr @type_cache, align 8, !tbaa !7
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr @type_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %12) #14
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @type_semaphore) #14
  ret void
}

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize willreturn memory(none) }
attributes #17 = { noreturn nounwind optsize }
attributes #18 = { nounwind optsize allocsize(0) }
attributes #19 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{i32 0, i32 2}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !8, i64 8}
!17 = !{!"_TypeInfo", !18, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !12, i64 40, !12, i64 44, !18, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !12, i64 96, !8, i64 104, !8, i64 112, !18, i64 120}
!18 = !{!"long", !9, i64 0}
!19 = !{!17, !8, i64 16}
!20 = !{!17, !8, i64 24}
!21 = !{!17, !8, i64 32}
!22 = !{!17, !8, i64 56}
!23 = !{!17, !8, i64 64}
!24 = !{!17, !8, i64 72}
!25 = !{!17, !8, i64 80}
!26 = !{!17, !8, i64 88}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = !{!17, !18, i64 120}
!32 = !{!17, !18, i64 0}
!33 = !{!17, !12, i64 96}
!34 = !{!17, !12, i64 44}
!35 = !{!17, !12, i64 40}
!36 = !{!17, !18, i64 48}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = !{!40, !8, i64 0}
!40 = !{!"_Fontmap", !8, i64 0, !8, i64 8}
!41 = distinct !{!41, !15}
!42 = !{!40, !8, i64 8}
!43 = !{!18, !18, i64 0}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
