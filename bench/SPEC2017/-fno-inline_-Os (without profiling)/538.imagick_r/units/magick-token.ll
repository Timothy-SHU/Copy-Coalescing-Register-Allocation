; ModuleID = 'magick/token.c'
source_filename = "magick/token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UTFInfo = type { i32, i32, i32, i32 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._TokenInfo = type { i32, i32, i64, i8, i64 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._PixelPacket = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [15 x i8] c"magick/token.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"url(\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@utf_info = internal unnamed_addr constant [6 x %struct.UTFInfo] [%struct.UTFInfo { i32 128, i32 0, i32 127, i32 0 }, %struct.UTFInfo { i32 224, i32 192, i32 2047, i32 128 }, %struct.UTFInfo { i32 240, i32 224, i32 65535, i32 2048 }, %struct.UTFInfo { i32 248, i32 240, i32 2097151, i32 65536 }, %struct.UTFInfo { i32 252, i32 248, i32 4194303, i32 2097152 }, %struct.UTFInfo { i32 254, i32 252, i32 134217727, i32 67108864 }], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireTokenInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = tail call dereferenceable_or_null(32) ptr @AcquireMagickMemory(i64 noundef 32) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #13
  call void @GetExceptionInfo(ptr noundef nonnull %1) #14
  %5 = tail call ptr @__errno_location() #15
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = call ptr @GetExceptionMessage(i32 noundef %6) #14
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 100, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %7) #14
  %9 = call ptr @DestroyString(ptr noundef %7) #14
  call void @CatchException(ptr noundef nonnull %1) #14
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #16
  unreachable

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct._TokenInfo, ptr %2, i64 0, i32 4
  store i64 2880220587, ptr %12, align 8, !tbaa !9
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyTokenInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 130, ptr noundef nonnull @.str.4) #14
  %3 = getelementptr inbounds %struct._TokenInfo, ptr %0, i64 0, i32 4
  store i64 -2880220588, ptr %3, align 8, !tbaa !9
  %4 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetMagickToken(ptr noundef %0, ptr noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = tail call ptr @__ctype_b_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %0, %3 ], [ %17, %7 ]
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i16, ptr %6, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !15
  %13 = and i16 %12, 8192
  %14 = icmp eq i16 %13, 0
  %15 = icmp eq i8 %9, 0
  %16 = or i1 %15, %14
  %17 = getelementptr inbounds i8, ptr %8, i64 1
  br i1 %16, label %18, label %7, !llvm.loop !17

18:                                               ; preds = %7
  switch i8 %9, label %51 [
    i8 0, label %146
    i8 47, label %46
    i8 34, label %22
    i8 39, label %19
    i8 96, label %20
    i8 123, label %21
  ]

19:                                               ; preds = %18
  br label %22

20:                                               ; preds = %18
  br label %22

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %18, %21, %20, %19
  %23 = phi i32 [ 125, %21 ], [ 39, %20 ], [ 39, %19 ], [ 34, %18 ]
  br label %24

24:                                               ; preds = %41, %22
  %25 = phi ptr [ %8, %22 ], [ %43, %41 ]
  %26 = phi i64 [ 0, %22 ], [ %44, %41 ]
  %27 = getelementptr inbounds i8, ptr %25, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !14
  switch i8 %28, label %36 [
    i8 0, label %146
    i8 92, label %29
  ]

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %25, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !14
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %23, %32
  %34 = icmp eq i8 %31, 92
  %35 = or i1 %34, %33
  br i1 %35, label %41, label %36

36:                                               ; preds = %29, %24
  %37 = sext i8 %28 to i32
  %38 = icmp eq i32 %23, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, ptr %25, i64 2
  br label %146

41:                                               ; preds = %36, %29
  %42 = phi i8 [ %31, %29 ], [ %28, %36 ]
  %43 = phi ptr [ %30, %29 ], [ %27, %36 ]
  %44 = add nuw nsw i64 %26, 1
  %45 = getelementptr inbounds i8, ptr %2, i64 %26
  store i8 %42, ptr %45, align 1, !tbaa !14
  br label %24, !llvm.loop !19

46:                                               ; preds = %18
  store i8 47, ptr %2, align 1, !tbaa !14
  %47 = load i8, ptr %17, align 1, !tbaa !14
  switch i8 %47, label %146 [
    i8 62, label %48
    i8 47, label %48
  ]

48:                                               ; preds = %46, %46
  %49 = getelementptr inbounds i8, ptr %8, i64 2
  %50 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %47, ptr %50, align 1, !tbaa !14
  br label %146

51:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call fastcc void @StringToDouble(ptr noundef nonnull %8, ptr noundef nonnull %4) #17
  %52 = load ptr, ptr %4, align 8, !tbaa !12
  %53 = icmp eq ptr %8, %52
  %54 = load i8, ptr %8, align 1, !tbaa !14
  br i1 %53, label %79, label %55

55:                                               ; preds = %51
  %56 = icmp eq i8 %54, 44
  br i1 %56, label %81, label %57

57:                                               ; preds = %55
  %58 = icmp ult ptr %8, %52
  br i1 %58, label %61, label %70

59:                                               ; preds = %61
  %60 = icmp eq i8 %69, 44
  br i1 %60, label %143, label %61

61:                                               ; preds = %57, %59
  %62 = phi ptr [ %67, %59 ], [ %8, %57 ]
  %63 = phi i64 [ %65, %59 ], [ 0, %57 ]
  %64 = phi i8 [ %69, %59 ], [ %54, %57 ]
  %65 = add nuw nsw i64 %63, 1
  %66 = getelementptr inbounds i8, ptr %2, i64 %63
  store i8 %64, ptr %66, align 1, !tbaa !14
  %67 = getelementptr inbounds i8, ptr %62, i64 1
  %68 = icmp ult ptr %67, %52
  %69 = load i8, ptr %67, align 1, !tbaa !14
  br i1 %68, label %59, label %70, !llvm.loop !20

70:                                               ; preds = %61, %57
  %71 = phi i8 [ %54, %57 ], [ %69, %61 ]
  %72 = phi ptr [ %8, %57 ], [ %67, %61 ]
  %73 = phi i64 [ 0, %57 ], [ %65, %61 ]
  %74 = icmp eq i8 %71, 37
  br i1 %74, label %75, label %143

