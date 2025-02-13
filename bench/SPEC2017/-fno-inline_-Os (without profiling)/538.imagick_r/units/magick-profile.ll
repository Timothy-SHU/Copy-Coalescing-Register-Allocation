; ModuleID = 'magick/profile.c'
source_filename = "magick/profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._StringInfo = type { [4096 x i8], ptr, i64, i64 }
%struct._DirectoryInfo = type { ptr, i64 }

@.str = private unnamed_addr constant [17 x i8] c"magick/profile.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"iptc\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"icm\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"exif:ColorSpace\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"`%s' (LCMS)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"8BIM\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"EXIF\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"xmp\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"8bim\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s:*\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"exif\00", align 1
@SyncExifProfile.format_bytes = internal unnamed_addr constant [13 x i32] [i32 0, i32 1, i32 1, i32 2, i32 4, i32 8, i32 1, i32 1, i32 2, i32 4, i32 8, i32 4, i32 8], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CloneImageProfiles(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 143, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 62, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 62, i32 1
  store i64 %11, ptr %12, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 62, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 62, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 63, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !26
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 63, i32 1
  store i64 %17, ptr %18, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 63, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !27
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 63, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !27
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !28
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  tail call void @DestroyImageProfiles(ptr noundef nonnull %0) #8
  %30 = load ptr, ptr %22, align 8, !tbaa !28
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi ptr [ %30, %29 ], [ %23, %25 ]
  %33 = tail call ptr @CloneSplayTree(ptr noundef %32, ptr noundef nonnull @ConstantString, ptr noundef nonnull @CloneStringInfo) #7
  store ptr %33, ptr %26, align 8, !tbaa !28
  br label %34

34:                                               ; preds = %31, %9
  ret i32 1
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DestroyImageProfiles(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @DestroySplayTree(ptr noundef nonnull %3) #7
  store ptr %6, ptr %2, align 8, !tbaa !28
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @CloneSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) #1

; Function Attrs: optsize
declare ptr @CloneStringInfo(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DeleteImageProfile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 189, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 62, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  br label %18

18:                                               ; preds = %16, %13
  %19 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.4) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 63, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  br label %23

23:                                               ; preds = %21, %18
  tail call fastcc void @WriteTo8BimProfile(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) #8
  %24 = load ptr, ptr %10, align 8, !tbaa !28
  %25 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef %24, ptr noundef %1) #7
  br label %26

26:                                               ; preds = %9, %23
  %27 = phi i32 [ %25, %23 ], [ 0, %9 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @WriteTo8BimProfile(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  %7 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.13) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %116

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ 1039, %3 ], [ 1028, %9 ], [ 1060, %12 ]
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = tail call ptr @GetValueFromSplayTree(ptr noundef %18, ptr noundef nonnull @.str.14) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %116, label %21

21:                                               ; preds = %15
  %22 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %19) #7
  %23 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %19) #7
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 -16
  %26 = icmp ult ptr %22, %25
  br i1 %26, label %27, label %116

27:                                               ; preds = %21
  %28 = getelementptr inbounds i8, ptr %24, i64 -4
  br label %29

29:                                               ; preds = %27, %114
  %30 = phi ptr [ %22, %27 ], [ %60, %114 ]
  %31 = tail call i32 @LocaleNCompare(ptr noundef %30, ptr noundef nonnull @.str.11, i64 noundef 4) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %116

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %30, i64 4
  %35 = call fastcc ptr @ReadResourceShort(ptr noundef nonnull %34, ptr noundef nonnull %6) #8
  %36 = call fastcc ptr @ReadResourceByte(ptr noundef nonnull %35, ptr noundef nonnull %4) #8
  %37 = load i8, ptr %4, align 1, !tbaa !29
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  %40 = and i8 %37, 1
  %41 = xor i8 %40, 1
  %42 = zext nneg i8 %41 to i64
  %43 = getelementptr inbounds i8, ptr %39, i64 %42
  %44 = icmp ugt ptr %43, %28
  br i1 %44, label %116, label %45

45:                                               ; preds = %33
  %46 = call fastcc ptr @ReadResourceLong(ptr noundef nonnull %43, ptr noundef nonnull %5) #8
  %47 = load i32, ptr %5, align 4, !tbaa !30
  %48 = zext i32 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %24, i64 %49
  %51 = icmp ugt ptr %46, %50
  %52 = icmp slt i64 %23, %48
  %53 = or i1 %52, %51
  br i1 %53, label %116, label %54

54:                                               ; preds = %45
  %55 = and i64 %48, 1
  %56 = load i16, ptr %6, align 2, !tbaa !31
  %57 = zext i16 %56 to i32
  %58 = icmp eq i32 %16, %57
  %59 = getelementptr i8, ptr %46, i64 %55
  %60 = getelementptr i8, ptr %59, i64 %48
  br i1 %58, label %61, label %114

61:                                               ; preds = %54
  %62 = ptrtoint ptr %24 to i64
  %63 = ptrtoint ptr %60 to i64
  %64 = sub i64 %62, %63
  %65 = icmp eq ptr %2, null
  %66 = ptrtoint ptr %22 to i64
  br i1 %65, label %67, label %75

67:                                               ; preds = %61
  %68 = ptrtoint ptr %30 to i64
  %69 = sub i64 %68, %66
  %70 = add i64 %64, %69
  %71 = tail call ptr @AcquireStringInfo(i64 noundef %70) #7
  %72 = getelementptr inbounds %struct._StringInfo, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !32
  %74 = tail call ptr @CopyMagickMemory(ptr noundef %73, ptr noundef %22, i64 noundef %69) #7
  br label %100

75:                                               ; preds = %61
  %76 = ptrtoint ptr %46 to i64
  %77 = sub i64 %76, %66
  %78 = getelementptr inbounds %struct._StringInfo, ptr %2, i64 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !34
  %80 = and i64 %79, 1
  %81 = add i64 %80, %79
  %82 = add i64 %64, %77
  %83 = add i64 %82, %81
  %84 = tail call ptr @AcquireStringInfo(i64 noundef %83) #7
  %85 = getelementptr inbounds %struct._StringInfo, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !32
  %87 = add i64 %77, -4
  %88 = tail call ptr @CopyMagickMemory(ptr noundef %86, ptr noundef %22, i64 noundef %87) #7
  %89 = load ptr, ptr %85, align 8, !tbaa !32
  %90 = getelementptr inbounds i8, ptr %89, i64 %77
  %91 = getelementptr inbounds i8, ptr %90, i64 -4
  %92 = load i64, ptr %78, align 8, !tbaa !34
  %93 = trunc i64 %92 to i32
  tail call fastcc void @WriteResourceLong(ptr noundef nonnull %91, i32 noundef %93) #8
  %94 = load ptr, ptr %85, align 8, !tbaa !32
  %95 = getelementptr inbounds i8, ptr %94, i64 %77
  %96 = getelementptr inbounds %struct._StringInfo, ptr %2, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !32
  %98 = load i64, ptr %78, align 8, !tbaa !34
  %99 = tail call ptr @CopyMagickMemory(ptr noundef %95, ptr noundef %97, i64 noundef %98) #7
  br label %100

