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

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CloneImageProfiles(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 143, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #4
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 62, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 62, i32 1
  store i64 %11, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 62, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 62, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 63, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !55
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 63, i32 1
  store i64 %17, ptr %18, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 63, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 63, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !56
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @DestroySplayTree(ptr noundef nonnull %27) #4
  store ptr %30, ptr %26, align 8, !tbaa !57
  br label %31

31:                                               ; preds = %29, %25
  %32 = load ptr, ptr %22, align 8, !tbaa !57
  %33 = tail call ptr @CloneSplayTree(ptr noundef %32, ptr noundef nonnull @ConstantString, ptr noundef nonnull @CloneStringInfo) #4
  store ptr %33, ptr %26, align 8, !tbaa !57
  br label %34

34:                                               ; preds = %31, %9
  ret i32 1
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DestroyImageProfiles(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @DestroySplayTree(ptr noundef nonnull %3) #4
  store ptr %6, ptr %2, align 8, !tbaa !57
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

declare ptr @CloneSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ConstantString(ptr noundef) #1

declare ptr @CloneStringInfo(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @DeleteImageProfile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 189, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #4
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.3) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 62, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  br label %18

18:                                               ; preds = %16, %13
  %19 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.4) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 63, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  br label %23

23:                                               ; preds = %21, %18
  tail call fastcc void @WriteTo8BimProfile(ptr noundef %0, ptr noundef %1, ptr noundef null)
  %24 = load ptr, ptr %10, align 8, !tbaa !57
  %25 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef %24, ptr noundef %1) #4
  br label %26

26:                                               ; preds = %9, %23
  %27 = phi i32 [ %25, %23 ], [ 0, %9 ]
  ret i32 %27
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @WriteTo8BimProfile(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [4 x i8], align 1
  %5 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.3) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.4) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.13) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %144

13:                                               ; preds = %10, %7, %3
  %14 = phi i32 [ 1039, %3 ], [ 1028, %7 ], [ 1060, %10 ]
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = tail call ptr @GetValueFromSplayTree(ptr noundef %16, ptr noundef nonnull @.str.14) #4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %144, label %19

19:                                               ; preds = %13
  %20 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %17) #4
  %21 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %17) #4
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = getelementptr inbounds i8, ptr %22, i64 -16
  %24 = icmp ult ptr %20, %23
  br i1 %24, label %25, label %144

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %22, i64 -4
  br label %27

27:                                               ; preds = %25, %142
  %28 = phi ptr [ %20, %25 ], [ %78, %142 ]
  %29 = tail call i32 @LocaleNCompare(ptr noundef %28, ptr noundef nonnull @.str.11, i64 noundef 4) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %144

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %28, i64 4
  %33 = getelementptr inbounds i8, ptr %28, i64 5
  %34 = load i8, ptr %32, align 1, !tbaa !58
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = getelementptr inbounds i8, ptr %28, i64 6
  %38 = load i8, ptr %33, align 1, !tbaa !58
  %39 = zext i8 %38 to i32
  %40 = or disjoint i32 %36, %39
  %41 = getelementptr inbounds i8, ptr %28, i64 7
  %42 = load i8, ptr %37, align 1, !tbaa !58
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds i8, ptr %41, i64 %43
  %45 = and i8 %42, 1
  %46 = xor i8 %45, 1
  %47 = zext nneg i8 %46 to i64
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  %49 = icmp ugt ptr %48, %26
  br i1 %49, label %144, label %50

50:                                               ; preds = %31
  %51 = getelementptr inbounds i8, ptr %48, i64 1
  %52 = load i8, ptr %48, align 1, !tbaa !58
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 24
  %55 = getelementptr inbounds i8, ptr %48, i64 2
  %56 = load i8, ptr %51, align 1, !tbaa !58
  %57 = zext i8 %56 to i64
  %58 = shl nuw nsw i64 %57, 16
  %59 = or disjoint i64 %58, %54
  %60 = getelementptr inbounds i8, ptr %48, i64 3
  %61 = load i8, ptr %55, align 1, !tbaa !58
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 8
  %64 = or disjoint i64 %59, %63
  %65 = getelementptr inbounds i8, ptr %48, i64 4
  %66 = load i8, ptr %60, align 1, !tbaa !58
  %67 = zext i8 %66 to i64
  %68 = or disjoint i64 %64, %67
  %69 = sub nsw i64 0, %68
  %70 = getelementptr inbounds i8, ptr %22, i64 %69
  %71 = icmp ugt ptr %65, %70
  %72 = icmp slt i64 %21, %68
  %73 = or i1 %72, %71
  br i1 %73, label %144, label %74

74:                                               ; preds = %50
  %75 = and i64 %67, 1
  %76 = icmp eq i32 %14, %40
  %77 = getelementptr i8, ptr %65, i64 %68
  %78 = getelementptr i8, ptr %77, i64 %75
  br i1 %76, label %79, label %142

79:                                               ; preds = %74
  %80 = ptrtoint ptr %22 to i64
  %81 = ptrtoint ptr %78 to i64
  %82 = sub i64 %80, %81
  %83 = icmp eq ptr %2, null
  %84 = ptrtoint ptr %20 to i64
  br i1 %83, label %85, label %93

85:                                               ; preds = %79
  %86 = ptrtoint ptr %28 to i64
  %87 = sub i64 %86, %84
  %88 = add i64 %82, %87
  %89 = tail call ptr @AcquireStringInfo(i64 noundef %88) #4
  %90 = getelementptr inbounds %struct._StringInfo, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !59
  %92 = tail call ptr @CopyMagickMemory(ptr noundef %91, ptr noundef %20, i64 noundef %87) #4
  br label %128

93:                                               ; preds = %79
  %94 = ptrtoint ptr %65 to i64
  %95 = sub i64 %94, %84
  %96 = getelementptr inbounds %struct._StringInfo, ptr %2, i64 0, i32 2
  %97 = load i64, ptr %96, align 8, !tbaa !61
  %98 = and i64 %97, 1
  %99 = add i64 %98, %97
  %100 = add i64 %82, %95
  %101 = add i64 %100, %99
  %102 = tail call ptr @AcquireStringInfo(i64 noundef %101) #4
  %103 = getelementptr inbounds %struct._StringInfo, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !59
  %105 = add i64 %95, -4
  %106 = tail call ptr @CopyMagickMemory(ptr noundef %104, ptr noundef %20, i64 noundef %105) #4
  %107 = load ptr, ptr %103, align 8, !tbaa !59
  %108 = getelementptr inbounds i8, ptr %107, i64 %95
  %109 = getelementptr inbounds i8, ptr %108, i64 -4
  %110 = load i64, ptr %96, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  %111 = lshr i64 %110, 24
  %112 = trunc i64 %111 to i8
  store i8 %112, ptr %4, align 1, !tbaa !58
  %113 = lshr i64 %110, 16
  %114 = trunc i64 %113 to i8
  %115 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1
  store i8 %114, ptr %115, align 1, !tbaa !58
  %116 = lshr i64 %110, 8
  %117 = trunc i64 %116 to i8
  %118 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2
  store i8 %117, ptr %118, align 1, !tbaa !58
  %119 = trunc i64 %110 to i8
  %120 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  store i8 %119, ptr %120, align 1, !tbaa !58
  %121 = call ptr @CopyMagickMemory(ptr noundef nonnull %109, ptr noundef nonnull %4, i64 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  %122 = load ptr, ptr %103, align 8, !tbaa !59
  %123 = getelementptr inbounds i8, ptr %122, i64 %95
  %124 = getelementptr inbounds %struct._StringInfo, ptr %2, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !59
  %126 = load i64, ptr %96, align 8, !tbaa !61
  %127 = call ptr @CopyMagickMemory(ptr noundef %123, ptr noundef %125, i64 noundef %126) #4
  br label %128

128:                                              ; preds = %93, %85
  %129 = phi i64 [ %87, %85 ], [ %95, %93 ]
  %130 = phi i64 [ 0, %85 ], [ %99, %93 ]
  %131 = phi ptr [ %89, %85 ], [ %102, %93 ]
  %132 = getelementptr inbounds %struct._StringInfo, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !59
  %134 = getelementptr inbounds i8, ptr %133, i64 %129
  %135 = getelementptr inbounds i8, ptr %134, i64 %130
  %136 = call ptr @CopyMagickMemory(ptr noundef %135, ptr noundef nonnull %78, i64 noundef %82) #4
  %137 = load ptr, ptr %15, align 8, !tbaa !57
  %138 = call ptr @ConstantString(ptr noundef nonnull @.str.14) #4
  %139 = call ptr @CloneStringInfo(ptr noundef %131) #4
  %140 = call i32 @AddValueToSplayTree(ptr noundef %137, ptr noundef %138, ptr noundef %139) #4
  %141 = call ptr @DestroyStringInfo(ptr noundef %131) #4
  br label %144

142:                                              ; preds = %74
  %143 = icmp ult ptr %78, %23
  br i1 %143, label %27, label %144, !llvm.loop !62

144:                                              ; preds = %50, %31, %27, %142, %19, %128, %13, %10
  ret void
}

declare i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageProfile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #4
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 4096) #4
  %16 = load ptr, ptr %11, align 8, !tbaa !57
  %17 = call ptr @GetValueFromSplayTree(ptr noundef %16, ptr noundef nonnull %3) #4
  br label %18

18:                                               ; preds = %10, %14
  %19 = phi ptr [ %17, %14 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #4
  ret ptr %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextImageProfile(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 312, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #4
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %10) #4
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  ret ptr %15
}

declare ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ProfileImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 497, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #4
  br label %16

16:                                               ; preds = %13, %5
  %17 = icmp eq ptr %2, null
  %18 = icmp eq i64 %3, 0
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %117

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  %21 = tail call ptr @ConstantString(ptr noundef %1) #4
  store ptr %21, ptr %8, align 8, !tbaa !65
  %22 = call i32 @SubstituteString(ptr noundef nonnull %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #4
  %23 = load ptr, ptr %8, align 8, !tbaa !65
  %24 = call ptr @StringToArgv(ptr noundef %23, ptr noundef nonnull %9) #4
  %25 = load ptr, ptr %8, align 8, !tbaa !65
  %26 = call ptr @DestroyString(ptr noundef %25) #4
  store ptr %26, ptr %8, align 8, !tbaa !65
  %27 = icmp eq ptr %24, null
  br i1 %27, label %116, label %28

28:                                               ; preds = %20
  %29 = load i32, ptr %10, align 8, !tbaa !34
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1073, ptr noundef nonnull @.str.2, ptr noundef nonnull %32) #4
  br label %34

34:                                               ; preds = %31, %28
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void @ResetSplayTreeIterator(ptr noundef nonnull %36) #4
  br label %39

39:                                               ; preds = %34, %38
  %40 = load i32, ptr %10, align 8, !tbaa !34
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %44 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 312, ptr noundef nonnull @.str.2, ptr noundef nonnull %43) #4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load ptr, ptr %35, align 8, !tbaa !57
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %46) #4
  br label %50