75:                                               ; preds = %70
  %76 = getelementptr inbounds i8, ptr %72, i64 1
  %77 = add nuw nsw i64 %73, 1
  %78 = getelementptr inbounds i8, ptr %2, i64 %73
  store i8 37, ptr %78, align 1, !tbaa !14
  br label %143

79:                                               ; preds = %51
  %80 = icmp eq i8 %54, 0
  br i1 %80, label %143, label %81

81:                                               ; preds = %55, %79
  %82 = phi i8 [ %54, %79 ], [ 44, %55 ]
  %83 = load ptr, ptr %5, align 8, !tbaa !12
  %84 = zext i8 %82 to i64
  %85 = getelementptr inbounds i16, ptr %83, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !15
  %87 = freeze i16 %86
  %88 = and i16 %87, 1024
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %91, %91, %91, %81
  br label %93

91:                                               ; preds = %81
  switch i8 %82, label %92 [
    i8 60, label %90
    i8 47, label %90
    i8 35, label %90
  ]

92:                                               ; preds = %91
  store i8 %82, ptr %2, align 1, !tbaa !14
  br label %143

93:                                               ; preds = %90, %137
  %94 = phi i8 [ %141, %137 ], [ %82, %90 ]
  %95 = phi i64 [ %139, %137 ], [ 0, %90 ]
  %96 = phi ptr [ %140, %137 ], [ %8, %90 ]
  %97 = load ptr, ptr %5, align 8, !tbaa !12
  %98 = zext i8 %94 to i64
  %99 = getelementptr inbounds i16, ptr %97, i64 %98
  %100 = load i16, ptr %99, align 2, !tbaa !15
  %101 = freeze i16 %100
  %102 = and i16 %101, 8192
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  switch i8 %94, label %109 [
    i8 61, label %105
    i8 59, label %105
    i8 58, label %105
    i8 44, label %105
  ]

105:                                              ; preds = %104, %104, %104, %104, %93
  %106 = getelementptr inbounds i8, ptr %96, i64 -1
  %107 = load i8, ptr %106, align 1, !tbaa !14
  %108 = icmp eq i8 %107, 92
  br i1 %108, label %109, label %143

109:                                              ; preds = %104, %105
  %110 = icmp sgt i64 %95, 0
  %111 = icmp eq i8 %94, 60
  %112 = and i1 %110, %111
  br i1 %112, label %143, label %113

113:                                              ; preds = %109
  %114 = add nsw i64 %95, 1
  %115 = getelementptr inbounds i8, ptr %2, i64 %95
  store i8 %94, ptr %115, align 1, !tbaa !14
  %116 = load i8, ptr %96, align 1, !tbaa !14
  switch i8 %116, label %137 [
    i8 62, label %143
    i8 40, label %117
  ]

117:                                              ; preds = %113
  %118 = getelementptr inbounds i8, ptr %96, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !14
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %137, label %121

121:                                              ; preds = %117, %133
  %122 = phi i8 [ %135, %133 ], [ %119, %117 ]
  %123 = phi ptr [ %134, %133 ], [ %118, %117 ]
  %124 = phi i64 [ %126, %133 ], [ %114, %117 ]
  %125 = phi ptr [ %123, %133 ], [ %96, %117 ]
  %126 = add nsw i64 %124, 1
  %127 = getelementptr inbounds i8, ptr %2, i64 %124
  store i8 %122, ptr %127, align 1, !tbaa !14
  %128 = load i8, ptr %123, align 1, !tbaa !14
  %129 = icmp eq i8 %128, 41
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i8, ptr %125, align 1, !tbaa !14
  %132 = icmp eq i8 %131, 92
  br i1 %132, label %133, label %137

133:                                              ; preds = %121, %130
  %134 = getelementptr inbounds i8, ptr %123, i64 1
  %135 = load i8, ptr %134, align 1, !tbaa !14
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %121, !llvm.loop !21

137:                                              ; preds = %133, %130, %117, %113
  %138 = phi ptr [ %96, %113 ], [ %118, %117 ], [ %134, %133 ], [ %123, %130 ]
  %139 = phi i64 [ %114, %113 ], [ %114, %117 ], [ %126, %130 ], [ %126, %133 ]
  %140 = getelementptr inbounds i8, ptr %138, i64 1
  %141 = load i8, ptr %140, align 1, !tbaa !14
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %93, !llvm.loop !22

143:                                              ; preds = %59, %113, %105, %137, %109, %79, %70, %75, %92
  %144 = phi ptr [ %17, %92 ], [ %76, %75 ], [ %72, %70 ], [ %8, %79 ], [ %96, %113 ], [ %96, %105 ], [ %140, %137 ], [ %96, %109 ], [ %67, %59 ]
  %145 = phi i64 [ 1, %92 ], [ %77, %75 ], [ %73, %70 ], [ 0, %79 ], [ %114, %113 ], [ %95, %105 ], [ %139, %137 ], [ %95, %109 ], [ %65, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %146

146:                                              ; preds = %24, %18, %46, %39, %48, %143
  %147 = phi ptr [ %144, %143 ], [ %49, %48 ], [ %8, %18 ], [ %40, %39 ], [ %17, %46 ], [ %27, %24 ]
  %148 = phi i64 [ %145, %143 ], [ 2, %48 ], [ 0, %18 ], [ %26, %39 ], [ 1, %46 ], [ %26, %24 ]
  %149 = getelementptr inbounds i8, ptr %2, i64 %148
  store i8 0, ptr %149, align 1, !tbaa !14
  %150 = call i32 @LocaleNCompare(ptr noundef %2, ptr noundef nonnull @.str.6, i64 noundef 4) #14
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %146
  %153 = getelementptr inbounds i8, ptr %2, i64 4
  %154 = load i8, ptr %153, align 1, !tbaa !14
  %155 = icmp eq i8 %154, 35
  %156 = select i1 %155, i64 5, i64 4
  %157 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %158 = getelementptr inbounds i8, ptr %2, i64 %156
  %159 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %158, i64 noundef 4096) #14
  %160 = xor i64 %156, -1
  %161 = getelementptr i8, ptr %2, i64 %157
  %162 = getelementptr i8, ptr %161, i64 %160
  store i8 0, ptr %162, align 1, !tbaa !14
  br label %163