100:                                              ; preds = %75, %67
  %101 = phi i64 [ %69, %67 ], [ %77, %75 ]
  %102 = phi i64 [ 0, %67 ], [ %81, %75 ]
  %103 = phi ptr [ %71, %67 ], [ %84, %75 ]
  %104 = getelementptr inbounds %struct._StringInfo, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !32
  %106 = getelementptr inbounds i8, ptr %105, i64 %101
  %107 = getelementptr inbounds i8, ptr %106, i64 %102
  %108 = tail call ptr @CopyMagickMemory(ptr noundef %107, ptr noundef nonnull %60, i64 noundef %64) #7
  %109 = load ptr, ptr %17, align 8, !tbaa !28
  %110 = tail call ptr @ConstantString(ptr noundef nonnull @.str.14) #7
  %111 = tail call ptr @CloneStringInfo(ptr noundef nonnull %103) #7
  %112 = tail call i32 @AddValueToSplayTree(ptr noundef %109, ptr noundef %110, ptr noundef %111) #7
  %113 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %103) #7
  br label %116

114:                                              ; preds = %54
  %115 = icmp ult ptr %60, %25
  br i1 %115, label %29, label %116, !llvm.loop !35

116:                                              ; preds = %45, %33, %29, %114, %21, %100, %15, %12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  ret void
}

; Function Attrs: optsize
declare i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageProfile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #7
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !28
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 4096) #7
  %16 = load ptr, ptr %11, align 8, !tbaa !28
  %17 = call ptr @GetValueFromSplayTree(ptr noundef %16, ptr noundef nonnull %3) #7
  br label %18

18:                                               ; preds = %10, %14
  %19 = phi ptr [ %17, %14 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  ret ptr %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextImageProfile(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 312, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %10) #7
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ProfileImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 497, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #7
  br label %14

14:                                               ; preds = %11, %5
  %15 = icmp eq ptr %2, null
  %16 = icmp eq i64 %3, 0
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %19 = tail call ptr @ConstantString(ptr noundef %1) #7
  store ptr %19, ptr %6, align 8, !tbaa !37
  %20 = call i32 @SubstituteString(ptr noundef nonnull %6, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #7
  %21 = load ptr, ptr %6, align 8, !tbaa !37
  %22 = call ptr @StringToArgv(ptr noundef %21, ptr noundef nonnull %7) #7
  %23 = load ptr, ptr %6, align 8, !tbaa !37
  %24 = call ptr @DestroyString(ptr noundef %23) #7
  store ptr %24, ptr %6, align 8, !tbaa !37
  %25 = icmp eq ptr %22, null
  br i1 %25, label %73, label %26

26:                                               ; preds = %18
  call void @ResetImageProfileIterator(ptr noundef nonnull %0) #8
  %27 = call ptr @GetNextImageProfile(ptr noundef nonnull %0) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26, %59
  %30 = phi ptr [ %60, %59 ], [ %27, %26 ]
  %31 = load i32, ptr %7, align 4, !tbaa !30
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %41, label %59

33:                                               ; preds = %59, %26
  %34 = load i32, ptr %7, align 4, !tbaa !30
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %62, label %71

36:                                               ; preds = %53
  %37 = add nuw nsw i64 %42, 1
  %38 = load i32, ptr %7, align 4, !tbaa !30
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %59, !llvm.loop !38

41:                                               ; preds = %29, %36
  %42 = phi i64 [ %37, %36 ], [ 1, %29 ]
  %43 = getelementptr inbounds ptr, ptr %22, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !37
  %45 = load i8, ptr %44, align 1, !tbaa !29
  %46 = icmp eq i8 %45, 33
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = getelementptr inbounds i8, ptr %44, i64 1
  %49 = call i32 @LocaleCompare(ptr noundef nonnull %30, ptr noundef nonnull %48) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %43, align 8, !tbaa !37
  br label %53

53:                                               ; preds = %51, %41
  %54 = phi ptr [ %52, %51 ], [ %44, %41 ]
  %55 = call i32 @GlobExpression(ptr noundef nonnull %30, ptr noundef %54, i32 noundef 1) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %36, label %57

57:                                               ; preds = %53
  %58 = call i32 @DeleteImageProfile(ptr noundef %0, ptr noundef nonnull %30) #8
  call void @ResetImageProfileIterator(ptr noundef %0) #8
  br label %59

59:                                               ; preds = %36, %47, %29, %57
  %60 = call ptr @GetNextImageProfile(ptr noundef %0) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %33, label %29, !llvm.loop !39

62:                                               ; preds = %33, %62
  %63 = phi i64 [ %67, %62 ], [ 0, %33 ]
  %64 = getelementptr inbounds ptr, ptr %22, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !37
  %66 = call ptr @DestroyString(ptr noundef %65) #7
  store ptr %66, ptr %64, align 8, !tbaa !37
  %67 = add nuw nsw i64 %63, 1
  %68 = load i32, ptr %7, align 4, !tbaa !30
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %62, label %71, !llvm.loop !40

71:                                               ; preds = %62, %33
  %72 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %22) #7
  br label %73

73:                                               ; preds = %18, %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %106

74:                                               ; preds = %14
  %75 = tail call ptr @AcquireStringInfo(i64 noundef %3) #7
  tail call void @SetStringInfoDatum(ptr noundef %75, ptr noundef nonnull %2) #7
  %76 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.7) #7
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = tail call i32 @SetImageProfile(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %75) #8
  br label %103

83:                                               ; preds = %78, %74
  %84 = tail call ptr @GetImageProfile(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %97, label %86

86:                                               ; preds = %83
  %87 = tail call i32 @CompareStringInfo(ptr noundef nonnull %84, ptr noundef %75) #7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = tail call ptr @GetImageProperty(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #7
  %91 = tail call ptr @GetImageProfile(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %86, %89
  %94 = phi ptr [ %91, %89 ], [ %84, %86 ]
  %95 = tail call i32 @CompareStringInfo(ptr noundef nonnull %94, ptr noundef %75) #7
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %89, %93, %83
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %99 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %100 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %98, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 583, i32 noundef 320, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull %99) #7
  br label %103

101:                                              ; preds = %93
  %102 = tail call ptr @DestroyStringInfo(ptr noundef %75) #7
  br label %106

103:                                              ; preds = %97, %81
  %104 = phi i32 [ %82, %81 ], [ 1, %97 ]
  %105 = tail call ptr @DestroyStringInfo(ptr noundef %75) #7
  br label %106

106:                                              ; preds = %101, %103, %73
  %107 = phi i32 [ 1, %73 ], [ %104, %103 ], [ 1, %101 ]
  ret i32 %107
}