50:                                               ; preds = %45, %48
  %51 = phi ptr [ %49, %48 ], [ null, %45 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  br label %56

56:                                               ; preds = %53, %102
  %57 = phi ptr [ %51, %53 ], [ %103, %102 ]
  %58 = load i32, ptr %9, align 4, !tbaa !66
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %68, label %92

60:                                               ; preds = %102, %50
  %61 = load i32, ptr %9, align 4, !tbaa !66
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %105, label %114

63:                                               ; preds = %78
  %64 = add nuw nsw i64 %69, 1
  %65 = load i32, ptr %9, align 4, !tbaa !66
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %68, label %92, !llvm.loop !67

68:                                               ; preds = %56, %63
  %69 = phi i64 [ %64, %63 ], [ 1, %56 ]
  %70 = getelementptr inbounds ptr, ptr %24, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !65
  %72 = load i8, ptr %71, align 1, !tbaa !58
  %73 = icmp eq i8 %72, 33
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = getelementptr inbounds i8, ptr %71, i64 1
  %76 = call i32 @LocaleCompare(ptr noundef nonnull %57, ptr noundef nonnull %75) #4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %74, %68
  %79 = load ptr, ptr %70, align 8, !tbaa !65
  %80 = call i32 @GlobExpression(ptr noundef nonnull %57, ptr noundef %79, i32 noundef 1) #4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %63, label %82

82:                                               ; preds = %78
  %83 = call i32 @DeleteImageProfile(ptr noundef %0, ptr noundef nonnull %57)
  %84 = load i32, ptr %10, align 8, !tbaa !34
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1073, ptr noundef nonnull @.str.2, ptr noundef nonnull %54) #4
  br label %88

88:                                               ; preds = %86, %82
  %89 = load ptr, ptr %35, align 8, !tbaa !57
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  call void @ResetSplayTreeIterator(ptr noundef nonnull %89) #4
  br label %92

92:                                               ; preds = %63, %74, %56, %91, %88
  %93 = load i32, ptr %10, align 8, !tbaa !34
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 312, ptr noundef nonnull @.str.2, ptr noundef nonnull %55) #4
  br label %97

97:                                               ; preds = %95, %92
  %98 = load ptr, ptr %35, align 8, !tbaa !57
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %98) #4
  br label %102

102:                                              ; preds = %97, %100
  %103 = phi ptr [ %101, %100 ], [ null, %97 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %60, label %56, !llvm.loop !68

105:                                              ; preds = %60, %105
  %106 = phi i64 [ %110, %105 ], [ 0, %60 ]
  %107 = getelementptr inbounds ptr, ptr %24, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !65
  %109 = call ptr @DestroyString(ptr noundef %108) #4
  store ptr %109, ptr %107, align 8, !tbaa !65
  %110 = add nuw nsw i64 %106, 1
  %111 = load i32, ptr %9, align 4, !tbaa !66
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %105, label %114, !llvm.loop !69

114:                                              ; preds = %105, %60
  %115 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %24) #4
  br label %116

116:                                              ; preds = %20, %114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  br label %181

117:                                              ; preds = %16
  %118 = tail call ptr @AcquireStringInfo(i64 noundef %3) #4
  tail call void @SetStringInfoDatum(ptr noundef %118, ptr noundef %2) #4
  %119 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.3) #4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.7) #4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = tail call fastcc i32 @SetImageProfileInternal(ptr noundef %0, ptr noundef %1, ptr noundef %118, i32 noundef 0)
  br label %177

126:                                              ; preds = %121, %117
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #4
  %127 = load i32, ptr %10, align 8, !tbaa !34
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %131 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %130) #4
  br label %132

132:                                              ; preds = %129, %126
  %133 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %134 = load ptr, ptr %133, align 8, !tbaa !57
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, i64 noundef 4096) #4
  %138 = load ptr, ptr %133, align 8, !tbaa !57
  %139 = call ptr @GetValueFromSplayTree(ptr noundef %138, ptr noundef nonnull %7) #4
  br label %140

140:                                              ; preds = %132, %136
  %141 = phi ptr [ %139, %136 ], [ null, %132 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %162, label %143

143:                                              ; preds = %140
  %144 = call i32 @CompareStringInfo(ptr noundef nonnull %141, ptr noundef %118) #4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %143
  %147 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull @.str.8) #4
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #4
  %148 = load i32, ptr %10, align 8, !tbaa !34
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %152 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %151) #4
  br label %153

153:                                              ; preds = %150, %146
  %154 = load ptr, ptr %133, align 8, !tbaa !57
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull @.str.3, i64 noundef 4096) #4
  %158 = load ptr, ptr %133, align 8, !tbaa !57
  %159 = call ptr @GetValueFromSplayTree(ptr noundef %158, ptr noundef nonnull %6) #4
  br label %160

160:                                              ; preds = %153, %156
  %161 = phi ptr [ %159, %156 ], [ null, %153 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #4
  br label %162

162:                                              ; preds = %160, %143, %140
  %163 = phi ptr [ %161, %160 ], [ %141, %143 ], [ null, %140 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  %166 = call i32 @CompareStringInfo(ptr noundef nonnull %163, ptr noundef %118) #4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call ptr @DestroyStringInfo(ptr noundef %118) #4
  br label %174

170:                                              ; preds = %165, %162
  %171 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %172 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %173 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %171, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 583, i32 noundef 320, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull %172) #4
  br label %174

174:                                              ; preds = %170, %168
  %175 = phi ptr [ %169, %168 ], [ %118, %170 ]
  %176 = phi i1 [ false, %168 ], [ true, %170 ]
  br i1 %176, label %177, label %181

177:                                              ; preds = %174, %124
  %178 = phi i32 [ %125, %124 ], [ 1, %174 ]
  %179 = phi ptr [ %118, %124 ], [ %175, %174 ]
  %180 = call ptr @DestroyStringInfo(ptr noundef %179) #4
  br label %181

181:                                              ; preds = %174, %177, %116
  %182 = phi i32 [ 1, %116 ], [ %178, %177 ], [ 1, %174 ]
  ret i32 %182
}

declare i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @StringToArgv(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ResetImageProfileIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1073, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #4
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %10) #4
  br label %13

13:                                               ; preds = %8, %12
  ret void
}

declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @RelinquishMagickMemory(ptr noundef) #1

declare ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #1

declare void @SetStringInfoDatum(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageProfile(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @SetImageProfileInternal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %4
}

declare i32 @CompareStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #1

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveImageProfile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1019, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #4
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.3) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 62, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  br label %18

18:                                               ; preds = %16, %13
  %19 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.4) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 63, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  br label %23

23:                                               ; preds = %21, %18
  tail call fastcc void @WriteTo8BimProfile(ptr noundef %0, ptr noundef %1, ptr noundef null)
  %24 = load ptr, ptr %10, align 8, !tbaa !57
  %25 = tail call ptr @RemoveNodeFromSplayTree(ptr noundef %24, ptr noundef %1) #4
  br label %26

26:                                               ; preds = %9, %23
  %27 = phi ptr [ %25, %23 ], [ null, %9 ]
  ret ptr %27
}

declare ptr @RemoveNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @SetImageProfileInternal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #4
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1427, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #4
  br label %13

13:                                               ; preds = %10, %4
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @DestroyProfile) #4
  store ptr %18, ptr %14, align 8, !tbaa !57
  br label %19

19:                                               ; preds = %17, %13
  %20 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 4096) #4
  call void @LocaleLower(ptr noundef nonnull %5) #4
  %21 = load ptr, ptr %14, align 8, !tbaa !57
  %22 = call ptr @ConstantString(ptr noundef nonnull %5) #4
  %23 = call ptr @CloneStringInfo(ptr noundef %2) #4
  %24 = call i32 @AddValueToSplayTree(ptr noundef %21, ptr noundef %22, ptr noundef %23) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %203, label %26

26:                                               ; preds = %19
  %27 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.3) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.7) #4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29, %26
  %33 = call ptr @GetImageProfile(ptr noundef %0, ptr noundef %1)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = call i64 @GetStringInfoLength(ptr noundef nonnull %33) #4
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 62, i32 1
  store i64 %36, ptr %37, align 8, !tbaa !53
  %38 = call ptr @GetStringInfoDatum(ptr noundef nonnull %33) #4
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 62, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !54
  br label %40

40:                                               ; preds = %29, %35, %32
  %41 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.4) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.14) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43, %40
  %47 = call ptr @GetImageProfile(ptr noundef %0, ptr noundef %1)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = call i64 @GetStringInfoLength(ptr noundef nonnull %47) #4
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 63, i32 1
  store i64 %50, ptr %51, align 8, !tbaa !55
  %52 = call ptr @GetStringInfoDatum(ptr noundef nonnull %47) #4
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 63, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !56
  br label %54

54:                                               ; preds = %43, %49, %46
  %55 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.14) #4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %200

57:                                               ; preds = %54
  %58 = call ptr @GetStringInfoDatum(ptr noundef %2) #4
  %59 = call i64 @GetStringInfoLength(ptr noundef %2) #4
  %60 = getelementptr inbounds i8, ptr %58, i64 %59
  %61 = getelementptr inbounds i8, ptr %60, i64 -16
  %62 = icmp ult ptr %58, %61
  br i1 %62, label %63, label %203

63:                                               ; preds = %57
  %64 = getelementptr inbounds i8, ptr %60, i64 -4
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  br label %69

69:                                               ; preds = %63, %195
  %70 = phi ptr [ %58, %63 ], [ %198, %195 ]
  %71 = call i32 @LocaleNCompare(ptr noundef %70, ptr noundef nonnull @.str.11, i64 noundef 4) #4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %203

73:                                               ; preds = %69
  %74 = getelementptr inbounds i8, ptr %70, i64 4
  %75 = getelementptr inbounds i8, ptr %70, i64 5
  %76 = load i8, ptr %74, align 1, !tbaa !58
  %77 = zext i8 %76 to i16
  %78 = shl nuw i16 %77, 8
  %79 = getelementptr inbounds i8, ptr %70, i64 6
  %80 = load i8, ptr %75, align 1, !tbaa !58
  %81 = zext i8 %80 to i16
  %82 = or disjoint i16 %78, %81
  %83 = getelementptr inbounds i8, ptr %70, i64 7
  %84 = load i8, ptr %79, align 1, !tbaa !58
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds i8, ptr %83, i64 %85
  %87 = and i8 %84, 1
  %88 = xor i8 %87, 1
  %89 = zext nneg i8 %88 to i64
  %90 = getelementptr inbounds i8, ptr %86, i64 %89
  %91 = icmp ugt ptr %90, %64
  br i1 %91, label %203, label %92