163:                                              ; preds = %152, %146
  %164 = load ptr, ptr %5, align 8, !tbaa !12
  br label %165

165:                                              ; preds = %165, %163
  %166 = phi ptr [ %147, %163 ], [ %173, %165 ]
  %167 = load i8, ptr %166, align 1, !tbaa !14
  %168 = zext i8 %167 to i64
  %169 = getelementptr inbounds i16, ptr %164, i64 %168
  %170 = load i16, ptr %169, align 2, !tbaa !15
  %171 = and i16 %170, 8192
  %172 = icmp eq i16 %171, 0
  %173 = getelementptr inbounds i8, ptr %166, i64 1
  br i1 %172, label %174, label %165, !llvm.loop !23

174:                                              ; preds = %165
  %175 = icmp eq ptr %1, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %174
  store ptr %166, ptr %1, align 8, !tbaa !12
  br label %177

177:                                              ; preds = %176, %174
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @StringToDouble(ptr noalias noundef %0, ptr noalias noundef %1) unnamed_addr #0 {
  %3 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GlobExpression(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %383, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @GetUTFCode(ptr noundef nonnull %1) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %383, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @LocaleCompare(ptr noundef nonnull %1, ptr noundef nonnull @.str.7) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %383, label %11

11:                                               ; preds = %8
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = getelementptr inbounds i8, ptr %13, i64 -1
  %15 = tail call fastcc i32 @GetUTFCode(ptr noundef nonnull %14) #17
  %16 = icmp eq i32 %15, 93
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 91) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @AcquireImageInfo() #14
  %22 = getelementptr inbounds %struct._ImageInfo, ptr %21, i64 0, i32 51
  %23 = tail call i64 @CopyMagickString(ptr noundef nonnull %22, ptr noundef nonnull %1, i64 noundef 4096) #14
  %24 = tail call ptr @AcquireExceptionInfo() #14
  %25 = tail call i32 @SetImageInfo(ptr noundef %21, i32 noundef 0, ptr noundef %24) #14
  %26 = tail call ptr @DestroyExceptionInfo(ptr noundef %24) #14
  %27 = tail call i32 @LocaleCompare(ptr noundef nonnull %22, ptr noundef nonnull %1) #14
  %28 = icmp eq i32 %27, 0
  %29 = tail call ptr @DestroyImageInfo(ptr noundef %21) #14
  br i1 %28, label %30, label %383

30:                                               ; preds = %20, %17, %11
  %31 = tail call fastcc i32 @GetUTFCode(ptr noundef nonnull %1) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %363, label %33

33:                                               ; preds = %30
  %34 = icmp eq i32 %2, 0
  br label %35

35:                                               ; preds = %33, %358
  %36 = phi ptr [ %0, %33 ], [ %360, %358 ]
  %37 = phi ptr [ %1, %33 ], [ %359, %358 ]
  %38 = tail call fastcc i32 @GetUTFCode(ptr noundef %36) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = tail call fastcc i32 @GetUTFCode(ptr noundef %37) #17
  %42 = icmp eq i32 %41, 123
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @GetUTFCode(ptr noundef %37) #17
  %45 = icmp eq i32 %44, 42
  br i1 %45, label %46, label %363

46:                                               ; preds = %40, %43, %35
  %47 = tail call fastcc i32 @GetUTFCode(ptr noundef %37) #17
  switch i32 %47, label %336 [
    i32 42, label %48
    i32 91, label %86
    i32 63, label %191
    i32 123, label %198
    i32 92, label %330
  ]

48:                                               ; preds = %46
  %49 = tail call fastcc i32 @GetUTFOctets(ptr noundef %37) #17
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %37, i64 %50
  %52 = tail call fastcc i32 @GetUTFCode(ptr noundef %36) #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %358, label %54

54:                                               ; preds = %48, %54
  %55 = phi ptr [ %59, %54 ], [ %36, %48 ]
  %56 = tail call i32 @GlobExpression(ptr noundef %55, ptr noundef %51, i32 noundef %2) #17, !range !24
  %57 = tail call fastcc i32 @GetUTFOctets(ptr noundef %55) #17
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  %60 = tail call fastcc i32 @GetUTFCode(ptr noundef %59) #17
  %61 = icmp ne i32 %60, 0
  %62 = icmp eq i32 %56, 0
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %54, label %64, !llvm.loop !25

64:                                               ; preds = %54
  br i1 %62, label %358, label %65

65:                                               ; preds = %64
  %66 = tail call fastcc i32 @GetUTFCode(ptr noundef %59) #17
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %72, %65
  %69 = phi ptr [ %59, %65 ], [ %76, %72 ]
  %70 = tail call fastcc i32 @GetUTFCode(ptr noundef %51) #17
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %358, label %79

72:                                               ; preds = %65, %72
  %73 = phi ptr [ %76, %72 ], [ %59, %65 ]
  %74 = tail call fastcc i32 @GetUTFOctets(ptr noundef %73) #17
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %73, i64 %75
  %77 = tail call fastcc i32 @GetUTFCode(ptr noundef %76) #17
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %68, label %72, !llvm.loop !26

79:                                               ; preds = %68, %79
  %80 = phi ptr [ %83, %79 ], [ %51, %68 ]
  %81 = tail call fastcc i32 @GetUTFOctets(ptr noundef %80) #17
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %80, i64 %82
  %84 = tail call fastcc i32 @GetUTFCode(ptr noundef %83) #17
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %358, label %79, !llvm.loop !27

86:                                               ; preds = %46
  %87 = tail call fastcc i32 @GetUTFOctets(ptr noundef %37) #17
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %37, i64 %88
  %90 = tail call fastcc i32 @GetUTFCode(ptr noundef %89) #17
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %354, label %92

92:                                               ; preds = %86, %139
  %93 = phi ptr [ %143, %139 ], [ %89, %86 ]
  %94 = tail call fastcc i32 @GetUTFCode(ptr noundef %93) #17
  %95 = icmp eq i32 %94, 93
  br i1 %95, label %354, label %96

96:                                               ; preds = %92
  %97 = tail call fastcc i32 @GetUTFCode(ptr noundef %93) #17
  %98 = icmp eq i32 %97, 92
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = tail call fastcc i32 @GetUTFOctets(ptr noundef %93) #17
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %93, i64 %101
  %103 = tail call fastcc i32 @GetUTFCode(ptr noundef %102) #17
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %354, label %105