; Function Attrs: optsize
declare i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @StringToArgv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ResetImageProfileIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1073, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %10) #7
  br label %13

13:                                               ; preds = %8, %12
  ret void
}

; Function Attrs: optsize
declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) #1

; Function Attrs: optsize
declare ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @SetStringInfoDatum(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageProfile(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @SetImageProfileInternal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #8
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @CompareStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RemoveImageProfile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1019, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 62, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  br label %18

18:                                               ; preds = %16, %13
  %19 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.4) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 63, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  br label %23

23:                                               ; preds = %21, %18
  tail call fastcc void @WriteTo8BimProfile(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) #8
  %24 = load ptr, ptr %10, align 8, !tbaa !28
  %25 = tail call ptr @RemoveNodeFromSplayTree(ptr noundef %24, ptr noundef %1) #7
  br label %26

26:                                               ; preds = %9, %23
  %27 = phi ptr [ %25, %23 ], [ null, %9 ]
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @RemoveNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProfileInternal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #9
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1427, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #7
  br label %13

13:                                               ; preds = %10, %4
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @DestroyProfile) #7
  store ptr %18, ptr %14, align 8, !tbaa !28
  br label %19

19:                                               ; preds = %17, %13
  %20 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 4096) #7
  call void @LocaleLower(ptr noundef nonnull %5) #7
  %21 = load ptr, ptr %14, align 8, !tbaa !28
  %22 = call ptr @ConstantString(ptr noundef nonnull %5) #7
  %23 = call ptr @CloneStringInfo(ptr noundef %2) #7
  %24 = call i32 @AddValueToSplayTree(ptr noundef %21, ptr noundef %22, ptr noundef %23) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %61, label %26

26:                                               ; preds = %19
  %27 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.7) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29, %26
  %33 = call ptr @GetImageProfile(ptr noundef nonnull %0, ptr noundef %1) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = call i64 @GetStringInfoLength(ptr noundef nonnull %33) #7
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 62, i32 1
  store i64 %36, ptr %37, align 8, !tbaa !24
  %38 = call ptr @GetStringInfoDatum(ptr noundef nonnull %33) #7
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 62, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !25
  br label %40

40:                                               ; preds = %29, %35, %32
  %41 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.4) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.14) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43, %40
  %47 = call ptr @GetImageProfile(ptr noundef nonnull %0, ptr noundef %1) #8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = call i64 @GetStringInfoLength(ptr noundef nonnull %47) #7
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 63, i32 1
  store i64 %50, ptr %51, align 8, !tbaa !26
  %52 = call ptr @GetStringInfoDatum(ptr noundef nonnull %47) #7
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 63, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !27
  br label %54

54:                                               ; preds = %43, %49, %46
  %55 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.14) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call fastcc void @GetProfilesFromResourceBlock(ptr noundef nonnull %0, ptr noundef %2) #8
  br label %61