92:                                               ; preds = %73
  %93 = getelementptr inbounds i8, ptr %90, i64 1
  %94 = load i8, ptr %90, align 1, !tbaa !58
  %95 = zext i8 %94 to i64
  %96 = shl nuw nsw i64 %95, 24
  %97 = getelementptr inbounds i8, ptr %90, i64 2
  %98 = load i8, ptr %93, align 1, !tbaa !58
  %99 = zext i8 %98 to i64
  %100 = shl nuw nsw i64 %99, 16
  %101 = or disjoint i64 %100, %96
  %102 = getelementptr inbounds i8, ptr %90, i64 3
  %103 = load i8, ptr %97, align 1, !tbaa !58
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 8
  %106 = or disjoint i64 %101, %105
  %107 = getelementptr inbounds i8, ptr %90, i64 4
  %108 = load i8, ptr %102, align 1, !tbaa !58
  %109 = zext i8 %108 to i64
  %110 = or disjoint i64 %106, %109
  %111 = sub nsw i64 0, %110
  %112 = getelementptr inbounds i8, ptr %60, i64 %111
  %113 = icmp ugt ptr %107, %112
  %114 = icmp slt i64 %59, %110
  %115 = or i1 %114, %113
  br i1 %115, label %203, label %116

116:                                              ; preds = %92
  switch i16 %82, label %193 [
    i16 1005, label %117
    i16 1028, label %171
    i16 1036, label %176
    i16 1039, label %178
    i16 1058, label %183
    i16 1060, label %188
  ]

117:                                              ; preds = %116
  %118 = getelementptr inbounds i8, ptr %90, i64 5
  %119 = load i8, ptr %107, align 1, !tbaa !58
  %120 = zext i8 %119 to i32
  %121 = shl nuw i32 %120, 24
  %122 = getelementptr inbounds i8, ptr %90, i64 6
  %123 = load i8, ptr %118, align 1, !tbaa !58
  %124 = zext i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 16
  %126 = or disjoint i32 %125, %121
  %127 = getelementptr inbounds i8, ptr %90, i64 7
  %128 = load i8, ptr %122, align 1, !tbaa !58
  %129 = zext i8 %128 to i32
  %130 = shl nuw nsw i32 %129, 8
  %131 = or disjoint i32 %126, %130
  %132 = getelementptr inbounds i8, ptr %90, i64 8
  %133 = load i8, ptr %127, align 1, !tbaa !58
  %134 = zext i8 %133 to i32
  %135 = or disjoint i32 %131, %134
  %136 = uitofp i32 %135 to double
  %137 = fmul double %136, 0x3EF0000000000000
  store double %137, ptr %65, align 8, !tbaa !70
  %138 = getelementptr inbounds i8, ptr %90, i64 9
  %139 = load i8, ptr %132, align 1, !tbaa !58
  %140 = zext i8 %139 to i16
  %141 = shl nuw i16 %140, 8
  %142 = load i8, ptr %138, align 1, !tbaa !58
  %143 = zext i8 %142 to i16
  %144 = or disjoint i16 %141, %143
  %145 = getelementptr inbounds i8, ptr %90, i64 12
  %146 = getelementptr inbounds i8, ptr %90, i64 13
  %147 = load i8, ptr %145, align 1, !tbaa !58
  %148 = zext i8 %147 to i32
  %149 = shl nuw i32 %148, 24
  %150 = getelementptr inbounds i8, ptr %90, i64 14
  %151 = load i8, ptr %146, align 1, !tbaa !58
  %152 = zext i8 %151 to i32
  %153 = shl nuw nsw i32 %152, 16
  %154 = or disjoint i32 %153, %149
  %155 = getelementptr inbounds i8, ptr %90, i64 15
  %156 = load i8, ptr %150, align 1, !tbaa !58
  %157 = zext i8 %156 to i32
  %158 = shl nuw nsw i32 %157, 8
  %159 = or disjoint i32 %154, %158
  %160 = load i8, ptr %155, align 1, !tbaa !58
  %161 = zext i8 %160 to i32
  %162 = or disjoint i32 %159, %161
  %163 = getelementptr inbounds i8, ptr %90, i64 20
  %164 = uitofp i32 %162 to double
  %165 = fmul double %164, 0x3EF0000000000000
  store double %165, ptr %66, align 8, !tbaa !71
  %166 = icmp eq i16 %144, 2
  br i1 %166, label %168, label %167

167:                                              ; preds = %117
  store i32 1, ptr %67, align 8, !tbaa !72
  br label %195

168:                                              ; preds = %117
  store i32 2, ptr %68, align 8, !tbaa !72
  %169 = fdiv double %137, 2.540000e+00
  store double %169, ptr %65, align 8, !tbaa !70
  %170 = fdiv double %165, 2.540000e+00
  store double %170, ptr %66, align 8, !tbaa !71
  br label %195

171:                                              ; preds = %116
  %172 = call ptr @AcquireStringInfo(i64 noundef %110) #4
  call void @SetStringInfoDatum(ptr noundef %172, ptr noundef nonnull %107) #4
  %173 = call fastcc i32 @SetImageProfileInternal(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %172, i32 noundef 1)
  %174 = call ptr @DestroyStringInfo(ptr noundef %172) #4
  %175 = getelementptr inbounds i8, ptr %107, i64 %110
  br label %195

176:                                              ; preds = %116
  %177 = getelementptr inbounds i8, ptr %107, i64 %110
  br label %195

178:                                              ; preds = %116
  %179 = call ptr @AcquireStringInfo(i64 noundef %110) #4
  call void @SetStringInfoDatum(ptr noundef %179, ptr noundef nonnull %107) #4
  %180 = call fastcc i32 @SetImageProfileInternal(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %179, i32 noundef 1)
  %181 = call ptr @DestroyStringInfo(ptr noundef %179) #4
  %182 = getelementptr inbounds i8, ptr %107, i64 %110
  br label %195

183:                                              ; preds = %116
  %184 = call ptr @AcquireStringInfo(i64 noundef %110) #4
  call void @SetStringInfoDatum(ptr noundef %184, ptr noundef nonnull %107) #4
  %185 = call fastcc i32 @SetImageProfileInternal(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %184, i32 noundef 1)
  %186 = call ptr @DestroyStringInfo(ptr noundef %184) #4
  %187 = getelementptr inbounds i8, ptr %107, i64 %110
  br label %195

188:                                              ; preds = %116
  %189 = call ptr @AcquireStringInfo(i64 noundef %110) #4
  call void @SetStringInfoDatum(ptr noundef %189, ptr noundef nonnull %107) #4
  %190 = call fastcc i32 @SetImageProfileInternal(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %189, i32 noundef 1)
  %191 = call ptr @DestroyStringInfo(ptr noundef %189) #4
  %192 = getelementptr inbounds i8, ptr %107, i64 %110
  br label %195

193:                                              ; preds = %116
  %194 = getelementptr inbounds i8, ptr %107, i64 %110
  br label %195

195:                                              ; preds = %167, %168, %193, %188, %183, %178, %176, %171
  %196 = phi ptr [ %194, %193 ], [ %192, %188 ], [ %187, %183 ], [ %182, %178 ], [ %177, %176 ], [ %175, %171 ], [ %163, %168 ], [ %163, %167 ]
  %197 = and i64 %109, 1
  %198 = getelementptr inbounds i8, ptr %196, i64 %197
  %199 = icmp ult ptr %198, %61
  br i1 %199, label %69, label %203, !llvm.loop !73

200:                                              ; preds = %54
  %201 = icmp eq i32 %3, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %200
  call fastcc void @WriteTo8BimProfile(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %203

203:                                              ; preds = %195, %69, %73, %92, %57, %19, %202, %200
  %204 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.15, ptr noundef %1) #4
  %205 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SyncImageProfiles(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x i8], align 1
  %3 = alloca [2 x i8], align 1
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4 x i8], align 1
  %7 = alloca [4 x i8], align 1
  %8 = alloca [4 x i8], align 1
  %9 = alloca [4 x i8], align 1
  %10 = alloca [4 x i8], align 1
  %11 = alloca [4 x i8], align 1
  %12 = alloca [16 x %struct._DirectoryInfo], align 16
  %13 = alloca [2 x i8], align 1
  %14 = alloca [4 x i8], align 1
  %15 = alloca [4 x i8], align 1
  %16 = alloca [2 x i8], align 1
  %17 = alloca [4 x i8], align 1
  %18 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #4
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %20 = load i32, ptr %19, align 8, !tbaa !34
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %24 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %23) #4
  br label %25

25:                                               ; preds = %22, %1
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull @.str.11, i64 noundef 4096) #4
  %31 = load ptr, ptr %26, align 8, !tbaa !57
  %32 = call ptr @GetValueFromSplayTree(ptr noundef %31, ptr noundef nonnull %5) #4
  br label %33