105:                                              ; preds = %99, %96
  %106 = phi ptr [ %102, %99 ], [ %93, %96 ]
  %107 = tail call fastcc i32 @GetUTFOctets(ptr noundef %106) #17
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %106, i64 %108
  %110 = tail call fastcc i32 @GetUTFCode(ptr noundef %109) #17
  %111 = icmp eq i32 %110, 45
  %112 = tail call fastcc i32 @GetUTFCode(ptr noundef %106) #17
  br i1 %111, label %113, label %146

113:                                              ; preds = %105
  %114 = tail call fastcc i32 @GetUTFOctets(ptr noundef %106) #17
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %106, i64 %115
  %117 = tail call fastcc i32 @GetUTFOctets(ptr noundef %116) #17
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %116, i64 %118
  %120 = tail call fastcc i32 @GetUTFCode(ptr noundef %119) #17
  %121 = icmp eq i32 %120, 93
  br i1 %121, label %354, label %122

122:                                              ; preds = %113
  %123 = tail call fastcc i32 @GetUTFCode(ptr noundef %119) #17
  %124 = icmp eq i32 %123, 92
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = tail call fastcc i32 @GetUTFOctets(ptr noundef %119) #17
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %119, i64 %127
  %129 = tail call fastcc i32 @GetUTFCode(ptr noundef %128) #17
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %354, label %131

131:                                              ; preds = %125, %122
  %132 = phi ptr [ %128, %125 ], [ %119, %122 ]
  %133 = tail call fastcc i32 @GetUTFCode(ptr noundef %36) #17
  %134 = icmp slt i32 %133, %112
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = tail call fastcc i32 @GetUTFCode(ptr noundef %36) #17
  %137 = tail call fastcc i32 @GetUTFCode(ptr noundef %132) #17
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %131, %135, %146
  %140 = phi ptr [ %106, %146 ], [ %132, %135 ], [ %132, %131 ]
  %141 = tail call fastcc i32 @GetUTFOctets(ptr noundef %140) #17
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %140, i64 %142
  %144 = tail call fastcc i32 @GetUTFCode(ptr noundef %143) #17
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %354, label %92

146:                                              ; preds = %105
  %147 = tail call fastcc i32 @GetUTFCode(ptr noundef %36) #17
  %148 = icmp eq i32 %112, %147
  br i1 %148, label %149, label %139

149:                                              ; preds = %146, %135
  %150 = phi ptr [ %132, %135 ], [ %106, %146 ]
  %151 = tail call fastcc i32 @GetUTFOctets(ptr noundef %150) #17
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, ptr %150, i64 %152
  %154 = tail call fastcc i32 @GetUTFCode(ptr noundef %153) #17
  %155 = icmp eq i32 %154, 93
  br i1 %155, label %180, label %156

156:                                              ; preds = %149, %173
  %157 = phi ptr [ %177, %173 ], [ %153, %149 ]
  %158 = tail call fastcc i32 @GetUTFCode(ptr noundef %157) #17
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %180, label %160

160:                                              ; preds = %156
  %161 = tail call fastcc i32 @GetUTFCode(ptr noundef %157) #17
  %162 = icmp eq i32 %161, 92
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = tail call fastcc i32 @GetUTFOctets(ptr noundef %157) #17
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %157, i64 %165
  %167 = tail call fastcc i32 @GetUTFCode(ptr noundef %166) #17
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = tail call fastcc i32 @GetUTFOctets(ptr noundef %157) #17
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i8, ptr %157, i64 %171
  br label %173

173:                                              ; preds = %169, %163, %160
  %174 = phi ptr [ %172, %169 ], [ %157, %163 ], [ %157, %160 ]
  %175 = tail call fastcc i32 @GetUTFOctets(ptr noundef %174) #17
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %174, i64 %176
  %178 = tail call fastcc i32 @GetUTFCode(ptr noundef %177) #17
  %179 = icmp eq i32 %178, 93
  br i1 %179, label %180, label %156, !llvm.loop !28

180:                                              ; preds = %156, %173, %149
  %181 = phi ptr [ %153, %149 ], [ %177, %173 ], [ %157, %156 ]
  %182 = tail call fastcc i32 @GetUTFCode(ptr noundef %181) #17
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %358, label %184

184:                                              ; preds = %180
  %185 = tail call fastcc i32 @GetUTFOctets(ptr noundef %181) #17
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i8, ptr %181, i64 %186
  %188 = tail call fastcc i32 @GetUTFOctets(ptr noundef %36) #17
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i8, ptr %36, i64 %189
  br label %358

191:                                              ; preds = %46
  %192 = tail call fastcc i32 @GetUTFOctets(ptr noundef %37) #17
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %37, i64 %193
  %195 = tail call fastcc i32 @GetUTFOctets(ptr noundef %36) #17
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %36, i64 %196
  br label %358

198:                                              ; preds = %46
  %199 = tail call fastcc i32 @GetUTFOctets(ptr noundef %37) #17
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i8, ptr %37, i64 %200
  %202 = tail call fastcc i32 @GetUTFCode(ptr noundef %201) #17
  %203 = icmp eq i32 %202, 125
  br i1 %203, label %358, label %204

204:                                              ; preds = %198, %326
  %205 = phi ptr [ %319, %326 ], [ %36, %198 ]
  %206 = phi ptr [ %327, %326 ], [ %201, %198 ]
  %207 = tail call fastcc i32 @GetUTFCode(ptr noundef %206) #17
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %358, label %209

209:                                              ; preds = %204
  %210 = tail call fastcc i32 @GetUTFCode(ptr noundef %205) #17
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %251, label %212

212:                                              ; preds = %209, %232
  %213 = phi ptr [ %242, %232 ], [ %206, %209 ]
  %214 = phi ptr [ %239, %232 ], [ %205, %209 ]
  %215 = phi i1 [ %236, %232 ], [ true, %209 ]
  %216 = tail call fastcc i32 @GetUTFCode(ptr noundef %213) #17
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %245, label %218

218:                                              ; preds = %212
  %219 = tail call fastcc i32 @GetUTFCode(ptr noundef %213) #17
  %220 = icmp eq i32 %219, 44
  br i1 %220, label %245, label %221