58:                                               ; preds = %54
  %59 = icmp eq i32 %3, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  call fastcc void @WriteTo8BimProfile(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #8
  br label %61

61:                                               ; preds = %19, %57, %60, %58
  %62 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.15, ptr noundef %1) #7
  %63 = call ptr @GetImageProperty(ptr noundef nonnull %0, ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #9
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SyncImageProfiles(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.11) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @Sync8BimProfile(ptr noundef %0, ptr noundef nonnull %2) #8, !range !41
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 1, %1 ], [ %5, %4 ]
  %8 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.12) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @SyncExifProfile(ptr noundef %0, ptr noundef nonnull %8) #8, !range !41
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 0, i32 %7
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %7, %6 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @Sync8BimProfile(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %5 = tail call i64 @GetStringInfoLength(ptr noundef %1) #7
  store i64 %5, ptr %3, align 8, !tbaa !42
  %6 = tail call ptr @GetStringInfoDatum(ptr noundef %1) #7
  store ptr %6, ptr %4, align 8, !tbaa !37
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %92, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  br label %14

12:                                               ; preds = %14, %17, %20, %23
  %13 = load i64, ptr %3, align 8, !tbaa !42
  br label %89

14:                                               ; preds = %8, %89
  %15 = call fastcc i32 @ReadProfileByte(ptr noundef nonnull %4, ptr noundef nonnull %3) #8, !range !43
  %16 = icmp eq i32 %15, 56
  br i1 %16, label %17, label %12, !llvm.loop !44

17:                                               ; preds = %14
  %18 = call fastcc i32 @ReadProfileByte(ptr noundef nonnull %4, ptr noundef nonnull %3) #8, !range !43
  %19 = icmp eq i32 %18, 66
  br i1 %19, label %20, label %12, !llvm.loop !44

20:                                               ; preds = %17
  %21 = call fastcc i32 @ReadProfileByte(ptr noundef nonnull %4, ptr noundef nonnull %3) #8, !range !43
  %22 = icmp eq i32 %21, 73
  br i1 %22, label %23, label %12, !llvm.loop !44

23:                                               ; preds = %20
  %24 = call fastcc i32 @ReadProfileByte(ptr noundef nonnull %4, ptr noundef nonnull %3) #8, !range !43
  %25 = icmp eq i32 %24, 77
  br i1 %25, label %26, label %12, !llvm.loop !44

26:                                               ; preds = %23
  %27 = load i64, ptr %3, align 8, !tbaa !42
  %28 = icmp ult i64 %27, 7
  br i1 %28, label %92, label %29

29:                                               ; preds = %26
  %30 = call fastcc zeroext i16 @ReadProfileMSBShort(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  %31 = call fastcc i32 @ReadProfileByte(ptr noundef nonnull %4, ptr noundef nonnull %3) #8, !range !43
  %32 = sext i32 %31 to i64
  %33 = load i64, ptr %3, align 8, !tbaa !42
  %34 = icmp ult i64 %33, %32
  br i1 %34, label %92, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %4, align 8, !tbaa !37
  %37 = getelementptr inbounds i8, ptr %36, i64 %32
  store ptr %37, ptr %4, align 8, !tbaa !37
  %38 = load i8, ptr %37, align 1, !tbaa !29
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %42, ptr %4, align 8, !tbaa !37
  br label %43

43:                                               ; preds = %41, %35
  %44 = call fastcc i64 @ReadProfileMSBLong(ptr noundef nonnull %4, ptr noundef nonnull %3) #8, !range !45
  %45 = load i64, ptr %3, align 8, !tbaa !42
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %92, label %47

47:                                               ; preds = %43
  %48 = icmp eq i16 %30, 1005
  %49 = icmp eq i64 %44, 16
  %50 = and i1 %48, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %4, align 8, !tbaa !37
  br label %85

53:                                               ; preds = %47
  %54 = load i32, ptr %9, align 8, !tbaa !46
  %55 = icmp eq i32 %54, 2
  %56 = load double, ptr %10, align 8, !tbaa !47
  br i1 %55, label %57, label %63

57:                                               ; preds = %53
  %58 = fmul double %56, 2.540000e+00
  %59 = fmul double %58, 6.553600e+04
  %60 = fptoui double %59 to i32
  %61 = zext i32 %60 to i64
  %62 = load ptr, ptr %4, align 8, !tbaa !37
  tail call fastcc void @WriteProfileLong(i32 noundef 2, i64 noundef %61, ptr noundef %62) #8
  br label %68

63:                                               ; preds = %53
  %64 = fmul double %56, 6.553600e+04
  %65 = fptoui double %64 to i32
  %66 = zext i32 %65 to i64
  %67 = load ptr, ptr %4, align 8, !tbaa !37
  tail call fastcc void @WriteProfileLong(i32 noundef 2, i64 noundef %66, ptr noundef %67) #8
  br label %68

68:                                               ; preds = %63, %57
  %69 = phi ptr [ %67, %63 ], [ %62, %57 ]
  %70 = load i32, ptr %9, align 8, !tbaa !46
  %71 = trunc i32 %70 to i16
  %72 = getelementptr inbounds i8, ptr %69, i64 4
  tail call fastcc void @WriteProfileShort(i32 noundef 2, i16 noundef zeroext %71, ptr noundef nonnull %72) #8
  %73 = load i32, ptr %9, align 8, !tbaa !46
  %74 = icmp eq i32 %73, 2
  %75 = load double, ptr %11, align 8, !tbaa !48
  %76 = fmul double %75, 2.540000e+00
  %77 = select i1 %74, double %76, double %75
  %78 = fmul double %77, 6.553600e+04
  %79 = fptoui double %78 to i32
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %69, i64 8
  tail call fastcc void @WriteProfileLong(i32 noundef 2, i64 noundef %80, ptr noundef nonnull %81) #8
  %82 = load i32, ptr %9, align 8, !tbaa !46
  %83 = trunc i32 %82 to i16
  %84 = getelementptr inbounds i8, ptr %69, i64 12
  tail call fastcc void @WriteProfileShort(i32 noundef 2, i16 noundef zeroext %83, ptr noundef nonnull %84) #8
  br label %85

85:                                               ; preds = %51, %68
  %86 = phi ptr [ %52, %51 ], [ %69, %68 ]
  %87 = getelementptr inbounds i8, ptr %86, i64 %44
  store ptr %87, ptr %4, align 8, !tbaa !37
  %88 = sub i64 %45, %44
  store i64 %88, ptr %3, align 8, !tbaa !42
  br label %89

89:                                               ; preds = %85, %12
  %90 = phi i64 [ %13, %12 ], [ %88, %85 ]
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %14, !llvm.loop !44

92:                                               ; preds = %26, %29, %43, %89, %2
  %93 = phi i32 [ 1, %2 ], [ 1, %89 ], [ 0, %43 ], [ 0, %29 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @SyncExifProfile(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [16 x %struct._DirectoryInfo], align 16
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %6 = tail call i64 @GetStringInfoLength(ptr noundef %1) #7
  store i64 %6, ptr %4, align 8, !tbaa !42
  %7 = tail call ptr @GetStringInfoDatum(ptr noundef %1) #7
  store ptr %7, ptr %5, align 8, !tbaa !37
  %8 = icmp ult i64 %6, 16
  br i1 %8, label %193, label %9

9:                                                ; preds = %2
  %10 = tail call fastcc zeroext i16 @ReadProfileShort(i32 noundef 1, ptr noundef %7) #8
  switch i16 %10, label %14 [
    i16 19789, label %41
    i16 18761, label %41
  ]

11:                                               ; preds = %14, %17, %20, %23, %26
  %12 = load i64, ptr %4, align 8, !tbaa !42
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %193, label %35

14:                                               ; preds = %9, %35
  %15 = call fastcc i32 @ReadProfileByte(ptr noundef nonnull %5, ptr noundef nonnull %4) #8, !range !43
  %16 = icmp eq i32 %15, 69
  br i1 %16, label %17, label %11, !llvm.loop !49

17:                                               ; preds = %14
  %18 = call fastcc i32 @ReadProfileByte(ptr noundef nonnull %5, ptr noundef nonnull %4) #8, !range !43
  %19 = icmp eq i32 %18, 120
  br i1 %19, label %20, label %11, !llvm.loop !49

20:                                               ; preds = %17
  %21 = call fastcc i32 @ReadProfileByte(ptr noundef nonnull %5, ptr noundef nonnull %4) #8, !range !43
  %22 = icmp eq i32 %21, 105
  br i1 %22, label %23, label %11, !llvm.loop !49

23:                                               ; preds = %20
  %24 = call fastcc i32 @ReadProfileByte(ptr noundef nonnull %5, ptr noundef nonnull %4) #8, !range !43
  %25 = icmp eq i32 %24, 102
  br i1 %25, label %26, label %11, !llvm.loop !49

26:                                               ; preds = %23
  %27 = call fastcc i32 @ReadProfileByte(ptr noundef nonnull %5, ptr noundef nonnull %4) #8, !range !43
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %11, !llvm.loop !49

29:                                               ; preds = %26
  %30 = call fastcc i32 @ReadProfileByte(ptr noundef nonnull %5, ptr noundef nonnull %4) #8, !range !43
  %31 = icmp ne i32 %30, 0
  %32 = load i64, ptr %4, align 8
  %33 = icmp ne i64 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %11
  br label %14, !llvm.loop !49

36:                                               ; preds = %29
  %37 = icmp ult i64 %32, 16
  br i1 %37, label %193, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %5, align 8
  %40 = tail call fastcc zeroext i16 @ReadProfileShort(i32 noundef 1, ptr noundef %39) #8
  br label %41

41:                                               ; preds = %9, %9, %38
  %42 = phi i64 [ %32, %38 ], [ %6, %9 ], [ %6, %9 ]
  %43 = phi ptr [ %39, %38 ], [ %7, %9 ], [ %7, %9 ]
  %44 = phi i16 [ %40, %38 ], [ %10, %9 ], [ %10, %9 ]
  switch i16 %44, label %193 [
    i16 18761, label %46
    i16 19789, label %45
  ]

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %41, %45
  %47 = phi i32 [ 2, %45 ], [ 1, %41 ]
  %48 = getelementptr inbounds i8, ptr %43, i64 2
  %49 = tail call fastcc zeroext i16 @ReadProfileShort(i32 noundef %47, ptr noundef nonnull %48) #8
  %50 = icmp eq i16 %49, 42
  br i1 %50, label %51, label %193

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, ptr %43, i64 4
  %53 = tail call fastcc i64 @ReadProfileLong(i32 noundef %47, ptr noundef nonnull %52) #8, !range !45
  %54 = shl nuw i64 %53, 32
  %55 = ashr exact i64 %54, 32
  %56 = icmp sgt i64 %55, -1
  %57 = icmp ult i64 %55, %42
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %193

59:                                               ; preds = %51
  %60 = getelementptr inbounds i8, ptr %43, i64 %55
  %61 = tail call ptr @NewSplayTree(ptr noundef null, ptr noundef null, ptr noundef null) #7
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 4
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  %66 = getelementptr inbounds i8, ptr %43, i64 %42
  br label %67

67:                                               ; preds = %187, %59
  %68 = phi ptr [ %60, %59 ], [ %79, %187 ]
  %69 = phi i64 [ 0, %59 ], [ %188, %187 ]
  %70 = phi i64 [ 0, %59 ], [ %189, %187 ]
  %71 = icmp eq i64 %69, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = add nsw i64 %69, -1
  %74 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %3, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 16, !tbaa !50
  %76 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %3, i64 0, i64 %73, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !52
  br label %78

78:                                               ; preds = %72, %67
  %79 = phi ptr [ %75, %72 ], [ %68, %67 ]
  %80 = phi i64 [ %73, %72 ], [ 0, %67 ]
  %81 = phi i64 [ %77, %72 ], [ %70, %67 ]
  %82 = tail call fastcc zeroext i16 @ReadProfileShort(i32 noundef %47, ptr noundef %79) #8
  %83 = zext i16 %82 to i64
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %85, label %187

85:                                               ; preds = %78
  %86 = getelementptr inbounds i8, ptr %79, i64 2
  br label %87

87:                                               ; preds = %85, %184
  %88 = phi i64 [ %81, %85 ], [ %185, %184 ]
  %89 = mul nuw nsw i64 %88, 12
  %90 = getelementptr inbounds i8, ptr %86, i64 %89
  %91 = tail call ptr @GetValueFromSplayTree(ptr noundef %61, ptr noundef nonnull %90) #7
  %92 = icmp eq ptr %91, %90
  br i1 %92, label %187, label %93

93:                                               ; preds = %87
  %94 = tail call i32 @AddValueToSplayTree(ptr noundef %61, ptr noundef nonnull %90, ptr noundef nonnull %90) #7
  %95 = tail call fastcc zeroext i16 @ReadProfileShort(i32 noundef %47, ptr noundef nonnull %90) #8
  %96 = getelementptr inbounds i8, ptr %90, i64 2
  %97 = tail call fastcc zeroext i16 @ReadProfileShort(i32 noundef %47, ptr noundef nonnull %96) #8
  %98 = icmp ugt i16 %97, 12
  br i1 %98, label %187, label %99

99:                                               ; preds = %93
  %100 = zext nneg i16 %97 to i64
  %101 = getelementptr inbounds i8, ptr %90, i64 4
  %102 = tail call fastcc i64 @ReadProfileLong(i32 noundef %47, ptr noundef nonnull %101) #8, !range !45
  %103 = shl nuw i64 %102, 32
  %104 = ashr exact i64 %103, 32
  %105 = getelementptr inbounds [13 x i32], ptr @SyncExifProfile.format_bytes, i64 0, i64 %100
  %106 = load i32, ptr %105, align 4, !tbaa !30
  %107 = sext i32 %106 to i64
  %108 = mul nsw i64 %104, %107
  %109 = icmp slt i64 %108, %104
  br i1 %109, label %187, label %110

110:                                              ; preds = %99
  %111 = icmp ult i64 %108, 5
  %112 = getelementptr inbounds i8, ptr %90, i64 8
  br i1 %111, label %123, label %113

113:                                              ; preds = %110
  %114 = tail call fastcc i64 @ReadProfileLong(i32 noundef %47, ptr noundef nonnull %112) #8, !range !45
  %115 = shl nuw i64 %114, 32
  %116 = ashr exact i64 %115, 32
  %117 = icmp slt i64 %108, 0
  %118 = add nsw i64 %116, %108
  %119 = icmp ugt i64 %118, %42
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %184, label %121

121:                                              ; preds = %113
  %122 = getelementptr inbounds i8, ptr %43, i64 %116
  br label %123

123:                                              ; preds = %110, %121
  %124 = phi ptr [ %122, %121 ], [ %112, %110 ]
  switch i16 %95, label %184 [
    i16 282, label %125
    i16 283, label %130
    i16 274, label %135
    i16 296, label %142
    i16 -24571, label %151
    i16 -30871, label %151
  ]

125:                                              ; preds = %123
  %126 = load double, ptr %65, align 8, !tbaa !47
  %127 = fadd double %126, 5.000000e-01
  %128 = fptoui double %127 to i64
  tail call fastcc void @WriteProfileLong(i32 noundef %47, i64 noundef %128, ptr noundef %124) #8
  %129 = getelementptr inbounds i8, ptr %124, i64 4
  tail call fastcc void @WriteProfileLong(i32 noundef %47, i64 noundef 1, ptr noundef nonnull %129) #8
  br label %184

130:                                              ; preds = %123
  %131 = load double, ptr %64, align 8, !tbaa !48
  %132 = fadd double %131, 5.000000e-01
  %133 = fptoui double %132 to i64
  tail call fastcc void @WriteProfileLong(i32 noundef %47, i64 noundef %133, ptr noundef %124) #8
  %134 = getelementptr inbounds i8, ptr %124, i64 4
  tail call fastcc void @WriteProfileLong(i32 noundef %47, i64 noundef 1, ptr noundef nonnull %134) #8
  br label %184

135:                                              ; preds = %123
  %136 = icmp eq i64 %108, 4
  %137 = load i32, ptr %63, align 8, !tbaa !53
  br i1 %136, label %138, label %140

138:                                              ; preds = %135
  %139 = zext i32 %137 to i64
  tail call fastcc void @WriteProfileLong(i32 noundef %47, i64 noundef %139, ptr noundef %124) #8
  br label %184

140:                                              ; preds = %135
  %141 = trunc i32 %137 to i16
  tail call fastcc void @WriteProfileShort(i32 noundef %47, i16 noundef zeroext %141, ptr noundef %124) #8
  br label %184

142:                                              ; preds = %123
  %143 = icmp eq i64 %108, 4
  %144 = load i32, ptr %62, align 8, !tbaa !46
  br i1 %143, label %145, label %148

145:                                              ; preds = %142
  %146 = add i32 %144, 1
  %147 = zext i32 %146 to i64
  tail call fastcc void @WriteProfileLong(i32 noundef %47, i64 noundef %147, ptr noundef %124) #8
  br label %184

148:                                              ; preds = %142
  %149 = trunc i32 %144 to i16
  %150 = add i16 %149, 1
  tail call fastcc void @WriteProfileShort(i32 noundef %47, i16 noundef zeroext %150, ptr noundef %124) #8
  br label %184

151:                                              ; preds = %123, %123
  %152 = tail call fastcc i64 @ReadProfileLong(i32 noundef %47, ptr noundef %124) #8, !range !45
  %153 = shl nuw i64 %152, 32
  %154 = ashr exact i64 %153, 32
  %155 = icmp ult i64 %154, %42
  %156 = icmp slt i64 %80, 14
  %157 = and i1 %156, %155
  br i1 %157, label %158, label %187

158:                                              ; preds = %151
  %159 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %3, i64 0, i64 %80
  store ptr %79, ptr %159, align 16, !tbaa !50
  %160 = add nuw nsw i64 %88, 1
  %161 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %3, i64 0, i64 %80, i32 1
  store i64 %160, ptr %161, align 8, !tbaa !52
  %162 = add nsw i64 %80, 1
  %163 = getelementptr inbounds i8, ptr %43, i64 %154
  %164 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %3, i64 0, i64 %162
  store ptr %163, ptr %164, align 16, !tbaa !50
  %165 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %3, i64 0, i64 %162, i32 1
  store i64 0, ptr %165, align 8, !tbaa !52
  %166 = add nsw i64 %80, 2
  %167 = mul nuw nsw i64 %83, 12
  %168 = getelementptr inbounds i8, ptr %86, i64 %167
  %169 = icmp ugt ptr %168, %66
  br i1 %169, label %187, label %170

170:                                              ; preds = %158
  %171 = tail call fastcc i64 @ReadProfileLong(i32 noundef %47, ptr noundef nonnull %168) #8, !range !45
  %172 = shl nuw i64 %171, 32
  %173 = ashr exact i64 %172, 32
  %174 = icmp eq i64 %171, 0
  br i1 %174, label %187, label %175

175:                                              ; preds = %170
  %176 = icmp ult i64 %173, %42
  %177 = icmp slt i64 %80, 12
  %178 = and i1 %177, %176
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = getelementptr inbounds i8, ptr %43, i64 %173
  %181 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %3, i64 0, i64 %166
  store ptr %180, ptr %181, align 16, !tbaa !50
  %182 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %3, i64 0, i64 %166, i32 1
  store i64 0, ptr %182, align 8, !tbaa !52
  %183 = add nsw i64 %80, 3
  br label %187

184:                                              ; preds = %113, %123, %148, %145, %140, %138, %130, %125
  %185 = add nsw i64 %88, 1
  %186 = icmp eq i64 %185, %83
  br i1 %186, label %187, label %87, !llvm.loop !54

187:                                              ; preds = %184, %87, %93, %99, %78, %158, %170, %175, %179, %151
  %188 = phi i64 [ %166, %158 ], [ %166, %170 ], [ %166, %175 ], [ %183, %179 ], [ %80, %151 ], [ %80, %78 ], [ %80, %99 ], [ %80, %93 ], [ %80, %87 ], [ %80, %184 ]
  %189 = phi i64 [ %160, %158 ], [ %160, %170 ], [ %160, %175 ], [ %160, %179 ], [ %88, %151 ], [ %81, %78 ], [ %83, %184 ], [ %88, %87 ], [ %88, %93 ], [ %88, %99 ]
  %190 = icmp sgt i64 %188, 0
  br i1 %190, label %67, label %191, !llvm.loop !55

191:                                              ; preds = %187
  %192 = tail call ptr @DestroySplayTree(ptr noundef %61) #7
  br label %193

193:                                              ; preds = %11, %51, %46, %41, %36, %2, %191
  %194 = phi i32 [ 1, %191 ], [ 0, %2 ], [ 0, %36 ], [ 0, %41 ], [ 0, %46 ], [ 0, %51 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #9
  ret i32 %194
}

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @ReadResourceShort(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %0, align 1, !tbaa !29
  %5 = zext i8 %4 to i16
  %6 = shl nuw i16 %5, 8
  store i16 %6, ptr %1, align 2, !tbaa !31
  %7 = getelementptr inbounds i8, ptr %0, i64 2
  %8 = load i8, ptr %3, align 1, !tbaa !29
  %9 = zext i8 %8 to i16
  %10 = or disjoint i16 %6, %9
  store i16 %10, ptr %1, align 2, !tbaa !31
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @ReadResourceByte(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %0, align 1, !tbaa !29
  store i8 %4, ptr %1, align 1, !tbaa !29
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @ReadResourceLong(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %0, align 1, !tbaa !29
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  store i32 %6, ptr %1, align 4, !tbaa !30
  %7 = getelementptr inbounds i8, ptr %0, i64 2
  %8 = load i8, ptr %3, align 1, !tbaa !29
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or disjoint i32 %10, %6
  store i32 %11, ptr %1, align 4, !tbaa !30
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  %13 = load i8, ptr %7, align 1, !tbaa !29
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %15, %11
  store i32 %16, ptr %1, align 4, !tbaa !30
  %17 = getelementptr inbounds i8, ptr %0, i64 4
  %18 = load i8, ptr %12, align 1, !tbaa !29
  %19 = zext i8 %18 to i32
  %20 = or disjoint i32 %16, %19
  store i32 %20, ptr %1, align 4, !tbaa !30
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @WriteResourceLong(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %4 = lshr i32 %1, 24
  %5 = trunc i32 %4 to i8
  store i8 %5, ptr %3, align 1, !tbaa !29
  %6 = lshr i32 %1, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !29
  %9 = lshr i32 %1, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  store i8 %10, ptr %11, align 1, !tbaa !29
  %12 = trunc i32 %1 to i8
  %13 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !29
  %14 = call ptr @CopyMagickMemory(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @DestroyProfile(ptr noundef %0) #0 {
  %2 = tail call ptr @DestroyStringInfo(ptr noundef %0) #7
  ret ptr %2
}

; Function Attrs: optsize
declare void @LocaleLower(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GetProfilesFromResourceBlock(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  %8 = tail call ptr @GetStringInfoDatum(ptr noundef %1) #7
  %9 = tail call i64 @GetStringInfoLength(ptr noundef %1) #7
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds i8, ptr %10, i64 -16
  %12 = icmp ult ptr %8, %11
  br i1 %12, label %13, label %94

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %10, i64 -4
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  br label %18

18:                                               ; preds = %13, %89
  %19 = phi ptr [ %8, %13 ], [ %92, %89 ]
  %20 = tail call i32 @LocaleNCompare(ptr noundef %19, ptr noundef nonnull @.str.11, i64 noundef 4) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %94

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %19, i64 4
  %24 = call fastcc ptr @ReadResourceShort(ptr noundef nonnull %23, ptr noundef nonnull %5) #8
  %25 = call fastcc ptr @ReadResourceByte(ptr noundef nonnull %24, ptr noundef nonnull %3) #8
  %26 = load i8, ptr %3, align 1, !tbaa !29
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds i8, ptr %25, i64 %27
  %29 = and i8 %26, 1
  %30 = xor i8 %29, 1
  %31 = zext nneg i8 %30 to i64
  %32 = getelementptr inbounds i8, ptr %28, i64 %31
  %33 = icmp ugt ptr %32, %14
  br i1 %33, label %94, label %34

34:                                               ; preds = %22
  %35 = call fastcc ptr @ReadResourceLong(ptr noundef nonnull %32, ptr noundef nonnull %4) #8
  %36 = load i32, ptr %4, align 4, !tbaa !30
  %37 = zext i32 %36 to i64
  %38 = sub nsw i64 0, %37
  %39 = getelementptr inbounds i8, ptr %10, i64 %38
  %40 = icmp ugt ptr %35, %39
  %41 = icmp slt i64 %9, %37
  %42 = or i1 %41, %40
  br i1 %42, label %94, label %43

43:                                               ; preds = %34
  %44 = load i16, ptr %5, align 2, !tbaa !31
  switch i16 %44, label %87 [
    i16 1005, label %45
    i16 1028, label %65
    i16 1036, label %70
    i16 1039, label %72
    i16 1058, label %77
    i16 1060, label %82
  ]

45:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  %46 = call fastcc ptr @ReadResourceLong(ptr noundef nonnull %35, ptr noundef nonnull %6) #8
  %47 = load i32, ptr %6, align 4, !tbaa !30
  %48 = uitofp i32 %47 to double
  %49 = fmul double %48, 0x3EF0000000000000
  store double %49, ptr %15, align 8, !tbaa !47
  %50 = call fastcc ptr @ReadResourceShort(ptr noundef nonnull %46, ptr noundef nonnull %7) #8
  %51 = getelementptr inbounds i8, ptr %50, i64 2
  %52 = call fastcc ptr @ReadResourceLong(ptr noundef nonnull %51, ptr noundef nonnull %6) #8
  %53 = getelementptr inbounds i8, ptr %52, i64 4
  %54 = load i32, ptr %6, align 4, !tbaa !30
  %55 = uitofp i32 %54 to double
  %56 = fmul double %55, 0x3EF0000000000000
  store double %56, ptr %16, align 8, !tbaa !48
  %57 = load i16, ptr %7, align 2, !tbaa !31
  %58 = icmp eq i16 %57, 2
  br i1 %58, label %60, label %59

59:                                               ; preds = %45
  store i32 1, ptr %17, align 8, !tbaa !46
  br label %64

60:                                               ; preds = %45
  store i32 2, ptr %17, align 8, !tbaa !46
  %61 = insertelement <2 x double> poison, double %49, i64 0
  %62 = insertelement <2 x double> %61, double %56, i64 1
  %63 = fdiv <2 x double> %62, <double 2.540000e+00, double 2.540000e+00>
  store <2 x double> %63, ptr %15, align 8, !tbaa !56
  br label %64

64:                                               ; preds = %60, %59
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %89

65:                                               ; preds = %43
  %66 = tail call ptr @AcquireStringInfo(i64 noundef %37) #7
  tail call void @SetStringInfoDatum(ptr noundef %66, ptr noundef nonnull %35) #7
  %67 = tail call fastcc i32 @SetImageProfileInternal(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %66, i32 noundef 1) #8
  %68 = tail call ptr @DestroyStringInfo(ptr noundef %66) #7
  %69 = getelementptr inbounds i8, ptr %35, i64 %37
  br label %89

70:                                               ; preds = %43
  %71 = getelementptr inbounds i8, ptr %35, i64 %37
  br label %89

72:                                               ; preds = %43
  %73 = tail call ptr @AcquireStringInfo(i64 noundef %37) #7
  tail call void @SetStringInfoDatum(ptr noundef %73, ptr noundef nonnull %35) #7
  %74 = tail call fastcc i32 @SetImageProfileInternal(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %73, i32 noundef 1) #8
  %75 = tail call ptr @DestroyStringInfo(ptr noundef %73) #7
  %76 = getelementptr inbounds i8, ptr %35, i64 %37
  br label %89

77:                                               ; preds = %43
  %78 = tail call ptr @AcquireStringInfo(i64 noundef %37) #7
  tail call void @SetStringInfoDatum(ptr noundef %78, ptr noundef nonnull %35) #7
  %79 = tail call fastcc i32 @SetImageProfileInternal(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %78, i32 noundef 1) #8
  %80 = tail call ptr @DestroyStringInfo(ptr noundef %78) #7
  %81 = getelementptr inbounds i8, ptr %35, i64 %37
  br label %89

82:                                               ; preds = %43
  %83 = tail call ptr @AcquireStringInfo(i64 noundef %37) #7
  tail call void @SetStringInfoDatum(ptr noundef %83, ptr noundef nonnull %35) #7
  %84 = tail call fastcc i32 @SetImageProfileInternal(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %83, i32 noundef 1) #8
  %85 = tail call ptr @DestroyStringInfo(ptr noundef %83) #7
  %86 = getelementptr inbounds i8, ptr %35, i64 %37
  br label %89

87:                                               ; preds = %43
  %88 = getelementptr inbounds i8, ptr %35, i64 %37
  br label %89

89:                                               ; preds = %87, %82, %77, %72, %70, %65, %64
  %90 = phi ptr [ %88, %87 ], [ %86, %82 ], [ %81, %77 ], [ %76, %72 ], [ %71, %70 ], [ %69, %65 ], [ %53, %64 ]
  %91 = and i64 %37, 1
  %92 = getelementptr inbounds i8, ptr %90, i64 %91
  %93 = icmp ult ptr %92, %11
  br i1 %93, label %18, label %94, !llvm.loop !57

94:                                               ; preds = %89, %18, %22, %34, %2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @ReadProfileByte(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = load i64, ptr %1, align 8, !tbaa !42
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !37
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %7, ptr %0, align 8, !tbaa !37
  %8 = load i8, ptr %6, align 1, !tbaa !29
  %9 = zext i8 %8 to i32
  %10 = add i64 %3, -1
  store i64 %10, ptr %1, align 8, !tbaa !42
  br label %11

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %9, %5 ], [ -1, %2 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i16 @ReadProfileMSBShort(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = load i64, ptr %1, align 8, !tbaa !42
  %4 = icmp ult i64 %3, 2
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !37
  %7 = tail call fastcc zeroext i16 @ReadProfileShort(i32 noundef 2, ptr noundef %6) #8
  %8 = add i64 %3, -2
  store i64 %8, ptr %1, align 8, !tbaa !42
  %9 = getelementptr inbounds i8, ptr %6, i64 2
  store ptr %9, ptr %0, align 8, !tbaa !37
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i16 [ %7, %5 ], [ 0, %2 ]
  ret i16 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @ReadProfileMSBLong(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = load i64, ptr %1, align 8, !tbaa !42
  %4 = icmp ult i64 %3, 4
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !37
  %7 = tail call fastcc i64 @ReadProfileLong(i32 noundef 2, ptr noundef %6) #8, !range !45
  %8 = add i64 %3, -4
  store i64 %8, ptr %1, align 8, !tbaa !42
  %9 = getelementptr inbounds i8, ptr %6, i64 4
  store ptr %9, ptr %0, align 8, !tbaa !37
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i64 [ %7, %5 ], [ 0, %2 ]
  ret i64 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @WriteProfileLong(i32 noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %5 = icmp eq i32 %0, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = trunc i64 %1 to i8
  store i8 %7, ptr %4, align 1, !tbaa !29
  %8 = lshr i64 %1, 8
  %9 = trunc i64 %8 to i8
  %10 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1
  store i8 %9, ptr %10, align 1, !tbaa !29
  %11 = lshr i64 %1, 16
  %12 = trunc i64 %11 to i8
  %13 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2
  store i8 %12, ptr %13, align 1, !tbaa !29
  %14 = lshr i64 %1, 24
  br label %24

15:                                               ; preds = %3
  %16 = lshr i64 %1, 24
  %17 = trunc i64 %16 to i8
  store i8 %17, ptr %4, align 1, !tbaa !29
  %18 = lshr i64 %1, 16
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1
  store i8 %19, ptr %20, align 1, !tbaa !29
  %21 = lshr i64 %1, 8
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2
  store i8 %22, ptr %23, align 1, !tbaa !29
  br label %24

24:                                               ; preds = %15, %6
  %25 = phi i64 [ %1, %15 ], [ %14, %6 ]
  %26 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  %27 = trunc i64 %25 to i8
  store i8 %27, ptr %26, align 1, !tbaa !29
  %28 = call ptr @CopyMagickMemory(ptr noundef %2, ptr noundef nonnull %4, i64 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @WriteProfileShort(i32 noundef %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  %5 = icmp eq i32 %0, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = trunc i16 %1 to i8
  store i8 %7, ptr %4, align 1, !tbaa !29
  %8 = lshr i16 %1, 8
  br label %12

9:                                                ; preds = %3
  %10 = lshr i16 %1, 8
  %11 = trunc i16 %10 to i8
  store i8 %11, ptr %4, align 1, !tbaa !29
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i16 [ %1, %9 ], [ %8, %6 ]
  %14 = getelementptr inbounds [2 x i8], ptr %4, i64 0, i64 1
  %15 = trunc i16 %13 to i8
  store i8 %15, ptr %14, align 1, !tbaa !29
  %16 = call ptr @CopyMagickMemory(ptr noundef %2, ptr noundef nonnull %4, i64 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @ReadProfileShort(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = icmp eq i32 %0, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 1
  br label %14

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !29
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !29
  %12 = zext i8 %11 to i16
  %13 = or disjoint i16 %9, %12
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi i16 [ %5, %4 ], [ %13, %6 ]
  ret i16 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @ReadProfileLong(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = icmp eq i32 %0, 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 1
  %6 = zext i32 %5 to i64
  br label %25

7:                                                ; preds = %2
  %8 = load i8, ptr %1, align 1, !tbaa !29
  %9 = zext i8 %8 to i64
  %10 = shl nuw nsw i64 %9, 24
  %11 = getelementptr inbounds i8, ptr %1, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !29
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 16
  %15 = or disjoint i64 %14, %10
  %16 = getelementptr inbounds i8, ptr %1, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !29
  %18 = zext i8 %17 to i64
  %19 = shl nuw nsw i64 %18, 8
  %20 = or disjoint i64 %15, %19
  %21 = getelementptr inbounds i8, ptr %1, i64 3
  %22 = load i8, ptr %21, align 1, !tbaa !29
  %23 = zext i8 %22 to i64
  %24 = or disjoint i64 %20, %23
  br label %25

25:                                               ; preds = %7, %4
  %26 = phi i64 [ %6, %4 ], [ %24, %7 ]
  ret i64 %26
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 12976}
!6 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !11, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !14, i64 104, !15, i64 112, !7, i64 208, !11, i64 216, !7, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !10, i64 256, !14, i64 264, !14, i64 272, !17, i64 280, !17, i64 312, !17, i64 344, !14, i64 376, !14, i64 384, !14, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !11, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !18, i64 480, !19, i64 504, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !10, i64 12904, !10, i64 12912, !21, i64 12920, !7, i64 12976, !10, i64 12984, !11, i64 12992, !22, i64 13000, !22, i64 13032, !11, i64 13064, !10, i64 13072, !10, i64 13080, !11, i64 13088, !11, i64 13096, !11, i64 13104, !7, i64 13112, !7, i64 13116, !12, i64 13120, !11, i64 13128, !17, i64 13136, !11, i64 13168, !11, i64 13176, !7, i64 13184, !7, i64 13188, !23, i64 13192, !7, i64 13200, !10, i64 13208, !10, i64 13216, !7, i64 13224, !10, i64 13232}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"_PixelPacket", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!13 = !{!"short", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"_ChromaticityInfo", !16, i64 0, !16, i64 24, !16, i64 48, !16, i64 72}
!16 = !{!"_PrimaryInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!17 = !{!"_RectangleInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!18 = !{!"_ErrorInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!"_TimerInfo", !20, i64 0, !20, i64 24, !7, i64 48, !10, i64 56}
!20 = !{!"_Timer", !14, i64 0, !14, i64 8, !14, i64 16}
!21 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !11, i64 40, !10, i64 48}
!22 = !{!"_ProfileInfo", !11, i64 0, !10, i64 8, !11, i64 16, !10, i64 24}
!23 = !{!"long long", !8, i64 0}
!24 = !{!6, !10, i64 13008}
!25 = !{!6, !11, i64 13016}
!26 = !{!6, !10, i64 13040}
!27 = !{!6, !11, i64 13048}
!28 = !{!6, !11, i64 216}
!29 = !{!8, !8, i64 0}
!30 = !{!7, !7, i64 0}
!31 = !{!13, !13, i64 0}
!32 = !{!33, !11, i64 4096}
!33 = !{!"_StringInfo", !8, i64 0, !11, i64 4096, !10, i64 4104, !10, i64 4112}
!34 = !{!33, !10, i64 4104}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!11, !11, i64 0}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !36}
!40 = distinct !{!40, !36}
!41 = !{i32 0, i32 2}
!42 = !{!10, !10, i64 0}
!43 = !{i32 -1, i32 256}
!44 = distinct !{!44, !36}
!45 = !{i64 0, i64 4294967296}
!46 = !{!6, !7, i64 224}
!47 = !{!6, !14, i64 264}
!48 = !{!6, !14, i64 272}
!49 = distinct !{!49, !36}
!50 = !{!51, !11, i64 0}
!51 = !{!"_DirectoryInfo", !11, i64 0, !10, i64 8}
!52 = !{!51, !10, i64 8}
!53 = !{!6, !7, i64 24}
!54 = distinct !{!54, !36}
!55 = distinct !{!55, !36}
!56 = !{!14, !14, i64 0}
!57 = distinct !{!57, !36}