33:                                               ; preds = %25, %29
  %34 = phi ptr [ %32, %29 ], [ null, %25 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %249, label %36

36:                                               ; preds = %33
  %37 = call i64 @GetStringInfoLength(ptr noundef nonnull %34) #4
  %38 = call ptr @GetStringInfoDatum(ptr noundef nonnull %34) #4
  %39 = icmp eq i64 %37, 0
  br i1 %39, label %246, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  %43 = getelementptr inbounds [4 x i8], ptr %17, i64 0, i64 1
  %44 = getelementptr inbounds [4 x i8], ptr %17, i64 0, i64 2
  %45 = getelementptr inbounds [4 x i8], ptr %17, i64 0, i64 3
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  %47 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 1
  %48 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 2
  %49 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 3
  %50 = getelementptr inbounds [2 x i8], ptr %16, i64 0, i64 1
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  %52 = getelementptr inbounds [4 x i8], ptr %14, i64 0, i64 1
  %53 = getelementptr inbounds [4 x i8], ptr %14, i64 0, i64 2
  %54 = getelementptr inbounds [4 x i8], ptr %14, i64 0, i64 3
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  %56 = getelementptr inbounds [4 x i8], ptr %15, i64 0, i64 1
  %57 = getelementptr inbounds [4 x i8], ptr %15, i64 0, i64 2
  %58 = getelementptr inbounds [4 x i8], ptr %15, i64 0, i64 3
  %59 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 1
  br label %60

60:                                               ; preds = %40, %68
  %61 = phi i1 [ %39, %40 ], [ %71, %68 ]
  %62 = phi ptr [ %38, %40 ], [ %70, %68 ]
  %63 = phi i64 [ %37, %40 ], [ %69, %68 ]
  %64 = getelementptr inbounds i8, ptr %62, i64 1
  %65 = load i8, ptr %62, align 1, !tbaa !58
  %66 = add i64 %63, -1
  %67 = icmp eq i8 %65, 56
  br i1 %67, label %72, label %68

68:                                               ; preds = %60, %79, %91, %103, %243
  %69 = phi i64 [ %245, %243 ], [ %104, %103 ], [ %92, %91 ], [ %80, %79 ], [ %66, %60 ]
  %70 = phi ptr [ %244, %243 ], [ %105, %103 ], [ %93, %91 ], [ %81, %79 ], [ %64, %60 ]
  %71 = icmp eq i64 %69, 0
  br i1 %71, label %246, label %60, !llvm.loop !74

72:                                               ; preds = %60
  %73 = icmp eq i64 %66, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds i8, ptr %62, i64 2
  %76 = load i8, ptr %64, align 1, !tbaa !58
  %77 = zext i8 %76 to i32
  %78 = add i64 %63, -2
  br label %79

79:                                               ; preds = %74, %72
  %80 = phi i64 [ %66, %72 ], [ %78, %74 ]
  %81 = phi ptr [ %64, %72 ], [ %75, %74 ]
  %82 = phi i32 [ -1, %72 ], [ %77, %74 ]
  %83 = icmp eq i32 %82, 66
  br i1 %83, label %84, label %68

84:                                               ; preds = %79
  %85 = icmp eq i64 %80, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds i8, ptr %81, i64 1
  %88 = load i8, ptr %81, align 1, !tbaa !58
  %89 = zext i8 %88 to i32
  %90 = add i64 %80, -1
  br label %91

91:                                               ; preds = %86, %84
  %92 = phi i64 [ %80, %84 ], [ %90, %86 ]
  %93 = phi ptr [ %81, %84 ], [ %87, %86 ]
  %94 = phi i32 [ -1, %84 ], [ %89, %86 ]
  %95 = icmp eq i32 %94, 73
  br i1 %95, label %96, label %68

96:                                               ; preds = %91
  %97 = icmp eq i64 %92, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds i8, ptr %93, i64 1
  %100 = load i8, ptr %93, align 1, !tbaa !58
  %101 = zext i8 %100 to i32
  %102 = add i64 %92, -1
  br label %103

103:                                              ; preds = %98, %96
  %104 = phi i64 [ %92, %96 ], [ %102, %98 ]
  %105 = phi ptr [ %93, %96 ], [ %99, %98 ]
  %106 = phi i32 [ -1, %96 ], [ %101, %98 ]
  %107 = icmp eq i32 %106, 77
  br i1 %107, label %108, label %68

108:                                              ; preds = %103
  %109 = icmp ult i64 %104, 7
  br i1 %109, label %246, label %110

110:                                              ; preds = %108
  %111 = load i8, ptr %105, align 1, !tbaa !58
  %112 = zext i8 %111 to i16
  %113 = shl nuw i16 %112, 8
  %114 = getelementptr inbounds i8, ptr %105, i64 1
  %115 = load i8, ptr %114, align 1, !tbaa !58
  %116 = zext i8 %115 to i16
  %117 = or disjoint i16 %113, %116
  %118 = add i64 %104, -2
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %110
  %121 = getelementptr inbounds i8, ptr %105, i64 2
  %122 = load i8, ptr %121, align 1, !tbaa !58
  %123 = zext i8 %122 to i64
  %124 = add i64 %104, -3
  br label %125

125:                                              ; preds = %120, %110
  %126 = phi i64 [ %118, %110 ], [ %124, %120 ]
  %127 = phi i64 [ 2, %110 ], [ 3, %120 ]
  %128 = phi i64 [ -1, %110 ], [ %123, %120 ]
  %129 = icmp ult i64 %126, %128
  br i1 %129, label %246, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds i8, ptr %105, i64 %127
  %132 = getelementptr inbounds i8, ptr %131, i64 %128
  %133 = load i8, ptr %132, align 1, !tbaa !58
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  %136 = zext nneg i8 %135 to i64
  %137 = getelementptr inbounds i8, ptr %132, i64 %136
  %138 = icmp ult i64 %126, 4
  br i1 %138, label %159, label %139

139:                                              ; preds = %130
  %140 = load i8, ptr %137, align 1, !tbaa !58
  %141 = zext i8 %140 to i64
  %142 = shl nuw nsw i64 %141, 24
  %143 = getelementptr inbounds i8, ptr %137, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !58
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 16
  %147 = or disjoint i64 %146, %142
  %148 = getelementptr inbounds i8, ptr %137, i64 2
  %149 = load i8, ptr %148, align 1, !tbaa !58
  %150 = zext i8 %149 to i64
  %151 = shl nuw nsw i64 %150, 8
  %152 = or disjoint i64 %147, %151
  %153 = getelementptr inbounds i8, ptr %137, i64 3
  %154 = load i8, ptr %153, align 1, !tbaa !58
  %155 = zext i8 %154 to i64
  %156 = or disjoint i64 %152, %155
  %157 = add i64 %126, -4
  %158 = getelementptr inbounds i8, ptr %137, i64 4
  br label %159

159:                                              ; preds = %139, %130
  %160 = phi i64 [ %126, %130 ], [ %157, %139 ]
  %161 = phi ptr [ %137, %130 ], [ %158, %139 ]
  %162 = phi i64 [ 0, %130 ], [ %156, %139 ]
  %163 = icmp ugt i64 %162, %160
  br i1 %163, label %246, label %164

164:                                              ; preds = %159
  %165 = icmp eq i16 %117, 1005
  %166 = icmp eq i64 %162, 16
  %167 = and i1 %165, %166
  br i1 %167, label %168, label %243

168:                                              ; preds = %164
  %169 = load i32, ptr %41, align 8, !tbaa !72
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %185

171:                                              ; preds = %168
  %172 = load double, ptr %46, align 8, !tbaa !70
  %173 = fmul double %172, 2.540000e+00
  %174 = fmul double %173, 6.553600e+04
  %175 = fptoui double %174 to i32
  %176 = zext i32 %175 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #4
  %177 = lshr i64 %176, 24
  %178 = trunc i64 %177 to i8
  store i8 %178, ptr %18, align 1, !tbaa !58
  %179 = lshr i64 %176, 16
  %180 = trunc i64 %179 to i8
  store i8 %180, ptr %47, align 1, !tbaa !58
  %181 = lshr i64 %176, 8
  %182 = trunc i64 %181 to i8
  store i8 %182, ptr %48, align 1, !tbaa !58
  %183 = trunc i32 %175 to i8
  store i8 %183, ptr %49, align 1, !tbaa !58
  %184 = call ptr @CopyMagickMemory(ptr noundef %161, ptr noundef nonnull %18, i64 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #4
  br label %198

185:                                              ; preds = %168
  %186 = load double, ptr %42, align 8, !tbaa !70
  %187 = fmul double %186, 6.553600e+04
  %188 = fptoui double %187 to i32
  %189 = zext i32 %188 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #4
  %190 = lshr i64 %189, 24
  %191 = trunc i64 %190 to i8
  store i8 %191, ptr %17, align 1, !tbaa !58
  %192 = lshr i64 %189, 16
  %193 = trunc i64 %192 to i8
  store i8 %193, ptr %43, align 1, !tbaa !58
  %194 = lshr i64 %189, 8
  %195 = trunc i64 %194 to i8
  store i8 %195, ptr %44, align 1, !tbaa !58
  %196 = trunc i32 %188 to i8
  store i8 %196, ptr %45, align 1, !tbaa !58
  %197 = call ptr @CopyMagickMemory(ptr noundef %161, ptr noundef nonnull %17, i64 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #4
  br label %198

198:                                              ; preds = %185, %171
  %199 = load i32, ptr %41, align 8, !tbaa !72
  %200 = getelementptr inbounds i8, ptr %161, i64 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #4
  %201 = lshr i32 %199, 8
  %202 = trunc i32 %201 to i8
  store i8 %202, ptr %16, align 1, !tbaa !58
  %203 = trunc i32 %199 to i8
  store i8 %203, ptr %50, align 1, !tbaa !58
  %204 = call ptr @CopyMagickMemory(ptr noundef nonnull %200, ptr noundef nonnull %16, i64 noundef 2) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #4
  %205 = load i32, ptr %41, align 8, !tbaa !72
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %207, label %222

207:                                              ; preds = %198
  %208 = load double, ptr %55, align 8, !tbaa !71
  %209 = fmul double %208, 2.540000e+00
  %210 = fmul double %209, 6.553600e+04
  %211 = fptoui double %210 to i32
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i8, ptr %161, i64 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #4
  %214 = lshr i64 %212, 24
  %215 = trunc i64 %214 to i8
  store i8 %215, ptr %15, align 1, !tbaa !58
  %216 = lshr i64 %212, 16
  %217 = trunc i64 %216 to i8
  store i8 %217, ptr %56, align 1, !tbaa !58
  %218 = lshr i64 %212, 8
  %219 = trunc i64 %218 to i8
  store i8 %219, ptr %57, align 1, !tbaa !58
  %220 = trunc i32 %211 to i8
  store i8 %220, ptr %58, align 1, !tbaa !58
  %221 = call ptr @CopyMagickMemory(ptr noundef nonnull %213, ptr noundef nonnull %15, i64 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #4
  br label %236

222:                                              ; preds = %198
  %223 = load double, ptr %51, align 8, !tbaa !71
  %224 = fmul double %223, 6.553600e+04
  %225 = fptoui double %224 to i32
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i8, ptr %161, i64 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #4
  %228 = lshr i64 %226, 24
  %229 = trunc i64 %228 to i8
  store i8 %229, ptr %14, align 1, !tbaa !58
  %230 = lshr i64 %226, 16
  %231 = trunc i64 %230 to i8
  store i8 %231, ptr %52, align 1, !tbaa !58
  %232 = lshr i64 %226, 8
  %233 = trunc i64 %232 to i8
  store i8 %233, ptr %53, align 1, !tbaa !58
  %234 = trunc i32 %225 to i8
  store i8 %234, ptr %54, align 1, !tbaa !58
  %235 = call ptr @CopyMagickMemory(ptr noundef nonnull %227, ptr noundef nonnull %14, i64 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #4
  br label %236

236:                                              ; preds = %222, %207
  %237 = load i32, ptr %41, align 8, !tbaa !72
  %238 = getelementptr inbounds i8, ptr %161, i64 12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #4
  %239 = lshr i32 %237, 8
  %240 = trunc i32 %239 to i8
  store i8 %240, ptr %13, align 1, !tbaa !58
  %241 = trunc i32 %237 to i8
  store i8 %241, ptr %59, align 1, !tbaa !58
  %242 = call ptr @CopyMagickMemory(ptr noundef nonnull %238, ptr noundef nonnull %13, i64 noundef 2) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #4
  br label %243

243:                                              ; preds = %236, %164
  %244 = getelementptr inbounds i8, ptr %161, i64 %162
  %245 = sub i64 %160, %162
  br label %68

246:                                              ; preds = %159, %125, %108, %68, %36
  %247 = phi i1 [ %39, %36 ], [ %61, %159 ], [ %61, %125 ], [ %61, %108 ], [ %71, %68 ]
  %248 = zext i1 %247 to i32
  br label %249

249:                                              ; preds = %246, %33
  %250 = phi i32 [ 1, %33 ], [ %248, %246 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #4
  %251 = load i32, ptr %19, align 8, !tbaa !34
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %255 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %254) #4
  br label %256

256:                                              ; preds = %253, %249
  %257 = load ptr, ptr %26, align 8, !tbaa !57
  %258 = icmp eq ptr %257, null
  br i1 %258, label %263, label %259

259:                                              ; preds = %256
  %260 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.12, i64 noundef 4096) #4
  %261 = load ptr, ptr %26, align 8, !tbaa !57
  %262 = call ptr @GetValueFromSplayTree(ptr noundef %261, ptr noundef nonnull %4) #4
  br label %263

263:                                              ; preds = %256, %259
  %264 = phi ptr [ %262, %259 ], [ null, %256 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %880, label %266

266:                                              ; preds = %263
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %12) #4
  %267 = call i64 @GetStringInfoLength(ptr noundef nonnull %264) #4
  %268 = call ptr @GetStringInfoDatum(ptr noundef nonnull %264) #4
  %269 = icmp ult i64 %267, 16
  br i1 %269, label %878, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds i8, ptr %268, i64 1
  %272 = load i8, ptr %271, align 1, !tbaa !58
  %273 = zext i8 %272 to i16
  %274 = shl nuw i16 %273, 8
  %275 = load i8, ptr %268, align 1, !tbaa !58
  %276 = zext i8 %275 to i16
  %277 = or disjoint i16 %274, %276
  switch i16 %277, label %282 [
    i16 19789, label %373
    i16 18761, label %373
  ]

278:                                              ; preds = %291, %303, %315, %327, %339
  %279 = phi i64 [ %292, %291 ], [ %304, %303 ], [ %316, %315 ], [ %328, %327 ], [ %340, %339 ]
  %280 = phi ptr [ %293, %291 ], [ %305, %303 ], [ %317, %315 ], [ %329, %327 ], [ %341, %339 ]
  %281 = icmp eq i64 %279, 0
  br i1 %281, label %361, label %358

282:                                              ; preds = %270, %358
  %283 = phi i64 [ %359, %358 ], [ %267, %270 ]
  %284 = phi ptr [ %360, %358 ], [ %268, %270 ]
  %285 = icmp eq i64 %283, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %282
  %287 = getelementptr inbounds i8, ptr %284, i64 1
  %288 = load i8, ptr %284, align 1, !tbaa !58
  %289 = zext i8 %288 to i32
  %290 = add i64 %283, -1
  br label %291

291:                                              ; preds = %286, %282
  %292 = phi i64 [ %283, %282 ], [ %290, %286 ]
  %293 = phi ptr [ %284, %282 ], [ %287, %286 ]
  %294 = phi i32 [ -1, %282 ], [ %289, %286 ]
  %295 = icmp eq i32 %294, 69
  br i1 %295, label %296, label %278, !llvm.loop !75

296:                                              ; preds = %291
  %297 = icmp eq i64 %292, 0
  br i1 %297, label %303, label %298

298:                                              ; preds = %296
  %299 = getelementptr inbounds i8, ptr %293, i64 1
  %300 = load i8, ptr %293, align 1, !tbaa !58
  %301 = zext i8 %300 to i32
  %302 = add i64 %292, -1
  br label %303

303:                                              ; preds = %298, %296
  %304 = phi i64 [ %292, %296 ], [ %302, %298 ]
  %305 = phi ptr [ %293, %296 ], [ %299, %298 ]
  %306 = phi i32 [ -1, %296 ], [ %301, %298 ]
  %307 = icmp eq i32 %306, 120
  br i1 %307, label %308, label %278, !llvm.loop !75

308:                                              ; preds = %303
  %309 = icmp eq i64 %304, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %308
  %311 = getelementptr inbounds i8, ptr %305, i64 1
  %312 = load i8, ptr %305, align 1, !tbaa !58
  %313 = zext i8 %312 to i32
  %314 = add i64 %304, -1
  br label %315

315:                                              ; preds = %310, %308
  %316 = phi i64 [ %304, %308 ], [ %314, %310 ]
  %317 = phi ptr [ %305, %308 ], [ %311, %310 ]
  %318 = phi i32 [ -1, %308 ], [ %313, %310 ]
  %319 = icmp eq i32 %318, 105
  br i1 %319, label %320, label %278, !llvm.loop !75

320:                                              ; preds = %315
  %321 = icmp eq i64 %316, 0
  br i1 %321, label %327, label %322

322:                                              ; preds = %320
  %323 = getelementptr inbounds i8, ptr %317, i64 1
  %324 = load i8, ptr %317, align 1, !tbaa !58
  %325 = zext i8 %324 to i32
  %326 = add i64 %316, -1
  br label %327

327:                                              ; preds = %322, %320
  %328 = phi i64 [ %316, %320 ], [ %326, %322 ]
  %329 = phi ptr [ %317, %320 ], [ %323, %322 ]
  %330 = phi i32 [ -1, %320 ], [ %325, %322 ]
  %331 = icmp eq i32 %330, 102
  br i1 %331, label %332, label %278, !llvm.loop !75

332:                                              ; preds = %327
  %333 = icmp eq i64 %328, 0
  br i1 %333, label %339, label %334

334:                                              ; preds = %332
  %335 = getelementptr inbounds i8, ptr %329, i64 1
  %336 = load i8, ptr %329, align 1, !tbaa !58
  %337 = zext i8 %336 to i32
  %338 = add i64 %328, -1
  br label %339

339:                                              ; preds = %334, %332
  %340 = phi i64 [ %328, %332 ], [ %338, %334 ]
  %341 = phi ptr [ %329, %332 ], [ %335, %334 ]
  %342 = phi i32 [ -1, %332 ], [ %337, %334 ]
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %278, !llvm.loop !75

344:                                              ; preds = %339
  %345 = icmp eq i64 %340, 0
  br i1 %345, label %351, label %346

346:                                              ; preds = %344
  %347 = getelementptr inbounds i8, ptr %341, i64 1
  %348 = load i8, ptr %341, align 1, !tbaa !58
  %349 = zext i8 %348 to i32
  %350 = add i64 %340, -1
  br label %351

351:                                              ; preds = %346, %344
  %352 = phi i64 [ %340, %344 ], [ %350, %346 ]
  %353 = phi ptr [ %341, %344 ], [ %347, %346 ]
  %354 = phi i32 [ -1, %344 ], [ %349, %346 ]
  %355 = icmp ne i32 %354, 0
  %356 = icmp ne i64 %352, 0
  %357 = select i1 %355, i1 %356, i1 false
  br i1 %357, label %358, label %361

358:                                              ; preds = %351, %278
  %359 = phi i64 [ %352, %351 ], [ %279, %278 ]
  %360 = phi ptr [ %353, %351 ], [ %280, %278 ]
  br label %282, !llvm.loop !75

361:                                              ; preds = %278, %351
  %362 = phi i64 [ %352, %351 ], [ %279, %278 ]
  %363 = phi ptr [ %353, %351 ], [ %280, %278 ]
  %364 = icmp ult i64 %362, 16
  br i1 %364, label %878, label %365

365:                                              ; preds = %361
  %366 = getelementptr inbounds i8, ptr %363, i64 1
  %367 = load i8, ptr %366, align 1, !tbaa !58
  %368 = zext i8 %367 to i16
  %369 = shl nuw i16 %368, 8
  %370 = load i8, ptr %363, align 1, !tbaa !58
  %371 = zext i8 %370 to i16
  %372 = or disjoint i16 %369, %371
  br label %373

373:                                              ; preds = %365, %270, %270
  %374 = phi i64 [ %362, %365 ], [ %267, %270 ], [ %267, %270 ]
  %375 = phi ptr [ %363, %365 ], [ %268, %270 ], [ %268, %270 ]
  %376 = phi i16 [ %372, %365 ], [ %277, %270 ], [ %277, %270 ]
  switch i16 %376, label %878 [
    i16 18761, label %378
    i16 19789, label %377
  ]

377:                                              ; preds = %373
  br label %378

378:                                              ; preds = %377, %373
  %379 = phi i1 [ false, %377 ], [ true, %373 ]
  %380 = getelementptr inbounds i8, ptr %375, i64 2
  %381 = getelementptr inbounds i8, ptr %375, i64 3
  %382 = getelementptr inbounds i8, ptr %375, i64 3
  %383 = select i1 %379, ptr %380, ptr %381
  %384 = select i1 %379, ptr %382, ptr %380
  %385 = load i8, ptr %384, align 1, !tbaa !58
  %386 = zext i8 %385 to i16
  %387 = shl nuw i16 %386, 8
  %388 = load i8, ptr %383, align 1, !tbaa !58
  %389 = zext i8 %388 to i16
  %390 = or disjoint i16 %387, %389
  %391 = icmp eq i16 %390, 42
  br i1 %391, label %392, label %878

392:                                              ; preds = %378
  %393 = getelementptr inbounds i8, ptr %375, i64 4
  br i1 %379, label %394, label %409

394:                                              ; preds = %392
  %395 = getelementptr inbounds i8, ptr %375, i64 7
  %396 = load i8, ptr %395, align 1, !tbaa !58
  %397 = zext i8 %396 to i64
  %398 = shl nuw nsw i64 %397, 24
  %399 = getelementptr inbounds i8, ptr %375, i64 6
  %400 = load i8, ptr %399, align 1, !tbaa !58
  %401 = zext i8 %400 to i64
  %402 = shl nuw nsw i64 %401, 16
  %403 = or disjoint i64 %402, %398
  %404 = getelementptr inbounds i8, ptr %375, i64 5
  %405 = load i8, ptr %404, align 1, !tbaa !58
  %406 = zext i8 %405 to i64
  %407 = shl nuw nsw i64 %406, 8
  %408 = or disjoint i64 %403, %407
  br label %424

409:                                              ; preds = %392
  %410 = load i8, ptr %393, align 1, !tbaa !58
  %411 = zext i8 %410 to i64
  %412 = shl nuw nsw i64 %411, 24
  %413 = getelementptr inbounds i8, ptr %375, i64 5
  %414 = load i8, ptr %413, align 1, !tbaa !58
  %415 = zext i8 %414 to i64
  %416 = shl nuw nsw i64 %415, 16
  %417 = or disjoint i64 %416, %412
  %418 = getelementptr inbounds i8, ptr %375, i64 6
  %419 = load i8, ptr %418, align 1, !tbaa !58
  %420 = zext i8 %419 to i64
  %421 = shl nuw nsw i64 %420, 8
  %422 = or disjoint i64 %417, %421
  %423 = getelementptr inbounds i8, ptr %375, i64 7
  br label %424

424:                                              ; preds = %409, %394
  %425 = phi ptr [ %423, %409 ], [ %393, %394 ]
  %426 = phi i64 [ %422, %409 ], [ %408, %394 ]
  %427 = load i8, ptr %425, align 1, !tbaa !58
  %428 = zext i8 %427 to i64
  %429 = or disjoint i64 %426, %428
  %430 = shl nuw i64 %429, 32
  %431 = ashr exact i64 %430, 32
  %432 = icmp sgt i64 %431, -1
  %433 = icmp ult i64 %431, %374
  %434 = select i1 %432, i1 %433, i1 false
  br i1 %434, label %435, label %878

435:                                              ; preds = %424
  %436 = getelementptr inbounds i8, ptr %375, i64 %431
  %437 = call ptr @NewSplayTree(ptr noundef null, ptr noundef null, ptr noundef null) #4
  %438 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  %439 = getelementptr inbounds [2 x i8], ptr %2, i64 0, i64 1
  %440 = getelementptr inbounds [2 x i8], ptr %2, i64 0, i64 1
  %441 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  %442 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %443 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2
  %444 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3
  %445 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %446 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2
  %447 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3
  %448 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 4
  %449 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  %450 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  %451 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 4
  %452 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 1
  %453 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 2
  %454 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 3
  %455 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 1
  %456 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 2
  %457 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 3
  %458 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  %459 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 1
  %460 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 2
  %461 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %462 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 1
  %463 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 2
  %464 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %465 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 1
  %466 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 2
  %467 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  %468 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 1
  %469 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 2
  %470 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  %471 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  %472 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 1
  %473 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 2
  %474 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 3
  %475 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 1
  %476 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 2
  %477 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 3
  %478 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 1
  %479 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 2
  %480 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  %481 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 1
  %482 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 2
  %483 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  %484 = getelementptr inbounds i8, ptr %375, i64 %374
  %485 = select i1 %379, i64 3, i64 0
  %486 = select i1 %379, i64 2, i64 1
  %487 = select i1 %379, i64 1, i64 2
  %488 = select i1 %379, i64 0, i64 3
  br label %489

489:                                              ; preds = %871, %435
  %490 = phi ptr [ %436, %435 ], [ %502, %871 ]
  %491 = phi ptr [ undef, %435 ], [ %872, %871 ]
  %492 = phi i64 [ 0, %435 ], [ %873, %871 ]
  %493 = phi i64 [ 0, %435 ], [ %874, %871 ]
  %494 = icmp eq i64 %492, 0
  br i1 %494, label %501, label %495

495:                                              ; preds = %489
  %496 = add nsw i64 %492, -1
  %497 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %12, i64 0, i64 %496
  %498 = load ptr, ptr %497, align 16, !tbaa !76
  %499 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %12, i64 0, i64 %496, i32 1
  %500 = load i64, ptr %499, align 8, !tbaa !78
  br label %501

501:                                              ; preds = %495, %489
  %502 = phi ptr [ %498, %495 ], [ %490, %489 ]
  %503 = phi i64 [ %496, %495 ], [ 0, %489 ]
  %504 = phi i64 [ %500, %495 ], [ %493, %489 ]
  %505 = getelementptr inbounds i8, ptr %502, i64 1
  %506 = getelementptr inbounds i8, ptr %502, i64 1
  %507 = select i1 %379, ptr %502, ptr %505
  %508 = select i1 %379, ptr %506, ptr %502
  %509 = load i8, ptr %508, align 1, !tbaa !58
  %510 = zext i8 %509 to i64
  %511 = shl nuw nsw i64 %510, 8
  %512 = load i8, ptr %507, align 1, !tbaa !58
  %513 = zext i8 %512 to i64
  %514 = or disjoint i64 %511, %513
  %515 = icmp ult i64 %504, %514
  br i1 %515, label %516, label %871

516:                                              ; preds = %501
  %517 = getelementptr inbounds i8, ptr %502, i64 2
  %518 = mul nuw nsw i64 %514, 12
  %519 = getelementptr inbounds i8, ptr %517, i64 %518
  %520 = icmp ugt ptr %519, %484
  %521 = getelementptr inbounds i8, ptr %519, i64 %485
  %522 = getelementptr inbounds i8, ptr %519, i64 %486
  %523 = getelementptr inbounds i8, ptr %519, i64 %487
  %524 = getelementptr inbounds i8, ptr %519, i64 %488
  br label %525

525:                                              ; preds = %516, %868
  %526 = phi i64 [ %504, %516 ], [ %869, %868 ]
  %527 = phi i64 [ %503, %516 ], [ %866, %868 ]
  %528 = phi ptr [ %491, %516 ], [ %865, %868 ]
  %529 = mul nuw nsw i64 %526, 12
  %530 = getelementptr inbounds i8, ptr %517, i64 %529
  %531 = call ptr @GetValueFromSplayTree(ptr noundef %437, ptr noundef nonnull %530) #4
  %532 = icmp eq ptr %531, %530
  br i1 %532, label %863, label %533

533:                                              ; preds = %525
  %534 = call i32 @AddValueToSplayTree(ptr noundef %437, ptr noundef nonnull %530, ptr noundef nonnull %530) #4
  %535 = getelementptr inbounds i8, ptr %530, i64 1
  %536 = getelementptr inbounds i8, ptr %530, i64 1
  %537 = select i1 %379, ptr %530, ptr %535
  %538 = select i1 %379, ptr %536, ptr %530
  %539 = load i8, ptr %538, align 1, !tbaa !58
  %540 = zext i8 %539 to i16
  %541 = shl nuw i16 %540, 8
  %542 = load i8, ptr %537, align 1, !tbaa !58
  %543 = zext i8 %542 to i16
  %544 = or disjoint i16 %541, %543
  %545 = getelementptr inbounds i8, ptr %530, i64 2
  %546 = getelementptr inbounds i8, ptr %530, i64 3
  %547 = getelementptr inbounds i8, ptr %530, i64 3
  %548 = select i1 %379, ptr %545, ptr %546
  %549 = select i1 %379, ptr %547, ptr %545
  %550 = load i8, ptr %549, align 1, !tbaa !58
  %551 = zext i8 %550 to i16
  %552 = shl nuw i16 %551, 8
  %553 = load i8, ptr %548, align 1, !tbaa !58
  %554 = zext i8 %553 to i16
  %555 = or disjoint i16 %552, %554
  %556 = icmp ugt i16 %555, 12
  br i1 %556, label %863, label %557

557:                                              ; preds = %533
  %558 = zext nneg i16 %555 to i64
  %559 = getelementptr inbounds i8, ptr %530, i64 4
  br i1 %379, label %560, label %575

560:                                              ; preds = %557
  %561 = getelementptr inbounds i8, ptr %530, i64 7
  %562 = load i8, ptr %561, align 1, !tbaa !58
  %563 = zext i8 %562 to i64
  %564 = shl nuw nsw i64 %563, 24
  %565 = getelementptr inbounds i8, ptr %530, i64 6
  %566 = load i8, ptr %565, align 1, !tbaa !58
  %567 = zext i8 %566 to i64
  %568 = shl nuw nsw i64 %567, 16
  %569 = or disjoint i64 %568, %564
  %570 = getelementptr inbounds i8, ptr %530, i64 5
  %571 = load i8, ptr %570, align 1, !tbaa !58
  %572 = zext i8 %571 to i64
  %573 = shl nuw nsw i64 %572, 8
  %574 = or disjoint i64 %569, %573
  br label %590

575:                                              ; preds = %557
  %576 = load i8, ptr %559, align 1, !tbaa !58
  %577 = zext i8 %576 to i64
  %578 = shl nuw nsw i64 %577, 24
  %579 = getelementptr inbounds i8, ptr %530, i64 5
  %580 = load i8, ptr %579, align 1, !tbaa !58
  %581 = zext i8 %580 to i64
  %582 = shl nuw nsw i64 %581, 16
  %583 = or disjoint i64 %582, %578
  %584 = getelementptr inbounds i8, ptr %530, i64 6
  %585 = load i8, ptr %584, align 1, !tbaa !58
  %586 = zext i8 %585 to i64
  %587 = shl nuw nsw i64 %586, 8
  %588 = or disjoint i64 %583, %587
  %589 = getelementptr inbounds i8, ptr %530, i64 7
  br label %590

590:                                              ; preds = %575, %560
  %591 = phi ptr [ %589, %575 ], [ %559, %560 ]
  %592 = phi i64 [ %588, %575 ], [ %574, %560 ]
  %593 = load i8, ptr %591, align 1, !tbaa !58
  %594 = zext i8 %593 to i64
  %595 = or disjoint i64 %592, %594
  %596 = shl nuw i64 %595, 32
  %597 = ashr exact i64 %596, 32
  %598 = getelementptr inbounds [13 x i32], ptr @SyncExifProfile.format_bytes, i64 0, i64 %558
  %599 = load i32, ptr %598, align 4, !tbaa !66
  %600 = sext i32 %599 to i64
  %601 = mul nsw i64 %597, %600
  %602 = icmp slt i64 %601, %597
  br i1 %602, label %863, label %603

603:                                              ; preds = %590
  %604 = icmp ult i64 %601, 5
  %605 = getelementptr inbounds i8, ptr %530, i64 8
  br i1 %604, label %651, label %606

606:                                              ; preds = %603
  br i1 %379, label %607, label %622

607:                                              ; preds = %606
  %608 = getelementptr inbounds i8, ptr %530, i64 11
  %609 = load i8, ptr %608, align 1, !tbaa !58
  %610 = zext i8 %609 to i64
  %611 = shl nuw nsw i64 %610, 24
  %612 = getelementptr inbounds i8, ptr %530, i64 10
  %613 = load i8, ptr %612, align 1, !tbaa !58
  %614 = zext i8 %613 to i64
  %615 = shl nuw nsw i64 %614, 16
  %616 = or disjoint i64 %615, %611
  %617 = getelementptr inbounds i8, ptr %530, i64 9
  %618 = load i8, ptr %617, align 1, !tbaa !58
  %619 = zext i8 %618 to i64
  %620 = shl nuw nsw i64 %619, 8
  %621 = or disjoint i64 %616, %620
  br label %637

622:                                              ; preds = %606
  %623 = load i8, ptr %605, align 1, !tbaa !58
  %624 = zext i8 %623 to i64
  %625 = shl nuw nsw i64 %624, 24
  %626 = getelementptr inbounds i8, ptr %530, i64 9
  %627 = load i8, ptr %626, align 1, !tbaa !58
  %628 = zext i8 %627 to i64
  %629 = shl nuw nsw i64 %628, 16
  %630 = or disjoint i64 %629, %625
  %631 = getelementptr inbounds i8, ptr %530, i64 10
  %632 = load i8, ptr %631, align 1, !tbaa !58
  %633 = zext i8 %632 to i64
  %634 = shl nuw nsw i64 %633, 8
  %635 = or disjoint i64 %630, %634
  %636 = getelementptr inbounds i8, ptr %530, i64 11
  br label %637

637:                                              ; preds = %622, %607
  %638 = phi ptr [ %636, %622 ], [ %605, %607 ]
  %639 = phi i64 [ %635, %622 ], [ %621, %607 ]
  %640 = load i8, ptr %638, align 1, !tbaa !58
  %641 = zext i8 %640 to i64
  %642 = or disjoint i64 %639, %641
  %643 = shl nuw i64 %642, 32
  %644 = ashr exact i64 %643, 32
  %645 = icmp sgt i64 %601, -1
  %646 = add nsw i64 %644, %601
  %647 = icmp ule i64 %646, %374
  %648 = select i1 %645, i1 %647, i1 false
  %649 = getelementptr inbounds i8, ptr %375, i64 %644
  %650 = select i1 %648, ptr %649, ptr %528
  br i1 %648, label %651, label %863

651:                                              ; preds = %603, %637
  %652 = phi ptr [ %650, %637 ], [ %605, %603 ]
  switch i16 %544, label %863 [
    i16 282, label %653
    i16 283, label %681
    i16 274, label %709
    i16 296, label %745
    i16 -24571, label %785
    i16 -30871, label %785
  ]

653:                                              ; preds = %651
  %654 = load double, ptr %471, align 8, !tbaa !70
  %655 = fadd double %654, 5.000000e-01
  %656 = fptoui double %655 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #4
  br i1 %379, label %657, label %664

657:                                              ; preds = %653
  %658 = trunc i64 %656 to i8
  store i8 %658, ptr %11, align 1, !tbaa !58
  %659 = lshr i64 %656, 8
  %660 = trunc i64 %659 to i8
  store i8 %660, ptr %475, align 1, !tbaa !58
  %661 = lshr i64 %656, 16
  %662 = trunc i64 %661 to i8
  store i8 %662, ptr %476, align 1, !tbaa !58
  %663 = lshr i64 %656, 24
  br label %671

664:                                              ; preds = %653
  %665 = lshr i64 %656, 24
  %666 = trunc i64 %665 to i8
  store i8 %666, ptr %11, align 1, !tbaa !58
  %667 = lshr i64 %656, 16
  %668 = trunc i64 %667 to i8
  store i8 %668, ptr %472, align 1, !tbaa !58
  %669 = lshr i64 %656, 8
  %670 = trunc i64 %669 to i8
  store i8 %670, ptr %473, align 1, !tbaa !58
  br label %671

671:                                              ; preds = %664, %657
  %672 = phi i64 [ %656, %664 ], [ %663, %657 ]
  %673 = phi ptr [ %474, %664 ], [ %477, %657 ]
  %674 = trunc i64 %672 to i8
  store i8 %674, ptr %673, align 1, !tbaa !58
  %675 = call ptr @CopyMagickMemory(ptr noundef %652, ptr noundef nonnull %11, i64 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #4
  %676 = getelementptr inbounds i8, ptr %652, i64 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #4
  br i1 %379, label %677, label %678

677:                                              ; preds = %671
  store i8 1, ptr %10, align 1, !tbaa !58
  store i8 0, ptr %481, align 1, !tbaa !58
  store i8 0, ptr %482, align 1, !tbaa !58
  store i8 0, ptr %483, align 1, !tbaa !58
  br label %679

678:                                              ; preds = %671
  store i8 0, ptr %10, align 1, !tbaa !58
  store i8 0, ptr %478, align 1, !tbaa !58
  store i8 0, ptr %479, align 1, !tbaa !58
  store i8 1, ptr %480, align 1, !tbaa !58
  br label %679

679:                                              ; preds = %678, %677
  %680 = call ptr @CopyMagickMemory(ptr noundef nonnull %676, ptr noundef nonnull %10, i64 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #4
  br label %784

681:                                              ; preds = %651
  %682 = load double, ptr %458, align 8, !tbaa !71
  %683 = fadd double %682, 5.000000e-01
  %684 = fptoui double %683 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  br i1 %379, label %685, label %692

685:                                              ; preds = %681
  %686 = trunc i64 %684 to i8
  store i8 %686, ptr %9, align 1, !tbaa !58
  %687 = lshr i64 %684, 8
  %688 = trunc i64 %687 to i8
  store i8 %688, ptr %462, align 1, !tbaa !58
  %689 = lshr i64 %684, 16
  %690 = trunc i64 %689 to i8
  store i8 %690, ptr %463, align 1, !tbaa !58
  %691 = lshr i64 %684, 24
  br label %699

692:                                              ; preds = %681
  %693 = lshr i64 %684, 24
  %694 = trunc i64 %693 to i8
  store i8 %694, ptr %9, align 1, !tbaa !58
  %695 = lshr i64 %684, 16
  %696 = trunc i64 %695 to i8
  store i8 %696, ptr %459, align 1, !tbaa !58
  %697 = lshr i64 %684, 8
  %698 = trunc i64 %697 to i8
  store i8 %698, ptr %460, align 1, !tbaa !58
  br label %699

699:                                              ; preds = %692, %685
  %700 = phi i64 [ %684, %692 ], [ %691, %685 ]
  %701 = phi ptr [ %461, %692 ], [ %464, %685 ]
  %702 = trunc i64 %700 to i8
  store i8 %702, ptr %701, align 1, !tbaa !58
  %703 = call ptr @CopyMagickMemory(ptr noundef %652, ptr noundef nonnull %9, i64 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  %704 = getelementptr inbounds i8, ptr %652, i64 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  br i1 %379, label %705, label %706

705:                                              ; preds = %699
  store i8 1, ptr %8, align 1, !tbaa !58
  store i8 0, ptr %468, align 1, !tbaa !58
  store i8 0, ptr %469, align 1, !tbaa !58
  store i8 0, ptr %470, align 1, !tbaa !58
  br label %707

706:                                              ; preds = %699
  store i8 0, ptr %8, align 1, !tbaa !58
  store i8 0, ptr %465, align 1, !tbaa !58
  store i8 0, ptr %466, align 1, !tbaa !58
  store i8 1, ptr %467, align 1, !tbaa !58
  br label %707

707:                                              ; preds = %706, %705
  %708 = call ptr @CopyMagickMemory(ptr noundef nonnull %704, ptr noundef nonnull %8, i64 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  br label %784

709:                                              ; preds = %651
  %710 = icmp eq i64 %601, 4
  br i1 %710, label %711, label %732

711:                                              ; preds = %709
  %712 = load i32, ptr %451, align 8, !tbaa !79
  %713 = zext i32 %712 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  br i1 %379, label %714, label %722

714:                                              ; preds = %711
  %715 = trunc i32 %712 to i8
  store i8 %715, ptr %7, align 1, !tbaa !58
  %716 = lshr i64 %713, 8
  %717 = trunc i64 %716 to i8
  store i8 %717, ptr %455, align 1, !tbaa !58
  %718 = lshr i64 %713, 16
  %719 = trunc i64 %718 to i8
  store i8 %719, ptr %456, align 1, !tbaa !58
  %720 = lshr i64 %713, 24
  %721 = trunc i64 %720 to i8
  store i8 %721, ptr %457, align 1, !tbaa !58
  br label %730

722:                                              ; preds = %711
  %723 = lshr i64 %713, 24
  %724 = trunc i64 %723 to i8
  store i8 %724, ptr %7, align 1, !tbaa !58
  %725 = lshr i64 %713, 16
  %726 = trunc i64 %725 to i8
  store i8 %726, ptr %452, align 1, !tbaa !58
  %727 = lshr i64 %713, 8
  %728 = trunc i64 %727 to i8
  store i8 %728, ptr %453, align 1, !tbaa !58
  %729 = trunc i32 %712 to i8
  store i8 %729, ptr %454, align 1, !tbaa !58
  br label %730

730:                                              ; preds = %722, %714
  %731 = call ptr @CopyMagickMemory(ptr noundef %652, ptr noundef nonnull %7, i64 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  br label %784

732:                                              ; preds = %709
  %733 = load i32, ptr %448, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  br i1 %379, label %734, label %737

734:                                              ; preds = %732
  %735 = trunc i32 %733 to i8
  store i8 %735, ptr %3, align 1, !tbaa !58
  %736 = lshr i32 %733, 8
  br label %740

737:                                              ; preds = %732
  %738 = lshr i32 %733, 8
  %739 = trunc i32 %738 to i8
  store i8 %739, ptr %3, align 1, !tbaa !58
  br label %740

740:                                              ; preds = %734, %737
  %741 = phi i32 [ %736, %734 ], [ %733, %737 ]
  %742 = phi ptr [ %450, %734 ], [ %449, %737 ]
  %743 = trunc i32 %741 to i8
  store i8 %743, ptr %742, align 1, !tbaa !58
  %744 = call ptr @CopyMagickMemory(ptr noundef %652, ptr noundef nonnull %3, i64 noundef 2) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  br label %784

745:                                              ; preds = %651
  %746 = icmp eq i64 %601, 4
  br i1 %746, label %747, label %769

747:                                              ; preds = %745
  %748 = load i32, ptr %441, align 8, !tbaa !72
  %749 = add i32 %748, 1
  %750 = zext i32 %749 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  br i1 %379, label %751, label %759

751:                                              ; preds = %747
  %752 = trunc i32 %749 to i8
  store i8 %752, ptr %6, align 1, !tbaa !58
  %753 = lshr i64 %750, 8
  %754 = trunc i64 %753 to i8
  store i8 %754, ptr %445, align 1, !tbaa !58
  %755 = lshr i64 %750, 16
  %756 = trunc i64 %755 to i8
  store i8 %756, ptr %446, align 1, !tbaa !58
  %757 = lshr i64 %750, 24
  %758 = trunc i64 %757 to i8
  store i8 %758, ptr %447, align 1, !tbaa !58
  br label %767

759:                                              ; preds = %747
  %760 = lshr i64 %750, 24
  %761 = trunc i64 %760 to i8
  store i8 %761, ptr %6, align 1, !tbaa !58
  %762 = lshr i64 %750, 16
  %763 = trunc i64 %762 to i8
  store i8 %763, ptr %442, align 1, !tbaa !58
  %764 = lshr i64 %750, 8
  %765 = trunc i64 %764 to i8
  store i8 %765, ptr %443, align 1, !tbaa !58
  %766 = trunc i32 %749 to i8
  store i8 %766, ptr %444, align 1, !tbaa !58
  br label %767

767:                                              ; preds = %759, %751
  %768 = call ptr @CopyMagickMemory(ptr noundef %652, ptr noundef nonnull %6, i64 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  br label %784

769:                                              ; preds = %745
  %770 = load i32, ptr %438, align 8, !tbaa !72
  %771 = trunc i32 %770 to i16
  %772 = add i16 %771, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  br i1 %379, label %773, label %776

773:                                              ; preds = %769
  %774 = trunc i16 %772 to i8
  store i8 %774, ptr %2, align 1, !tbaa !58
  %775 = lshr i16 %772, 8
  br label %779

776:                                              ; preds = %769
  %777 = lshr i16 %772, 8
  %778 = trunc i16 %777 to i8
  store i8 %778, ptr %2, align 1, !tbaa !58
  br label %779

779:                                              ; preds = %773, %776
  %780 = phi i16 [ %775, %773 ], [ %772, %776 ]
  %781 = phi ptr [ %440, %773 ], [ %439, %776 ]
  %782 = trunc i16 %780 to i8
  store i8 %782, ptr %781, align 1, !tbaa !58
  %783 = call ptr @CopyMagickMemory(ptr noundef %652, ptr noundef nonnull %2, i64 noundef 2) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  br label %784

784:                                              ; preds = %779, %767, %740, %730, %707, %679
  switch i16 %544, label %863 [
    i16 -24571, label %785
    i16 -30871, label %785
  ]

785:                                              ; preds = %784, %784, %651, %651
  br i1 %379, label %786, label %801

786:                                              ; preds = %785
  %787 = getelementptr inbounds i8, ptr %652, i64 3
  %788 = load i8, ptr %787, align 1, !tbaa !58
  %789 = zext i8 %788 to i64
  %790 = shl nuw nsw i64 %789, 24
  %791 = getelementptr inbounds i8, ptr %652, i64 2
  %792 = load i8, ptr %791, align 1, !tbaa !58
  %793 = zext i8 %792 to i64
  %794 = shl nuw nsw i64 %793, 16
  %795 = or disjoint i64 %794, %790
  %796 = getelementptr inbounds i8, ptr %652, i64 1
  %797 = load i8, ptr %796, align 1, !tbaa !58
  %798 = zext i8 %797 to i64
  %799 = shl nuw nsw i64 %798, 8
  %800 = or disjoint i64 %795, %799
  br label %816

801:                                              ; preds = %785
  %802 = load i8, ptr %652, align 1, !tbaa !58
  %803 = zext i8 %802 to i64
  %804 = shl nuw nsw i64 %803, 24
  %805 = getelementptr inbounds i8, ptr %652, i64 1
  %806 = load i8, ptr %805, align 1, !tbaa !58
  %807 = zext i8 %806 to i64
  %808 = shl nuw nsw i64 %807, 16
  %809 = or disjoint i64 %808, %804
  %810 = getelementptr inbounds i8, ptr %652, i64 2
  %811 = load i8, ptr %810, align 1, !tbaa !58
  %812 = zext i8 %811 to i64
  %813 = shl nuw nsw i64 %812, 8
  %814 = or disjoint i64 %809, %813
  %815 = getelementptr inbounds i8, ptr %652, i64 3
  br label %816

816:                                              ; preds = %801, %786
  %817 = phi ptr [ %815, %801 ], [ %652, %786 ]
  %818 = phi i64 [ %814, %801 ], [ %800, %786 ]
  %819 = load i8, ptr %817, align 1, !tbaa !58
  %820 = zext i8 %819 to i64
  %821 = or disjoint i64 %818, %820
  %822 = shl nuw i64 %821, 32
  %823 = ashr exact i64 %822, 32
  %824 = icmp ult i64 %823, %374
  %825 = icmp slt i64 %527, 14
  %826 = select i1 %824, i1 %825, i1 false
  br i1 %826, label %827, label %863

827:                                              ; preds = %816
  %828 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %12, i64 0, i64 %527
  store ptr %502, ptr %828, align 16, !tbaa !76
  %829 = add nuw nsw i64 %526, 1
  %830 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %12, i64 0, i64 %527, i32 1
  store i64 %829, ptr %830, align 8, !tbaa !78
  %831 = add nsw i64 %527, 1
  %832 = getelementptr inbounds i8, ptr %375, i64 %823
  %833 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %12, i64 0, i64 %831
  store ptr %832, ptr %833, align 16, !tbaa !76
  %834 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %12, i64 0, i64 %831, i32 1
  store i64 0, ptr %834, align 8, !tbaa !78
  %835 = add nsw i64 %527, 2
  br i1 %520, label %863, label %836

836:                                              ; preds = %827
  %837 = load i8, ptr %521, align 1, !tbaa !58
  %838 = zext i8 %837 to i64
  %839 = shl nuw nsw i64 %838, 24
  %840 = load i8, ptr %522, align 1, !tbaa !58
  %841 = zext i8 %840 to i64
  %842 = shl nuw nsw i64 %841, 16
  %843 = or disjoint i64 %842, %839
  %844 = load i8, ptr %523, align 1, !tbaa !58
  %845 = zext i8 %844 to i64
  %846 = shl nuw nsw i64 %845, 8
  %847 = or disjoint i64 %843, %846
  %848 = load i8, ptr %524, align 1, !tbaa !58
  %849 = zext i8 %848 to i64
  %850 = or disjoint i64 %847, %849
  %851 = shl nuw i64 %850, 32
  %852 = ashr exact i64 %851, 32
  %853 = icmp eq i64 %850, 0
  br i1 %853, label %863, label %854

854:                                              ; preds = %836
  %855 = icmp ult i64 %852, %374
  %856 = icmp slt i64 %527, 12
  %857 = select i1 %855, i1 %856, i1 false
  br i1 %857, label %858, label %863

858:                                              ; preds = %854
  %859 = getelementptr inbounds i8, ptr %375, i64 %852
  %860 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %12, i64 0, i64 %835
  store ptr %859, ptr %860, align 16, !tbaa !76
  %861 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %12, i64 0, i64 %835, i32 1
  store i64 0, ptr %861, align 8, !tbaa !78
  %862 = add nsw i64 %527, 3
  br label %863

863:                                              ; preds = %858, %854, %836, %827, %816, %784, %651, %637, %590, %533, %525
  %864 = phi i1 [ false, %637 ], [ true, %525 ], [ true, %533 ], [ true, %590 ], [ true, %816 ], [ true, %858 ], [ true, %854 ], [ true, %836 ], [ true, %827 ], [ false, %784 ], [ false, %651 ]
  %865 = phi ptr [ %650, %637 ], [ %528, %525 ], [ %528, %533 ], [ %528, %590 ], [ %652, %816 ], [ %652, %858 ], [ %652, %854 ], [ %652, %836 ], [ %652, %827 ], [ %652, %784 ], [ %652, %651 ]
  %866 = phi i64 [ %527, %637 ], [ %527, %525 ], [ %527, %533 ], [ %527, %590 ], [ %527, %816 ], [ %862, %858 ], [ %835, %854 ], [ %835, %836 ], [ %835, %827 ], [ %527, %784 ], [ %527, %651 ]
  %867 = phi i64 [ %526, %637 ], [ %526, %525 ], [ %526, %533 ], [ %526, %590 ], [ %526, %816 ], [ %829, %858 ], [ %829, %854 ], [ %829, %836 ], [ %829, %827 ], [ %526, %784 ], [ %526, %651 ]
  br i1 %864, label %871, label %868

868:                                              ; preds = %863
  %869 = add i64 %867, 1
  %870 = icmp ult i64 %869, %514
  br i1 %870, label %525, label %871, !llvm.loop !80

871:                                              ; preds = %868, %863, %501
  %872 = phi ptr [ %491, %501 ], [ %865, %863 ], [ %865, %868 ]
  %873 = phi i64 [ %503, %501 ], [ %866, %863 ], [ %866, %868 ]
  %874 = phi i64 [ %504, %501 ], [ %869, %868 ], [ %867, %863 ]
  %875 = icmp sgt i64 %873, 0
  br i1 %875, label %489, label %876, !llvm.loop !81

876:                                              ; preds = %871
  %877 = call ptr @DestroySplayTree(ptr noundef %437) #4
  br label %878

878:                                              ; preds = %266, %361, %373, %378, %424, %876
  %879 = phi i32 [ %250, %876 ], [ 0, %266 ], [ 0, %361 ], [ 0, %373 ], [ 0, %378 ], [ 0, %424 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %12) #4
  br label %880

880:                                              ; preds = %878, %263
  %881 = phi i32 [ %250, %263 ], [ %879, %878 ]
  ret i32 %881
}

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #1

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @DestroyProfile(ptr noundef %0) #0 {
  %2 = tail call ptr @DestroyStringInfo(ptr noundef %0) #4
  ret ptr %2
}

declare void @LocaleLower(ptr noundef) local_unnamed_addr #1

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
!34 = !{!35, !36, i64 12976}
!35 = !{!"_Image", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !40, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !43, i64 104, !44, i64 112, !36, i64 208, !40, i64 216, !36, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !39, i64 256, !43, i64 264, !43, i64 272, !46, i64 280, !46, i64 312, !46, i64 344, !43, i64 376, !43, i64 384, !43, i64 392, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !40, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !47, i64 480, !48, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !39, i64 12904, !39, i64 12912, !50, i64 12920, !36, i64 12976, !39, i64 12984, !40, i64 12992, !51, i64 13000, !51, i64 13032, !40, i64 13064, !39, i64 13072, !39, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !36, i64 13112, !36, i64 13116, !41, i64 13120, !40, i64 13128, !46, i64 13136, !40, i64 13168, !40, i64 13176, !36, i64 13184, !36, i64 13188, !52, i64 13192, !36, i64 13200, !39, i64 13208, !39, i64 13216, !36, i64 13224, !39, i64 13232}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"_PixelPacket", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6}
!42 = !{!"short", !37, i64 0}
!43 = !{!"double", !37, i64 0}
!44 = !{!"_ChromaticityInfo", !45, i64 0, !45, i64 24, !45, i64 48, !45, i64 72}
!45 = !{!"_PrimaryInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!46 = !{!"_RectangleInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!47 = !{!"_ErrorInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!48 = !{!"_TimerInfo", !49, i64 0, !49, i64 24, !36, i64 48, !39, i64 56}
!49 = !{!"_Timer", !43, i64 0, !43, i64 8, !43, i64 16}
!50 = !{!"_ExceptionInfo", !36, i64 0, !36, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !39, i64 48}
!51 = !{!"_ProfileInfo", !40, i64 0, !39, i64 8, !40, i64 16, !39, i64 24}
!52 = !{!"long long", !37, i64 0}
!53 = !{!35, !39, i64 13008}
!54 = !{!35, !40, i64 13016}
!55 = !{!35, !39, i64 13040}
!56 = !{!35, !40, i64 13048}
!57 = !{!35, !40, i64 216}
!58 = !{!37, !37, i64 0}
!59 = !{!60, !40, i64 4096}
!60 = !{!"_StringInfo", !37, i64 0, !40, i64 4096, !39, i64 4104, !39, i64 4112}
!61 = !{!60, !39, i64 4104}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!40, !40, i64 0}
!66 = !{!36, !36, i64 0}
!67 = distinct !{!67, !63, !64}
!68 = distinct !{!68, !63, !64}
!69 = distinct !{!69, !63, !64}
!70 = !{!35, !43, i64 264}
!71 = !{!35, !43, i64 272}
!72 = !{!35, !36, i64 224}
!73 = distinct !{!73, !63, !64}
!74 = distinct !{!74, !63, !64}
!75 = distinct !{!75, !63, !64}
!76 = !{!77, !40, i64 0}
!77 = !{!"_DirectoryInfo", !40, i64 0, !39, i64 8}
!78 = !{!77, !39, i64 8}
!79 = !{!35, !36, i64 24}
!80 = distinct !{!80, !63, !64}
!81 = distinct !{!81, !63, !64}