221:                                              ; preds = %218
  %222 = tail call fastcc i32 @GetUTFCode(ptr noundef %213) #17
  %223 = icmp ne i32 %222, 125
  %224 = select i1 %223, i1 %215, i1 false
  br i1 %224, label %225, label %245

225:                                              ; preds = %221
  %226 = tail call fastcc i32 @GetUTFCode(ptr noundef %213) #17
  %227 = icmp eq i32 %226, 92
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = tail call fastcc i32 @GetUTFOctets(ptr noundef %213) #17
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i8, ptr %213, i64 %230
  br label %232

232:                                              ; preds = %228, %225
  %233 = phi ptr [ %231, %228 ], [ %213, %225 ]
  %234 = tail call fastcc i32 @GetUTFCode(ptr noundef %233) #17
  %235 = tail call fastcc i32 @GetUTFCode(ptr noundef %214) #17
  %236 = icmp eq i32 %234, %235
  %237 = tail call fastcc i32 @GetUTFOctets(ptr noundef %214) #17
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i8, ptr %214, i64 %238
  %240 = tail call fastcc i32 @GetUTFOctets(ptr noundef %233) #17
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i8, ptr %233, i64 %241
  %243 = tail call fastcc i32 @GetUTFCode(ptr noundef %239) #17
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %212, !llvm.loop !29

245:                                              ; preds = %232, %212, %218, %221
  %246 = phi i1 [ %236, %232 ], [ %215, %212 ], [ %215, %218 ], [ %215, %221 ]
  %247 = phi ptr [ %239, %232 ], [ %214, %212 ], [ %214, %218 ], [ %214, %221 ]
  %248 = phi ptr [ %242, %232 ], [ %213, %212 ], [ %213, %218 ], [ %213, %221 ]
  %249 = tail call fastcc i32 @GetUTFCode(ptr noundef %248) #17
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %354, label %254

251:                                              ; preds = %209
  %252 = tail call fastcc i32 @GetUTFCode(ptr noundef %206) #17
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %354, label %258

254:                                              ; preds = %245
  br i1 %246, label %258, label %255

255:                                              ; preds = %254
  %256 = tail call fastcc i32 @GetUTFCode(ptr noundef %248) #17
  %257 = icmp eq i32 %256, 125
  br i1 %257, label %317, label %287

258:                                              ; preds = %251, %254
  %259 = phi ptr [ %247, %254 ], [ %205, %251 ]
  %260 = phi ptr [ %248, %254 ], [ %206, %251 ]
  %261 = tail call fastcc i32 @GetUTFCode(ptr noundef %260) #17
  %262 = icmp eq i32 %261, 125
  br i1 %262, label %317, label %263

263:                                              ; preds = %258, %283
  %264 = phi ptr [ %284, %283 ], [ %260, %258 ]
  %265 = tail call fastcc i32 @GetUTFCode(ptr noundef %264) #17
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %317, label %267

267:                                              ; preds = %263
  %268 = tail call fastcc i32 @GetUTFOctets(ptr noundef %264) #17
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i8, ptr %264, i64 %269
  %271 = tail call fastcc i32 @GetUTFCode(ptr noundef %270) #17
  %272 = icmp eq i32 %271, 92
  br i1 %272, label %273, label %283

273:                                              ; preds = %267
  %274 = tail call fastcc i32 @GetUTFOctets(ptr noundef %270) #17
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i8, ptr %270, i64 %275
  %277 = tail call fastcc i32 @GetUTFCode(ptr noundef %276) #17
  %278 = icmp eq i32 %277, 125
  br i1 %278, label %279, label %283

279:                                              ; preds = %273
  %280 = tail call fastcc i32 @GetUTFOctets(ptr noundef %276) #17
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i8, ptr %276, i64 %281
  br label %283

283:                                              ; preds = %273, %279, %267
  %284 = phi ptr [ %282, %279 ], [ %276, %273 ], [ %270, %267 ]
  %285 = tail call fastcc i32 @GetUTFCode(ptr noundef %284) #17
  %286 = icmp eq i32 %285, 125
  br i1 %286, label %317, label %263, !llvm.loop !30

287:                                              ; preds = %255, %313
  %288 = phi ptr [ %314, %313 ], [ %248, %255 ]
  %289 = tail call fastcc i32 @GetUTFCode(ptr noundef %288) #17
  %290 = icmp eq i32 %289, 44
  br i1 %290, label %317, label %291

291:                                              ; preds = %287
  %292 = tail call fastcc i32 @GetUTFCode(ptr noundef %288) #17
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %317, label %294

294:                                              ; preds = %291
  %295 = tail call fastcc i32 @GetUTFOctets(ptr noundef %288) #17
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i8, ptr %288, i64 %296
  %298 = tail call fastcc i32 @GetUTFCode(ptr noundef %297) #17
  %299 = icmp eq i32 %298, 92
  br i1 %299, label %300, label %313

300:                                              ; preds = %294
  %301 = tail call fastcc i32 @GetUTFOctets(ptr noundef %297) #17
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i8, ptr %297, i64 %302
  %304 = tail call fastcc i32 @GetUTFCode(ptr noundef %303) #17
  %305 = icmp eq i32 %304, 125
  br i1 %305, label %309, label %306

306:                                              ; preds = %300
  %307 = tail call fastcc i32 @GetUTFCode(ptr noundef %303) #17
  %308 = icmp eq i32 %307, 44
  br i1 %308, label %309, label %313

309:                                              ; preds = %306, %300
  %310 = tail call fastcc i32 @GetUTFOctets(ptr noundef %303) #17
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i8, ptr %303, i64 %311
  br label %313

313:                                              ; preds = %306, %309, %294
  %314 = phi ptr [ %312, %309 ], [ %303, %306 ], [ %297, %294 ]
  %315 = tail call fastcc i32 @GetUTFCode(ptr noundef %314) #17
  %316 = icmp eq i32 %315, 125
  br i1 %316, label %317, label %287, !llvm.loop !31

317:                                              ; preds = %291, %313, %287, %263, %283, %255, %258
  %318 = phi ptr [ %260, %258 ], [ %248, %255 ], [ %264, %263 ], [ %284, %283 ], [ %288, %291 ], [ %314, %313 ], [ %288, %287 ]
  %319 = phi ptr [ %259, %258 ], [ %205, %255 ], [ %259, %283 ], [ %259, %263 ], [ %205, %287 ], [ %205, %313 ], [ %205, %291 ]
  %320 = tail call fastcc i32 @GetUTFCode(ptr noundef %318) #17
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %317
  %323 = tail call fastcc i32 @GetUTFOctets(ptr noundef %318) #17
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds i8, ptr %318, i64 %324
  br label %326

326:                                              ; preds = %322, %317
  %327 = phi ptr [ %325, %322 ], [ %318, %317 ]
  %328 = tail call fastcc i32 @GetUTFCode(ptr noundef %327) #17
  %329 = icmp eq i32 %328, 125
  br i1 %329, label %358, label %204, !llvm.loop !32

330:                                              ; preds = %46
  %331 = tail call fastcc i32 @GetUTFOctets(ptr noundef %37) #17
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i8, ptr %37, i64 %332
  %334 = tail call fastcc i32 @GetUTFCode(ptr noundef %333) #17
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %358, label %336

336:                                              ; preds = %330, %46
  %337 = phi ptr [ %37, %46 ], [ %333, %330 ]
  %338 = tail call fastcc i32 @GetUTFCode(ptr noundef %36) #17
  br i1 %34, label %344, label %339

339:                                              ; preds = %336
  %340 = tail call i32 @tolower(i32 noundef %338) #18
  %341 = tail call fastcc i32 @GetUTFCode(ptr noundef %337) #17
  %342 = tail call i32 @tolower(i32 noundef %341) #18
  %343 = icmp eq i32 %340, %342
  br i1 %343, label %347, label %354

344:                                              ; preds = %336
  %345 = tail call fastcc i32 @GetUTFCode(ptr noundef %337) #17
  %346 = icmp eq i32 %338, %345
  br i1 %346, label %347, label %354

347:                                              ; preds = %344, %339
  %348 = tail call fastcc i32 @GetUTFOctets(ptr noundef %36) #17
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds i8, ptr %36, i64 %349
  %351 = tail call fastcc i32 @GetUTFOctets(ptr noundef %337) #17
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds i8, ptr %337, i64 %352
  br label %358

354:                                              ; preds = %339, %344, %86, %245, %251, %92, %139, %99, %113, %125
  %355 = phi ptr [ %128, %125 ], [ %119, %113 ], [ %102, %99 ], [ %143, %139 ], [ %93, %92 ], [ %248, %245 ], [ %206, %251 ], [ %337, %339 ], [ %337, %344 ], [ %89, %86 ]
  %356 = phi ptr [ %36, %125 ], [ %36, %113 ], [ %36, %99 ], [ %36, %139 ], [ %36, %92 ], [ %205, %251 ], [ %205, %245 ], [ %36, %86 ], [ %36, %344 ], [ %36, %339 ]
  %357 = tail call fastcc i32 @GetUTFCode(ptr noundef %355) #17
  br label %363

358:                                              ; preds = %326, %204, %79, %48, %198, %68, %184, %180, %64, %330, %347, %191
  %359 = phi ptr [ %353, %347 ], [ %333, %330 ], [ %194, %191 ], [ %51, %64 ], [ %187, %184 ], [ %181, %180 ], [ %51, %68 ], [ %201, %198 ], [ %51, %48 ], [ %83, %79 ], [ %327, %326 ], [ %206, %204 ]
  %360 = phi ptr [ %350, %347 ], [ %36, %330 ], [ %197, %191 ], [ %59, %64 ], [ %190, %184 ], [ %36, %180 ], [ %69, %68 ], [ %36, %198 ], [ %36, %48 ], [ %69, %79 ], [ %319, %326 ], [ %205, %204 ]
  %361 = tail call fastcc i32 @GetUTFCode(ptr noundef %359) #17
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %35, !llvm.loop !33

363:                                              ; preds = %358, %43, %354, %30
  %364 = phi ptr [ %1, %30 ], [ %355, %354 ], [ %37, %43 ], [ %359, %358 ]
  %365 = phi ptr [ %0, %30 ], [ %356, %354 ], [ %36, %43 ], [ %360, %358 ]
  %366 = tail call fastcc i32 @GetUTFCode(ptr noundef %364) #17
  %367 = icmp eq i32 %366, 42
  br i1 %367, label %368, label %375

368:                                              ; preds = %363, %368
  %369 = phi ptr [ %372, %368 ], [ %364, %363 ]
  %370 = tail call fastcc i32 @GetUTFOctets(ptr noundef %369) #17
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds i8, ptr %369, i64 %371
  %373 = tail call fastcc i32 @GetUTFCode(ptr noundef %372) #17
  %374 = icmp eq i32 %373, 42
  br i1 %374, label %368, label %375, !llvm.loop !34

375:                                              ; preds = %368, %363
  %376 = phi ptr [ %364, %363 ], [ %372, %368 ]
  %377 = tail call fastcc i32 @GetUTFCode(ptr noundef %365) #17
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %375
  %380 = tail call fastcc i32 @GetUTFCode(ptr noundef %376) #17
  %381 = icmp eq i32 %380, 0
  %382 = zext i1 %381 to i32
  br label %383

383:                                              ; preds = %20, %375, %379, %8, %5, %3
  %384 = phi i32 [ 1, %3 ], [ 1, %5 ], [ 1, %8 ], [ 0, %375 ], [ %382, %379 ], [ 0, %20 ]
  ret i32 %384
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @GetUTFCode(ptr noundef %0) unnamed_addr #7 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %3 = call fastcc i32 @GetNextUTFCode(ptr noundef %0, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @AcquireImageInfo() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageInfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @GetUTFOctets(ptr noundef %0) unnamed_addr #7 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %3 = call fastcc i32 @GetNextUTFCode(ptr noundef %0, ptr noundef nonnull %2) #17
  %4 = load i32, ptr %2, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsGlob(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @IsPathAccessible(ptr noundef %0) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1, %9
  %5 = phi i32 [ %10, %9 ], [ 0, %1 ]
  %6 = phi ptr [ %11, %9 ], [ %0, %1 ]
  %7 = load i8, ptr %6, align 1, !tbaa !14
  switch i8 %7, label %9 [
    i8 0, label %12
    i8 42, label %8
    i8 63, label %8
    i8 123, label %8
    i8 125, label %8
    i8 91, label %8
    i8 93, label %8
  ]

8:                                                ; preds = %4, %4, %4, %4, %4, %4
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi i32 [ 1, %8 ], [ %5, %4 ]
  %11 = getelementptr inbounds i8, ptr %6, i64 1
  br label %4, !llvm.loop !35

12:                                               ; preds = %4, %1
  %13 = phi i32 [ 0, %1 ], [ %5, %4 ]
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsMagickTrue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #14
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %12, %9, %6, %3, %1
  %17 = phi i32 [ 0, %1 ], [ 1, %3 ], [ 1, %6 ], [ 1, %9 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite) uwtable
define dso_local noundef i32 @Tokenizer(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i64 noundef %3, ptr nocapture noundef readonly %4, ptr noundef readonly %5, ptr noundef readonly %6, ptr noundef readonly %7, i8 noundef signext %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef %10, ptr nocapture noundef writeonly %11) local_unnamed_addr #9 {
  store i8 0, ptr %9, align 1, !tbaa !14
  store i8 0, ptr %11, align 1, !tbaa !14
  %13 = load i32, ptr %10, align 4, !tbaa !5
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %4, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %101, label %18

18:                                               ; preds = %12
  store i32 0, ptr %0, align 8, !tbaa !36
  %19 = getelementptr inbounds %struct._TokenInfo, ptr %0, i64 0, i32 3
  store i8 0, ptr %19, align 8, !tbaa !37
  %20 = getelementptr inbounds %struct._TokenInfo, ptr %0, i64 0, i32 1
  store i32 %1, ptr %20, align 4, !tbaa !38
  %21 = getelementptr inbounds %struct._TokenInfo, ptr %0, i64 0, i32 2
  store i64 0, ptr %21, align 8, !tbaa !39
  %22 = load i32, ptr %10, align 4, !tbaa !5
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %4, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %98, label %27

27:                                               ; preds = %18
  %28 = getelementptr i8, ptr %4, i64 1
  br label %29

29:                                               ; preds = %27, %89
  %30 = phi i8 [ %94, %89 ], [ %25, %27 ]
  %31 = phi i64 [ %92, %89 ], [ %23, %27 ]
  %32 = phi i32 [ %91, %89 ], [ %22, %27 ]
  %33 = sext i8 %30 to i32
  %34 = tail call fastcc i64 @sindex(i32 noundef %33, ptr noundef %6) #17
  %35 = icmp sgt i64 %34, -1
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, ptr %0, align 8, !tbaa !36
  switch i32 %37, label %89 [
    i32 0, label %38
    i32 1, label %38
    i32 3, label %38
    i32 2, label %42
  ]

38:                                               ; preds = %36, %36, %36
  %39 = add nsw i32 %32, 1
  store i32 %39, ptr %10, align 4, !tbaa !5
  %40 = getelementptr inbounds i8, ptr %6, i64 %34
  %41 = load i8, ptr %40, align 1, !tbaa !14
  store i8 %41, ptr %9, align 1, !tbaa !14
  br label %96

42:                                               ; preds = %36
  tail call fastcc void @StoreToken(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, i32 noundef %33) #17
  br label %89

43:                                               ; preds = %29
  %44 = tail call fastcc i64 @sindex(i32 noundef %33, ptr noundef %7) #17
  %45 = icmp sgt i64 %44, -1
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i32, ptr %0, align 8, !tbaa !36
  switch i32 %47, label %89 [
    i32 0, label %48
    i32 2, label %51
    i32 1, label %58
    i32 3, label %58
  ]

48:                                               ; preds = %46
  store i32 2, ptr %0, align 8, !tbaa !36
  %49 = getelementptr inbounds i8, ptr %7, i64 %44
  %50 = load i8, ptr %49, align 1, !tbaa !14
  store i8 %50, ptr %19, align 8, !tbaa !37
  store i8 1, ptr %11, align 1, !tbaa !14
  br label %89

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, ptr %7, i64 %44
  %53 = load i8, ptr %52, align 1, !tbaa !14
  %54 = load i8, ptr %19, align 8, !tbaa !37
  %55 = icmp eq i8 %53, %54
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  tail call fastcc void @StoreToken(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, i32 noundef %33) #17
  br label %89

57:                                               ; preds = %51
  store i32 3, ptr %0, align 8, !tbaa !36
  store i8 0, ptr %19, align 8, !tbaa !37
  br label %89

58:                                               ; preds = %46, %46
  store i8 %30, ptr %9, align 1, !tbaa !14
  br label %96

59:                                               ; preds = %43
  %60 = tail call fastcc i64 @sindex(i32 noundef %33, ptr noundef %5) #17
  %61 = icmp sgt i64 %60, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, ptr %0, align 8, !tbaa !36
  switch i32 %63, label %89 [
    i32 2, label %65
    i32 1, label %64
  ]

64:                                               ; preds = %62
  store i32 3, ptr %0, align 8, !tbaa !36
  br label %89

65:                                               ; preds = %62
  tail call fastcc void @StoreToken(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, i32 noundef %33) #17
  br label %89

66:                                               ; preds = %59
  %67 = icmp eq i8 %30, %8
  br i1 %67, label %68, label %85

68:                                               ; preds = %66
  %69 = getelementptr i8, ptr %28, i64 %31
  %70 = load i8, ptr %69, align 1, !tbaa !14
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  store i8 0, ptr %9, align 1, !tbaa !14
  tail call fastcc void @StoreToken(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, i32 noundef %33) #17
  %73 = load i32, ptr %10, align 4, !tbaa !5
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %10, align 4, !tbaa !5
  br label %96

75:                                               ; preds = %68
  %76 = load i32, ptr %0, align 8, !tbaa !36
  switch i32 %76, label %89 [
    i32 0, label %77
    i32 1, label %79
    i32 2, label %79
    i32 3, label %96
  ]

77:                                               ; preds = %75
  %78 = add nsw i32 %32, -1
  store i32 %78, ptr %10, align 4, !tbaa !5
  store i32 1, ptr %0, align 8, !tbaa !36
  br label %89

79:                                               ; preds = %75, %75
  %80 = add nsw i32 %32, 1
  store i32 %80, ptr %10, align 4, !tbaa !5
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %4, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !14
  %84 = sext i8 %83 to i32
  tail call fastcc void @StoreToken(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, i32 noundef %84) #17
  br label %89

85:                                               ; preds = %66
  %86 = load i32, ptr %0, align 8, !tbaa !36
  switch i32 %86, label %89 [
    i32 0, label %87
    i32 1, label %88
    i32 2, label %88
    i32 3, label %96
  ]

87:                                               ; preds = %85
  store i32 1, ptr %0, align 8, !tbaa !36
  br label %88

88:                                               ; preds = %85, %85, %87
  tail call fastcc void @StoreToken(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, i32 noundef %33) #17
  br label %89

89:                                               ; preds = %88, %85, %77, %79, %75, %64, %65, %62, %48, %46, %57, %56, %42, %36
  %90 = load i32, ptr %10, align 4, !tbaa !5
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %10, align 4, !tbaa !5
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %4, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !14
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %29, !llvm.loop !40

96:                                               ; preds = %89, %85, %75, %72, %58, %38
  %97 = load i64, ptr %21, align 8, !tbaa !39
  br label %98

98:                                               ; preds = %96, %18
  %99 = phi i64 [ 0, %18 ], [ %97, %96 ]
  %100 = getelementptr inbounds i8, ptr %2, i64 %99
  store i8 0, ptr %100, align 1, !tbaa !14
  br label %101

101:                                              ; preds = %98, %12
  %102 = phi i32 [ 1, %12 ], [ 0, %98 ]
  ret i32 %102
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i64 @sindex(i32 noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = load i8, ptr %1, align 1, !tbaa !14
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2, %14
  %6 = phi i8 [ %16, %14 ], [ %3, %2 ]
  %7 = phi ptr [ %15, %14 ], [ %1, %2 ]
  %8 = sext i8 %6 to i32
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = ptrtoint ptr %7 to i64
  %12 = ptrtoint ptr %1 to i64
  %13 = sub i64 %11, %12
  br label %18

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %7, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %5, !llvm.loop !41

18:                                               ; preds = %14, %2, %10
  %19 = phi i64 [ %13, %10 ], [ -1, %2 ], [ -1, %14 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite) uwtable
define internal fastcc void @StoreToken(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2, i32 noundef %3) unnamed_addr #11 {
  %5 = getelementptr inbounds %struct._TokenInfo, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !39
  %7 = icmp sgt i64 %6, -1
  %8 = add i64 %2, -1
  %9 = icmp ult i64 %6, %8
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %4
  %12 = add nuw nsw i64 %6, 1
  store i64 %12, ptr %5, align 8, !tbaa !39
  %13 = trunc i32 %3 to i8
  %14 = getelementptr inbounds i8, ptr %1, i64 %6
  store i8 %13, ptr %14, align 1, !tbaa !14
  %15 = load i32, ptr %0, align 8, !tbaa !36
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._TokenInfo, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !38
  %20 = and i32 %19, 3
  switch i32 %20, label %28 [
    i32 1, label %21
    i32 2, label %23
  ]

21:                                               ; preds = %17
  %22 = tail call i32 @toupper(i32 noundef %3) #18
  br label %25

23:                                               ; preds = %17
  %24 = tail call i32 @tolower(i32 noundef %3) #18
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr %14, align 1, !tbaa !14
  br label %28

28:                                               ; preds = %25, %17, %11, %4
  ret void
}

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @GetNextUTFCode(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 {
  store i32 1, ptr %1, align 4, !tbaa !5
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call ptr @__errno_location() #15
  store i32 22, ptr %5, align 4, !tbaa !5
  br label %46

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 1, !tbaa !14
  %8 = zext i8 %7 to i32
  br label %9

9:                                                ; preds = %6, %38
  %10 = phi ptr [ %0, %6 ], [ %13, %38 ]
  %11 = phi i32 [ %8, %6 ], [ %41, %38 ]
  %12 = phi i64 [ 0, %6 ], [ %42, %38 ]
  %13 = getelementptr inbounds i8, ptr %10, i64 1
  %14 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %12
  %15 = load i32, ptr %14, align 16, !tbaa !42
  %16 = and i32 %15, %8
  %17 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %12, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !44
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %9
  %21 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %12, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !45
  %23 = and i32 %22, %11
  %24 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %12, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !46
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = tail call ptr @__errno_location() #15
  store i32 84, ptr %28, align 4, !tbaa !5
  br label %46

29:                                               ; preds = %20
  %30 = trunc i64 %12 to i32
  %31 = add nuw nsw i32 %30, 1
  store i32 %31, ptr %1, align 4, !tbaa !5
  br label %46

32:                                               ; preds = %9
  %33 = load i8, ptr %13, align 1, !tbaa !14
  %34 = xor i8 %33, -128
  %35 = icmp ult i8 %34, 64
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @__errno_location() #15
  store i32 84, ptr %37, align 4, !tbaa !5
  br label %46

38:                                               ; preds = %32
  %39 = zext nneg i8 %34 to i32
  %40 = shl i32 %11, 6
  %41 = or disjoint i32 %40, %39
  %42 = add nuw nsw i64 %12, 1
  %43 = icmp eq i64 %42, 6
  br i1 %43, label %44, label %9, !llvm.loop !47

44:                                               ; preds = %38
  %45 = tail call ptr @__errno_location() #15
  store i32 84, ptr %45, align 4, !tbaa !5
  br label %46

46:                                               ; preds = %44, %36, %29, %27, %4
  %47 = phi i32 [ -1, %4 ], [ -1, %27 ], [ %23, %29 ], [ -1, %36 ], [ -1, %44 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind optsize willreturn memory(none) }
attributes #16 = { noreturn nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 24}
!10 = !{!"_TokenInfo", !6, i64 0, !6, i64 4, !11, i64 8, !7, i64 16, !11, i64 24}
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = !{i32 0, i32 2}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = !{!10, !6, i64 0}
!37 = !{!10, !7, i64 16}
!38 = !{!10, !6, i64 4}
!39 = !{!10, !11, i64 8}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = !{!43, !6, i64 0}
!43 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!44 = !{!43, !6, i64 4}
!45 = !{!43, !6, i64 8}
!46 = !{!43, !6, i64 12}
!47 = distinct !{!47, !18}
