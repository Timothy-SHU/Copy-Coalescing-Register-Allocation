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

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireTokenInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = tail call dereferenceable_or_null(32) ptr @AcquireMagickMemory(i64 noundef 32) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #9
  call void @GetExceptionInfo(ptr noundef nonnull %1) #9
  %5 = tail call ptr @__errno_location() #10
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = call ptr @GetExceptionMessage(i32 noundef %6) #9
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 100, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %7) #9
  %9 = call ptr @DestroyString(ptr noundef %7) #9
  call void @CatchException(ptr noundef nonnull %1) #9
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #9
  call void @MagickCoreTerminus() #9
  call void @_exit(i32 noundef 1) #11
  unreachable

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct._TokenInfo, ptr %2, i64 0, i32 4
  store i64 2880220587, ptr %12, align 8, !tbaa !38
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare void @CatchException(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyTokenInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 130, ptr noundef nonnull @.str.4) #9
  %3 = getelementptr inbounds %struct._TokenInfo, ptr %0, i64 0, i32 4
  store i64 -2880220588, ptr %3, align 8, !tbaa !38
  %4 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #9
  ret ptr %4
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @GetMagickToken(ptr noundef %0, ptr noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = tail call ptr @__ctype_b_loc() #10
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %0, %3 ], [ %17, %7 ]
  %9 = load i8, ptr %8, align 1, !tbaa !43
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i16, ptr %6, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !44
  %13 = and i16 %12, 8192
  %14 = icmp eq i16 %13, 0
  %15 = icmp eq i8 %9, 0
  %16 = or i1 %15, %14
  %17 = getelementptr inbounds i8, ptr %8, i64 1
  br i1 %16, label %18, label %7, !llvm.loop !46

18:                                               ; preds = %7
  switch i8 %9, label %52 [
    i8 0, label %150
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
  %25 = phi ptr [ %8, %22 ], [ %42, %41 ]
  %26 = phi i64 [ 0, %22 ], [ %44, %41 ]
  %27 = getelementptr inbounds i8, ptr %25, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !43
  switch i8 %28, label %36 [
    i8 0, label %150
    i8 92, label %29
  ]

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %25, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !43
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
  br label %150

41:                                               ; preds = %29, %36
  %42 = phi ptr [ %27, %36 ], [ %30, %29 ]
  %43 = load i8, ptr %42, align 1, !tbaa !43
  %44 = add nuw nsw i64 %26, 1
  %45 = getelementptr inbounds i8, ptr %2, i64 %26
  store i8 %43, ptr %45, align 1, !tbaa !43
  br label %24, !llvm.loop !49

46:                                               ; preds = %18
  %47 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %9, ptr %2, align 1, !tbaa !43
  %48 = load i8, ptr %47, align 1, !tbaa !43
  switch i8 %48, label %150 [
    i8 62, label %49
    i8 47, label %49
  ]

49:                                               ; preds = %46, %46
  %50 = getelementptr inbounds i8, ptr %8, i64 2
  %51 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %48, ptr %51, align 1, !tbaa !43
  br label %150

52:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %53 = call double @InterpretLocaleValue(ptr noundef nonnull %8, ptr noundef nonnull %4) #9
  %54 = load ptr, ptr %4, align 8, !tbaa !41
  %55 = icmp eq ptr %8, %54
  br i1 %55, label %80, label %56

56:                                               ; preds = %52
  %57 = load i8, ptr %8, align 1, !tbaa !43
  %58 = icmp eq i8 %57, 44
  br i1 %58, label %80, label %59

59:                                               ; preds = %56
  %60 = icmp ult ptr %8, %54
  br i1 %60, label %61, label %71

61:                                               ; preds = %59, %66
  %62 = phi i64 [ %67, %66 ], [ 0, %59 ]
  %63 = phi ptr [ %69, %66 ], [ %8, %59 ]
  %64 = load i8, ptr %63, align 1, !tbaa !43
  %65 = icmp eq i8 %64, 44
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = add nuw nsw i64 %62, 1
  %68 = getelementptr inbounds i8, ptr %2, i64 %62
  store i8 %64, ptr %68, align 1, !tbaa !43
  %69 = getelementptr inbounds i8, ptr %63, i64 1
  %70 = icmp ult ptr %69, %54
  br i1 %70, label %61, label %71, !llvm.loop !50

71:                                               ; preds = %61, %66, %59
  %72 = phi ptr [ %8, %59 ], [ %63, %61 ], [ %69, %66 ]
  %73 = phi i64 [ 0, %59 ], [ %62, %61 ], [ %67, %66 ]
  %74 = load i8, ptr %72, align 1, !tbaa !43
  %75 = icmp eq i8 %74, 37
  br i1 %75, label %76, label %147

76:                                               ; preds = %71
  %77 = getelementptr inbounds i8, ptr %72, i64 1
  %78 = add nuw nsw i64 %73, 1
  %79 = getelementptr inbounds i8, ptr %2, i64 %73
  store i8 %74, ptr %79, align 1, !tbaa !43
  br label %147

80:                                               ; preds = %56, %52
  %81 = load i8, ptr %8, align 1, !tbaa !43
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %5, align 8, !tbaa !41
  %85 = zext i8 %81 to i64
  %86 = getelementptr inbounds i16, ptr %84, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !44
  %88 = freeze i16 %87
  %89 = and i16 %88, 1024
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  switch i8 %81, label %92 [
    i8 60, label %94
    i8 47, label %94
    i8 35, label %94
  ]

92:                                               ; preds = %91
  %93 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %81, ptr %2, align 1, !tbaa !43
  br label %147

94:                                               ; preds = %91, %91, %91, %83, %80
  %95 = load i8, ptr %8, align 1, !tbaa !43
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %147, label %97

97:                                               ; preds = %94, %141
  %98 = phi i8 [ %145, %141 ], [ %95, %94 ]
  %99 = phi i64 [ %143, %141 ], [ 0, %94 ]
  %100 = phi ptr [ %144, %141 ], [ %8, %94 ]
  %101 = load ptr, ptr %5, align 8, !tbaa !41
  %102 = zext i8 %98 to i64
  %103 = getelementptr inbounds i16, ptr %101, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !44
  %105 = freeze i16 %104
  %106 = and i16 %105, 8192
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  switch i8 %98, label %113 [
    i8 61, label %109
    i8 59, label %109
    i8 58, label %109
    i8 44, label %109
  ]

109:                                              ; preds = %108, %108, %108, %108, %97
  %110 = getelementptr inbounds i8, ptr %100, i64 -1
  %111 = load i8, ptr %110, align 1, !tbaa !43
  %112 = icmp eq i8 %111, 92
  br i1 %112, label %113, label %147

113:                                              ; preds = %108, %109
  %114 = icmp sgt i64 %99, 0
  %115 = icmp eq i8 %98, 60
  %116 = and i1 %114, %115
  br i1 %116, label %147, label %117

117:                                              ; preds = %113
  %118 = add nsw i64 %99, 1
  %119 = getelementptr inbounds i8, ptr %2, i64 %99
  store i8 %98, ptr %119, align 1, !tbaa !43
  %120 = load i8, ptr %100, align 1, !tbaa !43
  switch i8 %120, label %141 [
    i8 62, label %147
    i8 40, label %121
  ]

121:                                              ; preds = %117
  %122 = getelementptr inbounds i8, ptr %100, i64 1
  %123 = load i8, ptr %122, align 1, !tbaa !43
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %141, label %125

125:                                              ; preds = %121, %137
  %126 = phi i8 [ %139, %137 ], [ %123, %121 ]
  %127 = phi ptr [ %138, %137 ], [ %122, %121 ]
  %128 = phi i64 [ %130, %137 ], [ %118, %121 ]
  %129 = phi ptr [ %127, %137 ], [ %100, %121 ]
  %130 = add nsw i64 %128, 1
  %131 = getelementptr inbounds i8, ptr %2, i64 %128
  store i8 %126, ptr %131, align 1, !tbaa !43
  %132 = load i8, ptr %127, align 1, !tbaa !43
  %133 = icmp eq i8 %132, 41
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load i8, ptr %129, align 1, !tbaa !43
  %136 = icmp eq i8 %135, 92
  br i1 %136, label %137, label %141

137:                                              ; preds = %125, %134
  %138 = getelementptr inbounds i8, ptr %127, i64 1
  %139 = load i8, ptr %138, align 1, !tbaa !43
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %125, !llvm.loop !51

141:                                              ; preds = %137, %134, %121, %117
  %142 = phi ptr [ %100, %117 ], [ %122, %121 ], [ %127, %134 ], [ %138, %137 ]
  %143 = phi i64 [ %118, %117 ], [ %118, %121 ], [ %130, %134 ], [ %130, %137 ]
  %144 = getelementptr inbounds i8, ptr %142, i64 1
  %145 = load i8, ptr %144, align 1, !tbaa !43
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %97, !llvm.loop !52

147:                                              ; preds = %117, %109, %141, %113, %94, %71, %76, %92
  %148 = phi ptr [ %93, %92 ], [ %77, %76 ], [ %72, %71 ], [ %8, %94 ], [ %100, %113 ], [ %144, %141 ], [ %100, %109 ], [ %100, %117 ]
  %149 = phi i64 [ 1, %92 ], [ %78, %76 ], [ %73, %71 ], [ 0, %94 ], [ %99, %113 ], [ %143, %141 ], [ %99, %109 ], [ %118, %117 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %150

150:                                              ; preds = %24, %18, %46, %39, %49, %147
  %151 = phi ptr [ %148, %147 ], [ %50, %49 ], [ %8, %18 ], [ %40, %39 ], [ %47, %46 ], [ %27, %24 ]
  %152 = phi i64 [ %149, %147 ], [ 2, %49 ], [ 0, %18 ], [ %26, %39 ], [ 1, %46 ], [ %26, %24 ]
  %153 = getelementptr inbounds i8, ptr %2, i64 %152
  store i8 0, ptr %153, align 1, !tbaa !43
  %154 = call i32 @LocaleNCompare(ptr noundef %2, ptr noundef nonnull @.str.6, i64 noundef 4) #9
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %150
  %157 = getelementptr inbounds i8, ptr %2, i64 4
  %158 = load i8, ptr %157, align 1, !tbaa !43
  %159 = icmp eq i8 %158, 35
  %160 = select i1 %159, i64 5, i64 4
  %161 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12
  %162 = getelementptr inbounds i8, ptr %2, i64 %160
  %163 = call i64 @CopyMagickString(ptr noundef %2, ptr noundef nonnull %162, i64 noundef 4096) #9
  %164 = xor i64 %160, -1
  %165 = getelementptr i8, ptr %2, i64 %161
  %166 = getelementptr i8, ptr %165, i64 %164
  store i8 0, ptr %166, align 1, !tbaa !43
  br label %167

167:                                              ; preds = %156, %150
  %168 = load ptr, ptr %5, align 8, !tbaa !41
  br label %169

169:                                              ; preds = %169, %167
  %170 = phi ptr [ %151, %167 ], [ %177, %169 ]
  %171 = load i8, ptr %170, align 1, !tbaa !43
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds i16, ptr %168, i64 %172
  %174 = load i16, ptr %173, align 2, !tbaa !44
  %175 = and i16 %174, 8192
  %176 = icmp eq i16 %175, 0
  %177 = getelementptr inbounds i8, ptr %170, i64 1
  br i1 %176, label %178, label %169, !llvm.loop !53

178:                                              ; preds = %169
  %179 = icmp eq ptr %1, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %178
  store ptr %170, ptr %1, align 8, !tbaa !41
  br label %181

181:                                              ; preds = %180, %178
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @GlobExpression(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %3783, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !43
  %7 = zext i8 %6 to i32
  br label %8

8:                                                ; preds = %5, %30
  %9 = phi ptr [ %1, %5 ], [ %12, %30 ]
  %10 = phi i32 [ %7, %5 ], [ %33, %30 ]
  %11 = phi i64 [ 0, %5 ], [ %34, %30 ]
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %11
  %14 = load i32, ptr %13, align 16, !tbaa !54
  %15 = and i32 %14, %7
  %16 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %11, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %8
  %20 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %11, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !57
  %22 = and i32 %21, %10
  %23 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %11, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !58
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %36, label %38

26:                                               ; preds = %8
  %27 = load i8, ptr %12, align 1, !tbaa !43
  %28 = xor i8 %27, -128
  %29 = icmp ult i8 %28, 64
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = zext nneg i8 %28 to i32
  %32 = shl i32 %10, 6
  %33 = or disjoint i32 %32, %31
  %34 = add nuw nsw i64 %11, 1
  %35 = icmp eq i64 %34, 6
  br i1 %35, label %36, label %8, !llvm.loop !59

36:                                               ; preds = %30, %26, %19
  %37 = tail call ptr @__errno_location() #10
  store i32 84, ptr %37, align 4, !tbaa !34
  br label %38

38:                                               ; preds = %36, %19
  %39 = phi i32 [ %22, %19 ], [ -1, %36 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %3783, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @LocaleCompare(ptr noundef nonnull %1, ptr noundef nonnull @.str.7) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %3783, label %44

44:                                               ; preds = %41
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %46 = getelementptr inbounds i8, ptr %1, i64 %45
  %47 = getelementptr inbounds i8, ptr %46, i64 -1
  %48 = load i8, ptr %47, align 1, !tbaa !43
  %49 = zext i8 %48 to i32
  br label %50

50:                                               ; preds = %44, %71
  %51 = phi ptr [ %46, %44 ], [ %76, %71 ]
  %52 = phi i32 [ %49, %44 ], [ %74, %71 ]
  %53 = phi i64 [ 0, %44 ], [ %75, %71 ]
  %54 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %53
  %55 = load i32, ptr %54, align 16, !tbaa !54
  %56 = and i32 %55, %49
  %57 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %53, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !56
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %53, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !57
  %63 = and i32 %62, %52
  %64 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %53, i32 3
  %65 = load i32, ptr %64, align 4, !tbaa !58
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %78, label %80

67:                                               ; preds = %50
  %68 = load i8, ptr %51, align 1, !tbaa !43
  %69 = xor i8 %68, -128
  %70 = icmp ult i8 %69, 64
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = zext nneg i8 %69 to i32
  %73 = shl i32 %52, 6
  %74 = or disjoint i32 %73, %72
  %75 = add nuw nsw i64 %53, 1
  %76 = getelementptr inbounds i8, ptr %51, i64 1
  %77 = icmp eq i64 %75, 6
  br i1 %77, label %78, label %50, !llvm.loop !59

78:                                               ; preds = %71, %67, %60
  %79 = tail call ptr @__errno_location() #10
  store i32 84, ptr %79, align 4, !tbaa !34
  br label %80

80:                                               ; preds = %78, %60
  %81 = phi i32 [ %63, %60 ], [ -1, %78 ]
  %82 = icmp eq i32 %81, 93
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 91) #12
  %85 = icmp eq ptr %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = tail call ptr @AcquireImageInfo() #9
  %88 = getelementptr inbounds %struct._ImageInfo, ptr %87, i64 0, i32 51
  %89 = tail call i64 @CopyMagickString(ptr noundef nonnull %88, ptr noundef nonnull %1, i64 noundef 4096) #9
  %90 = tail call ptr @AcquireExceptionInfo() #9
  %91 = tail call i32 @SetImageInfo(ptr noundef %87, i32 noundef 0, ptr noundef %90) #9
  %92 = tail call ptr @DestroyExceptionInfo(ptr noundef %90) #9
  %93 = tail call i32 @LocaleCompare(ptr noundef nonnull %88, ptr noundef nonnull %1) #9
  %94 = icmp eq i32 %93, 0
  %95 = tail call ptr @DestroyImageInfo(ptr noundef %87) #9
  br i1 %94, label %96, label %3783

96:                                               ; preds = %86, %83, %80
  %97 = icmp eq i32 %2, 0
  br label %98

98:                                               ; preds = %3523, %96
  %99 = phi i1 [ true, %96 ], [ %3524, %3523 ]
  %100 = phi ptr [ %1, %96 ], [ %3525, %3523 ]
  %101 = phi ptr [ %0, %96 ], [ %3526, %3523 ]
  %102 = icmp eq ptr %100, null
  br i1 %102, label %134, label %103

103:                                              ; preds = %98
  %104 = load i8, ptr %100, align 1, !tbaa !43
  %105 = zext i8 %104 to i32
  br label %106

106:                                              ; preds = %103, %128
  %107 = phi ptr [ %100, %103 ], [ %110, %128 ]
  %108 = phi i32 [ %105, %103 ], [ %131, %128 ]
  %109 = phi i64 [ 0, %103 ], [ %132, %128 ]
  %110 = getelementptr inbounds i8, ptr %107, i64 1
  %111 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %109
  %112 = load i32, ptr %111, align 16, !tbaa !54
  %113 = and i32 %112, %105
  %114 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %109, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !56
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %106
  %118 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %109, i32 2
  %119 = load i32, ptr %118, align 8, !tbaa !57
  %120 = and i32 %119, %108
  %121 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %109, i32 3
  %122 = load i32, ptr %121, align 4, !tbaa !58
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %134, label %137

124:                                              ; preds = %106
  %125 = load i8, ptr %110, align 1, !tbaa !43
  %126 = xor i8 %125, -128
  %127 = icmp ult i8 %126, 64
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = zext nneg i8 %126 to i32
  %130 = shl i32 %108, 6
  %131 = or disjoint i32 %130, %129
  %132 = add nuw nsw i64 %109, 1
  %133 = icmp eq i64 %132, 6
  br i1 %133, label %134, label %106, !llvm.loop !59

134:                                              ; preds = %128, %124, %117, %98
  %135 = phi i32 [ 22, %98 ], [ 84, %117 ], [ 84, %124 ], [ 84, %128 ]
  %136 = tail call ptr @__errno_location() #10
  store i32 %135, ptr %136, align 4, !tbaa !34
  br label %137

137:                                              ; preds = %134, %117
  %138 = phi i32 [ %120, %117 ], [ -1, %134 ]
  %139 = icmp ne i32 %138, 0
  %140 = and i1 %99, %139
  br i1 %140, label %142, label %141

141:                                              ; preds = %254, %137
  br label %3619

142:                                              ; preds = %137
  %143 = icmp eq ptr %101, null
  br i1 %143, label %175, label %144

144:                                              ; preds = %142
  %145 = load i8, ptr %101, align 1, !tbaa !43
  %146 = zext i8 %145 to i32
  br label %147

147:                                              ; preds = %144, %169
  %148 = phi ptr [ %101, %144 ], [ %151, %169 ]
  %149 = phi i32 [ %146, %144 ], [ %172, %169 ]
  %150 = phi i64 [ 0, %144 ], [ %173, %169 ]
  %151 = getelementptr inbounds i8, ptr %148, i64 1
  %152 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %150
  %153 = load i32, ptr %152, align 16, !tbaa !54
  %154 = and i32 %153, %146
  %155 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %150, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !56
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %147
  %159 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %150, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !57
  %161 = and i32 %160, %149
  %162 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %150, i32 3
  %163 = load i32, ptr %162, align 4, !tbaa !58
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %175, label %178

165:                                              ; preds = %147
  %166 = load i8, ptr %151, align 1, !tbaa !43
  %167 = xor i8 %166, -128
  %168 = icmp ult i8 %167, 64
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = zext nneg i8 %167 to i32
  %171 = shl i32 %149, 6
  %172 = or disjoint i32 %171, %170
  %173 = add nuw nsw i64 %150, 1
  %174 = icmp eq i64 %173, 6
  br i1 %174, label %175, label %147, !llvm.loop !59

175:                                              ; preds = %169, %165, %158, %142
  %176 = phi i32 [ 22, %142 ], [ 84, %158 ], [ 84, %165 ], [ 84, %169 ]
  %177 = tail call ptr @__errno_location() #10
  store i32 %176, ptr %177, align 4, !tbaa !34
  br label %178

178:                                              ; preds = %175, %158
  %179 = phi i32 [ %161, %158 ], [ -1, %175 ]
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %257

181:                                              ; preds = %178
  br i1 %102, label %213, label %182

182:                                              ; preds = %181
  %183 = load i8, ptr %100, align 1, !tbaa !43
  %184 = zext i8 %183 to i32
  br label %185

185:                                              ; preds = %182, %207
  %186 = phi ptr [ %100, %182 ], [ %189, %207 ]
  %187 = phi i32 [ %184, %182 ], [ %210, %207 ]
  %188 = phi i64 [ 0, %182 ], [ %211, %207 ]
  %189 = getelementptr inbounds i8, ptr %186, i64 1
  %190 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %188
  %191 = load i32, ptr %190, align 16, !tbaa !54
  %192 = and i32 %191, %184
  %193 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %188, i32 1
  %194 = load i32, ptr %193, align 4, !tbaa !56
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %185
  %197 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %188, i32 2
  %198 = load i32, ptr %197, align 8, !tbaa !57
  %199 = and i32 %198, %187
  %200 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %188, i32 3
  %201 = load i32, ptr %200, align 4, !tbaa !58
  %202 = icmp slt i32 %199, %201
  br i1 %202, label %213, label %216

203:                                              ; preds = %185
  %204 = load i8, ptr %189, align 1, !tbaa !43
  %205 = xor i8 %204, -128
  %206 = icmp ult i8 %205, 64
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = zext nneg i8 %205 to i32
  %209 = shl i32 %187, 6
  %210 = or disjoint i32 %209, %208
  %211 = add nuw nsw i64 %188, 1
  %212 = icmp eq i64 %211, 6
  br i1 %212, label %213, label %185, !llvm.loop !59

213:                                              ; preds = %207, %203, %196, %181
  %214 = phi i32 [ 22, %181 ], [ 84, %196 ], [ 84, %203 ], [ 84, %207 ]
  %215 = tail call ptr @__errno_location() #10
  store i32 %214, ptr %215, align 4, !tbaa !34
  br label %216

216:                                              ; preds = %213, %196
  %217 = phi i32 [ %199, %196 ], [ -1, %213 ]
  %218 = icmp eq i32 %217, 123
  br i1 %218, label %257, label %219

219:                                              ; preds = %216
  br i1 %102, label %251, label %220

220:                                              ; preds = %219
  %221 = load i8, ptr %100, align 1, !tbaa !43
  %222 = zext i8 %221 to i32
  br label %223

223:                                              ; preds = %220, %245
  %224 = phi ptr [ %100, %220 ], [ %227, %245 ]
  %225 = phi i32 [ %222, %220 ], [ %248, %245 ]
  %226 = phi i64 [ 0, %220 ], [ %249, %245 ]
  %227 = getelementptr inbounds i8, ptr %224, i64 1
  %228 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %226
  %229 = load i32, ptr %228, align 16, !tbaa !54
  %230 = and i32 %229, %222
  %231 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %226, i32 1
  %232 = load i32, ptr %231, align 4, !tbaa !56
  %233 = icmp eq i32 %230, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %223
  %235 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %226, i32 2
  %236 = load i32, ptr %235, align 8, !tbaa !57
  %237 = and i32 %236, %225
  %238 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %226, i32 3
  %239 = load i32, ptr %238, align 4, !tbaa !58
  %240 = icmp slt i32 %237, %239
  br i1 %240, label %251, label %254

241:                                              ; preds = %223
  %242 = load i8, ptr %227, align 1, !tbaa !43
  %243 = xor i8 %242, -128
  %244 = icmp ult i8 %243, 64
  br i1 %244, label %245, label %251

245:                                              ; preds = %241
  %246 = zext nneg i8 %243 to i32
  %247 = shl i32 %225, 6
  %248 = or disjoint i32 %247, %246
  %249 = add nuw nsw i64 %226, 1
  %250 = icmp eq i64 %249, 6
  br i1 %250, label %251, label %223, !llvm.loop !59

251:                                              ; preds = %245, %241, %234, %219
  %252 = phi i32 [ 22, %219 ], [ 84, %234 ], [ 84, %241 ], [ 84, %245 ]
  %253 = tail call ptr @__errno_location() #10
  store i32 %252, ptr %253, align 4, !tbaa !34
  br label %254

254:                                              ; preds = %251, %234
  %255 = phi i32 [ %237, %234 ], [ -1, %251 ]
  %256 = icmp eq i32 %255, 42
  br i1 %256, label %257, label %141

257:                                              ; preds = %216, %254, %178
  br i1 %102, label %289, label %258

258:                                              ; preds = %257
  %259 = load i8, ptr %100, align 1, !tbaa !43
  %260 = zext i8 %259 to i32
  br label %261

261:                                              ; preds = %258, %283
  %262 = phi ptr [ %100, %258 ], [ %265, %283 ]
  %263 = phi i32 [ %260, %258 ], [ %286, %283 ]
  %264 = phi i64 [ 0, %258 ], [ %287, %283 ]
  %265 = getelementptr inbounds i8, ptr %262, i64 1
  %266 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %264
  %267 = load i32, ptr %266, align 16, !tbaa !54
  %268 = and i32 %267, %260
  %269 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %264, i32 1
  %270 = load i32, ptr %269, align 4, !tbaa !56
  %271 = icmp eq i32 %268, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %261
  %273 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %264, i32 2
  %274 = load i32, ptr %273, align 8, !tbaa !57
  %275 = and i32 %274, %263
  %276 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %264, i32 3
  %277 = load i32, ptr %276, align 4, !tbaa !58
  %278 = icmp slt i32 %275, %277
  br i1 %278, label %289, label %292

279:                                              ; preds = %261
  %280 = load i8, ptr %265, align 1, !tbaa !43
  %281 = xor i8 %280, -128
  %282 = icmp ult i8 %281, 64
  br i1 %282, label %283, label %289

283:                                              ; preds = %279
  %284 = zext nneg i8 %281 to i32
  %285 = shl i32 %263, 6
  %286 = or disjoint i32 %285, %284
  %287 = add nuw nsw i64 %264, 1
  %288 = icmp eq i64 %287, 6
  br i1 %288, label %289, label %261, !llvm.loop !59

289:                                              ; preds = %283, %279, %272, %257
  %290 = phi i32 [ 22, %257 ], [ 84, %272 ], [ 84, %279 ], [ 84, %283 ]
  %291 = tail call ptr @__errno_location() #10
  store i32 %290, ptr %291, align 4, !tbaa !34
  br label %292

292:                                              ; preds = %289, %272
  %293 = phi i32 [ %275, %272 ], [ -1, %289 ]
  switch i32 %293, label %3351 [
    i32 42, label %294
    i32 91, label %597
    i32 63, label %1879
    i32 123, label %1970
    i32 92, label %3270
  ]

294:                                              ; preds = %292
  br i1 %102, label %295, label %297

295:                                              ; preds = %294
  %296 = tail call ptr @__errno_location() #10
  store i32 22, ptr %296, align 4, !tbaa !34
  br label %336

297:                                              ; preds = %294
  %298 = load i8, ptr %100, align 1, !tbaa !43
  %299 = zext i8 %298 to i32
  br label %300

300:                                              ; preds = %297, %328
  %301 = phi ptr [ %100, %297 ], [ %304, %328 ]
  %302 = phi i32 [ %299, %297 ], [ %331, %328 ]
  %303 = phi i64 [ 0, %297 ], [ %332, %328 ]
  %304 = getelementptr inbounds i8, ptr %301, i64 1
  %305 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %303
  %306 = load i32, ptr %305, align 16, !tbaa !54
  %307 = and i32 %306, %299
  %308 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %303, i32 1
  %309 = load i32, ptr %308, align 4, !tbaa !56
  %310 = icmp eq i32 %307, %309
  br i1 %310, label %311, label %322

311:                                              ; preds = %300
  %312 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %303, i32 2
  %313 = load i32, ptr %312, align 8, !tbaa !57
  %314 = and i32 %313, %302
  %315 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %303, i32 3
  %316 = load i32, ptr %315, align 4, !tbaa !58
  %317 = icmp slt i32 %314, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %311
  %319 = tail call ptr @__errno_location() #10
  store i32 84, ptr %319, align 4, !tbaa !34
  br label %336

320:                                              ; preds = %311
  %321 = add nuw nsw i64 %303, 1
  br label %336

322:                                              ; preds = %300
  %323 = load i8, ptr %304, align 1, !tbaa !43
  %324 = xor i8 %323, -128
  %325 = icmp ult i8 %324, 64
  br i1 %325, label %328, label %326

326:                                              ; preds = %322
  %327 = tail call ptr @__errno_location() #10
  store i32 84, ptr %327, align 4, !tbaa !34
  br label %336

328:                                              ; preds = %322
  %329 = zext nneg i8 %324 to i32
  %330 = shl i32 %302, 6
  %331 = or disjoint i32 %330, %329
  %332 = add nuw nsw i64 %303, 1
  %333 = icmp eq i64 %332, 6
  br i1 %333, label %334, label %300, !llvm.loop !59

334:                                              ; preds = %328
  %335 = tail call ptr @__errno_location() #10
  store i32 84, ptr %335, align 4, !tbaa !34
  br label %336

336:                                              ; preds = %295, %318, %320, %326, %334
  %337 = phi i64 [ 1, %295 ], [ 1, %318 ], [ %321, %320 ], [ 1, %326 ], [ 1, %334 ]
  %338 = and i64 %337, 4294967295
  %339 = getelementptr inbounds i8, ptr %100, i64 %338
  br label %340

340:                                              ; preds = %426, %336
  %341 = phi i32 [ 0, %336 ], [ %384, %426 ]
  %342 = phi ptr [ %101, %336 ], [ %429, %426 ]
  %343 = icmp eq ptr %342, null
  br i1 %343, label %375, label %344

344:                                              ; preds = %340
  %345 = load i8, ptr %342, align 1, !tbaa !43
  %346 = zext i8 %345 to i32
  br label %347

347:                                              ; preds = %344, %369
  %348 = phi ptr [ %342, %344 ], [ %351, %369 ]
  %349 = phi i32 [ %346, %344 ], [ %372, %369 ]
  %350 = phi i64 [ 0, %344 ], [ %373, %369 ]
  %351 = getelementptr inbounds i8, ptr %348, i64 1
  %352 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %350
  %353 = load i32, ptr %352, align 16, !tbaa !54
  %354 = and i32 %353, %346
  %355 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %350, i32 1
  %356 = load i32, ptr %355, align 4, !tbaa !56
  %357 = icmp eq i32 %354, %356
  br i1 %357, label %358, label %365

358:                                              ; preds = %347
  %359 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %350, i32 2
  %360 = load i32, ptr %359, align 8, !tbaa !57
  %361 = and i32 %360, %349
  %362 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %350, i32 3
  %363 = load i32, ptr %362, align 4, !tbaa !58
  %364 = icmp slt i32 %361, %363
  br i1 %364, label %375, label %378

365:                                              ; preds = %347
  %366 = load i8, ptr %351, align 1, !tbaa !43
  %367 = xor i8 %366, -128
  %368 = icmp ult i8 %367, 64
  br i1 %368, label %369, label %375

369:                                              ; preds = %365
  %370 = zext nneg i8 %367 to i32
  %371 = shl i32 %349, 6
  %372 = or disjoint i32 %371, %370
  %373 = add nuw nsw i64 %350, 1
  %374 = icmp eq i64 %373, 6
  br i1 %374, label %375, label %347, !llvm.loop !59

375:                                              ; preds = %369, %365, %358, %340
  %376 = phi i32 [ 22, %340 ], [ 84, %358 ], [ 84, %365 ], [ 84, %369 ]
  %377 = tail call ptr @__errno_location() #10
  store i32 %376, ptr %377, align 4, !tbaa !34
  br label %378

378:                                              ; preds = %375, %358
  %379 = phi i32 [ %361, %358 ], [ -1, %375 ]
  %380 = icmp ne i32 %379, 0
  %381 = icmp eq i32 %341, 0
  %382 = select i1 %380, i1 %381, i1 false
  br i1 %382, label %383, label %430

383:                                              ; preds = %378
  %384 = tail call i32 @GlobExpression(ptr noundef %342, ptr noundef %339, i32 noundef %2), !range !60
  br i1 %343, label %385, label %387

385:                                              ; preds = %383
  %386 = tail call ptr @__errno_location() #10
  store i32 22, ptr %386, align 4, !tbaa !34
  br label %426

387:                                              ; preds = %383
  %388 = load i8, ptr %342, align 1, !tbaa !43
  %389 = zext i8 %388 to i32
  br label %390

390:                                              ; preds = %387, %418
  %391 = phi ptr [ %342, %387 ], [ %394, %418 ]
  %392 = phi i32 [ %389, %387 ], [ %421, %418 ]
  %393 = phi i64 [ 0, %387 ], [ %422, %418 ]
  %394 = getelementptr inbounds i8, ptr %391, i64 1
  %395 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %393
  %396 = load i32, ptr %395, align 16, !tbaa !54
  %397 = and i32 %396, %389
  %398 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %393, i32 1
  %399 = load i32, ptr %398, align 4, !tbaa !56
  %400 = icmp eq i32 %397, %399
  br i1 %400, label %401, label %412

401:                                              ; preds = %390
  %402 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %393, i32 2
  %403 = load i32, ptr %402, align 8, !tbaa !57
  %404 = and i32 %403, %392
  %405 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %393, i32 3
  %406 = load i32, ptr %405, align 4, !tbaa !58
  %407 = icmp slt i32 %404, %406
  br i1 %407, label %408, label %410

408:                                              ; preds = %401
  %409 = tail call ptr @__errno_location() #10
  store i32 84, ptr %409, align 4, !tbaa !34
  br label %426

410:                                              ; preds = %401
  %411 = add nuw nsw i64 %393, 1
  br label %426

412:                                              ; preds = %390
  %413 = load i8, ptr %394, align 1, !tbaa !43
  %414 = xor i8 %413, -128
  %415 = icmp ult i8 %414, 64
  br i1 %415, label %418, label %416

416:                                              ; preds = %412
  %417 = tail call ptr @__errno_location() #10
  store i32 84, ptr %417, align 4, !tbaa !34
  br label %426

418:                                              ; preds = %412
  %419 = zext nneg i8 %414 to i32
  %420 = shl i32 %392, 6
  %421 = or disjoint i32 %420, %419
  %422 = add nuw nsw i64 %393, 1
  %423 = icmp eq i64 %422, 6
  br i1 %423, label %424, label %390, !llvm.loop !59

424:                                              ; preds = %418
  %425 = tail call ptr @__errno_location() #10
  store i32 84, ptr %425, align 4, !tbaa !34
  br label %426

426:                                              ; preds = %385, %408, %410, %416, %424
  %427 = phi i64 [ 1, %385 ], [ 1, %408 ], [ %411, %410 ], [ 1, %416 ], [ 1, %424 ]
  %428 = and i64 %427, 4294967295
  %429 = getelementptr inbounds i8, ptr %342, i64 %428
  br label %340, !llvm.loop !61

430:                                              ; preds = %378
  br i1 %381, label %3523, label %431

431:                                              ; preds = %430, %513
  %432 = phi ptr [ %516, %513 ], [ %342, %430 ]
  %433 = icmp eq ptr %432, null
  br i1 %433, label %465, label %434

434:                                              ; preds = %431
  %435 = load i8, ptr %432, align 1, !tbaa !43
  %436 = zext i8 %435 to i32
  br label %437

437:                                              ; preds = %434, %459
  %438 = phi ptr [ %432, %434 ], [ %441, %459 ]
  %439 = phi i32 [ %436, %434 ], [ %462, %459 ]
  %440 = phi i64 [ 0, %434 ], [ %463, %459 ]
  %441 = getelementptr inbounds i8, ptr %438, i64 1
  %442 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %440
  %443 = load i32, ptr %442, align 16, !tbaa !54
  %444 = and i32 %443, %436
  %445 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %440, i32 1
  %446 = load i32, ptr %445, align 4, !tbaa !56
  %447 = icmp eq i32 %444, %446
  br i1 %447, label %448, label %455

448:                                              ; preds = %437
  %449 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %440, i32 2
  %450 = load i32, ptr %449, align 8, !tbaa !57
  %451 = and i32 %450, %439
  %452 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %440, i32 3
  %453 = load i32, ptr %452, align 4, !tbaa !58
  %454 = icmp slt i32 %451, %453
  br i1 %454, label %465, label %468

455:                                              ; preds = %437
  %456 = load i8, ptr %441, align 1, !tbaa !43
  %457 = xor i8 %456, -128
  %458 = icmp ult i8 %457, 64
  br i1 %458, label %459, label %465

459:                                              ; preds = %455
  %460 = zext nneg i8 %457 to i32
  %461 = shl i32 %439, 6
  %462 = or disjoint i32 %461, %460
  %463 = add nuw nsw i64 %440, 1
  %464 = icmp eq i64 %463, 6
  br i1 %464, label %465, label %437, !llvm.loop !59

465:                                              ; preds = %459, %455, %448, %431
  %466 = phi i32 [ 22, %431 ], [ 84, %448 ], [ 84, %455 ], [ 84, %459 ]
  %467 = tail call ptr @__errno_location() #10
  store i32 %466, ptr %467, align 4, !tbaa !34
  br label %468

468:                                              ; preds = %465, %448
  %469 = phi i32 [ %451, %448 ], [ -1, %465 ]
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %517, label %471

471:                                              ; preds = %468
  br i1 %433, label %472, label %474

472:                                              ; preds = %471
  %473 = tail call ptr @__errno_location() #10
  store i32 22, ptr %473, align 4, !tbaa !34
  br label %513

474:                                              ; preds = %471
  %475 = load i8, ptr %432, align 1, !tbaa !43
  %476 = zext i8 %475 to i32
  br label %477

477:                                              ; preds = %474, %505
  %478 = phi ptr [ %432, %474 ], [ %481, %505 ]
  %479 = phi i32 [ %476, %474 ], [ %508, %505 ]
  %480 = phi i64 [ 0, %474 ], [ %509, %505 ]
  %481 = getelementptr inbounds i8, ptr %478, i64 1
  %482 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %480
  %483 = load i32, ptr %482, align 16, !tbaa !54
  %484 = and i32 %483, %476
  %485 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %480, i32 1
  %486 = load i32, ptr %485, align 4, !tbaa !56
  %487 = icmp eq i32 %484, %486
  br i1 %487, label %488, label %499

488:                                              ; preds = %477
  %489 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %480, i32 2
  %490 = load i32, ptr %489, align 8, !tbaa !57
  %491 = and i32 %490, %479
  %492 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %480, i32 3
  %493 = load i32, ptr %492, align 4, !tbaa !58
  %494 = icmp slt i32 %491, %493
  br i1 %494, label %495, label %497

495:                                              ; preds = %488
  %496 = tail call ptr @__errno_location() #10
  store i32 84, ptr %496, align 4, !tbaa !34
  br label %513

497:                                              ; preds = %488
  %498 = add nuw nsw i64 %480, 1
  br label %513

499:                                              ; preds = %477
  %500 = load i8, ptr %481, align 1, !tbaa !43
  %501 = xor i8 %500, -128
  %502 = icmp ult i8 %501, 64
  br i1 %502, label %505, label %503

503:                                              ; preds = %499
  %504 = tail call ptr @__errno_location() #10
  store i32 84, ptr %504, align 4, !tbaa !34
  br label %513

505:                                              ; preds = %499
  %506 = zext nneg i8 %501 to i32
  %507 = shl i32 %479, 6
  %508 = or disjoint i32 %507, %506
  %509 = add nuw nsw i64 %480, 1
  %510 = icmp eq i64 %509, 6
  br i1 %510, label %511, label %477, !llvm.loop !59

511:                                              ; preds = %505
  %512 = tail call ptr @__errno_location() #10
  store i32 84, ptr %512, align 4, !tbaa !34
  br label %513

513:                                              ; preds = %472, %495, %497, %503, %511
  %514 = phi i64 [ 1, %472 ], [ 1, %495 ], [ %498, %497 ], [ 1, %503 ], [ 1, %511 ]
  %515 = and i64 %514, 4294967295
  %516 = getelementptr inbounds i8, ptr %432, i64 %515
  br label %431, !llvm.loop !62

517:                                              ; preds = %468, %593
  %518 = phi ptr [ %596, %593 ], [ %339, %468 ]
  %519 = load i8, ptr %518, align 1, !tbaa !43
  %520 = zext i8 %519 to i32
  br label %521

521:                                              ; preds = %517, %543
  %522 = phi ptr [ %518, %517 ], [ %525, %543 ]
  %523 = phi i32 [ %520, %517 ], [ %546, %543 ]
  %524 = phi i64 [ 0, %517 ], [ %547, %543 ]
  %525 = getelementptr inbounds i8, ptr %522, i64 1
  %526 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %524
  %527 = load i32, ptr %526, align 16, !tbaa !54
  %528 = and i32 %527, %520
  %529 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %524, i32 1
  %530 = load i32, ptr %529, align 4, !tbaa !56
  %531 = icmp eq i32 %528, %530
  br i1 %531, label %532, label %539

532:                                              ; preds = %521
  %533 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %524, i32 2
  %534 = load i32, ptr %533, align 8, !tbaa !57
  %535 = and i32 %534, %523
  %536 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %524, i32 3
  %537 = load i32, ptr %536, align 4, !tbaa !58
  %538 = icmp slt i32 %535, %537
  br i1 %538, label %549, label %551

539:                                              ; preds = %521
  %540 = load i8, ptr %525, align 1, !tbaa !43
  %541 = xor i8 %540, -128
  %542 = icmp ult i8 %541, 64
  br i1 %542, label %543, label %549

543:                                              ; preds = %539
  %544 = zext nneg i8 %541 to i32
  %545 = shl i32 %523, 6
  %546 = or disjoint i32 %545, %544
  %547 = add nuw nsw i64 %524, 1
  %548 = icmp eq i64 %547, 6
  br i1 %548, label %549, label %521, !llvm.loop !59

549:                                              ; preds = %543, %539, %532
  %550 = tail call ptr @__errno_location() #10
  store i32 84, ptr %550, align 4, !tbaa !34
  br label %551

551:                                              ; preds = %549, %532
  %552 = phi i32 [ %535, %532 ], [ -1, %549 ]
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %3523, label %554, !llvm.loop !63

554:                                              ; preds = %551
  %555 = load i8, ptr %518, align 1, !tbaa !43
  %556 = zext i8 %555 to i32
  br label %557

557:                                              ; preds = %554, %585
  %558 = phi ptr [ %518, %554 ], [ %561, %585 ]
  %559 = phi i32 [ %556, %554 ], [ %588, %585 ]
  %560 = phi i64 [ 0, %554 ], [ %589, %585 ]
  %561 = getelementptr inbounds i8, ptr %558, i64 1
  %562 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %560
  %563 = load i32, ptr %562, align 16, !tbaa !54
  %564 = and i32 %563, %556
  %565 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %560, i32 1
  %566 = load i32, ptr %565, align 4, !tbaa !56
  %567 = icmp eq i32 %564, %566
  br i1 %567, label %568, label %579

568:                                              ; preds = %557
  %569 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %560, i32 2
  %570 = load i32, ptr %569, align 8, !tbaa !57
  %571 = and i32 %570, %559
  %572 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %560, i32 3
  %573 = load i32, ptr %572, align 4, !tbaa !58
  %574 = icmp slt i32 %571, %573
  br i1 %574, label %575, label %577

575:                                              ; preds = %568
  %576 = tail call ptr @__errno_location() #10
  store i32 84, ptr %576, align 4, !tbaa !34
  br label %593

577:                                              ; preds = %568
  %578 = add nuw nsw i64 %560, 1
  br label %593

579:                                              ; preds = %557
  %580 = load i8, ptr %561, align 1, !tbaa !43
  %581 = xor i8 %580, -128
  %582 = icmp ult i8 %581, 64
  br i1 %582, label %585, label %583

583:                                              ; preds = %579
  %584 = tail call ptr @__errno_location() #10
  store i32 84, ptr %584, align 4, !tbaa !34
  br label %593

585:                                              ; preds = %579
  %586 = zext nneg i8 %581 to i32
  %587 = shl i32 %559, 6
  %588 = or disjoint i32 %587, %586
  %589 = add nuw nsw i64 %560, 1
  %590 = icmp eq i64 %589, 6
  br i1 %590, label %591, label %557, !llvm.loop !59

591:                                              ; preds = %585
  %592 = tail call ptr @__errno_location() #10
  store i32 84, ptr %592, align 4, !tbaa !34
  br label %593

593:                                              ; preds = %575, %577, %583, %591
  %594 = phi i64 [ 1, %575 ], [ %578, %577 ], [ 1, %583 ], [ 1, %591 ]
  %595 = and i64 %594, 4294967295
  %596 = getelementptr inbounds i8, ptr %518, i64 %595
  br label %517, !llvm.loop !64

597:                                              ; preds = %292
  br i1 %102, label %598, label %600

598:                                              ; preds = %597
  %599 = tail call ptr @__errno_location() #10
  store i32 22, ptr %599, align 4, !tbaa !34
  br label %639

600:                                              ; preds = %597
  %601 = load i8, ptr %100, align 1, !tbaa !43
  %602 = zext i8 %601 to i32
  br label %603

603:                                              ; preds = %600, %631
  %604 = phi ptr [ %100, %600 ], [ %607, %631 ]
  %605 = phi i32 [ %602, %600 ], [ %634, %631 ]
  %606 = phi i64 [ 0, %600 ], [ %635, %631 ]
  %607 = getelementptr inbounds i8, ptr %604, i64 1
  %608 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %606
  %609 = load i32, ptr %608, align 16, !tbaa !54
  %610 = and i32 %609, %602
  %611 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %606, i32 1
  %612 = load i32, ptr %611, align 4, !tbaa !56
  %613 = icmp eq i32 %610, %612
  br i1 %613, label %614, label %625

614:                                              ; preds = %603
  %615 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %606, i32 2
  %616 = load i32, ptr %615, align 8, !tbaa !57
  %617 = and i32 %616, %605
  %618 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %606, i32 3
  %619 = load i32, ptr %618, align 4, !tbaa !58
  %620 = icmp slt i32 %617, %619
  br i1 %620, label %621, label %623

621:                                              ; preds = %614
  %622 = tail call ptr @__errno_location() #10
  store i32 84, ptr %622, align 4, !tbaa !34
  br label %639

623:                                              ; preds = %614
  %624 = add nuw nsw i64 %606, 1
  br label %639

625:                                              ; preds = %603
  %626 = load i8, ptr %607, align 1, !tbaa !43
  %627 = xor i8 %626, -128
  %628 = icmp ult i8 %627, 64
  br i1 %628, label %631, label %629

629:                                              ; preds = %625
  %630 = tail call ptr @__errno_location() #10
  store i32 84, ptr %630, align 4, !tbaa !34
  br label %639

631:                                              ; preds = %625
  %632 = zext nneg i8 %627 to i32
  %633 = shl i32 %605, 6
  %634 = or disjoint i32 %633, %632
  %635 = add nuw nsw i64 %606, 1
  %636 = icmp eq i64 %635, 6
  br i1 %636, label %637, label %603, !llvm.loop !59

637:                                              ; preds = %631
  %638 = tail call ptr @__errno_location() #10
  store i32 84, ptr %638, align 4, !tbaa !34
  br label %639

639:                                              ; preds = %598, %621, %623, %629, %637
  %640 = phi i64 [ 1, %637 ], [ 1, %629 ], [ %624, %623 ], [ 1, %621 ], [ 1, %598 ]
  br label %641

641:                                              ; preds = %1327, %639
  %642 = phi i64 [ %640, %639 ], [ %1328, %1327 ]
  %643 = phi ptr [ %100, %639 ], [ %1329, %1327 ]
  %644 = and i64 %642, 4294967295
  %645 = getelementptr inbounds i8, ptr %643, i64 %644
  %646 = load i8, ptr %645, align 1, !tbaa !43
  %647 = zext i8 %646 to i32
  br label %648

648:                                              ; preds = %641, %670
  %649 = phi ptr [ %645, %641 ], [ %652, %670 ]
  %650 = phi i32 [ %647, %641 ], [ %673, %670 ]
  %651 = phi i64 [ 0, %641 ], [ %674, %670 ]
  %652 = getelementptr inbounds i8, ptr %649, i64 1
  %653 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %651
  %654 = load i32, ptr %653, align 16, !tbaa !54
  %655 = and i32 %654, %647
  %656 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %651, i32 1
  %657 = load i32, ptr %656, align 4, !tbaa !56
  %658 = icmp eq i32 %655, %657
  br i1 %658, label %659, label %666

659:                                              ; preds = %648
  %660 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %651, i32 2
  %661 = load i32, ptr %660, align 8, !tbaa !57
  %662 = and i32 %661, %650
  %663 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %651, i32 3
  %664 = load i32, ptr %663, align 4, !tbaa !58
  %665 = icmp slt i32 %662, %664
  br i1 %665, label %676, label %678

666:                                              ; preds = %648
  %667 = load i8, ptr %652, align 1, !tbaa !43
  %668 = xor i8 %667, -128
  %669 = icmp ult i8 %668, 64
  br i1 %669, label %670, label %676

670:                                              ; preds = %666
  %671 = zext nneg i8 %668 to i32
  %672 = shl i32 %650, 6
  %673 = or disjoint i32 %672, %671
  %674 = add nuw nsw i64 %651, 1
  %675 = icmp eq i64 %674, 6
  br i1 %675, label %676, label %648, !llvm.loop !59

676:                                              ; preds = %670, %666, %659
  %677 = tail call ptr @__errno_location() #10
  store i32 84, ptr %677, align 4, !tbaa !34
  br label %678

678:                                              ; preds = %676, %659
  %679 = phi i32 [ %662, %659 ], [ -1, %676 ]
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %3523, label %681, !llvm.loop !63

681:                                              ; preds = %678
  %682 = load i8, ptr %645, align 1, !tbaa !43
  %683 = zext i8 %682 to i32
  br label %684

684:                                              ; preds = %681, %706
  %685 = phi ptr [ %645, %681 ], [ %688, %706 ]
  %686 = phi i32 [ %683, %681 ], [ %709, %706 ]
  %687 = phi i64 [ 0, %681 ], [ %710, %706 ]
  %688 = getelementptr inbounds i8, ptr %685, i64 1
  %689 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %687
  %690 = load i32, ptr %689, align 16, !tbaa !54
  %691 = and i32 %690, %683
  %692 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %687, i32 1
  %693 = load i32, ptr %692, align 4, !tbaa !56
  %694 = icmp eq i32 %691, %693
  br i1 %694, label %695, label %702

695:                                              ; preds = %684
  %696 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %687, i32 2
  %697 = load i32, ptr %696, align 8, !tbaa !57
  %698 = and i32 %697, %686
  %699 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %687, i32 3
  %700 = load i32, ptr %699, align 4, !tbaa !58
  %701 = icmp slt i32 %698, %700
  br i1 %701, label %712, label %714

702:                                              ; preds = %684
  %703 = load i8, ptr %688, align 1, !tbaa !43
  %704 = xor i8 %703, -128
  %705 = icmp ult i8 %704, 64
  br i1 %705, label %706, label %712

706:                                              ; preds = %702
  %707 = zext nneg i8 %704 to i32
  %708 = shl i32 %686, 6
  %709 = or disjoint i32 %708, %707
  %710 = add nuw nsw i64 %687, 1
  %711 = icmp eq i64 %710, 6
  br i1 %711, label %712, label %684, !llvm.loop !59

712:                                              ; preds = %706, %702, %695
  %713 = tail call ptr @__errno_location() #10
  store i32 84, ptr %713, align 4, !tbaa !34
  br label %714

714:                                              ; preds = %712, %695
  %715 = phi i32 [ %698, %695 ], [ -1, %712 ]
  %716 = icmp eq i32 %715, 93
  br i1 %716, label %3523, label %717, !llvm.loop !63

717:                                              ; preds = %714
  %718 = load i8, ptr %645, align 1, !tbaa !43
  %719 = zext i8 %718 to i32
  br label %720

720:                                              ; preds = %717, %742
  %721 = phi ptr [ %645, %717 ], [ %724, %742 ]
  %722 = phi i32 [ %719, %717 ], [ %745, %742 ]
  %723 = phi i64 [ 0, %717 ], [ %746, %742 ]
  %724 = getelementptr inbounds i8, ptr %721, i64 1
  %725 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %723
  %726 = load i32, ptr %725, align 16, !tbaa !54
  %727 = and i32 %726, %719
  %728 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %723, i32 1
  %729 = load i32, ptr %728, align 4, !tbaa !56
  %730 = icmp eq i32 %727, %729
  br i1 %730, label %731, label %738

731:                                              ; preds = %720
  %732 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %723, i32 2
  %733 = load i32, ptr %732, align 8, !tbaa !57
  %734 = and i32 %733, %722
  %735 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %723, i32 3
  %736 = load i32, ptr %735, align 4, !tbaa !58
  %737 = icmp slt i32 %734, %736
  br i1 %737, label %748, label %750

738:                                              ; preds = %720
  %739 = load i8, ptr %724, align 1, !tbaa !43
  %740 = xor i8 %739, -128
  %741 = icmp ult i8 %740, 64
  br i1 %741, label %742, label %748

742:                                              ; preds = %738
  %743 = zext nneg i8 %740 to i32
  %744 = shl i32 %722, 6
  %745 = or disjoint i32 %744, %743
  %746 = add nuw nsw i64 %723, 1
  %747 = icmp eq i64 %746, 6
  br i1 %747, label %748, label %720, !llvm.loop !59

748:                                              ; preds = %742, %738, %731
  %749 = tail call ptr @__errno_location() #10
  store i32 84, ptr %749, align 4, !tbaa !34
  br label %750

750:                                              ; preds = %748, %731
  %751 = phi i32 [ %734, %731 ], [ -1, %748 ]
  %752 = icmp eq i32 %751, 92
  br i1 %752, label %753, label %831

753:                                              ; preds = %750
  %754 = load i8, ptr %645, align 1, !tbaa !43
  %755 = zext i8 %754 to i32
  br label %756

756:                                              ; preds = %753, %784
  %757 = phi ptr [ %645, %753 ], [ %760, %784 ]
  %758 = phi i32 [ %755, %753 ], [ %787, %784 ]
  %759 = phi i64 [ 0, %753 ], [ %788, %784 ]
  %760 = getelementptr inbounds i8, ptr %757, i64 1
  %761 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %759
  %762 = load i32, ptr %761, align 16, !tbaa !54
  %763 = and i32 %762, %755
  %764 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %759, i32 1
  %765 = load i32, ptr %764, align 4, !tbaa !56
  %766 = icmp eq i32 %763, %765
  br i1 %766, label %767, label %778

767:                                              ; preds = %756
  %768 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %759, i32 2
  %769 = load i32, ptr %768, align 8, !tbaa !57
  %770 = and i32 %769, %758
  %771 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %759, i32 3
  %772 = load i32, ptr %771, align 4, !tbaa !58
  %773 = icmp slt i32 %770, %772
  br i1 %773, label %774, label %776

774:                                              ; preds = %767
  %775 = tail call ptr @__errno_location() #10
  store i32 84, ptr %775, align 4, !tbaa !34
  br label %792

776:                                              ; preds = %767
  %777 = add nuw nsw i64 %759, 1
  br label %792

778:                                              ; preds = %756
  %779 = load i8, ptr %760, align 1, !tbaa !43
  %780 = xor i8 %779, -128
  %781 = icmp ult i8 %780, 64
  br i1 %781, label %784, label %782

782:                                              ; preds = %778
  %783 = tail call ptr @__errno_location() #10
  store i32 84, ptr %783, align 4, !tbaa !34
  br label %792

784:                                              ; preds = %778
  %785 = zext nneg i8 %780 to i32
  %786 = shl i32 %758, 6
  %787 = or disjoint i32 %786, %785
  %788 = add nuw nsw i64 %759, 1
  %789 = icmp eq i64 %788, 6
  br i1 %789, label %790, label %756, !llvm.loop !59

790:                                              ; preds = %784
  %791 = tail call ptr @__errno_location() #10
  store i32 84, ptr %791, align 4, !tbaa !34
  br label %792

792:                                              ; preds = %774, %776, %782, %790
  %793 = phi i64 [ 1, %774 ], [ %777, %776 ], [ 1, %782 ], [ 1, %790 ]
  %794 = and i64 %793, 4294967295
  %795 = getelementptr inbounds i8, ptr %645, i64 %794
  %796 = load i8, ptr %795, align 1, !tbaa !43
  %797 = zext i8 %796 to i32
  br label %798

798:                                              ; preds = %792, %820
  %799 = phi ptr [ %795, %792 ], [ %802, %820 ]
  %800 = phi i32 [ %797, %792 ], [ %823, %820 ]
  %801 = phi i64 [ 0, %792 ], [ %824, %820 ]
  %802 = getelementptr inbounds i8, ptr %799, i64 1
  %803 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %801
  %804 = load i32, ptr %803, align 16, !tbaa !54
  %805 = and i32 %804, %797
  %806 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %801, i32 1
  %807 = load i32, ptr %806, align 4, !tbaa !56
  %808 = icmp eq i32 %805, %807
  br i1 %808, label %809, label %816

809:                                              ; preds = %798
  %810 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %801, i32 2
  %811 = load i32, ptr %810, align 8, !tbaa !57
  %812 = and i32 %811, %800
  %813 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %801, i32 3
  %814 = load i32, ptr %813, align 4, !tbaa !58
  %815 = icmp slt i32 %812, %814
  br i1 %815, label %826, label %828

816:                                              ; preds = %798
  %817 = load i8, ptr %802, align 1, !tbaa !43
  %818 = xor i8 %817, -128
  %819 = icmp ult i8 %818, 64
  br i1 %819, label %820, label %826

820:                                              ; preds = %816
  %821 = zext nneg i8 %818 to i32
  %822 = shl i32 %800, 6
  %823 = or disjoint i32 %822, %821
  %824 = add nuw nsw i64 %801, 1
  %825 = icmp eq i64 %824, 6
  br i1 %825, label %826, label %798, !llvm.loop !59

826:                                              ; preds = %820, %816, %809
  %827 = tail call ptr @__errno_location() #10
  store i32 84, ptr %827, align 4, !tbaa !34
  br label %828

828:                                              ; preds = %826, %809
  %829 = phi i32 [ %812, %809 ], [ -1, %826 ]
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %3523, label %831, !llvm.loop !63

831:                                              ; preds = %750, %828
  %832 = phi ptr [ %795, %828 ], [ %645, %750 ]
  %833 = load i8, ptr %832, align 1, !tbaa !43
  %834 = zext i8 %833 to i32
  br label %835

835:                                              ; preds = %831, %863
  %836 = phi ptr [ %832, %831 ], [ %839, %863 ]
  %837 = phi i32 [ %834, %831 ], [ %866, %863 ]
  %838 = phi i64 [ 0, %831 ], [ %867, %863 ]
  %839 = getelementptr inbounds i8, ptr %836, i64 1
  %840 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %838
  %841 = load i32, ptr %840, align 16, !tbaa !54
  %842 = and i32 %841, %834
  %843 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %838, i32 1
  %844 = load i32, ptr %843, align 4, !tbaa !56
  %845 = icmp eq i32 %842, %844
  br i1 %845, label %846, label %857

846:                                              ; preds = %835
  %847 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %838, i32 2
  %848 = load i32, ptr %847, align 8, !tbaa !57
  %849 = and i32 %848, %837
  %850 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %838, i32 3
  %851 = load i32, ptr %850, align 4, !tbaa !58
  %852 = icmp slt i32 %849, %851
  br i1 %852, label %853, label %855

853:                                              ; preds = %846
  %854 = tail call ptr @__errno_location() #10
  store i32 84, ptr %854, align 4, !tbaa !34
  br label %871

855:                                              ; preds = %846
  %856 = add nuw nsw i64 %838, 1
  br label %871

857:                                              ; preds = %835
  %858 = load i8, ptr %839, align 1, !tbaa !43
  %859 = xor i8 %858, -128
  %860 = icmp ult i8 %859, 64
  br i1 %860, label %863, label %861

861:                                              ; preds = %857
  %862 = tail call ptr @__errno_location() #10
  store i32 84, ptr %862, align 4, !tbaa !34
  br label %871

863:                                              ; preds = %857
  %864 = zext nneg i8 %859 to i32
  %865 = shl i32 %837, 6
  %866 = or disjoint i32 %865, %864
  %867 = add nuw nsw i64 %838, 1
  %868 = icmp eq i64 %867, 6
  br i1 %868, label %869, label %835, !llvm.loop !59

869:                                              ; preds = %863
  %870 = tail call ptr @__errno_location() #10
  store i32 84, ptr %870, align 4, !tbaa !34
  br label %871

871:                                              ; preds = %853, %855, %861, %869
  %872 = phi i64 [ 1, %853 ], [ %856, %855 ], [ 1, %861 ], [ 1, %869 ]
  %873 = and i64 %872, 4294967295
  %874 = getelementptr inbounds i8, ptr %832, i64 %873
  %875 = load i8, ptr %874, align 1, !tbaa !43
  %876 = zext i8 %875 to i32
  br label %877

877:                                              ; preds = %871, %899
  %878 = phi ptr [ %874, %871 ], [ %881, %899 ]
  %879 = phi i32 [ %876, %871 ], [ %902, %899 ]
  %880 = phi i64 [ 0, %871 ], [ %903, %899 ]
  %881 = getelementptr inbounds i8, ptr %878, i64 1
  %882 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %880
  %883 = load i32, ptr %882, align 16, !tbaa !54
  %884 = and i32 %883, %876
  %885 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %880, i32 1
  %886 = load i32, ptr %885, align 4, !tbaa !56
  %887 = icmp eq i32 %884, %886
  br i1 %887, label %888, label %895

888:                                              ; preds = %877
  %889 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %880, i32 2
  %890 = load i32, ptr %889, align 8, !tbaa !57
  %891 = and i32 %890, %879
  %892 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %880, i32 3
  %893 = load i32, ptr %892, align 4, !tbaa !58
  %894 = icmp slt i32 %891, %893
  br i1 %894, label %905, label %907

895:                                              ; preds = %877
  %896 = load i8, ptr %881, align 1, !tbaa !43
  %897 = xor i8 %896, -128
  %898 = icmp ult i8 %897, 64
  br i1 %898, label %899, label %905

899:                                              ; preds = %895
  %900 = zext nneg i8 %897 to i32
  %901 = shl i32 %879, 6
  %902 = or disjoint i32 %901, %900
  %903 = add nuw nsw i64 %880, 1
  %904 = icmp eq i64 %903, 6
  br i1 %904, label %905, label %877, !llvm.loop !59

905:                                              ; preds = %899, %895, %888
  %906 = tail call ptr @__errno_location() #10
  store i32 84, ptr %906, align 4, !tbaa !34
  br label %907

907:                                              ; preds = %905, %888
  %908 = phi i32 [ %891, %888 ], [ -1, %905 ]
  %909 = icmp eq i32 %908, 45
  %910 = load i8, ptr %832, align 1, !tbaa !43
  %911 = zext i8 %910 to i32
  br i1 %909, label %912, label %1330

912:                                              ; preds = %907, %934
  %913 = phi ptr [ %916, %934 ], [ %832, %907 ]
  %914 = phi i32 [ %937, %934 ], [ %911, %907 ]
  %915 = phi i64 [ %938, %934 ], [ 0, %907 ]
  %916 = getelementptr inbounds i8, ptr %913, i64 1
  %917 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %915
  %918 = load i32, ptr %917, align 16, !tbaa !54
  %919 = and i32 %918, %911
  %920 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %915, i32 1
  %921 = load i32, ptr %920, align 4, !tbaa !56
  %922 = icmp eq i32 %919, %921
  br i1 %922, label %923, label %930

923:                                              ; preds = %912
  %924 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %915, i32 2
  %925 = load i32, ptr %924, align 8, !tbaa !57
  %926 = and i32 %925, %914
  %927 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %915, i32 3
  %928 = load i32, ptr %927, align 4, !tbaa !58
  %929 = icmp slt i32 %926, %928
  br i1 %929, label %940, label %942

930:                                              ; preds = %912
  %931 = load i8, ptr %916, align 1, !tbaa !43
  %932 = xor i8 %931, -128
  %933 = icmp ult i8 %932, 64
  br i1 %933, label %934, label %940

934:                                              ; preds = %930
  %935 = zext nneg i8 %932 to i32
  %936 = shl i32 %914, 6
  %937 = or disjoint i32 %936, %935
  %938 = add nuw nsw i64 %915, 1
  %939 = icmp eq i64 %938, 6
  br i1 %939, label %940, label %912, !llvm.loop !59

940:                                              ; preds = %934, %930, %923
  %941 = tail call ptr @__errno_location() #10
  store i32 84, ptr %941, align 4, !tbaa !34
  br label %942

942:                                              ; preds = %940, %923
  %943 = phi i32 [ %926, %923 ], [ -1, %940 ]
  %944 = load i8, ptr %832, align 1, !tbaa !43
  %945 = zext i8 %944 to i32
  br label %946

946:                                              ; preds = %942, %974
  %947 = phi ptr [ %832, %942 ], [ %950, %974 ]
  %948 = phi i32 [ %945, %942 ], [ %977, %974 ]
  %949 = phi i64 [ 0, %942 ], [ %978, %974 ]
  %950 = getelementptr inbounds i8, ptr %947, i64 1
  %951 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %949
  %952 = load i32, ptr %951, align 16, !tbaa !54
  %953 = and i32 %952, %945
  %954 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %949, i32 1
  %955 = load i32, ptr %954, align 4, !tbaa !56
  %956 = icmp eq i32 %953, %955
  br i1 %956, label %957, label %968

957:                                              ; preds = %946
  %958 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %949, i32 2
  %959 = load i32, ptr %958, align 8, !tbaa !57
  %960 = and i32 %959, %948
  %961 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %949, i32 3
  %962 = load i32, ptr %961, align 4, !tbaa !58
  %963 = icmp slt i32 %960, %962
  br i1 %963, label %964, label %966

964:                                              ; preds = %957
  %965 = tail call ptr @__errno_location() #10
  store i32 84, ptr %965, align 4, !tbaa !34
  br label %982

966:                                              ; preds = %957
  %967 = add nuw nsw i64 %949, 1
  br label %982

968:                                              ; preds = %946
  %969 = load i8, ptr %950, align 1, !tbaa !43
  %970 = xor i8 %969, -128
  %971 = icmp ult i8 %970, 64
  br i1 %971, label %974, label %972

972:                                              ; preds = %968
  %973 = tail call ptr @__errno_location() #10
  store i32 84, ptr %973, align 4, !tbaa !34
  br label %982

974:                                              ; preds = %968
  %975 = zext nneg i8 %970 to i32
  %976 = shl i32 %948, 6
  %977 = or disjoint i32 %976, %975
  %978 = add nuw nsw i64 %949, 1
  %979 = icmp eq i64 %978, 6
  br i1 %979, label %980, label %946, !llvm.loop !59

980:                                              ; preds = %974
  %981 = tail call ptr @__errno_location() #10
  store i32 84, ptr %981, align 4, !tbaa !34
  br label %982

982:                                              ; preds = %964, %966, %972, %980
  %983 = phi i64 [ 1, %964 ], [ %967, %966 ], [ 1, %972 ], [ 1, %980 ]
  %984 = and i64 %983, 4294967295
  %985 = getelementptr inbounds i8, ptr %832, i64 %984
  %986 = load i8, ptr %985, align 1, !tbaa !43
  %987 = zext i8 %986 to i32
  br label %988

988:                                              ; preds = %982, %1016
  %989 = phi ptr [ %985, %982 ], [ %992, %1016 ]
  %990 = phi i32 [ %987, %982 ], [ %1019, %1016 ]
  %991 = phi i64 [ 0, %982 ], [ %1020, %1016 ]
  %992 = getelementptr inbounds i8, ptr %989, i64 1
  %993 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %991
  %994 = load i32, ptr %993, align 16, !tbaa !54
  %995 = and i32 %994, %987
  %996 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %991, i32 1
  %997 = load i32, ptr %996, align 4, !tbaa !56
  %998 = icmp eq i32 %995, %997
  br i1 %998, label %999, label %1010

999:                                              ; preds = %988
  %1000 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %991, i32 2
  %1001 = load i32, ptr %1000, align 8, !tbaa !57
  %1002 = and i32 %1001, %990
  %1003 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %991, i32 3
  %1004 = load i32, ptr %1003, align 4, !tbaa !58
  %1005 = icmp slt i32 %1002, %1004
  br i1 %1005, label %1006, label %1008

1006:                                             ; preds = %999
  %1007 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1007, align 4, !tbaa !34
  br label %1024

1008:                                             ; preds = %999
  %1009 = add nuw nsw i64 %991, 1
  br label %1024

1010:                                             ; preds = %988
  %1011 = load i8, ptr %992, align 1, !tbaa !43
  %1012 = xor i8 %1011, -128
  %1013 = icmp ult i8 %1012, 64
  br i1 %1013, label %1016, label %1014

1014:                                             ; preds = %1010
  %1015 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1015, align 4, !tbaa !34
  br label %1024

1016:                                             ; preds = %1010
  %1017 = zext nneg i8 %1012 to i32
  %1018 = shl i32 %990, 6
  %1019 = or disjoint i32 %1018, %1017
  %1020 = add nuw nsw i64 %991, 1
  %1021 = icmp eq i64 %1020, 6
  br i1 %1021, label %1022, label %988, !llvm.loop !59

1022:                                             ; preds = %1016
  %1023 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1023, align 4, !tbaa !34
  br label %1024

1024:                                             ; preds = %1006, %1008, %1014, %1022
  %1025 = phi i64 [ 1, %1006 ], [ %1009, %1008 ], [ 1, %1014 ], [ 1, %1022 ]
  %1026 = and i64 %1025, 4294967295
  %1027 = getelementptr inbounds i8, ptr %985, i64 %1026
  %1028 = load i8, ptr %1027, align 1, !tbaa !43
  %1029 = zext i8 %1028 to i32
  br label %1030

1030:                                             ; preds = %1024, %1052
  %1031 = phi ptr [ %1027, %1024 ], [ %1034, %1052 ]
  %1032 = phi i32 [ %1029, %1024 ], [ %1055, %1052 ]
  %1033 = phi i64 [ 0, %1024 ], [ %1056, %1052 ]
  %1034 = getelementptr inbounds i8, ptr %1031, i64 1
  %1035 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1033
  %1036 = load i32, ptr %1035, align 16, !tbaa !54
  %1037 = and i32 %1036, %1029
  %1038 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1033, i32 1
  %1039 = load i32, ptr %1038, align 4, !tbaa !56
  %1040 = icmp eq i32 %1037, %1039
  br i1 %1040, label %1041, label %1048

1041:                                             ; preds = %1030
  %1042 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1033, i32 2
  %1043 = load i32, ptr %1042, align 8, !tbaa !57
  %1044 = and i32 %1043, %1032
  %1045 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1033, i32 3
  %1046 = load i32, ptr %1045, align 4, !tbaa !58
  %1047 = icmp slt i32 %1044, %1046
  br i1 %1047, label %1058, label %1060

1048:                                             ; preds = %1030
  %1049 = load i8, ptr %1034, align 1, !tbaa !43
  %1050 = xor i8 %1049, -128
  %1051 = icmp ult i8 %1050, 64
  br i1 %1051, label %1052, label %1058

1052:                                             ; preds = %1048
  %1053 = zext nneg i8 %1050 to i32
  %1054 = shl i32 %1032, 6
  %1055 = or disjoint i32 %1054, %1053
  %1056 = add nuw nsw i64 %1033, 1
  %1057 = icmp eq i64 %1056, 6
  br i1 %1057, label %1058, label %1030, !llvm.loop !59

1058:                                             ; preds = %1052, %1048, %1041
  %1059 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1059, align 4, !tbaa !34
  br label %1060

1060:                                             ; preds = %1058, %1041
  %1061 = phi i32 [ %1044, %1041 ], [ -1, %1058 ]
  %1062 = icmp eq i32 %1061, 93
  br i1 %1062, label %3523, label %1063, !llvm.loop !63

1063:                                             ; preds = %1060
  %1064 = load i8, ptr %1027, align 1, !tbaa !43
  %1065 = zext i8 %1064 to i32
  br label %1066

1066:                                             ; preds = %1063, %1088
  %1067 = phi ptr [ %1027, %1063 ], [ %1070, %1088 ]
  %1068 = phi i32 [ %1065, %1063 ], [ %1091, %1088 ]
  %1069 = phi i64 [ 0, %1063 ], [ %1092, %1088 ]
  %1070 = getelementptr inbounds i8, ptr %1067, i64 1
  %1071 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1069
  %1072 = load i32, ptr %1071, align 16, !tbaa !54
  %1073 = and i32 %1072, %1065
  %1074 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1069, i32 1
  %1075 = load i32, ptr %1074, align 4, !tbaa !56
  %1076 = icmp eq i32 %1073, %1075
  br i1 %1076, label %1077, label %1084

1077:                                             ; preds = %1066
  %1078 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1069, i32 2
  %1079 = load i32, ptr %1078, align 8, !tbaa !57
  %1080 = and i32 %1079, %1068
  %1081 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1069, i32 3
  %1082 = load i32, ptr %1081, align 4, !tbaa !58
  %1083 = icmp slt i32 %1080, %1082
  br i1 %1083, label %1094, label %1096

1084:                                             ; preds = %1066
  %1085 = load i8, ptr %1070, align 1, !tbaa !43
  %1086 = xor i8 %1085, -128
  %1087 = icmp ult i8 %1086, 64
  br i1 %1087, label %1088, label %1094

1088:                                             ; preds = %1084
  %1089 = zext nneg i8 %1086 to i32
  %1090 = shl i32 %1068, 6
  %1091 = or disjoint i32 %1090, %1089
  %1092 = add nuw nsw i64 %1069, 1
  %1093 = icmp eq i64 %1092, 6
  br i1 %1093, label %1094, label %1066, !llvm.loop !59

1094:                                             ; preds = %1088, %1084, %1077
  %1095 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1095, align 4, !tbaa !34
  br label %1096

1096:                                             ; preds = %1094, %1077
  %1097 = phi i32 [ %1080, %1077 ], [ -1, %1094 ]
  %1098 = icmp eq i32 %1097, 92
  br i1 %1098, label %1099, label %1177

1099:                                             ; preds = %1096
  %1100 = load i8, ptr %1027, align 1, !tbaa !43
  %1101 = zext i8 %1100 to i32
  br label %1102

1102:                                             ; preds = %1099, %1130
  %1103 = phi ptr [ %1027, %1099 ], [ %1106, %1130 ]
  %1104 = phi i32 [ %1101, %1099 ], [ %1133, %1130 ]
  %1105 = phi i64 [ 0, %1099 ], [ %1134, %1130 ]
  %1106 = getelementptr inbounds i8, ptr %1103, i64 1
  %1107 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1105
  %1108 = load i32, ptr %1107, align 16, !tbaa !54
  %1109 = and i32 %1108, %1101
  %1110 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1105, i32 1
  %1111 = load i32, ptr %1110, align 4, !tbaa !56
  %1112 = icmp eq i32 %1109, %1111
  br i1 %1112, label %1113, label %1124

1113:                                             ; preds = %1102
  %1114 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1105, i32 2
  %1115 = load i32, ptr %1114, align 8, !tbaa !57
  %1116 = and i32 %1115, %1104
  %1117 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1105, i32 3
  %1118 = load i32, ptr %1117, align 4, !tbaa !58
  %1119 = icmp slt i32 %1116, %1118
  br i1 %1119, label %1120, label %1122

1120:                                             ; preds = %1113
  %1121 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1121, align 4, !tbaa !34
  br label %1138

1122:                                             ; preds = %1113
  %1123 = add nuw nsw i64 %1105, 1
  br label %1138

1124:                                             ; preds = %1102
  %1125 = load i8, ptr %1106, align 1, !tbaa !43
  %1126 = xor i8 %1125, -128
  %1127 = icmp ult i8 %1126, 64
  br i1 %1127, label %1130, label %1128

1128:                                             ; preds = %1124
  %1129 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1129, align 4, !tbaa !34
  br label %1138

1130:                                             ; preds = %1124
  %1131 = zext nneg i8 %1126 to i32
  %1132 = shl i32 %1104, 6
  %1133 = or disjoint i32 %1132, %1131
  %1134 = add nuw nsw i64 %1105, 1
  %1135 = icmp eq i64 %1134, 6
  br i1 %1135, label %1136, label %1102, !llvm.loop !59

1136:                                             ; preds = %1130
  %1137 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1137, align 4, !tbaa !34
  br label %1138

1138:                                             ; preds = %1120, %1122, %1128, %1136
  %1139 = phi i64 [ 1, %1120 ], [ %1123, %1122 ], [ 1, %1128 ], [ 1, %1136 ]
  %1140 = and i64 %1139, 4294967295
  %1141 = getelementptr inbounds i8, ptr %1027, i64 %1140
  %1142 = load i8, ptr %1141, align 1, !tbaa !43
  %1143 = zext i8 %1142 to i32
  br label %1144

1144:                                             ; preds = %1138, %1166
  %1145 = phi ptr [ %1141, %1138 ], [ %1148, %1166 ]
  %1146 = phi i32 [ %1143, %1138 ], [ %1169, %1166 ]
  %1147 = phi i64 [ 0, %1138 ], [ %1170, %1166 ]
  %1148 = getelementptr inbounds i8, ptr %1145, i64 1
  %1149 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1147
  %1150 = load i32, ptr %1149, align 16, !tbaa !54
  %1151 = and i32 %1150, %1143
  %1152 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1147, i32 1
  %1153 = load i32, ptr %1152, align 4, !tbaa !56
  %1154 = icmp eq i32 %1151, %1153
  br i1 %1154, label %1155, label %1162

1155:                                             ; preds = %1144
  %1156 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1147, i32 2
  %1157 = load i32, ptr %1156, align 8, !tbaa !57
  %1158 = and i32 %1157, %1146
  %1159 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1147, i32 3
  %1160 = load i32, ptr %1159, align 4, !tbaa !58
  %1161 = icmp slt i32 %1158, %1160
  br i1 %1161, label %1172, label %1174

1162:                                             ; preds = %1144
  %1163 = load i8, ptr %1148, align 1, !tbaa !43
  %1164 = xor i8 %1163, -128
  %1165 = icmp ult i8 %1164, 64
  br i1 %1165, label %1166, label %1172

1166:                                             ; preds = %1162
  %1167 = zext nneg i8 %1164 to i32
  %1168 = shl i32 %1146, 6
  %1169 = or disjoint i32 %1168, %1167
  %1170 = add nuw nsw i64 %1147, 1
  %1171 = icmp eq i64 %1170, 6
  br i1 %1171, label %1172, label %1144, !llvm.loop !59

1172:                                             ; preds = %1166, %1162, %1155
  %1173 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1173, align 4, !tbaa !34
  br label %1174

1174:                                             ; preds = %1172, %1155
  %1175 = phi i32 [ %1158, %1155 ], [ -1, %1172 ]
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %3523, label %1177, !llvm.loop !63

1177:                                             ; preds = %1174, %1096
  %1178 = phi ptr [ %1141, %1174 ], [ %1027, %1096 ]
  br i1 %143, label %1210, label %1179

1179:                                             ; preds = %1177
  %1180 = load i8, ptr %101, align 1, !tbaa !43
  %1181 = zext i8 %1180 to i32
  br label %1182

1182:                                             ; preds = %1179, %1204
  %1183 = phi ptr [ %101, %1179 ], [ %1186, %1204 ]
  %1184 = phi i32 [ %1181, %1179 ], [ %1207, %1204 ]
  %1185 = phi i64 [ 0, %1179 ], [ %1208, %1204 ]
  %1186 = getelementptr inbounds i8, ptr %1183, i64 1
  %1187 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1185
  %1188 = load i32, ptr %1187, align 16, !tbaa !54
  %1189 = and i32 %1188, %1181
  %1190 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1185, i32 1
  %1191 = load i32, ptr %1190, align 4, !tbaa !56
  %1192 = icmp eq i32 %1189, %1191
  br i1 %1192, label %1193, label %1200

1193:                                             ; preds = %1182
  %1194 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1185, i32 2
  %1195 = load i32, ptr %1194, align 8, !tbaa !57
  %1196 = and i32 %1195, %1184
  %1197 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1185, i32 3
  %1198 = load i32, ptr %1197, align 4, !tbaa !58
  %1199 = icmp slt i32 %1196, %1198
  br i1 %1199, label %1210, label %1213

1200:                                             ; preds = %1182
  %1201 = load i8, ptr %1186, align 1, !tbaa !43
  %1202 = xor i8 %1201, -128
  %1203 = icmp ult i8 %1202, 64
  br i1 %1203, label %1204, label %1210

1204:                                             ; preds = %1200
  %1205 = zext nneg i8 %1202 to i32
  %1206 = shl i32 %1184, 6
  %1207 = or disjoint i32 %1206, %1205
  %1208 = add nuw nsw i64 %1185, 1
  %1209 = icmp eq i64 %1208, 6
  br i1 %1209, label %1210, label %1182, !llvm.loop !59

1210:                                             ; preds = %1204, %1200, %1193, %1177
  %1211 = phi i32 [ 22, %1177 ], [ 84, %1193 ], [ 84, %1200 ], [ 84, %1204 ]
  %1212 = tail call ptr @__errno_location() #10
  store i32 %1211, ptr %1212, align 4, !tbaa !34
  br label %1213

1213:                                             ; preds = %1210, %1193
  %1214 = phi i32 [ %1196, %1193 ], [ -1, %1210 ]
  %1215 = icmp slt i32 %1214, %943
  br i1 %1215, label %1288, label %1216

1216:                                             ; preds = %1213
  br i1 %143, label %1248, label %1217

1217:                                             ; preds = %1216
  %1218 = load i8, ptr %101, align 1, !tbaa !43
  %1219 = zext i8 %1218 to i32
  br label %1220

1220:                                             ; preds = %1217, %1242
  %1221 = phi ptr [ %101, %1217 ], [ %1224, %1242 ]
  %1222 = phi i32 [ %1219, %1217 ], [ %1245, %1242 ]
  %1223 = phi i64 [ 0, %1217 ], [ %1246, %1242 ]
  %1224 = getelementptr inbounds i8, ptr %1221, i64 1
  %1225 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1223
  %1226 = load i32, ptr %1225, align 16, !tbaa !54
  %1227 = and i32 %1226, %1219
  %1228 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1223, i32 1
  %1229 = load i32, ptr %1228, align 4, !tbaa !56
  %1230 = icmp eq i32 %1227, %1229
  br i1 %1230, label %1231, label %1238

1231:                                             ; preds = %1220
  %1232 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1223, i32 2
  %1233 = load i32, ptr %1232, align 8, !tbaa !57
  %1234 = and i32 %1233, %1222
  %1235 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1223, i32 3
  %1236 = load i32, ptr %1235, align 4, !tbaa !58
  %1237 = icmp slt i32 %1234, %1236
  br i1 %1237, label %1248, label %1251

1238:                                             ; preds = %1220
  %1239 = load i8, ptr %1224, align 1, !tbaa !43
  %1240 = xor i8 %1239, -128
  %1241 = icmp ult i8 %1240, 64
  br i1 %1241, label %1242, label %1248

1242:                                             ; preds = %1238
  %1243 = zext nneg i8 %1240 to i32
  %1244 = shl i32 %1222, 6
  %1245 = or disjoint i32 %1244, %1243
  %1246 = add nuw nsw i64 %1223, 1
  %1247 = icmp eq i64 %1246, 6
  br i1 %1247, label %1248, label %1220, !llvm.loop !59

1248:                                             ; preds = %1242, %1238, %1231, %1216
  %1249 = phi i32 [ 22, %1216 ], [ 84, %1231 ], [ 84, %1238 ], [ 84, %1242 ]
  %1250 = tail call ptr @__errno_location() #10
  store i32 %1249, ptr %1250, align 4, !tbaa !34
  br label %1251

1251:                                             ; preds = %1248, %1231
  %1252 = phi i32 [ %1234, %1231 ], [ -1, %1248 ]
  %1253 = load i8, ptr %1178, align 1, !tbaa !43
  %1254 = zext i8 %1253 to i32
  br label %1255

1255:                                             ; preds = %1251, %1277
  %1256 = phi ptr [ %1178, %1251 ], [ %1259, %1277 ]
  %1257 = phi i32 [ %1254, %1251 ], [ %1280, %1277 ]
  %1258 = phi i64 [ 0, %1251 ], [ %1281, %1277 ]
  %1259 = getelementptr inbounds i8, ptr %1256, i64 1
  %1260 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1258
  %1261 = load i32, ptr %1260, align 16, !tbaa !54
  %1262 = and i32 %1261, %1254
  %1263 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1258, i32 1
  %1264 = load i32, ptr %1263, align 4, !tbaa !56
  %1265 = icmp eq i32 %1262, %1264
  br i1 %1265, label %1266, label %1273

1266:                                             ; preds = %1255
  %1267 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1258, i32 2
  %1268 = load i32, ptr %1267, align 8, !tbaa !57
  %1269 = and i32 %1268, %1257
  %1270 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1258, i32 3
  %1271 = load i32, ptr %1270, align 4, !tbaa !58
  %1272 = icmp slt i32 %1269, %1271
  br i1 %1272, label %1283, label %1285

1273:                                             ; preds = %1255
  %1274 = load i8, ptr %1259, align 1, !tbaa !43
  %1275 = xor i8 %1274, -128
  %1276 = icmp ult i8 %1275, 64
  br i1 %1276, label %1277, label %1283

1277:                                             ; preds = %1273
  %1278 = zext nneg i8 %1275 to i32
  %1279 = shl i32 %1257, 6
  %1280 = or disjoint i32 %1279, %1278
  %1281 = add nuw nsw i64 %1258, 1
  %1282 = icmp eq i64 %1281, 6
  br i1 %1282, label %1283, label %1255, !llvm.loop !59

1283:                                             ; preds = %1277, %1273, %1266
  %1284 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1284, align 4, !tbaa !34
  br label %1285

1285:                                             ; preds = %1283, %1266
  %1286 = phi i32 [ %1269, %1266 ], [ -1, %1283 ]
  %1287 = icmp sgt i32 %1252, %1286
  br i1 %1287, label %1288, label %1438

1288:                                             ; preds = %1285, %1213
  %1289 = load i8, ptr %1178, align 1, !tbaa !43
  %1290 = zext i8 %1289 to i32
  br label %1291

1291:                                             ; preds = %1288, %1319
  %1292 = phi ptr [ %1178, %1288 ], [ %1295, %1319 ]
  %1293 = phi i32 [ %1290, %1288 ], [ %1322, %1319 ]
  %1294 = phi i64 [ 0, %1288 ], [ %1323, %1319 ]
  %1295 = getelementptr inbounds i8, ptr %1292, i64 1
  %1296 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1294
  %1297 = load i32, ptr %1296, align 16, !tbaa !54
  %1298 = and i32 %1297, %1290
  %1299 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1294, i32 1
  %1300 = load i32, ptr %1299, align 4, !tbaa !56
  %1301 = icmp eq i32 %1298, %1300
  br i1 %1301, label %1302, label %1313

1302:                                             ; preds = %1291
  %1303 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1294, i32 2
  %1304 = load i32, ptr %1303, align 8, !tbaa !57
  %1305 = and i32 %1304, %1293
  %1306 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1294, i32 3
  %1307 = load i32, ptr %1306, align 4, !tbaa !58
  %1308 = icmp slt i32 %1305, %1307
  br i1 %1308, label %1309, label %1311

1309:                                             ; preds = %1302
  %1310 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1310, align 4, !tbaa !34
  br label %1327

1311:                                             ; preds = %1302
  %1312 = add nuw nsw i64 %1294, 1
  br label %1327

1313:                                             ; preds = %1291
  %1314 = load i8, ptr %1295, align 1, !tbaa !43
  %1315 = xor i8 %1314, -128
  %1316 = icmp ult i8 %1315, 64
  br i1 %1316, label %1319, label %1317

1317:                                             ; preds = %1313
  %1318 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1318, align 4, !tbaa !34
  br label %1327

1319:                                             ; preds = %1313
  %1320 = zext nneg i8 %1315 to i32
  %1321 = shl i32 %1293, 6
  %1322 = or disjoint i32 %1321, %1320
  %1323 = add nuw nsw i64 %1294, 1
  %1324 = icmp eq i64 %1323, 6
  br i1 %1324, label %1325, label %1291, !llvm.loop !59

1325:                                             ; preds = %1319
  %1326 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1326, align 4, !tbaa !34
  br label %1327

1327:                                             ; preds = %1325, %1317, %1311, %1309, %1436, %1428, %1422, %1420
  %1328 = phi i64 [ 1, %1420 ], [ %1423, %1422 ], [ 1, %1428 ], [ 1, %1436 ], [ 1, %1309 ], [ %1312, %1311 ], [ 1, %1317 ], [ 1, %1325 ]
  %1329 = phi ptr [ %832, %1420 ], [ %832, %1422 ], [ %832, %1428 ], [ %832, %1436 ], [ %1178, %1309 ], [ %1178, %1311 ], [ %1178, %1317 ], [ %1178, %1325 ]
  br label %641, !llvm.loop !65

1330:                                             ; preds = %907, %1352
  %1331 = phi ptr [ %1334, %1352 ], [ %832, %907 ]
  %1332 = phi i32 [ %1355, %1352 ], [ %911, %907 ]
  %1333 = phi i64 [ %1356, %1352 ], [ 0, %907 ]
  %1334 = getelementptr inbounds i8, ptr %1331, i64 1
  %1335 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1333
  %1336 = load i32, ptr %1335, align 16, !tbaa !54
  %1337 = and i32 %1336, %911
  %1338 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1333, i32 1
  %1339 = load i32, ptr %1338, align 4, !tbaa !56
  %1340 = icmp eq i32 %1337, %1339
  br i1 %1340, label %1341, label %1348

1341:                                             ; preds = %1330
  %1342 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1333, i32 2
  %1343 = load i32, ptr %1342, align 8, !tbaa !57
  %1344 = and i32 %1343, %1332
  %1345 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1333, i32 3
  %1346 = load i32, ptr %1345, align 4, !tbaa !58
  %1347 = icmp slt i32 %1344, %1346
  br i1 %1347, label %1358, label %1360

1348:                                             ; preds = %1330
  %1349 = load i8, ptr %1334, align 1, !tbaa !43
  %1350 = xor i8 %1349, -128
  %1351 = icmp ult i8 %1350, 64
  br i1 %1351, label %1352, label %1358

1352:                                             ; preds = %1348
  %1353 = zext nneg i8 %1350 to i32
  %1354 = shl i32 %1332, 6
  %1355 = or disjoint i32 %1354, %1353
  %1356 = add nuw nsw i64 %1333, 1
  %1357 = icmp eq i64 %1356, 6
  br i1 %1357, label %1358, label %1330, !llvm.loop !59

1358:                                             ; preds = %1352, %1348, %1341
  %1359 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1359, align 4, !tbaa !34
  br label %1360

1360:                                             ; preds = %1358, %1341
  %1361 = phi i32 [ %1344, %1341 ], [ -1, %1358 ]
  br i1 %143, label %1393, label %1362

1362:                                             ; preds = %1360
  %1363 = load i8, ptr %101, align 1, !tbaa !43
  %1364 = zext i8 %1363 to i32
  br label %1365

1365:                                             ; preds = %1362, %1387
  %1366 = phi ptr [ %101, %1362 ], [ %1369, %1387 ]
  %1367 = phi i32 [ %1364, %1362 ], [ %1390, %1387 ]
  %1368 = phi i64 [ 0, %1362 ], [ %1391, %1387 ]
  %1369 = getelementptr inbounds i8, ptr %1366, i64 1
  %1370 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1368
  %1371 = load i32, ptr %1370, align 16, !tbaa !54
  %1372 = and i32 %1371, %1364
  %1373 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1368, i32 1
  %1374 = load i32, ptr %1373, align 4, !tbaa !56
  %1375 = icmp eq i32 %1372, %1374
  br i1 %1375, label %1376, label %1383

1376:                                             ; preds = %1365
  %1377 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1368, i32 2
  %1378 = load i32, ptr %1377, align 8, !tbaa !57
  %1379 = and i32 %1378, %1367
  %1380 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1368, i32 3
  %1381 = load i32, ptr %1380, align 4, !tbaa !58
  %1382 = icmp slt i32 %1379, %1381
  br i1 %1382, label %1393, label %1396

1383:                                             ; preds = %1365
  %1384 = load i8, ptr %1369, align 1, !tbaa !43
  %1385 = xor i8 %1384, -128
  %1386 = icmp ult i8 %1385, 64
  br i1 %1386, label %1387, label %1393

1387:                                             ; preds = %1383
  %1388 = zext nneg i8 %1385 to i32
  %1389 = shl i32 %1367, 6
  %1390 = or disjoint i32 %1389, %1388
  %1391 = add nuw nsw i64 %1368, 1
  %1392 = icmp eq i64 %1391, 6
  br i1 %1392, label %1393, label %1365, !llvm.loop !59

1393:                                             ; preds = %1387, %1383, %1376, %1360
  %1394 = phi i32 [ 22, %1360 ], [ 84, %1376 ], [ 84, %1383 ], [ 84, %1387 ]
  %1395 = tail call ptr @__errno_location() #10
  store i32 %1394, ptr %1395, align 4, !tbaa !34
  br label %1396

1396:                                             ; preds = %1393, %1376
  %1397 = phi i32 [ %1379, %1376 ], [ -1, %1393 ]
  %1398 = icmp eq i32 %1361, %1397
  br i1 %1398, label %1438, label %1399

1399:                                             ; preds = %1396
  %1400 = load i8, ptr %832, align 1, !tbaa !43
  %1401 = zext i8 %1400 to i32
  br label %1402

1402:                                             ; preds = %1399, %1430
  %1403 = phi ptr [ %832, %1399 ], [ %1406, %1430 ]
  %1404 = phi i32 [ %1401, %1399 ], [ %1433, %1430 ]
  %1405 = phi i64 [ 0, %1399 ], [ %1434, %1430 ]
  %1406 = getelementptr inbounds i8, ptr %1403, i64 1
  %1407 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1405
  %1408 = load i32, ptr %1407, align 16, !tbaa !54
  %1409 = and i32 %1408, %1401
  %1410 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1405, i32 1
  %1411 = load i32, ptr %1410, align 4, !tbaa !56
  %1412 = icmp eq i32 %1409, %1411
  br i1 %1412, label %1413, label %1424

1413:                                             ; preds = %1402
  %1414 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1405, i32 2
  %1415 = load i32, ptr %1414, align 8, !tbaa !57
  %1416 = and i32 %1415, %1404
  %1417 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1405, i32 3
  %1418 = load i32, ptr %1417, align 4, !tbaa !58
  %1419 = icmp slt i32 %1416, %1418
  br i1 %1419, label %1420, label %1422

1420:                                             ; preds = %1413
  %1421 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1421, align 4, !tbaa !34
  br label %1327

1422:                                             ; preds = %1413
  %1423 = add nuw nsw i64 %1405, 1
  br label %1327

1424:                                             ; preds = %1402
  %1425 = load i8, ptr %1406, align 1, !tbaa !43
  %1426 = xor i8 %1425, -128
  %1427 = icmp ult i8 %1426, 64
  br i1 %1427, label %1430, label %1428

1428:                                             ; preds = %1424
  %1429 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1429, align 4, !tbaa !34
  br label %1327

1430:                                             ; preds = %1424
  %1431 = zext nneg i8 %1426 to i32
  %1432 = shl i32 %1404, 6
  %1433 = or disjoint i32 %1432, %1431
  %1434 = add nuw nsw i64 %1405, 1
  %1435 = icmp eq i64 %1434, 6
  br i1 %1435, label %1436, label %1402, !llvm.loop !59

1436:                                             ; preds = %1430
  %1437 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1437, align 4, !tbaa !34
  br label %1327

1438:                                             ; preds = %1396, %1285
  %1439 = phi ptr [ %1178, %1285 ], [ %832, %1396 ]
  %1440 = load i8, ptr %1439, align 1, !tbaa !43
  %1441 = zext i8 %1440 to i32
  br label %1442

1442:                                             ; preds = %1438, %1470
  %1443 = phi ptr [ %1439, %1438 ], [ %1446, %1470 ]
  %1444 = phi i32 [ %1441, %1438 ], [ %1473, %1470 ]
  %1445 = phi i64 [ 0, %1438 ], [ %1474, %1470 ]
  %1446 = getelementptr inbounds i8, ptr %1443, i64 1
  %1447 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1445
  %1448 = load i32, ptr %1447, align 16, !tbaa !54
  %1449 = and i32 %1448, %1441
  %1450 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1445, i32 1
  %1451 = load i32, ptr %1450, align 4, !tbaa !56
  %1452 = icmp eq i32 %1449, %1451
  br i1 %1452, label %1453, label %1464

1453:                                             ; preds = %1442
  %1454 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1445, i32 2
  %1455 = load i32, ptr %1454, align 8, !tbaa !57
  %1456 = and i32 %1455, %1444
  %1457 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1445, i32 3
  %1458 = load i32, ptr %1457, align 4, !tbaa !58
  %1459 = icmp slt i32 %1456, %1458
  br i1 %1459, label %1460, label %1462

1460:                                             ; preds = %1453
  %1461 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1461, align 4, !tbaa !34
  br label %1478

1462:                                             ; preds = %1453
  %1463 = add nuw nsw i64 %1445, 1
  br label %1478

1464:                                             ; preds = %1442
  %1465 = load i8, ptr %1446, align 1, !tbaa !43
  %1466 = xor i8 %1465, -128
  %1467 = icmp ult i8 %1466, 64
  br i1 %1467, label %1470, label %1468

1468:                                             ; preds = %1464
  %1469 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1469, align 4, !tbaa !34
  br label %1478

1470:                                             ; preds = %1464
  %1471 = zext nneg i8 %1466 to i32
  %1472 = shl i32 %1444, 6
  %1473 = or disjoint i32 %1472, %1471
  %1474 = add nuw nsw i64 %1445, 1
  %1475 = icmp eq i64 %1474, 6
  br i1 %1475, label %1476, label %1442, !llvm.loop !59

1476:                                             ; preds = %1470
  %1477 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1477, align 4, !tbaa !34
  br label %1478

1478:                                             ; preds = %1460, %1462, %1468, %1476
  %1479 = phi i64 [ 1, %1476 ], [ 1, %1468 ], [ %1463, %1462 ], [ 1, %1460 ]
  br label %1480

1480:                                             ; preds = %1737, %1478
  %1481 = phi i64 [ %1479, %1478 ], [ %1738, %1737 ]
  %1482 = phi ptr [ %1439, %1478 ], [ %1714, %1737 ]
  %1483 = and i64 %1481, 4294967295
  %1484 = getelementptr inbounds i8, ptr %1482, i64 %1483
  %1485 = load i8, ptr %1484, align 1, !tbaa !43
  %1486 = zext i8 %1485 to i32
  br label %1487

1487:                                             ; preds = %1480, %1509
  %1488 = phi ptr [ %1484, %1480 ], [ %1491, %1509 ]
  %1489 = phi i32 [ %1486, %1480 ], [ %1512, %1509 ]
  %1490 = phi i64 [ 0, %1480 ], [ %1513, %1509 ]
  %1491 = getelementptr inbounds i8, ptr %1488, i64 1
  %1492 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1490
  %1493 = load i32, ptr %1492, align 16, !tbaa !54
  %1494 = and i32 %1493, %1486
  %1495 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1490, i32 1
  %1496 = load i32, ptr %1495, align 4, !tbaa !56
  %1497 = icmp eq i32 %1494, %1496
  br i1 %1497, label %1498, label %1505

1498:                                             ; preds = %1487
  %1499 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1490, i32 2
  %1500 = load i32, ptr %1499, align 8, !tbaa !57
  %1501 = and i32 %1500, %1489
  %1502 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1490, i32 3
  %1503 = load i32, ptr %1502, align 4, !tbaa !58
  %1504 = icmp slt i32 %1501, %1503
  br i1 %1504, label %1515, label %1517

1505:                                             ; preds = %1487
  %1506 = load i8, ptr %1491, align 1, !tbaa !43
  %1507 = xor i8 %1506, -128
  %1508 = icmp ult i8 %1507, 64
  br i1 %1508, label %1509, label %1515

1509:                                             ; preds = %1505
  %1510 = zext nneg i8 %1507 to i32
  %1511 = shl i32 %1489, 6
  %1512 = or disjoint i32 %1511, %1510
  %1513 = add nuw nsw i64 %1490, 1
  %1514 = icmp eq i64 %1513, 6
  br i1 %1514, label %1515, label %1487, !llvm.loop !59

1515:                                             ; preds = %1509, %1505, %1498
  %1516 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1516, align 4, !tbaa !34
  br label %1517

1517:                                             ; preds = %1515, %1498
  %1518 = phi i32 [ %1501, %1498 ], [ -1, %1515 ]
  %1519 = icmp eq i32 %1518, 93
  br i1 %1519, label %1755, label %1520

1520:                                             ; preds = %1517
  %1521 = load i8, ptr %1484, align 1, !tbaa !43
  %1522 = zext i8 %1521 to i32
  br label %1523

1523:                                             ; preds = %1520, %1545
  %1524 = phi ptr [ %1484, %1520 ], [ %1527, %1545 ]
  %1525 = phi i32 [ %1522, %1520 ], [ %1548, %1545 ]
  %1526 = phi i64 [ 0, %1520 ], [ %1549, %1545 ]
  %1527 = getelementptr inbounds i8, ptr %1524, i64 1
  %1528 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1526
  %1529 = load i32, ptr %1528, align 16, !tbaa !54
  %1530 = and i32 %1529, %1522
  %1531 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1526, i32 1
  %1532 = load i32, ptr %1531, align 4, !tbaa !56
  %1533 = icmp eq i32 %1530, %1532
  br i1 %1533, label %1534, label %1541

1534:                                             ; preds = %1523
  %1535 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1526, i32 2
  %1536 = load i32, ptr %1535, align 8, !tbaa !57
  %1537 = and i32 %1536, %1525
  %1538 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1526, i32 3
  %1539 = load i32, ptr %1538, align 4, !tbaa !58
  %1540 = icmp slt i32 %1537, %1539
  br i1 %1540, label %1551, label %1553

1541:                                             ; preds = %1523
  %1542 = load i8, ptr %1527, align 1, !tbaa !43
  %1543 = xor i8 %1542, -128
  %1544 = icmp ult i8 %1543, 64
  br i1 %1544, label %1545, label %1551

1545:                                             ; preds = %1541
  %1546 = zext nneg i8 %1543 to i32
  %1547 = shl i32 %1525, 6
  %1548 = or disjoint i32 %1547, %1546
  %1549 = add nuw nsw i64 %1526, 1
  %1550 = icmp eq i64 %1549, 6
  br i1 %1550, label %1551, label %1523, !llvm.loop !59

1551:                                             ; preds = %1545, %1541, %1534
  %1552 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1552, align 4, !tbaa !34
  br label %1553

1553:                                             ; preds = %1551, %1534
  %1554 = phi i32 [ %1537, %1534 ], [ -1, %1551 ]
  %1555 = icmp eq i32 %1554, 0
  br i1 %1555, label %1755, label %1556

1556:                                             ; preds = %1553
  %1557 = load i8, ptr %1484, align 1, !tbaa !43
  %1558 = zext i8 %1557 to i32
  br label %1559

1559:                                             ; preds = %1556, %1581
  %1560 = phi ptr [ %1484, %1556 ], [ %1563, %1581 ]
  %1561 = phi i32 [ %1558, %1556 ], [ %1584, %1581 ]
  %1562 = phi i64 [ 0, %1556 ], [ %1585, %1581 ]
  %1563 = getelementptr inbounds i8, ptr %1560, i64 1
  %1564 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1562
  %1565 = load i32, ptr %1564, align 16, !tbaa !54
  %1566 = and i32 %1565, %1558
  %1567 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1562, i32 1
  %1568 = load i32, ptr %1567, align 4, !tbaa !56
  %1569 = icmp eq i32 %1566, %1568
  br i1 %1569, label %1570, label %1577

1570:                                             ; preds = %1559
  %1571 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1562, i32 2
  %1572 = load i32, ptr %1571, align 8, !tbaa !57
  %1573 = and i32 %1572, %1561
  %1574 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1562, i32 3
  %1575 = load i32, ptr %1574, align 4, !tbaa !58
  %1576 = icmp slt i32 %1573, %1575
  br i1 %1576, label %1587, label %1589

1577:                                             ; preds = %1559
  %1578 = load i8, ptr %1563, align 1, !tbaa !43
  %1579 = xor i8 %1578, -128
  %1580 = icmp ult i8 %1579, 64
  br i1 %1580, label %1581, label %1587

1581:                                             ; preds = %1577
  %1582 = zext nneg i8 %1579 to i32
  %1583 = shl i32 %1561, 6
  %1584 = or disjoint i32 %1583, %1582
  %1585 = add nuw nsw i64 %1562, 1
  %1586 = icmp eq i64 %1585, 6
  br i1 %1586, label %1587, label %1559, !llvm.loop !59

1587:                                             ; preds = %1581, %1577, %1570
  %1588 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1588, align 4, !tbaa !34
  br label %1589

1589:                                             ; preds = %1587, %1570
  %1590 = phi i32 [ %1573, %1570 ], [ -1, %1587 ]
  %1591 = icmp eq i32 %1590, 92
  br i1 %1591, label %1592, label %1713

1592:                                             ; preds = %1589
  %1593 = load i8, ptr %1484, align 1, !tbaa !43
  %1594 = zext i8 %1593 to i32
  br label %1595

1595:                                             ; preds = %1592, %1623
  %1596 = phi ptr [ %1484, %1592 ], [ %1599, %1623 ]
  %1597 = phi i32 [ %1594, %1592 ], [ %1626, %1623 ]
  %1598 = phi i64 [ 0, %1592 ], [ %1627, %1623 ]
  %1599 = getelementptr inbounds i8, ptr %1596, i64 1
  %1600 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1598
  %1601 = load i32, ptr %1600, align 16, !tbaa !54
  %1602 = and i32 %1601, %1594
  %1603 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1598, i32 1
  %1604 = load i32, ptr %1603, align 4, !tbaa !56
  %1605 = icmp eq i32 %1602, %1604
  br i1 %1605, label %1606, label %1617

1606:                                             ; preds = %1595
  %1607 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1598, i32 2
  %1608 = load i32, ptr %1607, align 8, !tbaa !57
  %1609 = and i32 %1608, %1597
  %1610 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1598, i32 3
  %1611 = load i32, ptr %1610, align 4, !tbaa !58
  %1612 = icmp slt i32 %1609, %1611
  br i1 %1612, label %1613, label %1615

1613:                                             ; preds = %1606
  %1614 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1614, align 4, !tbaa !34
  br label %1631

1615:                                             ; preds = %1606
  %1616 = add nuw nsw i64 %1598, 1
  br label %1631

1617:                                             ; preds = %1595
  %1618 = load i8, ptr %1599, align 1, !tbaa !43
  %1619 = xor i8 %1618, -128
  %1620 = icmp ult i8 %1619, 64
  br i1 %1620, label %1623, label %1621

1621:                                             ; preds = %1617
  %1622 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1622, align 4, !tbaa !34
  br label %1631

1623:                                             ; preds = %1617
  %1624 = zext nneg i8 %1619 to i32
  %1625 = shl i32 %1597, 6
  %1626 = or disjoint i32 %1625, %1624
  %1627 = add nuw nsw i64 %1598, 1
  %1628 = icmp eq i64 %1627, 6
  br i1 %1628, label %1629, label %1595, !llvm.loop !59

1629:                                             ; preds = %1623
  %1630 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1630, align 4, !tbaa !34
  br label %1631

1631:                                             ; preds = %1613, %1615, %1621, %1629
  %1632 = phi i64 [ 1, %1613 ], [ %1616, %1615 ], [ 1, %1621 ], [ 1, %1629 ]
  %1633 = and i64 %1632, 4294967295
  %1634 = getelementptr inbounds i8, ptr %1484, i64 %1633
  %1635 = load i8, ptr %1634, align 1, !tbaa !43
  %1636 = zext i8 %1635 to i32
  br label %1637

1637:                                             ; preds = %1631, %1659
  %1638 = phi ptr [ %1634, %1631 ], [ %1641, %1659 ]
  %1639 = phi i32 [ %1636, %1631 ], [ %1662, %1659 ]
  %1640 = phi i64 [ 0, %1631 ], [ %1663, %1659 ]
  %1641 = getelementptr inbounds i8, ptr %1638, i64 1
  %1642 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1640
  %1643 = load i32, ptr %1642, align 16, !tbaa !54
  %1644 = and i32 %1643, %1636
  %1645 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1640, i32 1
  %1646 = load i32, ptr %1645, align 4, !tbaa !56
  %1647 = icmp eq i32 %1644, %1646
  br i1 %1647, label %1648, label %1655

1648:                                             ; preds = %1637
  %1649 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1640, i32 2
  %1650 = load i32, ptr %1649, align 8, !tbaa !57
  %1651 = and i32 %1650, %1639
  %1652 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1640, i32 3
  %1653 = load i32, ptr %1652, align 4, !tbaa !58
  %1654 = icmp slt i32 %1651, %1653
  br i1 %1654, label %1665, label %1667

1655:                                             ; preds = %1637
  %1656 = load i8, ptr %1641, align 1, !tbaa !43
  %1657 = xor i8 %1656, -128
  %1658 = icmp ult i8 %1657, 64
  br i1 %1658, label %1659, label %1665

1659:                                             ; preds = %1655
  %1660 = zext nneg i8 %1657 to i32
  %1661 = shl i32 %1639, 6
  %1662 = or disjoint i32 %1661, %1660
  %1663 = add nuw nsw i64 %1640, 1
  %1664 = icmp eq i64 %1663, 6
  br i1 %1664, label %1665, label %1637, !llvm.loop !59

1665:                                             ; preds = %1659, %1655, %1648
  %1666 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1666, align 4, !tbaa !34
  br label %1667

1667:                                             ; preds = %1665, %1648
  %1668 = phi i32 [ %1651, %1648 ], [ -1, %1665 ]
  %1669 = icmp sgt i32 %1668, 0
  br i1 %1669, label %1670, label %1713

1670:                                             ; preds = %1667
  %1671 = load i8, ptr %1484, align 1, !tbaa !43
  %1672 = zext i8 %1671 to i32
  br label %1673

1673:                                             ; preds = %1670, %1701
  %1674 = phi ptr [ %1484, %1670 ], [ %1677, %1701 ]
  %1675 = phi i32 [ %1672, %1670 ], [ %1704, %1701 ]
  %1676 = phi i64 [ 0, %1670 ], [ %1705, %1701 ]
  %1677 = getelementptr inbounds i8, ptr %1674, i64 1
  %1678 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1676
  %1679 = load i32, ptr %1678, align 16, !tbaa !54
  %1680 = and i32 %1679, %1672
  %1681 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1676, i32 1
  %1682 = load i32, ptr %1681, align 4, !tbaa !56
  %1683 = icmp eq i32 %1680, %1682
  br i1 %1683, label %1684, label %1695

1684:                                             ; preds = %1673
  %1685 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1676, i32 2
  %1686 = load i32, ptr %1685, align 8, !tbaa !57
  %1687 = and i32 %1686, %1675
  %1688 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1676, i32 3
  %1689 = load i32, ptr %1688, align 4, !tbaa !58
  %1690 = icmp slt i32 %1687, %1689
  br i1 %1690, label %1691, label %1693

1691:                                             ; preds = %1684
  %1692 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1692, align 4, !tbaa !34
  br label %1709

1693:                                             ; preds = %1684
  %1694 = add nuw nsw i64 %1676, 1
  br label %1709

1695:                                             ; preds = %1673
  %1696 = load i8, ptr %1677, align 1, !tbaa !43
  %1697 = xor i8 %1696, -128
  %1698 = icmp ult i8 %1697, 64
  br i1 %1698, label %1701, label %1699

1699:                                             ; preds = %1695
  %1700 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1700, align 4, !tbaa !34
  br label %1709

1701:                                             ; preds = %1695
  %1702 = zext nneg i8 %1697 to i32
  %1703 = shl i32 %1675, 6
  %1704 = or disjoint i32 %1703, %1702
  %1705 = add nuw nsw i64 %1676, 1
  %1706 = icmp eq i64 %1705, 6
  br i1 %1706, label %1707, label %1673, !llvm.loop !59

1707:                                             ; preds = %1701
  %1708 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1708, align 4, !tbaa !34
  br label %1709

1709:                                             ; preds = %1691, %1693, %1699, %1707
  %1710 = phi i64 [ 1, %1691 ], [ %1694, %1693 ], [ 1, %1699 ], [ 1, %1707 ]
  %1711 = and i64 %1710, 4294967295
  %1712 = getelementptr inbounds i8, ptr %1484, i64 %1711
  br label %1713

1713:                                             ; preds = %1589, %1667, %1709
  %1714 = phi ptr [ %1712, %1709 ], [ %1484, %1667 ], [ %1484, %1589 ]
  %1715 = load i8, ptr %1714, align 1, !tbaa !43
  %1716 = zext i8 %1715 to i32
  br label %1717

1717:                                             ; preds = %1713, %1747
  %1718 = phi ptr [ %1714, %1713 ], [ %1721, %1747 ]
  %1719 = phi i32 [ %1716, %1713 ], [ %1750, %1747 ]
  %1720 = phi i64 [ 0, %1713 ], [ %1751, %1747 ]
  %1721 = getelementptr inbounds i8, ptr %1718, i64 1
  %1722 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1720
  %1723 = load i32, ptr %1722, align 16, !tbaa !54
  %1724 = and i32 %1723, %1716
  %1725 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1720, i32 1
  %1726 = load i32, ptr %1725, align 4, !tbaa !56
  %1727 = icmp eq i32 %1724, %1726
  br i1 %1727, label %1728, label %1741

1728:                                             ; preds = %1717
  %1729 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1720, i32 2
  %1730 = load i32, ptr %1729, align 8, !tbaa !57
  %1731 = and i32 %1730, %1719
  %1732 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1720, i32 3
  %1733 = load i32, ptr %1732, align 4, !tbaa !58
  %1734 = icmp slt i32 %1731, %1733
  br i1 %1734, label %1735, label %1739

1735:                                             ; preds = %1728
  %1736 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1736, align 4, !tbaa !34
  br label %1737

1737:                                             ; preds = %1735, %1739, %1745, %1753
  %1738 = phi i64 [ 1, %1735 ], [ %1740, %1739 ], [ 1, %1745 ], [ 1, %1753 ]
  br label %1480, !llvm.loop !66

1739:                                             ; preds = %1728
  %1740 = add nuw nsw i64 %1720, 1
  br label %1737

1741:                                             ; preds = %1717
  %1742 = load i8, ptr %1721, align 1, !tbaa !43
  %1743 = xor i8 %1742, -128
  %1744 = icmp ult i8 %1743, 64
  br i1 %1744, label %1747, label %1745

1745:                                             ; preds = %1741
  %1746 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1746, align 4, !tbaa !34
  br label %1737

1747:                                             ; preds = %1741
  %1748 = zext nneg i8 %1743 to i32
  %1749 = shl i32 %1719, 6
  %1750 = or disjoint i32 %1749, %1748
  %1751 = add nuw nsw i64 %1720, 1
  %1752 = icmp eq i64 %1751, 6
  br i1 %1752, label %1753, label %1717, !llvm.loop !59

1753:                                             ; preds = %1747
  %1754 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1754, align 4, !tbaa !34
  br label %1737

1755:                                             ; preds = %1517, %1553
  %1756 = load i8, ptr %1484, align 1, !tbaa !43
  %1757 = zext i8 %1756 to i32
  br label %1758

1758:                                             ; preds = %1755, %1780
  %1759 = phi ptr [ %1484, %1755 ], [ %1762, %1780 ]
  %1760 = phi i32 [ %1757, %1755 ], [ %1783, %1780 ]
  %1761 = phi i64 [ 0, %1755 ], [ %1784, %1780 ]
  %1762 = getelementptr inbounds i8, ptr %1759, i64 1
  %1763 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1761
  %1764 = load i32, ptr %1763, align 16, !tbaa !54
  %1765 = and i32 %1764, %1757
  %1766 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1761, i32 1
  %1767 = load i32, ptr %1766, align 4, !tbaa !56
  %1768 = icmp eq i32 %1765, %1767
  br i1 %1768, label %1769, label %1776

1769:                                             ; preds = %1758
  %1770 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1761, i32 2
  %1771 = load i32, ptr %1770, align 8, !tbaa !57
  %1772 = and i32 %1771, %1760
  %1773 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1761, i32 3
  %1774 = load i32, ptr %1773, align 4, !tbaa !58
  %1775 = icmp slt i32 %1772, %1774
  br i1 %1775, label %1786, label %1788

1776:                                             ; preds = %1758
  %1777 = load i8, ptr %1762, align 1, !tbaa !43
  %1778 = xor i8 %1777, -128
  %1779 = icmp ult i8 %1778, 64
  br i1 %1779, label %1780, label %1786

1780:                                             ; preds = %1776
  %1781 = zext nneg i8 %1778 to i32
  %1782 = shl i32 %1760, 6
  %1783 = or disjoint i32 %1782, %1781
  %1784 = add nuw nsw i64 %1761, 1
  %1785 = icmp eq i64 %1784, 6
  br i1 %1785, label %1786, label %1758, !llvm.loop !59

1786:                                             ; preds = %1780, %1776, %1769
  %1787 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1787, align 4, !tbaa !34
  br label %1788

1788:                                             ; preds = %1786, %1769
  %1789 = phi i32 [ %1772, %1769 ], [ -1, %1786 ]
  %1790 = icmp eq i32 %1789, 0
  br i1 %1790, label %3523, label %1791

1791:                                             ; preds = %1788
  %1792 = load i8, ptr %1484, align 1, !tbaa !43
  %1793 = zext i8 %1792 to i32
  br label %1794

1794:                                             ; preds = %1791, %1822
  %1795 = phi ptr [ %1484, %1791 ], [ %1798, %1822 ]
  %1796 = phi i32 [ %1793, %1791 ], [ %1825, %1822 ]
  %1797 = phi i64 [ 0, %1791 ], [ %1826, %1822 ]
  %1798 = getelementptr inbounds i8, ptr %1795, i64 1
  %1799 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1797
  %1800 = load i32, ptr %1799, align 16, !tbaa !54
  %1801 = and i32 %1800, %1793
  %1802 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1797, i32 1
  %1803 = load i32, ptr %1802, align 4, !tbaa !56
  %1804 = icmp eq i32 %1801, %1803
  br i1 %1804, label %1805, label %1816

1805:                                             ; preds = %1794
  %1806 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1797, i32 2
  %1807 = load i32, ptr %1806, align 8, !tbaa !57
  %1808 = and i32 %1807, %1796
  %1809 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1797, i32 3
  %1810 = load i32, ptr %1809, align 4, !tbaa !58
  %1811 = icmp slt i32 %1808, %1810
  br i1 %1811, label %1812, label %1814

1812:                                             ; preds = %1805
  %1813 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1813, align 4, !tbaa !34
  br label %1830

1814:                                             ; preds = %1805
  %1815 = add nuw nsw i64 %1797, 1
  br label %1830

1816:                                             ; preds = %1794
  %1817 = load i8, ptr %1798, align 1, !tbaa !43
  %1818 = xor i8 %1817, -128
  %1819 = icmp ult i8 %1818, 64
  br i1 %1819, label %1822, label %1820

1820:                                             ; preds = %1816
  %1821 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1821, align 4, !tbaa !34
  br label %1830

1822:                                             ; preds = %1816
  %1823 = zext nneg i8 %1818 to i32
  %1824 = shl i32 %1796, 6
  %1825 = or disjoint i32 %1824, %1823
  %1826 = add nuw nsw i64 %1797, 1
  %1827 = icmp eq i64 %1826, 6
  br i1 %1827, label %1828, label %1794, !llvm.loop !59

1828:                                             ; preds = %1822
  %1829 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1829, align 4, !tbaa !34
  br label %1830

1830:                                             ; preds = %1812, %1814, %1820, %1828
  %1831 = phi i64 [ 1, %1812 ], [ %1815, %1814 ], [ 1, %1820 ], [ 1, %1828 ]
  %1832 = and i64 %1831, 4294967295
  %1833 = getelementptr inbounds i8, ptr %1484, i64 %1832
  br i1 %143, label %1834, label %1836

1834:                                             ; preds = %1830
  %1835 = tail call ptr @__errno_location() #10
  store i32 22, ptr %1835, align 4, !tbaa !34
  br label %1875

1836:                                             ; preds = %1830
  %1837 = load i8, ptr %101, align 1, !tbaa !43
  %1838 = zext i8 %1837 to i32
  br label %1839

1839:                                             ; preds = %1836, %1867
  %1840 = phi ptr [ %101, %1836 ], [ %1843, %1867 ]
  %1841 = phi i32 [ %1838, %1836 ], [ %1870, %1867 ]
  %1842 = phi i64 [ 0, %1836 ], [ %1871, %1867 ]
  %1843 = getelementptr inbounds i8, ptr %1840, i64 1
  %1844 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1842
  %1845 = load i32, ptr %1844, align 16, !tbaa !54
  %1846 = and i32 %1845, %1838
  %1847 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1842, i32 1
  %1848 = load i32, ptr %1847, align 4, !tbaa !56
  %1849 = icmp eq i32 %1846, %1848
  br i1 %1849, label %1850, label %1861

1850:                                             ; preds = %1839
  %1851 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1842, i32 2
  %1852 = load i32, ptr %1851, align 8, !tbaa !57
  %1853 = and i32 %1852, %1841
  %1854 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1842, i32 3
  %1855 = load i32, ptr %1854, align 4, !tbaa !58
  %1856 = icmp slt i32 %1853, %1855
  br i1 %1856, label %1857, label %1859

1857:                                             ; preds = %1850
  %1858 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1858, align 4, !tbaa !34
  br label %1875

1859:                                             ; preds = %1850
  %1860 = add nuw nsw i64 %1842, 1
  br label %1875

1861:                                             ; preds = %1839
  %1862 = load i8, ptr %1843, align 1, !tbaa !43
  %1863 = xor i8 %1862, -128
  %1864 = icmp ult i8 %1863, 64
  br i1 %1864, label %1867, label %1865

1865:                                             ; preds = %1861
  %1866 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1866, align 4, !tbaa !34
  br label %1875

1867:                                             ; preds = %1861
  %1868 = zext nneg i8 %1863 to i32
  %1869 = shl i32 %1841, 6
  %1870 = or disjoint i32 %1869, %1868
  %1871 = add nuw nsw i64 %1842, 1
  %1872 = icmp eq i64 %1871, 6
  br i1 %1872, label %1873, label %1839, !llvm.loop !59

1873:                                             ; preds = %1867
  %1874 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1874, align 4, !tbaa !34
  br label %1875

1875:                                             ; preds = %1834, %1857, %1859, %1865, %1873
  %1876 = phi i64 [ 1, %1834 ], [ 1, %1857 ], [ %1860, %1859 ], [ 1, %1865 ], [ 1, %1873 ]
  %1877 = and i64 %1876, 4294967295
  %1878 = getelementptr inbounds i8, ptr %101, i64 %1877
  br label %3523

1879:                                             ; preds = %292
  br i1 %102, label %1880, label %1882

1880:                                             ; preds = %1879
  %1881 = tail call ptr @__errno_location() #10
  store i32 22, ptr %1881, align 4, !tbaa !34
  br label %1921

1882:                                             ; preds = %1879
  %1883 = load i8, ptr %100, align 1, !tbaa !43
  %1884 = zext i8 %1883 to i32
  br label %1885

1885:                                             ; preds = %1882, %1913
  %1886 = phi ptr [ %100, %1882 ], [ %1889, %1913 ]
  %1887 = phi i32 [ %1884, %1882 ], [ %1916, %1913 ]
  %1888 = phi i64 [ 0, %1882 ], [ %1917, %1913 ]
  %1889 = getelementptr inbounds i8, ptr %1886, i64 1
  %1890 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1888
  %1891 = load i32, ptr %1890, align 16, !tbaa !54
  %1892 = and i32 %1891, %1884
  %1893 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1888, i32 1
  %1894 = load i32, ptr %1893, align 4, !tbaa !56
  %1895 = icmp eq i32 %1892, %1894
  br i1 %1895, label %1896, label %1907

1896:                                             ; preds = %1885
  %1897 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1888, i32 2
  %1898 = load i32, ptr %1897, align 8, !tbaa !57
  %1899 = and i32 %1898, %1887
  %1900 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1888, i32 3
  %1901 = load i32, ptr %1900, align 4, !tbaa !58
  %1902 = icmp slt i32 %1899, %1901
  br i1 %1902, label %1903, label %1905

1903:                                             ; preds = %1896
  %1904 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1904, align 4, !tbaa !34
  br label %1921

1905:                                             ; preds = %1896
  %1906 = add nuw nsw i64 %1888, 1
  br label %1921

1907:                                             ; preds = %1885
  %1908 = load i8, ptr %1889, align 1, !tbaa !43
  %1909 = xor i8 %1908, -128
  %1910 = icmp ult i8 %1909, 64
  br i1 %1910, label %1913, label %1911

1911:                                             ; preds = %1907
  %1912 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1912, align 4, !tbaa !34
  br label %1921

1913:                                             ; preds = %1907
  %1914 = zext nneg i8 %1909 to i32
  %1915 = shl i32 %1887, 6
  %1916 = or disjoint i32 %1915, %1914
  %1917 = add nuw nsw i64 %1888, 1
  %1918 = icmp eq i64 %1917, 6
  br i1 %1918, label %1919, label %1885, !llvm.loop !59

1919:                                             ; preds = %1913
  %1920 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1920, align 4, !tbaa !34
  br label %1921

1921:                                             ; preds = %1880, %1903, %1905, %1911, %1919
  %1922 = phi i64 [ 1, %1880 ], [ 1, %1903 ], [ %1906, %1905 ], [ 1, %1911 ], [ 1, %1919 ]
  %1923 = and i64 %1922, 4294967295
  %1924 = getelementptr inbounds i8, ptr %100, i64 %1923
  br i1 %143, label %1925, label %1927

1925:                                             ; preds = %1921
  %1926 = tail call ptr @__errno_location() #10
  store i32 22, ptr %1926, align 4, !tbaa !34
  br label %1966

1927:                                             ; preds = %1921
  %1928 = load i8, ptr %101, align 1, !tbaa !43
  %1929 = zext i8 %1928 to i32
  br label %1930

1930:                                             ; preds = %1927, %1958
  %1931 = phi ptr [ %101, %1927 ], [ %1934, %1958 ]
  %1932 = phi i32 [ %1929, %1927 ], [ %1961, %1958 ]
  %1933 = phi i64 [ 0, %1927 ], [ %1962, %1958 ]
  %1934 = getelementptr inbounds i8, ptr %1931, i64 1
  %1935 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1933
  %1936 = load i32, ptr %1935, align 16, !tbaa !54
  %1937 = and i32 %1936, %1929
  %1938 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1933, i32 1
  %1939 = load i32, ptr %1938, align 4, !tbaa !56
  %1940 = icmp eq i32 %1937, %1939
  br i1 %1940, label %1941, label %1952

1941:                                             ; preds = %1930
  %1942 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1933, i32 2
  %1943 = load i32, ptr %1942, align 8, !tbaa !57
  %1944 = and i32 %1943, %1932
  %1945 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1933, i32 3
  %1946 = load i32, ptr %1945, align 4, !tbaa !58
  %1947 = icmp slt i32 %1944, %1946
  br i1 %1947, label %1948, label %1950

1948:                                             ; preds = %1941
  %1949 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1949, align 4, !tbaa !34
  br label %1966

1950:                                             ; preds = %1941
  %1951 = add nuw nsw i64 %1933, 1
  br label %1966

1952:                                             ; preds = %1930
  %1953 = load i8, ptr %1934, align 1, !tbaa !43
  %1954 = xor i8 %1953, -128
  %1955 = icmp ult i8 %1954, 64
  br i1 %1955, label %1958, label %1956

1956:                                             ; preds = %1952
  %1957 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1957, align 4, !tbaa !34
  br label %1966

1958:                                             ; preds = %1952
  %1959 = zext nneg i8 %1954 to i32
  %1960 = shl i32 %1932, 6
  %1961 = or disjoint i32 %1960, %1959
  %1962 = add nuw nsw i64 %1933, 1
  %1963 = icmp eq i64 %1962, 6
  br i1 %1963, label %1964, label %1930, !llvm.loop !59

1964:                                             ; preds = %1958
  %1965 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1965, align 4, !tbaa !34
  br label %1966

1966:                                             ; preds = %1925, %1948, %1950, %1956, %1964
  %1967 = phi i64 [ 1, %1925 ], [ 1, %1948 ], [ %1951, %1950 ], [ 1, %1956 ], [ 1, %1964 ]
  %1968 = and i64 %1967, 4294967295
  %1969 = getelementptr inbounds i8, ptr %101, i64 %1968
  br label %3523

1970:                                             ; preds = %292
  br i1 %102, label %1971, label %1973

1971:                                             ; preds = %1970
  %1972 = tail call ptr @__errno_location() #10
  store i32 22, ptr %1972, align 4, !tbaa !34
  br label %2012

1973:                                             ; preds = %1970
  %1974 = load i8, ptr %100, align 1, !tbaa !43
  %1975 = zext i8 %1974 to i32
  br label %1976

1976:                                             ; preds = %1973, %2004
  %1977 = phi ptr [ %100, %1973 ], [ %1980, %2004 ]
  %1978 = phi i32 [ %1975, %1973 ], [ %2007, %2004 ]
  %1979 = phi i64 [ 0, %1973 ], [ %2008, %2004 ]
  %1980 = getelementptr inbounds i8, ptr %1977, i64 1
  %1981 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1979
  %1982 = load i32, ptr %1981, align 16, !tbaa !54
  %1983 = and i32 %1982, %1975
  %1984 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1979, i32 1
  %1985 = load i32, ptr %1984, align 4, !tbaa !56
  %1986 = icmp eq i32 %1983, %1985
  br i1 %1986, label %1987, label %1998

1987:                                             ; preds = %1976
  %1988 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1979, i32 2
  %1989 = load i32, ptr %1988, align 8, !tbaa !57
  %1990 = and i32 %1989, %1978
  %1991 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %1979, i32 3
  %1992 = load i32, ptr %1991, align 4, !tbaa !58
  %1993 = icmp slt i32 %1990, %1992
  br i1 %1993, label %1994, label %1996

1994:                                             ; preds = %1987
  %1995 = tail call ptr @__errno_location() #10
  store i32 84, ptr %1995, align 4, !tbaa !34
  br label %2012

1996:                                             ; preds = %1987
  %1997 = add nuw nsw i64 %1979, 1
  br label %2012

1998:                                             ; preds = %1976
  %1999 = load i8, ptr %1980, align 1, !tbaa !43
  %2000 = xor i8 %1999, -128
  %2001 = icmp ult i8 %2000, 64
  br i1 %2001, label %2004, label %2002

2002:                                             ; preds = %1998
  %2003 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2003, align 4, !tbaa !34
  br label %2012

2004:                                             ; preds = %1998
  %2005 = zext nneg i8 %2000 to i32
  %2006 = shl i32 %1978, 6
  %2007 = or disjoint i32 %2006, %2005
  %2008 = add nuw nsw i64 %1979, 1
  %2009 = icmp eq i64 %2008, 6
  br i1 %2009, label %2010, label %1976, !llvm.loop !59

2010:                                             ; preds = %2004
  %2011 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2011, align 4, !tbaa !34
  br label %2012

2012:                                             ; preds = %1971, %1994, %1996, %2002, %2010
  %2013 = phi i64 [ 1, %1971 ], [ 1, %1994 ], [ %1997, %1996 ], [ 1, %2002 ], [ 1, %2010 ]
  %2014 = and i64 %2013, 4294967295
  %2015 = getelementptr inbounds i8, ptr %100, i64 %2014
  br label %2016

2016:                                             ; preds = %3268, %2012
  %2017 = phi ptr [ %2015, %2012 ], [ %3269, %3268 ]
  %2018 = phi ptr [ %101, %2012 ], [ %3183, %3268 ]
  %2019 = icmp eq ptr %2017, null
  br i1 %2019, label %2051, label %2020

2020:                                             ; preds = %2016
  %2021 = load i8, ptr %2017, align 1, !tbaa !43
  %2022 = zext i8 %2021 to i32
  br label %2023

2023:                                             ; preds = %2020, %2045
  %2024 = phi ptr [ %2017, %2020 ], [ %2027, %2045 ]
  %2025 = phi i32 [ %2022, %2020 ], [ %2048, %2045 ]
  %2026 = phi i64 [ 0, %2020 ], [ %2049, %2045 ]
  %2027 = getelementptr inbounds i8, ptr %2024, i64 1
  %2028 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2026
  %2029 = load i32, ptr %2028, align 16, !tbaa !54
  %2030 = and i32 %2029, %2022
  %2031 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2026, i32 1
  %2032 = load i32, ptr %2031, align 4, !tbaa !56
  %2033 = icmp eq i32 %2030, %2032
  br i1 %2033, label %2034, label %2041

2034:                                             ; preds = %2023
  %2035 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2026, i32 2
  %2036 = load i32, ptr %2035, align 8, !tbaa !57
  %2037 = and i32 %2036, %2025
  %2038 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2026, i32 3
  %2039 = load i32, ptr %2038, align 4, !tbaa !58
  %2040 = icmp slt i32 %2037, %2039
  br i1 %2040, label %2051, label %2054

2041:                                             ; preds = %2023
  %2042 = load i8, ptr %2027, align 1, !tbaa !43
  %2043 = xor i8 %2042, -128
  %2044 = icmp ult i8 %2043, 64
  br i1 %2044, label %2045, label %2051

2045:                                             ; preds = %2041
  %2046 = zext nneg i8 %2043 to i32
  %2047 = shl i32 %2025, 6
  %2048 = or disjoint i32 %2047, %2046
  %2049 = add nuw nsw i64 %2026, 1
  %2050 = icmp eq i64 %2049, 6
  br i1 %2050, label %2051, label %2023, !llvm.loop !59

2051:                                             ; preds = %2045, %2041, %2034, %2016
  %2052 = phi i32 [ 22, %2016 ], [ 84, %2034 ], [ 84, %2041 ], [ 84, %2045 ]
  %2053 = tail call ptr @__errno_location() #10
  store i32 %2052, ptr %2053, align 4, !tbaa !34
  br label %2054

2054:                                             ; preds = %2051, %2034
  %2055 = phi i32 [ %2037, %2034 ], [ -1, %2051 ]
  %2056 = icmp eq i32 %2055, 125
  br i1 %2056, label %3523, label %2057, !llvm.loop !63

2057:                                             ; preds = %2054
  br i1 %2019, label %2089, label %2058

2058:                                             ; preds = %2057
  %2059 = load i8, ptr %2017, align 1, !tbaa !43
  %2060 = zext i8 %2059 to i32
  br label %2061

2061:                                             ; preds = %2058, %2083
  %2062 = phi ptr [ %2017, %2058 ], [ %2065, %2083 ]
  %2063 = phi i32 [ %2060, %2058 ], [ %2086, %2083 ]
  %2064 = phi i64 [ 0, %2058 ], [ %2087, %2083 ]
  %2065 = getelementptr inbounds i8, ptr %2062, i64 1
  %2066 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2064
  %2067 = load i32, ptr %2066, align 16, !tbaa !54
  %2068 = and i32 %2067, %2060
  %2069 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2064, i32 1
  %2070 = load i32, ptr %2069, align 4, !tbaa !56
  %2071 = icmp eq i32 %2068, %2070
  br i1 %2071, label %2072, label %2079

2072:                                             ; preds = %2061
  %2073 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2064, i32 2
  %2074 = load i32, ptr %2073, align 8, !tbaa !57
  %2075 = and i32 %2074, %2063
  %2076 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2064, i32 3
  %2077 = load i32, ptr %2076, align 4, !tbaa !58
  %2078 = icmp slt i32 %2075, %2077
  br i1 %2078, label %2089, label %2092

2079:                                             ; preds = %2061
  %2080 = load i8, ptr %2065, align 1, !tbaa !43
  %2081 = xor i8 %2080, -128
  %2082 = icmp ult i8 %2081, 64
  br i1 %2082, label %2083, label %2089

2083:                                             ; preds = %2079
  %2084 = zext nneg i8 %2081 to i32
  %2085 = shl i32 %2063, 6
  %2086 = or disjoint i32 %2085, %2084
  %2087 = add nuw nsw i64 %2064, 1
  %2088 = icmp eq i64 %2087, 6
  br i1 %2088, label %2089, label %2061, !llvm.loop !59

2089:                                             ; preds = %2083, %2079, %2072, %2057
  %2090 = phi i32 [ 22, %2057 ], [ 84, %2072 ], [ 84, %2079 ], [ 84, %2083 ]
  %2091 = tail call ptr @__errno_location() #10
  store i32 %2090, ptr %2091, align 4, !tbaa !34
  br label %2092

2092:                                             ; preds = %2089, %2072
  %2093 = phi i32 [ %2075, %2072 ], [ -1, %2089 ]
  %2094 = icmp eq i32 %2093, 0
  br i1 %2094, label %3523, label %2095, !llvm.loop !63

2095:                                             ; preds = %2092, %2499
  %2096 = phi i1 [ %2412, %2499 ], [ true, %2092 ]
  %2097 = phi ptr [ %2457, %2499 ], [ %2018, %2092 ]
  %2098 = phi ptr [ %2502, %2499 ], [ %2017, %2092 ]
  %2099 = icmp eq ptr %2097, null
  br i1 %2099, label %2131, label %2100

2100:                                             ; preds = %2095
  %2101 = load i8, ptr %2097, align 1, !tbaa !43
  %2102 = zext i8 %2101 to i32
  br label %2103

2103:                                             ; preds = %2100, %2125
  %2104 = phi ptr [ %2097, %2100 ], [ %2107, %2125 ]
  %2105 = phi i32 [ %2102, %2100 ], [ %2128, %2125 ]
  %2106 = phi i64 [ 0, %2100 ], [ %2129, %2125 ]
  %2107 = getelementptr inbounds i8, ptr %2104, i64 1
  %2108 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2106
  %2109 = load i32, ptr %2108, align 16, !tbaa !54
  %2110 = and i32 %2109, %2102
  %2111 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2106, i32 1
  %2112 = load i32, ptr %2111, align 4, !tbaa !56
  %2113 = icmp eq i32 %2110, %2112
  br i1 %2113, label %2114, label %2121

2114:                                             ; preds = %2103
  %2115 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2106, i32 2
  %2116 = load i32, ptr %2115, align 8, !tbaa !57
  %2117 = and i32 %2116, %2105
  %2118 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2106, i32 3
  %2119 = load i32, ptr %2118, align 4, !tbaa !58
  %2120 = icmp slt i32 %2117, %2119
  br i1 %2120, label %2131, label %2134

2121:                                             ; preds = %2103
  %2122 = load i8, ptr %2107, align 1, !tbaa !43
  %2123 = xor i8 %2122, -128
  %2124 = icmp ult i8 %2123, 64
  br i1 %2124, label %2125, label %2131

2125:                                             ; preds = %2121
  %2126 = zext nneg i8 %2123 to i32
  %2127 = shl i32 %2105, 6
  %2128 = or disjoint i32 %2127, %2126
  %2129 = add nuw nsw i64 %2106, 1
  %2130 = icmp eq i64 %2129, 6
  br i1 %2130, label %2131, label %2103, !llvm.loop !59

2131:                                             ; preds = %2125, %2121, %2114, %2095
  %2132 = phi i32 [ 22, %2095 ], [ 84, %2114 ], [ 84, %2121 ], [ 84, %2125 ]
  %2133 = tail call ptr @__errno_location() #10
  store i32 %2132, ptr %2133, align 4, !tbaa !34
  br label %2134

2134:                                             ; preds = %2131, %2114
  %2135 = phi i32 [ %2117, %2114 ], [ -1, %2131 ]
  %2136 = icmp eq i32 %2135, 0
  br i1 %2136, label %2503, label %2137

2137:                                             ; preds = %2134
  %2138 = icmp eq ptr %2098, null
  br i1 %2138, label %2170, label %2139

2139:                                             ; preds = %2137
  %2140 = load i8, ptr %2098, align 1, !tbaa !43
  %2141 = zext i8 %2140 to i32
  br label %2142

2142:                                             ; preds = %2139, %2164
  %2143 = phi ptr [ %2098, %2139 ], [ %2146, %2164 ]
  %2144 = phi i32 [ %2141, %2139 ], [ %2167, %2164 ]
  %2145 = phi i64 [ 0, %2139 ], [ %2168, %2164 ]
  %2146 = getelementptr inbounds i8, ptr %2143, i64 1
  %2147 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2145
  %2148 = load i32, ptr %2147, align 16, !tbaa !54
  %2149 = and i32 %2148, %2141
  %2150 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2145, i32 1
  %2151 = load i32, ptr %2150, align 4, !tbaa !56
  %2152 = icmp eq i32 %2149, %2151
  br i1 %2152, label %2153, label %2160

2153:                                             ; preds = %2142
  %2154 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2145, i32 2
  %2155 = load i32, ptr %2154, align 8, !tbaa !57
  %2156 = and i32 %2155, %2144
  %2157 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2145, i32 3
  %2158 = load i32, ptr %2157, align 4, !tbaa !58
  %2159 = icmp slt i32 %2156, %2158
  br i1 %2159, label %2170, label %2173

2160:                                             ; preds = %2142
  %2161 = load i8, ptr %2146, align 1, !tbaa !43
  %2162 = xor i8 %2161, -128
  %2163 = icmp ult i8 %2162, 64
  br i1 %2163, label %2164, label %2170

2164:                                             ; preds = %2160
  %2165 = zext nneg i8 %2162 to i32
  %2166 = shl i32 %2144, 6
  %2167 = or disjoint i32 %2166, %2165
  %2168 = add nuw nsw i64 %2145, 1
  %2169 = icmp eq i64 %2168, 6
  br i1 %2169, label %2170, label %2142, !llvm.loop !59

2170:                                             ; preds = %2164, %2160, %2153, %2137
  %2171 = phi i32 [ 22, %2137 ], [ 84, %2153 ], [ 84, %2160 ], [ 84, %2164 ]
  %2172 = tail call ptr @__errno_location() #10
  store i32 %2171, ptr %2172, align 4, !tbaa !34
  br label %2173

2173:                                             ; preds = %2170, %2153
  %2174 = phi i32 [ %2156, %2153 ], [ -1, %2170 ]
  %2175 = icmp eq i32 %2174, 0
  br i1 %2175, label %2503, label %2176

2176:                                             ; preds = %2173
  br i1 %2138, label %2208, label %2177

2177:                                             ; preds = %2176
  %2178 = load i8, ptr %2098, align 1, !tbaa !43
  %2179 = zext i8 %2178 to i32
  br label %2180

2180:                                             ; preds = %2177, %2202
  %2181 = phi ptr [ %2098, %2177 ], [ %2184, %2202 ]
  %2182 = phi i32 [ %2179, %2177 ], [ %2205, %2202 ]
  %2183 = phi i64 [ 0, %2177 ], [ %2206, %2202 ]
  %2184 = getelementptr inbounds i8, ptr %2181, i64 1
  %2185 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2183
  %2186 = load i32, ptr %2185, align 16, !tbaa !54
  %2187 = and i32 %2186, %2179
  %2188 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2183, i32 1
  %2189 = load i32, ptr %2188, align 4, !tbaa !56
  %2190 = icmp eq i32 %2187, %2189
  br i1 %2190, label %2191, label %2198

2191:                                             ; preds = %2180
  %2192 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2183, i32 2
  %2193 = load i32, ptr %2192, align 8, !tbaa !57
  %2194 = and i32 %2193, %2182
  %2195 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2183, i32 3
  %2196 = load i32, ptr %2195, align 4, !tbaa !58
  %2197 = icmp slt i32 %2194, %2196
  br i1 %2197, label %2208, label %2211

2198:                                             ; preds = %2180
  %2199 = load i8, ptr %2184, align 1, !tbaa !43
  %2200 = xor i8 %2199, -128
  %2201 = icmp ult i8 %2200, 64
  br i1 %2201, label %2202, label %2208

2202:                                             ; preds = %2198
  %2203 = zext nneg i8 %2200 to i32
  %2204 = shl i32 %2182, 6
  %2205 = or disjoint i32 %2204, %2203
  %2206 = add nuw nsw i64 %2183, 1
  %2207 = icmp eq i64 %2206, 6
  br i1 %2207, label %2208, label %2180, !llvm.loop !59

2208:                                             ; preds = %2202, %2198, %2191, %2176
  %2209 = phi i32 [ 22, %2176 ], [ 84, %2191 ], [ 84, %2198 ], [ 84, %2202 ]
  %2210 = tail call ptr @__errno_location() #10
  store i32 %2209, ptr %2210, align 4, !tbaa !34
  br label %2211

2211:                                             ; preds = %2208, %2191
  %2212 = phi i32 [ %2194, %2191 ], [ -1, %2208 ]
  %2213 = icmp eq i32 %2212, 44
  br i1 %2213, label %2503, label %2214

2214:                                             ; preds = %2211
  br i1 %2138, label %2246, label %2215

2215:                                             ; preds = %2214
  %2216 = load i8, ptr %2098, align 1, !tbaa !43
  %2217 = zext i8 %2216 to i32
  br label %2218

2218:                                             ; preds = %2215, %2240
  %2219 = phi ptr [ %2098, %2215 ], [ %2222, %2240 ]
  %2220 = phi i32 [ %2217, %2215 ], [ %2243, %2240 ]
  %2221 = phi i64 [ 0, %2215 ], [ %2244, %2240 ]
  %2222 = getelementptr inbounds i8, ptr %2219, i64 1
  %2223 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2221
  %2224 = load i32, ptr %2223, align 16, !tbaa !54
  %2225 = and i32 %2224, %2217
  %2226 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2221, i32 1
  %2227 = load i32, ptr %2226, align 4, !tbaa !56
  %2228 = icmp eq i32 %2225, %2227
  br i1 %2228, label %2229, label %2236

2229:                                             ; preds = %2218
  %2230 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2221, i32 2
  %2231 = load i32, ptr %2230, align 8, !tbaa !57
  %2232 = and i32 %2231, %2220
  %2233 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2221, i32 3
  %2234 = load i32, ptr %2233, align 4, !tbaa !58
  %2235 = icmp slt i32 %2232, %2234
  br i1 %2235, label %2246, label %2249

2236:                                             ; preds = %2218
  %2237 = load i8, ptr %2222, align 1, !tbaa !43
  %2238 = xor i8 %2237, -128
  %2239 = icmp ult i8 %2238, 64
  br i1 %2239, label %2240, label %2246

2240:                                             ; preds = %2236
  %2241 = zext nneg i8 %2238 to i32
  %2242 = shl i32 %2220, 6
  %2243 = or disjoint i32 %2242, %2241
  %2244 = add nuw nsw i64 %2221, 1
  %2245 = icmp eq i64 %2244, 6
  br i1 %2245, label %2246, label %2218, !llvm.loop !59

2246:                                             ; preds = %2240, %2236, %2229, %2214
  %2247 = phi i32 [ 22, %2214 ], [ 84, %2229 ], [ 84, %2236 ], [ 84, %2240 ]
  %2248 = tail call ptr @__errno_location() #10
  store i32 %2247, ptr %2248, align 4, !tbaa !34
  br label %2249

2249:                                             ; preds = %2246, %2229
  %2250 = phi i32 [ %2232, %2229 ], [ -1, %2246 ]
  %2251 = icmp ne i32 %2250, 125
  %2252 = and i1 %2096, %2251
  br i1 %2252, label %2253, label %2503

2253:                                             ; preds = %2249
  br i1 %2138, label %2285, label %2254

2254:                                             ; preds = %2253
  %2255 = load i8, ptr %2098, align 1, !tbaa !43
  %2256 = zext i8 %2255 to i32
  br label %2257

2257:                                             ; preds = %2254, %2279
  %2258 = phi ptr [ %2098, %2254 ], [ %2261, %2279 ]
  %2259 = phi i32 [ %2256, %2254 ], [ %2282, %2279 ]
  %2260 = phi i64 [ 0, %2254 ], [ %2283, %2279 ]
  %2261 = getelementptr inbounds i8, ptr %2258, i64 1
  %2262 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2260
  %2263 = load i32, ptr %2262, align 16, !tbaa !54
  %2264 = and i32 %2263, %2256
  %2265 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2260, i32 1
  %2266 = load i32, ptr %2265, align 4, !tbaa !56
  %2267 = icmp eq i32 %2264, %2266
  br i1 %2267, label %2268, label %2275

2268:                                             ; preds = %2257
  %2269 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2260, i32 2
  %2270 = load i32, ptr %2269, align 8, !tbaa !57
  %2271 = and i32 %2270, %2259
  %2272 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2260, i32 3
  %2273 = load i32, ptr %2272, align 4, !tbaa !58
  %2274 = icmp slt i32 %2271, %2273
  br i1 %2274, label %2285, label %2288

2275:                                             ; preds = %2257
  %2276 = load i8, ptr %2261, align 1, !tbaa !43
  %2277 = xor i8 %2276, -128
  %2278 = icmp ult i8 %2277, 64
  br i1 %2278, label %2279, label %2285

2279:                                             ; preds = %2275
  %2280 = zext nneg i8 %2277 to i32
  %2281 = shl i32 %2259, 6
  %2282 = or disjoint i32 %2281, %2280
  %2283 = add nuw nsw i64 %2260, 1
  %2284 = icmp eq i64 %2283, 6
  br i1 %2284, label %2285, label %2257, !llvm.loop !59

2285:                                             ; preds = %2279, %2275, %2268, %2253
  %2286 = phi i32 [ 22, %2253 ], [ 84, %2268 ], [ 84, %2275 ], [ 84, %2279 ]
  %2287 = tail call ptr @__errno_location() #10
  store i32 %2286, ptr %2287, align 4, !tbaa !34
  br label %2288

2288:                                             ; preds = %2285, %2268
  %2289 = phi i32 [ %2271, %2268 ], [ -1, %2285 ]
  %2290 = icmp eq i32 %2289, 92
  br i1 %2290, label %2291, label %2337

2291:                                             ; preds = %2288
  br i1 %2138, label %2292, label %2294

2292:                                             ; preds = %2291
  %2293 = tail call ptr @__errno_location() #10
  store i32 22, ptr %2293, align 4, !tbaa !34
  br label %2333

2294:                                             ; preds = %2291
  %2295 = load i8, ptr %2098, align 1, !tbaa !43
  %2296 = zext i8 %2295 to i32
  br label %2297

2297:                                             ; preds = %2294, %2325
  %2298 = phi ptr [ %2098, %2294 ], [ %2301, %2325 ]
  %2299 = phi i32 [ %2296, %2294 ], [ %2328, %2325 ]
  %2300 = phi i64 [ 0, %2294 ], [ %2329, %2325 ]
  %2301 = getelementptr inbounds i8, ptr %2298, i64 1
  %2302 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2300
  %2303 = load i32, ptr %2302, align 16, !tbaa !54
  %2304 = and i32 %2303, %2296
  %2305 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2300, i32 1
  %2306 = load i32, ptr %2305, align 4, !tbaa !56
  %2307 = icmp eq i32 %2304, %2306
  br i1 %2307, label %2308, label %2319

2308:                                             ; preds = %2297
  %2309 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2300, i32 2
  %2310 = load i32, ptr %2309, align 8, !tbaa !57
  %2311 = and i32 %2310, %2299
  %2312 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2300, i32 3
  %2313 = load i32, ptr %2312, align 4, !tbaa !58
  %2314 = icmp slt i32 %2311, %2313
  br i1 %2314, label %2315, label %2317

2315:                                             ; preds = %2308
  %2316 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2316, align 4, !tbaa !34
  br label %2333

2317:                                             ; preds = %2308
  %2318 = add nuw nsw i64 %2300, 1
  br label %2333

2319:                                             ; preds = %2297
  %2320 = load i8, ptr %2301, align 1, !tbaa !43
  %2321 = xor i8 %2320, -128
  %2322 = icmp ult i8 %2321, 64
  br i1 %2322, label %2325, label %2323

2323:                                             ; preds = %2319
  %2324 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2324, align 4, !tbaa !34
  br label %2333

2325:                                             ; preds = %2319
  %2326 = zext nneg i8 %2321 to i32
  %2327 = shl i32 %2299, 6
  %2328 = or disjoint i32 %2327, %2326
  %2329 = add nuw nsw i64 %2300, 1
  %2330 = icmp eq i64 %2329, 6
  br i1 %2330, label %2331, label %2297, !llvm.loop !59

2331:                                             ; preds = %2325
  %2332 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2332, align 4, !tbaa !34
  br label %2333

2333:                                             ; preds = %2292, %2315, %2317, %2323, %2331
  %2334 = phi i64 [ 1, %2292 ], [ 1, %2315 ], [ %2318, %2317 ], [ 1, %2323 ], [ 1, %2331 ]
  %2335 = and i64 %2334, 4294967295
  %2336 = getelementptr inbounds i8, ptr %2098, i64 %2335
  br label %2337

2337:                                             ; preds = %2333, %2288
  %2338 = phi ptr [ %2336, %2333 ], [ %2098, %2288 ]
  %2339 = icmp eq ptr %2338, null
  br i1 %2339, label %2371, label %2340

2340:                                             ; preds = %2337
  %2341 = load i8, ptr %2338, align 1, !tbaa !43
  %2342 = zext i8 %2341 to i32
  br label %2343

2343:                                             ; preds = %2340, %2365
  %2344 = phi ptr [ %2338, %2340 ], [ %2347, %2365 ]
  %2345 = phi i32 [ %2342, %2340 ], [ %2368, %2365 ]
  %2346 = phi i64 [ 0, %2340 ], [ %2369, %2365 ]
  %2347 = getelementptr inbounds i8, ptr %2344, i64 1
  %2348 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2346
  %2349 = load i32, ptr %2348, align 16, !tbaa !54
  %2350 = and i32 %2349, %2342
  %2351 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2346, i32 1
  %2352 = load i32, ptr %2351, align 4, !tbaa !56
  %2353 = icmp eq i32 %2350, %2352
  br i1 %2353, label %2354, label %2361

2354:                                             ; preds = %2343
  %2355 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2346, i32 2
  %2356 = load i32, ptr %2355, align 8, !tbaa !57
  %2357 = and i32 %2356, %2345
  %2358 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2346, i32 3
  %2359 = load i32, ptr %2358, align 4, !tbaa !58
  %2360 = icmp slt i32 %2357, %2359
  br i1 %2360, label %2371, label %2374

2361:                                             ; preds = %2343
  %2362 = load i8, ptr %2347, align 1, !tbaa !43
  %2363 = xor i8 %2362, -128
  %2364 = icmp ult i8 %2363, 64
  br i1 %2364, label %2365, label %2371

2365:                                             ; preds = %2361
  %2366 = zext nneg i8 %2363 to i32
  %2367 = shl i32 %2345, 6
  %2368 = or disjoint i32 %2367, %2366
  %2369 = add nuw nsw i64 %2346, 1
  %2370 = icmp eq i64 %2369, 6
  br i1 %2370, label %2371, label %2343, !llvm.loop !59

2371:                                             ; preds = %2365, %2361, %2354, %2337
  %2372 = phi i32 [ 22, %2337 ], [ 84, %2354 ], [ 84, %2361 ], [ 84, %2365 ]
  %2373 = tail call ptr @__errno_location() #10
  store i32 %2372, ptr %2373, align 4, !tbaa !34
  br label %2374

2374:                                             ; preds = %2371, %2354
  %2375 = phi i32 [ %2357, %2354 ], [ -1, %2371 ]
  br i1 %2099, label %2407, label %2376

2376:                                             ; preds = %2374
  %2377 = load i8, ptr %2097, align 1, !tbaa !43
  %2378 = zext i8 %2377 to i32
  br label %2379

2379:                                             ; preds = %2376, %2401
  %2380 = phi ptr [ %2097, %2376 ], [ %2383, %2401 ]
  %2381 = phi i32 [ %2378, %2376 ], [ %2404, %2401 ]
  %2382 = phi i64 [ 0, %2376 ], [ %2405, %2401 ]
  %2383 = getelementptr inbounds i8, ptr %2380, i64 1
  %2384 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2382
  %2385 = load i32, ptr %2384, align 16, !tbaa !54
  %2386 = and i32 %2385, %2378
  %2387 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2382, i32 1
  %2388 = load i32, ptr %2387, align 4, !tbaa !56
  %2389 = icmp eq i32 %2386, %2388
  br i1 %2389, label %2390, label %2397

2390:                                             ; preds = %2379
  %2391 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2382, i32 2
  %2392 = load i32, ptr %2391, align 8, !tbaa !57
  %2393 = and i32 %2392, %2381
  %2394 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2382, i32 3
  %2395 = load i32, ptr %2394, align 4, !tbaa !58
  %2396 = icmp slt i32 %2393, %2395
  br i1 %2396, label %2407, label %2410

2397:                                             ; preds = %2379
  %2398 = load i8, ptr %2383, align 1, !tbaa !43
  %2399 = xor i8 %2398, -128
  %2400 = icmp ult i8 %2399, 64
  br i1 %2400, label %2401, label %2407

2401:                                             ; preds = %2397
  %2402 = zext nneg i8 %2399 to i32
  %2403 = shl i32 %2381, 6
  %2404 = or disjoint i32 %2403, %2402
  %2405 = add nuw nsw i64 %2382, 1
  %2406 = icmp eq i64 %2405, 6
  br i1 %2406, label %2407, label %2379, !llvm.loop !59

2407:                                             ; preds = %2401, %2397, %2390, %2374
  %2408 = phi i32 [ 22, %2374 ], [ 84, %2390 ], [ 84, %2397 ], [ 84, %2401 ]
  %2409 = tail call ptr @__errno_location() #10
  store i32 %2408, ptr %2409, align 4, !tbaa !34
  br label %2410

2410:                                             ; preds = %2407, %2390
  %2411 = phi i32 [ %2393, %2390 ], [ -1, %2407 ]
  %2412 = icmp eq i32 %2375, %2411
  br i1 %2099, label %2413, label %2415

2413:                                             ; preds = %2410
  %2414 = tail call ptr @__errno_location() #10
  store i32 22, ptr %2414, align 4, !tbaa !34
  br label %2454

2415:                                             ; preds = %2410
  %2416 = load i8, ptr %2097, align 1, !tbaa !43
  %2417 = zext i8 %2416 to i32
  br label %2418

2418:                                             ; preds = %2415, %2446
  %2419 = phi ptr [ %2097, %2415 ], [ %2422, %2446 ]
  %2420 = phi i32 [ %2417, %2415 ], [ %2449, %2446 ]
  %2421 = phi i64 [ 0, %2415 ], [ %2450, %2446 ]
  %2422 = getelementptr inbounds i8, ptr %2419, i64 1
  %2423 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2421
  %2424 = load i32, ptr %2423, align 16, !tbaa !54
  %2425 = and i32 %2424, %2417
  %2426 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2421, i32 1
  %2427 = load i32, ptr %2426, align 4, !tbaa !56
  %2428 = icmp eq i32 %2425, %2427
  br i1 %2428, label %2429, label %2440

2429:                                             ; preds = %2418
  %2430 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2421, i32 2
  %2431 = load i32, ptr %2430, align 8, !tbaa !57
  %2432 = and i32 %2431, %2420
  %2433 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2421, i32 3
  %2434 = load i32, ptr %2433, align 4, !tbaa !58
  %2435 = icmp slt i32 %2432, %2434
  br i1 %2435, label %2436, label %2438

2436:                                             ; preds = %2429
  %2437 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2437, align 4, !tbaa !34
  br label %2454

2438:                                             ; preds = %2429
  %2439 = add nuw nsw i64 %2421, 1
  br label %2454

2440:                                             ; preds = %2418
  %2441 = load i8, ptr %2422, align 1, !tbaa !43
  %2442 = xor i8 %2441, -128
  %2443 = icmp ult i8 %2442, 64
  br i1 %2443, label %2446, label %2444

2444:                                             ; preds = %2440
  %2445 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2445, align 4, !tbaa !34
  br label %2454

2446:                                             ; preds = %2440
  %2447 = zext nneg i8 %2442 to i32
  %2448 = shl i32 %2420, 6
  %2449 = or disjoint i32 %2448, %2447
  %2450 = add nuw nsw i64 %2421, 1
  %2451 = icmp eq i64 %2450, 6
  br i1 %2451, label %2452, label %2418, !llvm.loop !59

2452:                                             ; preds = %2446
  %2453 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2453, align 4, !tbaa !34
  br label %2454

2454:                                             ; preds = %2413, %2436, %2438, %2444, %2452
  %2455 = phi i64 [ 1, %2413 ], [ 1, %2436 ], [ %2439, %2438 ], [ 1, %2444 ], [ 1, %2452 ]
  %2456 = and i64 %2455, 4294967295
  %2457 = getelementptr inbounds i8, ptr %2097, i64 %2456
  br i1 %2339, label %2458, label %2460

2458:                                             ; preds = %2454
  %2459 = tail call ptr @__errno_location() #10
  store i32 22, ptr %2459, align 4, !tbaa !34
  br label %2499

2460:                                             ; preds = %2454
  %2461 = load i8, ptr %2338, align 1, !tbaa !43
  %2462 = zext i8 %2461 to i32
  br label %2463

2463:                                             ; preds = %2460, %2491
  %2464 = phi ptr [ %2338, %2460 ], [ %2467, %2491 ]
  %2465 = phi i32 [ %2462, %2460 ], [ %2494, %2491 ]
  %2466 = phi i64 [ 0, %2460 ], [ %2495, %2491 ]
  %2467 = getelementptr inbounds i8, ptr %2464, i64 1
  %2468 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2466
  %2469 = load i32, ptr %2468, align 16, !tbaa !54
  %2470 = and i32 %2469, %2462
  %2471 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2466, i32 1
  %2472 = load i32, ptr %2471, align 4, !tbaa !56
  %2473 = icmp eq i32 %2470, %2472
  br i1 %2473, label %2474, label %2485

2474:                                             ; preds = %2463
  %2475 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2466, i32 2
  %2476 = load i32, ptr %2475, align 8, !tbaa !57
  %2477 = and i32 %2476, %2465
  %2478 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2466, i32 3
  %2479 = load i32, ptr %2478, align 4, !tbaa !58
  %2480 = icmp slt i32 %2477, %2479
  br i1 %2480, label %2481, label %2483

2481:                                             ; preds = %2474
  %2482 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2482, align 4, !tbaa !34
  br label %2499

2483:                                             ; preds = %2474
  %2484 = add nuw nsw i64 %2466, 1
  br label %2499

2485:                                             ; preds = %2463
  %2486 = load i8, ptr %2467, align 1, !tbaa !43
  %2487 = xor i8 %2486, -128
  %2488 = icmp ult i8 %2487, 64
  br i1 %2488, label %2491, label %2489

2489:                                             ; preds = %2485
  %2490 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2490, align 4, !tbaa !34
  br label %2499

2491:                                             ; preds = %2485
  %2492 = zext nneg i8 %2487 to i32
  %2493 = shl i32 %2465, 6
  %2494 = or disjoint i32 %2493, %2492
  %2495 = add nuw nsw i64 %2466, 1
  %2496 = icmp eq i64 %2495, 6
  br i1 %2496, label %2497, label %2463, !llvm.loop !59

2497:                                             ; preds = %2491
  %2498 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2498, align 4, !tbaa !34
  br label %2499

2499:                                             ; preds = %2458, %2481, %2483, %2489, %2497
  %2500 = phi i64 [ 1, %2458 ], [ 1, %2481 ], [ %2484, %2483 ], [ 1, %2489 ], [ 1, %2497 ]
  %2501 = and i64 %2500, 4294967295
  %2502 = getelementptr inbounds i8, ptr %2338, i64 %2501
  br label %2095, !llvm.loop !67

2503:                                             ; preds = %2249, %2211, %2173, %2134
  %2504 = icmp eq ptr %2098, null
  br i1 %2504, label %2536, label %2505

2505:                                             ; preds = %2503
  %2506 = load i8, ptr %2098, align 1, !tbaa !43
  %2507 = zext i8 %2506 to i32
  br label %2508

2508:                                             ; preds = %2505, %2530
  %2509 = phi ptr [ %2098, %2505 ], [ %2512, %2530 ]
  %2510 = phi i32 [ %2507, %2505 ], [ %2533, %2530 ]
  %2511 = phi i64 [ 0, %2505 ], [ %2534, %2530 ]
  %2512 = getelementptr inbounds i8, ptr %2509, i64 1
  %2513 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2511
  %2514 = load i32, ptr %2513, align 16, !tbaa !54
  %2515 = and i32 %2514, %2507
  %2516 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2511, i32 1
  %2517 = load i32, ptr %2516, align 4, !tbaa !56
  %2518 = icmp eq i32 %2515, %2517
  br i1 %2518, label %2519, label %2526

2519:                                             ; preds = %2508
  %2520 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2511, i32 2
  %2521 = load i32, ptr %2520, align 8, !tbaa !57
  %2522 = and i32 %2521, %2510
  %2523 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2511, i32 3
  %2524 = load i32, ptr %2523, align 4, !tbaa !58
  %2525 = icmp slt i32 %2522, %2524
  br i1 %2525, label %2536, label %2539

2526:                                             ; preds = %2508
  %2527 = load i8, ptr %2512, align 1, !tbaa !43
  %2528 = xor i8 %2527, -128
  %2529 = icmp ult i8 %2528, 64
  br i1 %2529, label %2530, label %2536

2530:                                             ; preds = %2526
  %2531 = zext nneg i8 %2528 to i32
  %2532 = shl i32 %2510, 6
  %2533 = or disjoint i32 %2532, %2531
  %2534 = add nuw nsw i64 %2511, 1
  %2535 = icmp eq i64 %2534, 6
  br i1 %2535, label %2536, label %2508, !llvm.loop !59

2536:                                             ; preds = %2530, %2526, %2519, %2503
  %2537 = phi i32 [ 22, %2503 ], [ 84, %2519 ], [ 84, %2526 ], [ 84, %2530 ]
  %2538 = tail call ptr @__errno_location() #10
  store i32 %2537, ptr %2538, align 4, !tbaa !34
  br label %2539

2539:                                             ; preds = %2536, %2519
  %2540 = phi i32 [ %2522, %2519 ], [ -1, %2536 ]
  %2541 = icmp eq i32 %2540, 0
  br i1 %2541, label %3523, label %2542, !llvm.loop !63

2542:                                             ; preds = %2539
  br i1 %2096, label %2543, label %2825

2543:                                             ; preds = %2542, %2780
  %2544 = phi ptr [ %2781, %2780 ], [ %2098, %2542 ]
  %2545 = icmp eq ptr %2544, null
  br i1 %2545, label %2577, label %2546

2546:                                             ; preds = %2543
  %2547 = load i8, ptr %2544, align 1, !tbaa !43
  %2548 = zext i8 %2547 to i32
  br label %2549

2549:                                             ; preds = %2546, %2571
  %2550 = phi ptr [ %2544, %2546 ], [ %2553, %2571 ]
  %2551 = phi i32 [ %2548, %2546 ], [ %2574, %2571 ]
  %2552 = phi i64 [ 0, %2546 ], [ %2575, %2571 ]
  %2553 = getelementptr inbounds i8, ptr %2550, i64 1
  %2554 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2552
  %2555 = load i32, ptr %2554, align 16, !tbaa !54
  %2556 = and i32 %2555, %2548
  %2557 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2552, i32 1
  %2558 = load i32, ptr %2557, align 4, !tbaa !56
  %2559 = icmp eq i32 %2556, %2558
  br i1 %2559, label %2560, label %2567

2560:                                             ; preds = %2549
  %2561 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2552, i32 2
  %2562 = load i32, ptr %2561, align 8, !tbaa !57
  %2563 = and i32 %2562, %2551
  %2564 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2552, i32 3
  %2565 = load i32, ptr %2564, align 4, !tbaa !58
  %2566 = icmp slt i32 %2563, %2565
  br i1 %2566, label %2577, label %2580

2567:                                             ; preds = %2549
  %2568 = load i8, ptr %2553, align 1, !tbaa !43
  %2569 = xor i8 %2568, -128
  %2570 = icmp ult i8 %2569, 64
  br i1 %2570, label %2571, label %2577

2571:                                             ; preds = %2567
  %2572 = zext nneg i8 %2569 to i32
  %2573 = shl i32 %2551, 6
  %2574 = or disjoint i32 %2573, %2572
  %2575 = add nuw nsw i64 %2552, 1
  %2576 = icmp eq i64 %2575, 6
  br i1 %2576, label %2577, label %2549, !llvm.loop !59

2577:                                             ; preds = %2571, %2567, %2560, %2543
  %2578 = phi i32 [ 22, %2543 ], [ 84, %2560 ], [ 84, %2567 ], [ 84, %2571 ]
  %2579 = tail call ptr @__errno_location() #10
  store i32 %2578, ptr %2579, align 4, !tbaa !34
  br label %2580

2580:                                             ; preds = %2577, %2560
  %2581 = phi i32 [ %2563, %2560 ], [ -1, %2577 ]
  %2582 = icmp eq i32 %2581, 125
  br i1 %2582, label %3181, label %2583

2583:                                             ; preds = %2580
  br i1 %2545, label %2615, label %2584

2584:                                             ; preds = %2583
  %2585 = load i8, ptr %2544, align 1, !tbaa !43
  %2586 = zext i8 %2585 to i32
  br label %2587

2587:                                             ; preds = %2584, %2609
  %2588 = phi ptr [ %2544, %2584 ], [ %2591, %2609 ]
  %2589 = phi i32 [ %2586, %2584 ], [ %2612, %2609 ]
  %2590 = phi i64 [ 0, %2584 ], [ %2613, %2609 ]
  %2591 = getelementptr inbounds i8, ptr %2588, i64 1
  %2592 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2590
  %2593 = load i32, ptr %2592, align 16, !tbaa !54
  %2594 = and i32 %2593, %2586
  %2595 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2590, i32 1
  %2596 = load i32, ptr %2595, align 4, !tbaa !56
  %2597 = icmp eq i32 %2594, %2596
  br i1 %2597, label %2598, label %2605

2598:                                             ; preds = %2587
  %2599 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2590, i32 2
  %2600 = load i32, ptr %2599, align 8, !tbaa !57
  %2601 = and i32 %2600, %2589
  %2602 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2590, i32 3
  %2603 = load i32, ptr %2602, align 4, !tbaa !58
  %2604 = icmp slt i32 %2601, %2603
  br i1 %2604, label %2615, label %2618

2605:                                             ; preds = %2587
  %2606 = load i8, ptr %2591, align 1, !tbaa !43
  %2607 = xor i8 %2606, -128
  %2608 = icmp ult i8 %2607, 64
  br i1 %2608, label %2609, label %2615

2609:                                             ; preds = %2605
  %2610 = zext nneg i8 %2607 to i32
  %2611 = shl i32 %2589, 6
  %2612 = or disjoint i32 %2611, %2610
  %2613 = add nuw nsw i64 %2590, 1
  %2614 = icmp eq i64 %2613, 6
  br i1 %2614, label %2615, label %2587, !llvm.loop !59

2615:                                             ; preds = %2609, %2605, %2598, %2583
  %2616 = phi i32 [ 22, %2583 ], [ 84, %2598 ], [ 84, %2605 ], [ 84, %2609 ]
  %2617 = tail call ptr @__errno_location() #10
  store i32 %2616, ptr %2617, align 4, !tbaa !34
  br label %2618

2618:                                             ; preds = %2615, %2598
  %2619 = phi i32 [ %2601, %2598 ], [ -1, %2615 ]
  %2620 = icmp eq i32 %2619, 0
  br i1 %2620, label %3181, label %2621

2621:                                             ; preds = %2618
  br i1 %2545, label %2622, label %2624

2622:                                             ; preds = %2621
  %2623 = tail call ptr @__errno_location() #10
  store i32 22, ptr %2623, align 4, !tbaa !34
  br label %2663

2624:                                             ; preds = %2621
  %2625 = load i8, ptr %2544, align 1, !tbaa !43
  %2626 = zext i8 %2625 to i32
  br label %2627

2627:                                             ; preds = %2624, %2655
  %2628 = phi ptr [ %2544, %2624 ], [ %2631, %2655 ]
  %2629 = phi i32 [ %2626, %2624 ], [ %2658, %2655 ]
  %2630 = phi i64 [ 0, %2624 ], [ %2659, %2655 ]
  %2631 = getelementptr inbounds i8, ptr %2628, i64 1
  %2632 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2630
  %2633 = load i32, ptr %2632, align 16, !tbaa !54
  %2634 = and i32 %2633, %2626
  %2635 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2630, i32 1
  %2636 = load i32, ptr %2635, align 4, !tbaa !56
  %2637 = icmp eq i32 %2634, %2636
  br i1 %2637, label %2638, label %2649

2638:                                             ; preds = %2627
  %2639 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2630, i32 2
  %2640 = load i32, ptr %2639, align 8, !tbaa !57
  %2641 = and i32 %2640, %2629
  %2642 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2630, i32 3
  %2643 = load i32, ptr %2642, align 4, !tbaa !58
  %2644 = icmp slt i32 %2641, %2643
  br i1 %2644, label %2645, label %2647

2645:                                             ; preds = %2638
  %2646 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2646, align 4, !tbaa !34
  br label %2663

2647:                                             ; preds = %2638
  %2648 = add nuw nsw i64 %2630, 1
  br label %2663

2649:                                             ; preds = %2627
  %2650 = load i8, ptr %2631, align 1, !tbaa !43
  %2651 = xor i8 %2650, -128
  %2652 = icmp ult i8 %2651, 64
  br i1 %2652, label %2655, label %2653

2653:                                             ; preds = %2649
  %2654 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2654, align 4, !tbaa !34
  br label %2663

2655:                                             ; preds = %2649
  %2656 = zext nneg i8 %2651 to i32
  %2657 = shl i32 %2629, 6
  %2658 = or disjoint i32 %2657, %2656
  %2659 = add nuw nsw i64 %2630, 1
  %2660 = icmp eq i64 %2659, 6
  br i1 %2660, label %2661, label %2627, !llvm.loop !59

2661:                                             ; preds = %2655
  %2662 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2662, align 4, !tbaa !34
  br label %2663

2663:                                             ; preds = %2622, %2645, %2647, %2653, %2661
  %2664 = phi i64 [ 1, %2622 ], [ 1, %2645 ], [ %2648, %2647 ], [ 1, %2653 ], [ 1, %2661 ]
  %2665 = and i64 %2664, 4294967295
  %2666 = getelementptr inbounds i8, ptr %2544, i64 %2665
  %2667 = load i8, ptr %2666, align 1, !tbaa !43
  %2668 = zext i8 %2667 to i32
  br label %2669

2669:                                             ; preds = %2663, %2691
  %2670 = phi ptr [ %2666, %2663 ], [ %2673, %2691 ]
  %2671 = phi i32 [ %2668, %2663 ], [ %2694, %2691 ]
  %2672 = phi i64 [ 0, %2663 ], [ %2695, %2691 ]
  %2673 = getelementptr inbounds i8, ptr %2670, i64 1
  %2674 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2672
  %2675 = load i32, ptr %2674, align 16, !tbaa !54
  %2676 = and i32 %2675, %2668
  %2677 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2672, i32 1
  %2678 = load i32, ptr %2677, align 4, !tbaa !56
  %2679 = icmp eq i32 %2676, %2678
  br i1 %2679, label %2680, label %2687

2680:                                             ; preds = %2669
  %2681 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2672, i32 2
  %2682 = load i32, ptr %2681, align 8, !tbaa !57
  %2683 = and i32 %2682, %2671
  %2684 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2672, i32 3
  %2685 = load i32, ptr %2684, align 4, !tbaa !58
  %2686 = icmp slt i32 %2683, %2685
  br i1 %2686, label %2697, label %2699

2687:                                             ; preds = %2669
  %2688 = load i8, ptr %2673, align 1, !tbaa !43
  %2689 = xor i8 %2688, -128
  %2690 = icmp ult i8 %2689, 64
  br i1 %2690, label %2691, label %2697

2691:                                             ; preds = %2687
  %2692 = zext nneg i8 %2689 to i32
  %2693 = shl i32 %2671, 6
  %2694 = or disjoint i32 %2693, %2692
  %2695 = add nuw nsw i64 %2672, 1
  %2696 = icmp eq i64 %2695, 6
  br i1 %2696, label %2697, label %2669, !llvm.loop !59

2697:                                             ; preds = %2691, %2687, %2680
  %2698 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2698, align 4, !tbaa !34
  br label %2699

2699:                                             ; preds = %2697, %2680
  %2700 = phi i32 [ %2683, %2680 ], [ -1, %2697 ]
  %2701 = icmp eq i32 %2700, 92
  br i1 %2701, label %2702, label %2780

2702:                                             ; preds = %2699
  %2703 = load i8, ptr %2666, align 1, !tbaa !43
  %2704 = zext i8 %2703 to i32
  br label %2705

2705:                                             ; preds = %2702, %2733
  %2706 = phi ptr [ %2666, %2702 ], [ %2709, %2733 ]
  %2707 = phi i32 [ %2704, %2702 ], [ %2736, %2733 ]
  %2708 = phi i64 [ 0, %2702 ], [ %2737, %2733 ]
  %2709 = getelementptr inbounds i8, ptr %2706, i64 1
  %2710 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2708
  %2711 = load i32, ptr %2710, align 16, !tbaa !54
  %2712 = and i32 %2711, %2704
  %2713 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2708, i32 1
  %2714 = load i32, ptr %2713, align 4, !tbaa !56
  %2715 = icmp eq i32 %2712, %2714
  br i1 %2715, label %2716, label %2727

2716:                                             ; preds = %2705
  %2717 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2708, i32 2
  %2718 = load i32, ptr %2717, align 8, !tbaa !57
  %2719 = and i32 %2718, %2707
  %2720 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2708, i32 3
  %2721 = load i32, ptr %2720, align 4, !tbaa !58
  %2722 = icmp slt i32 %2719, %2721
  br i1 %2722, label %2723, label %2725

2723:                                             ; preds = %2716
  %2724 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2724, align 4, !tbaa !34
  br label %2741

2725:                                             ; preds = %2716
  %2726 = add nuw nsw i64 %2708, 1
  br label %2741

2727:                                             ; preds = %2705
  %2728 = load i8, ptr %2709, align 1, !tbaa !43
  %2729 = xor i8 %2728, -128
  %2730 = icmp ult i8 %2729, 64
  br i1 %2730, label %2733, label %2731

2731:                                             ; preds = %2727
  %2732 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2732, align 4, !tbaa !34
  br label %2741

2733:                                             ; preds = %2727
  %2734 = zext nneg i8 %2729 to i32
  %2735 = shl i32 %2707, 6
  %2736 = or disjoint i32 %2735, %2734
  %2737 = add nuw nsw i64 %2708, 1
  %2738 = icmp eq i64 %2737, 6
  br i1 %2738, label %2739, label %2705, !llvm.loop !59

2739:                                             ; preds = %2733
  %2740 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2740, align 4, !tbaa !34
  br label %2741

2741:                                             ; preds = %2723, %2725, %2731, %2739
  %2742 = phi i64 [ 1, %2723 ], [ %2726, %2725 ], [ 1, %2731 ], [ 1, %2739 ]
  %2743 = and i64 %2742, 4294967295
  %2744 = getelementptr inbounds i8, ptr %2666, i64 %2743
  %2745 = load i8, ptr %2744, align 1, !tbaa !43
  %2746 = zext i8 %2745 to i32
  br label %2747

2747:                                             ; preds = %2741, %2769
  %2748 = phi ptr [ %2744, %2741 ], [ %2751, %2769 ]
  %2749 = phi i32 [ %2746, %2741 ], [ %2772, %2769 ]
  %2750 = phi i64 [ 0, %2741 ], [ %2773, %2769 ]
  %2751 = getelementptr inbounds i8, ptr %2748, i64 1
  %2752 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2750
  %2753 = load i32, ptr %2752, align 16, !tbaa !54
  %2754 = and i32 %2753, %2746
  %2755 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2750, i32 1
  %2756 = load i32, ptr %2755, align 4, !tbaa !56
  %2757 = icmp eq i32 %2754, %2756
  br i1 %2757, label %2758, label %2765

2758:                                             ; preds = %2747
  %2759 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2750, i32 2
  %2760 = load i32, ptr %2759, align 8, !tbaa !57
  %2761 = and i32 %2760, %2749
  %2762 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2750, i32 3
  %2763 = load i32, ptr %2762, align 4, !tbaa !58
  %2764 = icmp slt i32 %2761, %2763
  br i1 %2764, label %2775, label %2777

2765:                                             ; preds = %2747
  %2766 = load i8, ptr %2751, align 1, !tbaa !43
  %2767 = xor i8 %2766, -128
  %2768 = icmp ult i8 %2767, 64
  br i1 %2768, label %2769, label %2775

2769:                                             ; preds = %2765
  %2770 = zext nneg i8 %2767 to i32
  %2771 = shl i32 %2749, 6
  %2772 = or disjoint i32 %2771, %2770
  %2773 = add nuw nsw i64 %2750, 1
  %2774 = icmp eq i64 %2773, 6
  br i1 %2774, label %2775, label %2747, !llvm.loop !59

2775:                                             ; preds = %2769, %2765, %2758
  %2776 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2776, align 4, !tbaa !34
  br label %2777

2777:                                             ; preds = %2775, %2758
  %2778 = phi i32 [ %2761, %2758 ], [ -1, %2775 ]
  %2779 = icmp eq i32 %2778, 125
  br i1 %2779, label %2782, label %2780

2780:                                             ; preds = %2777, %2821, %2699
  %2781 = phi ptr [ %2824, %2821 ], [ %2744, %2777 ], [ %2666, %2699 ]
  br label %2543, !llvm.loop !68

2782:                                             ; preds = %2777
  %2783 = load i8, ptr %2744, align 1, !tbaa !43
  %2784 = zext i8 %2783 to i32
  br label %2785

2785:                                             ; preds = %2782, %2813
  %2786 = phi ptr [ %2744, %2782 ], [ %2789, %2813 ]
  %2787 = phi i32 [ %2784, %2782 ], [ %2816, %2813 ]
  %2788 = phi i64 [ 0, %2782 ], [ %2817, %2813 ]
  %2789 = getelementptr inbounds i8, ptr %2786, i64 1
  %2790 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2788
  %2791 = load i32, ptr %2790, align 16, !tbaa !54
  %2792 = and i32 %2791, %2784
  %2793 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2788, i32 1
  %2794 = load i32, ptr %2793, align 4, !tbaa !56
  %2795 = icmp eq i32 %2792, %2794
  br i1 %2795, label %2796, label %2807

2796:                                             ; preds = %2785
  %2797 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2788, i32 2
  %2798 = load i32, ptr %2797, align 8, !tbaa !57
  %2799 = and i32 %2798, %2787
  %2800 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2788, i32 3
  %2801 = load i32, ptr %2800, align 4, !tbaa !58
  %2802 = icmp slt i32 %2799, %2801
  br i1 %2802, label %2803, label %2805

2803:                                             ; preds = %2796
  %2804 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2804, align 4, !tbaa !34
  br label %2821

2805:                                             ; preds = %2796
  %2806 = add nuw nsw i64 %2788, 1
  br label %2821

2807:                                             ; preds = %2785
  %2808 = load i8, ptr %2789, align 1, !tbaa !43
  %2809 = xor i8 %2808, -128
  %2810 = icmp ult i8 %2809, 64
  br i1 %2810, label %2813, label %2811

2811:                                             ; preds = %2807
  %2812 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2812, align 4, !tbaa !34
  br label %2821

2813:                                             ; preds = %2807
  %2814 = zext nneg i8 %2809 to i32
  %2815 = shl i32 %2787, 6
  %2816 = or disjoint i32 %2815, %2814
  %2817 = add nuw nsw i64 %2788, 1
  %2818 = icmp eq i64 %2817, 6
  br i1 %2818, label %2819, label %2785, !llvm.loop !59

2819:                                             ; preds = %2813
  %2820 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2820, align 4, !tbaa !34
  br label %2821

2821:                                             ; preds = %2803, %2805, %2811, %2819
  %2822 = phi i64 [ 1, %2803 ], [ %2806, %2805 ], [ 1, %2811 ], [ 1, %2819 ]
  %2823 = and i64 %2822, 4294967295
  %2824 = getelementptr inbounds i8, ptr %2744, i64 %2823
  br label %2780

2825:                                             ; preds = %2542, %3136
  %2826 = phi ptr [ %3137, %3136 ], [ %2098, %2542 ]
  %2827 = icmp eq ptr %2826, null
  br i1 %2827, label %2859, label %2828

2828:                                             ; preds = %2825
  %2829 = load i8, ptr %2826, align 1, !tbaa !43
  %2830 = zext i8 %2829 to i32
  br label %2831

2831:                                             ; preds = %2828, %2853
  %2832 = phi ptr [ %2826, %2828 ], [ %2835, %2853 ]
  %2833 = phi i32 [ %2830, %2828 ], [ %2856, %2853 ]
  %2834 = phi i64 [ 0, %2828 ], [ %2857, %2853 ]
  %2835 = getelementptr inbounds i8, ptr %2832, i64 1
  %2836 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2834
  %2837 = load i32, ptr %2836, align 16, !tbaa !54
  %2838 = and i32 %2837, %2830
  %2839 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2834, i32 1
  %2840 = load i32, ptr %2839, align 4, !tbaa !56
  %2841 = icmp eq i32 %2838, %2840
  br i1 %2841, label %2842, label %2849

2842:                                             ; preds = %2831
  %2843 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2834, i32 2
  %2844 = load i32, ptr %2843, align 8, !tbaa !57
  %2845 = and i32 %2844, %2833
  %2846 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2834, i32 3
  %2847 = load i32, ptr %2846, align 4, !tbaa !58
  %2848 = icmp slt i32 %2845, %2847
  br i1 %2848, label %2859, label %2862

2849:                                             ; preds = %2831
  %2850 = load i8, ptr %2835, align 1, !tbaa !43
  %2851 = xor i8 %2850, -128
  %2852 = icmp ult i8 %2851, 64
  br i1 %2852, label %2853, label %2859

2853:                                             ; preds = %2849
  %2854 = zext nneg i8 %2851 to i32
  %2855 = shl i32 %2833, 6
  %2856 = or disjoint i32 %2855, %2854
  %2857 = add nuw nsw i64 %2834, 1
  %2858 = icmp eq i64 %2857, 6
  br i1 %2858, label %2859, label %2831, !llvm.loop !59

2859:                                             ; preds = %2853, %2849, %2842, %2825
  %2860 = phi i32 [ 22, %2825 ], [ 84, %2842 ], [ 84, %2849 ], [ 84, %2853 ]
  %2861 = tail call ptr @__errno_location() #10
  store i32 %2860, ptr %2861, align 4, !tbaa !34
  br label %2862

2862:                                             ; preds = %2859, %2842
  %2863 = phi i32 [ %2845, %2842 ], [ -1, %2859 ]
  %2864 = icmp eq i32 %2863, 125
  br i1 %2864, label %3181, label %2865

2865:                                             ; preds = %2862
  br i1 %2827, label %2897, label %2866

2866:                                             ; preds = %2865
  %2867 = load i8, ptr %2826, align 1, !tbaa !43
  %2868 = zext i8 %2867 to i32
  br label %2869

2869:                                             ; preds = %2866, %2891
  %2870 = phi ptr [ %2826, %2866 ], [ %2873, %2891 ]
  %2871 = phi i32 [ %2868, %2866 ], [ %2894, %2891 ]
  %2872 = phi i64 [ 0, %2866 ], [ %2895, %2891 ]
  %2873 = getelementptr inbounds i8, ptr %2870, i64 1
  %2874 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2872
  %2875 = load i32, ptr %2874, align 16, !tbaa !54
  %2876 = and i32 %2875, %2868
  %2877 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2872, i32 1
  %2878 = load i32, ptr %2877, align 4, !tbaa !56
  %2879 = icmp eq i32 %2876, %2878
  br i1 %2879, label %2880, label %2887

2880:                                             ; preds = %2869
  %2881 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2872, i32 2
  %2882 = load i32, ptr %2881, align 8, !tbaa !57
  %2883 = and i32 %2882, %2871
  %2884 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2872, i32 3
  %2885 = load i32, ptr %2884, align 4, !tbaa !58
  %2886 = icmp slt i32 %2883, %2885
  br i1 %2886, label %2897, label %2900

2887:                                             ; preds = %2869
  %2888 = load i8, ptr %2873, align 1, !tbaa !43
  %2889 = xor i8 %2888, -128
  %2890 = icmp ult i8 %2889, 64
  br i1 %2890, label %2891, label %2897

2891:                                             ; preds = %2887
  %2892 = zext nneg i8 %2889 to i32
  %2893 = shl i32 %2871, 6
  %2894 = or disjoint i32 %2893, %2892
  %2895 = add nuw nsw i64 %2872, 1
  %2896 = icmp eq i64 %2895, 6
  br i1 %2896, label %2897, label %2869, !llvm.loop !59

2897:                                             ; preds = %2891, %2887, %2880, %2865
  %2898 = phi i32 [ 22, %2865 ], [ 84, %2880 ], [ 84, %2887 ], [ 84, %2891 ]
  %2899 = tail call ptr @__errno_location() #10
  store i32 %2898, ptr %2899, align 4, !tbaa !34
  br label %2900

2900:                                             ; preds = %2897, %2880
  %2901 = phi i32 [ %2883, %2880 ], [ -1, %2897 ]
  %2902 = icmp eq i32 %2901, 44
  br i1 %2902, label %3181, label %2903

2903:                                             ; preds = %2900
  br i1 %2827, label %2935, label %2904

2904:                                             ; preds = %2903
  %2905 = load i8, ptr %2826, align 1, !tbaa !43
  %2906 = zext i8 %2905 to i32
  br label %2907

2907:                                             ; preds = %2904, %2929
  %2908 = phi ptr [ %2826, %2904 ], [ %2911, %2929 ]
  %2909 = phi i32 [ %2906, %2904 ], [ %2932, %2929 ]
  %2910 = phi i64 [ 0, %2904 ], [ %2933, %2929 ]
  %2911 = getelementptr inbounds i8, ptr %2908, i64 1
  %2912 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2910
  %2913 = load i32, ptr %2912, align 16, !tbaa !54
  %2914 = and i32 %2913, %2906
  %2915 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2910, i32 1
  %2916 = load i32, ptr %2915, align 4, !tbaa !56
  %2917 = icmp eq i32 %2914, %2916
  br i1 %2917, label %2918, label %2925

2918:                                             ; preds = %2907
  %2919 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2910, i32 2
  %2920 = load i32, ptr %2919, align 8, !tbaa !57
  %2921 = and i32 %2920, %2909
  %2922 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2910, i32 3
  %2923 = load i32, ptr %2922, align 4, !tbaa !58
  %2924 = icmp slt i32 %2921, %2923
  br i1 %2924, label %2935, label %2938

2925:                                             ; preds = %2907
  %2926 = load i8, ptr %2911, align 1, !tbaa !43
  %2927 = xor i8 %2926, -128
  %2928 = icmp ult i8 %2927, 64
  br i1 %2928, label %2929, label %2935

2929:                                             ; preds = %2925
  %2930 = zext nneg i8 %2927 to i32
  %2931 = shl i32 %2909, 6
  %2932 = or disjoint i32 %2931, %2930
  %2933 = add nuw nsw i64 %2910, 1
  %2934 = icmp eq i64 %2933, 6
  br i1 %2934, label %2935, label %2907, !llvm.loop !59

2935:                                             ; preds = %2929, %2925, %2918, %2903
  %2936 = phi i32 [ 22, %2903 ], [ 84, %2918 ], [ 84, %2925 ], [ 84, %2929 ]
  %2937 = tail call ptr @__errno_location() #10
  store i32 %2936, ptr %2937, align 4, !tbaa !34
  br label %2938

2938:                                             ; preds = %2935, %2918
  %2939 = phi i32 [ %2921, %2918 ], [ -1, %2935 ]
  %2940 = icmp eq i32 %2939, 0
  br i1 %2940, label %3181, label %2941

2941:                                             ; preds = %2938
  br i1 %2827, label %2942, label %2944

2942:                                             ; preds = %2941
  %2943 = tail call ptr @__errno_location() #10
  store i32 22, ptr %2943, align 4, !tbaa !34
  br label %2983

2944:                                             ; preds = %2941
  %2945 = load i8, ptr %2826, align 1, !tbaa !43
  %2946 = zext i8 %2945 to i32
  br label %2947

2947:                                             ; preds = %2944, %2975
  %2948 = phi ptr [ %2826, %2944 ], [ %2951, %2975 ]
  %2949 = phi i32 [ %2946, %2944 ], [ %2978, %2975 ]
  %2950 = phi i64 [ 0, %2944 ], [ %2979, %2975 ]
  %2951 = getelementptr inbounds i8, ptr %2948, i64 1
  %2952 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2950
  %2953 = load i32, ptr %2952, align 16, !tbaa !54
  %2954 = and i32 %2953, %2946
  %2955 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2950, i32 1
  %2956 = load i32, ptr %2955, align 4, !tbaa !56
  %2957 = icmp eq i32 %2954, %2956
  br i1 %2957, label %2958, label %2969

2958:                                             ; preds = %2947
  %2959 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2950, i32 2
  %2960 = load i32, ptr %2959, align 8, !tbaa !57
  %2961 = and i32 %2960, %2949
  %2962 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2950, i32 3
  %2963 = load i32, ptr %2962, align 4, !tbaa !58
  %2964 = icmp slt i32 %2961, %2963
  br i1 %2964, label %2965, label %2967

2965:                                             ; preds = %2958
  %2966 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2966, align 4, !tbaa !34
  br label %2983

2967:                                             ; preds = %2958
  %2968 = add nuw nsw i64 %2950, 1
  br label %2983

2969:                                             ; preds = %2947
  %2970 = load i8, ptr %2951, align 1, !tbaa !43
  %2971 = xor i8 %2970, -128
  %2972 = icmp ult i8 %2971, 64
  br i1 %2972, label %2975, label %2973

2973:                                             ; preds = %2969
  %2974 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2974, align 4, !tbaa !34
  br label %2983

2975:                                             ; preds = %2969
  %2976 = zext nneg i8 %2971 to i32
  %2977 = shl i32 %2949, 6
  %2978 = or disjoint i32 %2977, %2976
  %2979 = add nuw nsw i64 %2950, 1
  %2980 = icmp eq i64 %2979, 6
  br i1 %2980, label %2981, label %2947, !llvm.loop !59

2981:                                             ; preds = %2975
  %2982 = tail call ptr @__errno_location() #10
  store i32 84, ptr %2982, align 4, !tbaa !34
  br label %2983

2983:                                             ; preds = %2942, %2965, %2967, %2973, %2981
  %2984 = phi i64 [ 1, %2942 ], [ 1, %2965 ], [ %2968, %2967 ], [ 1, %2973 ], [ 1, %2981 ]
  %2985 = and i64 %2984, 4294967295
  %2986 = getelementptr inbounds i8, ptr %2826, i64 %2985
  %2987 = load i8, ptr %2986, align 1, !tbaa !43
  %2988 = zext i8 %2987 to i32
  br label %2989

2989:                                             ; preds = %2983, %3011
  %2990 = phi ptr [ %2986, %2983 ], [ %2993, %3011 ]
  %2991 = phi i32 [ %2988, %2983 ], [ %3014, %3011 ]
  %2992 = phi i64 [ 0, %2983 ], [ %3015, %3011 ]
  %2993 = getelementptr inbounds i8, ptr %2990, i64 1
  %2994 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2992
  %2995 = load i32, ptr %2994, align 16, !tbaa !54
  %2996 = and i32 %2995, %2988
  %2997 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2992, i32 1
  %2998 = load i32, ptr %2997, align 4, !tbaa !56
  %2999 = icmp eq i32 %2996, %2998
  br i1 %2999, label %3000, label %3007

3000:                                             ; preds = %2989
  %3001 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2992, i32 2
  %3002 = load i32, ptr %3001, align 8, !tbaa !57
  %3003 = and i32 %3002, %2991
  %3004 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %2992, i32 3
  %3005 = load i32, ptr %3004, align 4, !tbaa !58
  %3006 = icmp slt i32 %3003, %3005
  br i1 %3006, label %3017, label %3019

3007:                                             ; preds = %2989
  %3008 = load i8, ptr %2993, align 1, !tbaa !43
  %3009 = xor i8 %3008, -128
  %3010 = icmp ult i8 %3009, 64
  br i1 %3010, label %3011, label %3017

3011:                                             ; preds = %3007
  %3012 = zext nneg i8 %3009 to i32
  %3013 = shl i32 %2991, 6
  %3014 = or disjoint i32 %3013, %3012
  %3015 = add nuw nsw i64 %2992, 1
  %3016 = icmp eq i64 %3015, 6
  br i1 %3016, label %3017, label %2989, !llvm.loop !59

3017:                                             ; preds = %3011, %3007, %3000
  %3018 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3018, align 4, !tbaa !34
  br label %3019

3019:                                             ; preds = %3017, %3000
  %3020 = phi i32 [ %3003, %3000 ], [ -1, %3017 ]
  %3021 = icmp eq i32 %3020, 92
  br i1 %3021, label %3022, label %3136

3022:                                             ; preds = %3019
  %3023 = load i8, ptr %2986, align 1, !tbaa !43
  %3024 = zext i8 %3023 to i32
  br label %3025

3025:                                             ; preds = %3022, %3053
  %3026 = phi ptr [ %2986, %3022 ], [ %3029, %3053 ]
  %3027 = phi i32 [ %3024, %3022 ], [ %3056, %3053 ]
  %3028 = phi i64 [ 0, %3022 ], [ %3057, %3053 ]
  %3029 = getelementptr inbounds i8, ptr %3026, i64 1
  %3030 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3028
  %3031 = load i32, ptr %3030, align 16, !tbaa !54
  %3032 = and i32 %3031, %3024
  %3033 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3028, i32 1
  %3034 = load i32, ptr %3033, align 4, !tbaa !56
  %3035 = icmp eq i32 %3032, %3034
  br i1 %3035, label %3036, label %3047

3036:                                             ; preds = %3025
  %3037 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3028, i32 2
  %3038 = load i32, ptr %3037, align 8, !tbaa !57
  %3039 = and i32 %3038, %3027
  %3040 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3028, i32 3
  %3041 = load i32, ptr %3040, align 4, !tbaa !58
  %3042 = icmp slt i32 %3039, %3041
  br i1 %3042, label %3043, label %3045

3043:                                             ; preds = %3036
  %3044 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3044, align 4, !tbaa !34
  br label %3061

3045:                                             ; preds = %3036
  %3046 = add nuw nsw i64 %3028, 1
  br label %3061

3047:                                             ; preds = %3025
  %3048 = load i8, ptr %3029, align 1, !tbaa !43
  %3049 = xor i8 %3048, -128
  %3050 = icmp ult i8 %3049, 64
  br i1 %3050, label %3053, label %3051

3051:                                             ; preds = %3047
  %3052 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3052, align 4, !tbaa !34
  br label %3061

3053:                                             ; preds = %3047
  %3054 = zext nneg i8 %3049 to i32
  %3055 = shl i32 %3027, 6
  %3056 = or disjoint i32 %3055, %3054
  %3057 = add nuw nsw i64 %3028, 1
  %3058 = icmp eq i64 %3057, 6
  br i1 %3058, label %3059, label %3025, !llvm.loop !59

3059:                                             ; preds = %3053
  %3060 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3060, align 4, !tbaa !34
  br label %3061

3061:                                             ; preds = %3043, %3045, %3051, %3059
  %3062 = phi i64 [ 1, %3043 ], [ %3046, %3045 ], [ 1, %3051 ], [ 1, %3059 ]
  %3063 = and i64 %3062, 4294967295
  %3064 = getelementptr inbounds i8, ptr %2986, i64 %3063
  %3065 = load i8, ptr %3064, align 1, !tbaa !43
  %3066 = zext i8 %3065 to i32
  br label %3067

3067:                                             ; preds = %3061, %3089
  %3068 = phi ptr [ %3064, %3061 ], [ %3071, %3089 ]
  %3069 = phi i32 [ %3066, %3061 ], [ %3092, %3089 ]
  %3070 = phi i64 [ 0, %3061 ], [ %3093, %3089 ]
  %3071 = getelementptr inbounds i8, ptr %3068, i64 1
  %3072 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3070
  %3073 = load i32, ptr %3072, align 16, !tbaa !54
  %3074 = and i32 %3073, %3066
  %3075 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3070, i32 1
  %3076 = load i32, ptr %3075, align 4, !tbaa !56
  %3077 = icmp eq i32 %3074, %3076
  br i1 %3077, label %3078, label %3085

3078:                                             ; preds = %3067
  %3079 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3070, i32 2
  %3080 = load i32, ptr %3079, align 8, !tbaa !57
  %3081 = and i32 %3080, %3069
  %3082 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3070, i32 3
  %3083 = load i32, ptr %3082, align 4, !tbaa !58
  %3084 = icmp slt i32 %3081, %3083
  br i1 %3084, label %3095, label %3097

3085:                                             ; preds = %3067
  %3086 = load i8, ptr %3071, align 1, !tbaa !43
  %3087 = xor i8 %3086, -128
  %3088 = icmp ult i8 %3087, 64
  br i1 %3088, label %3089, label %3095

3089:                                             ; preds = %3085
  %3090 = zext nneg i8 %3087 to i32
  %3091 = shl i32 %3069, 6
  %3092 = or disjoint i32 %3091, %3090
  %3093 = add nuw nsw i64 %3070, 1
  %3094 = icmp eq i64 %3093, 6
  br i1 %3094, label %3095, label %3067, !llvm.loop !59

3095:                                             ; preds = %3089, %3085, %3078
  %3096 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3096, align 4, !tbaa !34
  br label %3097

3097:                                             ; preds = %3095, %3078
  %3098 = phi i32 [ %3081, %3078 ], [ -1, %3095 ]
  %3099 = icmp eq i32 %3098, 125
  br i1 %3099, label %3138, label %3100

3100:                                             ; preds = %3097
  %3101 = load i8, ptr %3064, align 1, !tbaa !43
  %3102 = zext i8 %3101 to i32
  br label %3103

3103:                                             ; preds = %3100, %3125
  %3104 = phi ptr [ %3064, %3100 ], [ %3107, %3125 ]
  %3105 = phi i32 [ %3102, %3100 ], [ %3128, %3125 ]
  %3106 = phi i64 [ 0, %3100 ], [ %3129, %3125 ]
  %3107 = getelementptr inbounds i8, ptr %3104, i64 1
  %3108 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3106
  %3109 = load i32, ptr %3108, align 16, !tbaa !54
  %3110 = and i32 %3109, %3102
  %3111 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3106, i32 1
  %3112 = load i32, ptr %3111, align 4, !tbaa !56
  %3113 = icmp eq i32 %3110, %3112
  br i1 %3113, label %3114, label %3121

3114:                                             ; preds = %3103
  %3115 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3106, i32 2
  %3116 = load i32, ptr %3115, align 8, !tbaa !57
  %3117 = and i32 %3116, %3105
  %3118 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3106, i32 3
  %3119 = load i32, ptr %3118, align 4, !tbaa !58
  %3120 = icmp slt i32 %3117, %3119
  br i1 %3120, label %3131, label %3133

3121:                                             ; preds = %3103
  %3122 = load i8, ptr %3107, align 1, !tbaa !43
  %3123 = xor i8 %3122, -128
  %3124 = icmp ult i8 %3123, 64
  br i1 %3124, label %3125, label %3131

3125:                                             ; preds = %3121
  %3126 = zext nneg i8 %3123 to i32
  %3127 = shl i32 %3105, 6
  %3128 = or disjoint i32 %3127, %3126
  %3129 = add nuw nsw i64 %3106, 1
  %3130 = icmp eq i64 %3129, 6
  br i1 %3130, label %3131, label %3103, !llvm.loop !59

3131:                                             ; preds = %3125, %3121, %3114
  %3132 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3132, align 4, !tbaa !34
  br label %3133

3133:                                             ; preds = %3131, %3114
  %3134 = phi i32 [ %3117, %3114 ], [ -1, %3131 ]
  %3135 = icmp eq i32 %3134, 44
  br i1 %3135, label %3138, label %3136

3136:                                             ; preds = %3133, %3177, %3019
  %3137 = phi ptr [ %3180, %3177 ], [ %3064, %3133 ], [ %2986, %3019 ]
  br label %2825, !llvm.loop !69

3138:                                             ; preds = %3133, %3097
  %3139 = load i8, ptr %3064, align 1, !tbaa !43
  %3140 = zext i8 %3139 to i32
  br label %3141

3141:                                             ; preds = %3138, %3169
  %3142 = phi ptr [ %3064, %3138 ], [ %3145, %3169 ]
  %3143 = phi i32 [ %3140, %3138 ], [ %3172, %3169 ]
  %3144 = phi i64 [ 0, %3138 ], [ %3173, %3169 ]
  %3145 = getelementptr inbounds i8, ptr %3142, i64 1
  %3146 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3144
  %3147 = load i32, ptr %3146, align 16, !tbaa !54
  %3148 = and i32 %3147, %3140
  %3149 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3144, i32 1
  %3150 = load i32, ptr %3149, align 4, !tbaa !56
  %3151 = icmp eq i32 %3148, %3150
  br i1 %3151, label %3152, label %3163

3152:                                             ; preds = %3141
  %3153 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3144, i32 2
  %3154 = load i32, ptr %3153, align 8, !tbaa !57
  %3155 = and i32 %3154, %3143
  %3156 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3144, i32 3
  %3157 = load i32, ptr %3156, align 4, !tbaa !58
  %3158 = icmp slt i32 %3155, %3157
  br i1 %3158, label %3159, label %3161

3159:                                             ; preds = %3152
  %3160 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3160, align 4, !tbaa !34
  br label %3177

3161:                                             ; preds = %3152
  %3162 = add nuw nsw i64 %3144, 1
  br label %3177

3163:                                             ; preds = %3141
  %3164 = load i8, ptr %3145, align 1, !tbaa !43
  %3165 = xor i8 %3164, -128
  %3166 = icmp ult i8 %3165, 64
  br i1 %3166, label %3169, label %3167

3167:                                             ; preds = %3163
  %3168 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3168, align 4, !tbaa !34
  br label %3177

3169:                                             ; preds = %3163
  %3170 = zext nneg i8 %3165 to i32
  %3171 = shl i32 %3143, 6
  %3172 = or disjoint i32 %3171, %3170
  %3173 = add nuw nsw i64 %3144, 1
  %3174 = icmp eq i64 %3173, 6
  br i1 %3174, label %3175, label %3141, !llvm.loop !59

3175:                                             ; preds = %3169
  %3176 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3176, align 4, !tbaa !34
  br label %3177

3177:                                             ; preds = %3159, %3161, %3167, %3175
  %3178 = phi i64 [ 1, %3159 ], [ %3162, %3161 ], [ 1, %3167 ], [ 1, %3175 ]
  %3179 = and i64 %3178, 4294967295
  %3180 = getelementptr inbounds i8, ptr %3064, i64 %3179
  br label %3136

3181:                                             ; preds = %2900, %2862, %2938, %2580, %2618
  %3182 = phi ptr [ %2544, %2618 ], [ %2544, %2580 ], [ %2826, %2938 ], [ %2826, %2862 ], [ %2826, %2900 ]
  %3183 = phi ptr [ %2097, %2618 ], [ %2097, %2580 ], [ %2018, %2938 ], [ %2018, %2862 ], [ %2018, %2900 ]
  %3184 = icmp eq ptr %3182, null
  br i1 %3184, label %3216, label %3185

3185:                                             ; preds = %3181
  %3186 = load i8, ptr %3182, align 1, !tbaa !43
  %3187 = zext i8 %3186 to i32
  br label %3188

3188:                                             ; preds = %3185, %3210
  %3189 = phi ptr [ %3182, %3185 ], [ %3192, %3210 ]
  %3190 = phi i32 [ %3187, %3185 ], [ %3213, %3210 ]
  %3191 = phi i64 [ 0, %3185 ], [ %3214, %3210 ]
  %3192 = getelementptr inbounds i8, ptr %3189, i64 1
  %3193 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3191
  %3194 = load i32, ptr %3193, align 16, !tbaa !54
  %3195 = and i32 %3194, %3187
  %3196 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3191, i32 1
  %3197 = load i32, ptr %3196, align 4, !tbaa !56
  %3198 = icmp eq i32 %3195, %3197
  br i1 %3198, label %3199, label %3206

3199:                                             ; preds = %3188
  %3200 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3191, i32 2
  %3201 = load i32, ptr %3200, align 8, !tbaa !57
  %3202 = and i32 %3201, %3190
  %3203 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3191, i32 3
  %3204 = load i32, ptr %3203, align 4, !tbaa !58
  %3205 = icmp slt i32 %3202, %3204
  br i1 %3205, label %3216, label %3219

3206:                                             ; preds = %3188
  %3207 = load i8, ptr %3192, align 1, !tbaa !43
  %3208 = xor i8 %3207, -128
  %3209 = icmp ult i8 %3208, 64
  br i1 %3209, label %3210, label %3216

3210:                                             ; preds = %3206
  %3211 = zext nneg i8 %3208 to i32
  %3212 = shl i32 %3190, 6
  %3213 = or disjoint i32 %3212, %3211
  %3214 = add nuw nsw i64 %3191, 1
  %3215 = icmp eq i64 %3214, 6
  br i1 %3215, label %3216, label %3188, !llvm.loop !59

3216:                                             ; preds = %3210, %3206, %3199, %3181
  %3217 = phi i32 [ 22, %3181 ], [ 84, %3199 ], [ 84, %3206 ], [ 84, %3210 ]
  %3218 = tail call ptr @__errno_location() #10
  store i32 %3217, ptr %3218, align 4, !tbaa !34
  br label %3219

3219:                                             ; preds = %3216, %3199
  %3220 = phi i32 [ %3202, %3199 ], [ -1, %3216 ]
  %3221 = icmp eq i32 %3220, 0
  br i1 %3221, label %3268, label %3222

3222:                                             ; preds = %3219
  br i1 %3184, label %3223, label %3225

3223:                                             ; preds = %3222
  %3224 = tail call ptr @__errno_location() #10
  store i32 22, ptr %3224, align 4, !tbaa !34
  br label %3264

3225:                                             ; preds = %3222
  %3226 = load i8, ptr %3182, align 1, !tbaa !43
  %3227 = zext i8 %3226 to i32
  br label %3228

3228:                                             ; preds = %3225, %3256
  %3229 = phi ptr [ %3182, %3225 ], [ %3232, %3256 ]
  %3230 = phi i32 [ %3227, %3225 ], [ %3259, %3256 ]
  %3231 = phi i64 [ 0, %3225 ], [ %3260, %3256 ]
  %3232 = getelementptr inbounds i8, ptr %3229, i64 1
  %3233 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3231
  %3234 = load i32, ptr %3233, align 16, !tbaa !54
  %3235 = and i32 %3234, %3227
  %3236 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3231, i32 1
  %3237 = load i32, ptr %3236, align 4, !tbaa !56
  %3238 = icmp eq i32 %3235, %3237
  br i1 %3238, label %3239, label %3250

3239:                                             ; preds = %3228
  %3240 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3231, i32 2
  %3241 = load i32, ptr %3240, align 8, !tbaa !57
  %3242 = and i32 %3241, %3230
  %3243 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3231, i32 3
  %3244 = load i32, ptr %3243, align 4, !tbaa !58
  %3245 = icmp slt i32 %3242, %3244
  br i1 %3245, label %3246, label %3248

3246:                                             ; preds = %3239
  %3247 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3247, align 4, !tbaa !34
  br label %3264

3248:                                             ; preds = %3239
  %3249 = add nuw nsw i64 %3231, 1
  br label %3264

3250:                                             ; preds = %3228
  %3251 = load i8, ptr %3232, align 1, !tbaa !43
  %3252 = xor i8 %3251, -128
  %3253 = icmp ult i8 %3252, 64
  br i1 %3253, label %3256, label %3254

3254:                                             ; preds = %3250
  %3255 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3255, align 4, !tbaa !34
  br label %3264

3256:                                             ; preds = %3250
  %3257 = zext nneg i8 %3252 to i32
  %3258 = shl i32 %3230, 6
  %3259 = or disjoint i32 %3258, %3257
  %3260 = add nuw nsw i64 %3231, 1
  %3261 = icmp eq i64 %3260, 6
  br i1 %3261, label %3262, label %3228, !llvm.loop !59

3262:                                             ; preds = %3256
  %3263 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3263, align 4, !tbaa !34
  br label %3264

3264:                                             ; preds = %3223, %3246, %3248, %3254, %3262
  %3265 = phi i64 [ 1, %3223 ], [ 1, %3246 ], [ %3249, %3248 ], [ 1, %3254 ], [ 1, %3262 ]
  %3266 = and i64 %3265, 4294967295
  %3267 = getelementptr inbounds i8, ptr %3182, i64 %3266
  br label %3268

3268:                                             ; preds = %3264, %3219
  %3269 = phi ptr [ %3267, %3264 ], [ %3182, %3219 ]
  br label %2016, !llvm.loop !70

3270:                                             ; preds = %292
  br i1 %102, label %3271, label %3273

3271:                                             ; preds = %3270
  %3272 = tail call ptr @__errno_location() #10
  store i32 22, ptr %3272, align 4, !tbaa !34
  br label %3312

3273:                                             ; preds = %3270
  %3274 = load i8, ptr %100, align 1, !tbaa !43
  %3275 = zext i8 %3274 to i32
  br label %3276

3276:                                             ; preds = %3273, %3304
  %3277 = phi ptr [ %100, %3273 ], [ %3280, %3304 ]
  %3278 = phi i32 [ %3275, %3273 ], [ %3307, %3304 ]
  %3279 = phi i64 [ 0, %3273 ], [ %3308, %3304 ]
  %3280 = getelementptr inbounds i8, ptr %3277, i64 1
  %3281 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3279
  %3282 = load i32, ptr %3281, align 16, !tbaa !54
  %3283 = and i32 %3282, %3275
  %3284 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3279, i32 1
  %3285 = load i32, ptr %3284, align 4, !tbaa !56
  %3286 = icmp eq i32 %3283, %3285
  br i1 %3286, label %3287, label %3298

3287:                                             ; preds = %3276
  %3288 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3279, i32 2
  %3289 = load i32, ptr %3288, align 8, !tbaa !57
  %3290 = and i32 %3289, %3278
  %3291 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3279, i32 3
  %3292 = load i32, ptr %3291, align 4, !tbaa !58
  %3293 = icmp slt i32 %3290, %3292
  br i1 %3293, label %3294, label %3296

3294:                                             ; preds = %3287
  %3295 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3295, align 4, !tbaa !34
  br label %3312

3296:                                             ; preds = %3287
  %3297 = add nuw nsw i64 %3279, 1
  br label %3312

3298:                                             ; preds = %3276
  %3299 = load i8, ptr %3280, align 1, !tbaa !43
  %3300 = xor i8 %3299, -128
  %3301 = icmp ult i8 %3300, 64
  br i1 %3301, label %3304, label %3302

3302:                                             ; preds = %3298
  %3303 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3303, align 4, !tbaa !34
  br label %3312

3304:                                             ; preds = %3298
  %3305 = zext nneg i8 %3300 to i32
  %3306 = shl i32 %3278, 6
  %3307 = or disjoint i32 %3306, %3305
  %3308 = add nuw nsw i64 %3279, 1
  %3309 = icmp eq i64 %3308, 6
  br i1 %3309, label %3310, label %3276, !llvm.loop !59

3310:                                             ; preds = %3304
  %3311 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3311, align 4, !tbaa !34
  br label %3312

3312:                                             ; preds = %3271, %3294, %3296, %3302, %3310
  %3313 = phi i64 [ 1, %3271 ], [ 1, %3294 ], [ %3297, %3296 ], [ 1, %3302 ], [ 1, %3310 ]
  %3314 = and i64 %3313, 4294967295
  %3315 = getelementptr inbounds i8, ptr %100, i64 %3314
  %3316 = load i8, ptr %3315, align 1, !tbaa !43
  %3317 = zext i8 %3316 to i32
  br label %3318

3318:                                             ; preds = %3312, %3340
  %3319 = phi ptr [ %3315, %3312 ], [ %3322, %3340 ]
  %3320 = phi i32 [ %3317, %3312 ], [ %3343, %3340 ]
  %3321 = phi i64 [ 0, %3312 ], [ %3344, %3340 ]
  %3322 = getelementptr inbounds i8, ptr %3319, i64 1
  %3323 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3321
  %3324 = load i32, ptr %3323, align 16, !tbaa !54
  %3325 = and i32 %3324, %3317
  %3326 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3321, i32 1
  %3327 = load i32, ptr %3326, align 4, !tbaa !56
  %3328 = icmp eq i32 %3325, %3327
  br i1 %3328, label %3329, label %3336

3329:                                             ; preds = %3318
  %3330 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3321, i32 2
  %3331 = load i32, ptr %3330, align 8, !tbaa !57
  %3332 = and i32 %3331, %3320
  %3333 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3321, i32 3
  %3334 = load i32, ptr %3333, align 4, !tbaa !58
  %3335 = icmp slt i32 %3332, %3334
  br i1 %3335, label %3346, label %3348

3336:                                             ; preds = %3318
  %3337 = load i8, ptr %3322, align 1, !tbaa !43
  %3338 = xor i8 %3337, -128
  %3339 = icmp ult i8 %3338, 64
  br i1 %3339, label %3340, label %3346

3340:                                             ; preds = %3336
  %3341 = zext nneg i8 %3338 to i32
  %3342 = shl i32 %3320, 6
  %3343 = or disjoint i32 %3342, %3341
  %3344 = add nuw nsw i64 %3321, 1
  %3345 = icmp eq i64 %3344, 6
  br i1 %3345, label %3346, label %3318, !llvm.loop !59

3346:                                             ; preds = %3340, %3336, %3329
  %3347 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3347, align 4, !tbaa !34
  br label %3348

3348:                                             ; preds = %3346, %3329
  %3349 = phi i32 [ %3332, %3329 ], [ -1, %3346 ]
  %3350 = icmp eq i32 %3349, 0
  br i1 %3350, label %3523, label %3351

3351:                                             ; preds = %3348, %292
  %3352 = phi ptr [ %100, %292 ], [ %3315, %3348 ]
  br i1 %97, label %3448, label %3353

3353:                                             ; preds = %3351
  br i1 %143, label %3385, label %3354

3354:                                             ; preds = %3353
  %3355 = load i8, ptr %101, align 1, !tbaa !43
  %3356 = zext i8 %3355 to i32
  br label %3357

3357:                                             ; preds = %3354, %3379
  %3358 = phi ptr [ %101, %3354 ], [ %3361, %3379 ]
  %3359 = phi i32 [ %3356, %3354 ], [ %3382, %3379 ]
  %3360 = phi i64 [ 0, %3354 ], [ %3383, %3379 ]
  %3361 = getelementptr inbounds i8, ptr %3358, i64 1
  %3362 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3360
  %3363 = load i32, ptr %3362, align 16, !tbaa !54
  %3364 = and i32 %3363, %3356
  %3365 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3360, i32 1
  %3366 = load i32, ptr %3365, align 4, !tbaa !56
  %3367 = icmp eq i32 %3364, %3366
  br i1 %3367, label %3368, label %3375

3368:                                             ; preds = %3357
  %3369 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3360, i32 2
  %3370 = load i32, ptr %3369, align 8, !tbaa !57
  %3371 = and i32 %3370, %3359
  %3372 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3360, i32 3
  %3373 = load i32, ptr %3372, align 4, !tbaa !58
  %3374 = icmp slt i32 %3371, %3373
  br i1 %3374, label %3385, label %3388

3375:                                             ; preds = %3357
  %3376 = load i8, ptr %3361, align 1, !tbaa !43
  %3377 = xor i8 %3376, -128
  %3378 = icmp ult i8 %3377, 64
  br i1 %3378, label %3379, label %3385

3379:                                             ; preds = %3375
  %3380 = zext nneg i8 %3377 to i32
  %3381 = shl i32 %3359, 6
  %3382 = or disjoint i32 %3381, %3380
  %3383 = add nuw nsw i64 %3360, 1
  %3384 = icmp eq i64 %3383, 6
  br i1 %3384, label %3385, label %3357, !llvm.loop !59

3385:                                             ; preds = %3379, %3375, %3368, %3353
  %3386 = phi i32 [ 22, %3353 ], [ 84, %3368 ], [ 84, %3375 ], [ 84, %3379 ]
  %3387 = tail call ptr @__errno_location() #10
  store i32 %3386, ptr %3387, align 4, !tbaa !34
  br label %3388

3388:                                             ; preds = %3385, %3368
  %3389 = phi i32 [ %3371, %3368 ], [ -1, %3385 ]
  %3390 = add i32 %3389, 128
  %3391 = icmp ult i32 %3390, 384
  br i1 %3391, label %3392, label %3398

3392:                                             ; preds = %3388
  %3393 = tail call ptr @__ctype_tolower_loc() #10
  %3394 = load ptr, ptr %3393, align 8, !tbaa !41
  %3395 = sext i32 %3389 to i64
  %3396 = getelementptr inbounds i32, ptr %3394, i64 %3395
  %3397 = load i32, ptr %3396, align 4, !tbaa !34
  br label %3398

3398:                                             ; preds = %3388, %3392
  %3399 = phi i32 [ %3397, %3392 ], [ %3389, %3388 ]
  %3400 = icmp eq ptr %3352, null
  br i1 %3400, label %3432, label %3401

3401:                                             ; preds = %3398
  %3402 = load i8, ptr %3352, align 1, !tbaa !43
  %3403 = zext i8 %3402 to i32
  br label %3404

3404:                                             ; preds = %3401, %3426
  %3405 = phi ptr [ %3352, %3401 ], [ %3408, %3426 ]
  %3406 = phi i32 [ %3403, %3401 ], [ %3429, %3426 ]
  %3407 = phi i64 [ 0, %3401 ], [ %3430, %3426 ]
  %3408 = getelementptr inbounds i8, ptr %3405, i64 1
  %3409 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3407
  %3410 = load i32, ptr %3409, align 16, !tbaa !54
  %3411 = and i32 %3410, %3403
  %3412 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3407, i32 1
  %3413 = load i32, ptr %3412, align 4, !tbaa !56
  %3414 = icmp eq i32 %3411, %3413
  br i1 %3414, label %3415, label %3422

3415:                                             ; preds = %3404
  %3416 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3407, i32 2
  %3417 = load i32, ptr %3416, align 8, !tbaa !57
  %3418 = and i32 %3417, %3406
  %3419 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3407, i32 3
  %3420 = load i32, ptr %3419, align 4, !tbaa !58
  %3421 = icmp slt i32 %3418, %3420
  br i1 %3421, label %3432, label %3435

3422:                                             ; preds = %3404
  %3423 = load i8, ptr %3408, align 1, !tbaa !43
  %3424 = xor i8 %3423, -128
  %3425 = icmp ult i8 %3424, 64
  br i1 %3425, label %3426, label %3432

3426:                                             ; preds = %3422
  %3427 = zext nneg i8 %3424 to i32
  %3428 = shl i32 %3406, 6
  %3429 = or disjoint i32 %3428, %3427
  %3430 = add nuw nsw i64 %3407, 1
  %3431 = icmp eq i64 %3430, 6
  br i1 %3431, label %3432, label %3404, !llvm.loop !59

3432:                                             ; preds = %3426, %3422, %3415, %3398
  %3433 = phi i32 [ 22, %3398 ], [ 84, %3415 ], [ 84, %3422 ], [ 84, %3426 ]
  %3434 = tail call ptr @__errno_location() #10
  store i32 %3433, ptr %3434, align 4, !tbaa !34
  br label %3435

3435:                                             ; preds = %3432, %3415
  %3436 = phi i32 [ %3418, %3415 ], [ -1, %3432 ]
  %3437 = add i32 %3436, 128
  %3438 = icmp ult i32 %3437, 384
  br i1 %3438, label %3439, label %3445

3439:                                             ; preds = %3435
  %3440 = tail call ptr @__ctype_tolower_loc() #10
  %3441 = load ptr, ptr %3440, align 8, !tbaa !41
  %3442 = sext i32 %3436 to i64
  %3443 = getelementptr inbounds i32, ptr %3441, i64 %3442
  %3444 = load i32, ptr %3443, align 4, !tbaa !34
  br label %3445

3445:                                             ; preds = %3435, %3439
  %3446 = phi i32 [ %3444, %3439 ], [ %3436, %3435 ]
  %3447 = icmp eq i32 %3399, %3446
  br i1 %3447, label %3527, label %3523

3448:                                             ; preds = %3351
  br i1 %143, label %3480, label %3449

3449:                                             ; preds = %3448
  %3450 = load i8, ptr %101, align 1, !tbaa !43
  %3451 = zext i8 %3450 to i32
  br label %3452

3452:                                             ; preds = %3449, %3474
  %3453 = phi ptr [ %101, %3449 ], [ %3456, %3474 ]
  %3454 = phi i32 [ %3451, %3449 ], [ %3477, %3474 ]
  %3455 = phi i64 [ 0, %3449 ], [ %3478, %3474 ]
  %3456 = getelementptr inbounds i8, ptr %3453, i64 1
  %3457 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3455
  %3458 = load i32, ptr %3457, align 16, !tbaa !54
  %3459 = and i32 %3458, %3451
  %3460 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3455, i32 1
  %3461 = load i32, ptr %3460, align 4, !tbaa !56
  %3462 = icmp eq i32 %3459, %3461
  br i1 %3462, label %3463, label %3470

3463:                                             ; preds = %3452
  %3464 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3455, i32 2
  %3465 = load i32, ptr %3464, align 8, !tbaa !57
  %3466 = and i32 %3465, %3454
  %3467 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3455, i32 3
  %3468 = load i32, ptr %3467, align 4, !tbaa !58
  %3469 = icmp slt i32 %3466, %3468
  br i1 %3469, label %3480, label %3483

3470:                                             ; preds = %3452
  %3471 = load i8, ptr %3456, align 1, !tbaa !43
  %3472 = xor i8 %3471, -128
  %3473 = icmp ult i8 %3472, 64
  br i1 %3473, label %3474, label %3480

3474:                                             ; preds = %3470
  %3475 = zext nneg i8 %3472 to i32
  %3476 = shl i32 %3454, 6
  %3477 = or disjoint i32 %3476, %3475
  %3478 = add nuw nsw i64 %3455, 1
  %3479 = icmp eq i64 %3478, 6
  br i1 %3479, label %3480, label %3452, !llvm.loop !59

3480:                                             ; preds = %3474, %3470, %3463, %3448
  %3481 = phi i32 [ 22, %3448 ], [ 84, %3463 ], [ 84, %3470 ], [ 84, %3474 ]
  %3482 = tail call ptr @__errno_location() #10
  store i32 %3481, ptr %3482, align 4, !tbaa !34
  br label %3483

3483:                                             ; preds = %3480, %3463
  %3484 = phi i32 [ %3466, %3463 ], [ -1, %3480 ]
  %3485 = icmp eq ptr %3352, null
  br i1 %3485, label %3517, label %3486

3486:                                             ; preds = %3483
  %3487 = load i8, ptr %3352, align 1, !tbaa !43
  %3488 = zext i8 %3487 to i32
  br label %3489

3489:                                             ; preds = %3486, %3511
  %3490 = phi ptr [ %3352, %3486 ], [ %3493, %3511 ]
  %3491 = phi i32 [ %3488, %3486 ], [ %3514, %3511 ]
  %3492 = phi i64 [ 0, %3486 ], [ %3515, %3511 ]
  %3493 = getelementptr inbounds i8, ptr %3490, i64 1
  %3494 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3492
  %3495 = load i32, ptr %3494, align 16, !tbaa !54
  %3496 = and i32 %3495, %3488
  %3497 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3492, i32 1
  %3498 = load i32, ptr %3497, align 4, !tbaa !56
  %3499 = icmp eq i32 %3496, %3498
  br i1 %3499, label %3500, label %3507

3500:                                             ; preds = %3489
  %3501 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3492, i32 2
  %3502 = load i32, ptr %3501, align 8, !tbaa !57
  %3503 = and i32 %3502, %3491
  %3504 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3492, i32 3
  %3505 = load i32, ptr %3504, align 4, !tbaa !58
  %3506 = icmp slt i32 %3503, %3505
  br i1 %3506, label %3517, label %3520

3507:                                             ; preds = %3489
  %3508 = load i8, ptr %3493, align 1, !tbaa !43
  %3509 = xor i8 %3508, -128
  %3510 = icmp ult i8 %3509, 64
  br i1 %3510, label %3511, label %3517

3511:                                             ; preds = %3507
  %3512 = zext nneg i8 %3509 to i32
  %3513 = shl i32 %3491, 6
  %3514 = or disjoint i32 %3513, %3512
  %3515 = add nuw nsw i64 %3492, 1
  %3516 = icmp eq i64 %3515, 6
  br i1 %3516, label %3517, label %3489, !llvm.loop !59

3517:                                             ; preds = %3511, %3507, %3500, %3483
  %3518 = phi i32 [ 22, %3483 ], [ 84, %3500 ], [ 84, %3507 ], [ 84, %3511 ]
  %3519 = tail call ptr @__errno_location() #10
  store i32 %3518, ptr %3519, align 4, !tbaa !34
  br label %3520

3520:                                             ; preds = %3517, %3500
  %3521 = phi i32 [ %3503, %3500 ], [ -1, %3517 ]
  %3522 = icmp eq i32 %3484, %3521
  br i1 %3522, label %3527, label %3523

3523:                                             ; preds = %2539, %2054, %2092, %1174, %1060, %828, %678, %714, %551, %3520, %3445, %1875, %1788, %430, %3348, %3615, %1966
  %3524 = phi i1 [ true, %3615 ], [ true, %3348 ], [ true, %1966 ], [ true, %430 ], [ true, %1875 ], [ true, %1788 ], [ false, %3445 ], [ false, %3520 ], [ true, %551 ], [ false, %714 ], [ false, %678 ], [ false, %828 ], [ false, %1060 ], [ false, %1174 ], [ true, %2092 ], [ true, %2054 ], [ false, %2539 ]
  %3525 = phi ptr [ %3618, %3615 ], [ %3315, %3348 ], [ %1924, %1966 ], [ %339, %430 ], [ %1833, %1875 ], [ %1484, %1788 ], [ %3352, %3445 ], [ %3352, %3520 ], [ %518, %551 ], [ %645, %714 ], [ %645, %678 ], [ %795, %828 ], [ %1027, %1060 ], [ %1141, %1174 ], [ %2017, %2092 ], [ %2017, %2054 ], [ %2098, %2539 ]
  %3526 = phi ptr [ %3572, %3615 ], [ %101, %3348 ], [ %1969, %1966 ], [ %342, %430 ], [ %1878, %1875 ], [ %101, %1788 ], [ %101, %3445 ], [ %101, %3520 ], [ %432, %551 ], [ %101, %714 ], [ %101, %678 ], [ %101, %828 ], [ %101, %1060 ], [ %101, %1174 ], [ %2018, %2092 ], [ %2018, %2054 ], [ %2018, %2539 ]
  br label %98, !llvm.loop !63

3527:                                             ; preds = %3520, %3445
  br i1 %143, label %3528, label %3530

3528:                                             ; preds = %3527
  %3529 = tail call ptr @__errno_location() #10
  store i32 22, ptr %3529, align 4, !tbaa !34
  br label %3569

3530:                                             ; preds = %3527
  %3531 = load i8, ptr %101, align 1, !tbaa !43
  %3532 = zext i8 %3531 to i32
  br label %3533

3533:                                             ; preds = %3530, %3561
  %3534 = phi ptr [ %101, %3530 ], [ %3537, %3561 ]
  %3535 = phi i32 [ %3532, %3530 ], [ %3564, %3561 ]
  %3536 = phi i64 [ 0, %3530 ], [ %3565, %3561 ]
  %3537 = getelementptr inbounds i8, ptr %3534, i64 1
  %3538 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3536
  %3539 = load i32, ptr %3538, align 16, !tbaa !54
  %3540 = and i32 %3539, %3532
  %3541 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3536, i32 1
  %3542 = load i32, ptr %3541, align 4, !tbaa !56
  %3543 = icmp eq i32 %3540, %3542
  br i1 %3543, label %3544, label %3555

3544:                                             ; preds = %3533
  %3545 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3536, i32 2
  %3546 = load i32, ptr %3545, align 8, !tbaa !57
  %3547 = and i32 %3546, %3535
  %3548 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3536, i32 3
  %3549 = load i32, ptr %3548, align 4, !tbaa !58
  %3550 = icmp slt i32 %3547, %3549
  br i1 %3550, label %3551, label %3553

3551:                                             ; preds = %3544
  %3552 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3552, align 4, !tbaa !34
  br label %3569

3553:                                             ; preds = %3544
  %3554 = add nuw nsw i64 %3536, 1
  br label %3569

3555:                                             ; preds = %3533
  %3556 = load i8, ptr %3537, align 1, !tbaa !43
  %3557 = xor i8 %3556, -128
  %3558 = icmp ult i8 %3557, 64
  br i1 %3558, label %3561, label %3559

3559:                                             ; preds = %3555
  %3560 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3560, align 4, !tbaa !34
  br label %3569

3561:                                             ; preds = %3555
  %3562 = zext nneg i8 %3557 to i32
  %3563 = shl i32 %3535, 6
  %3564 = or disjoint i32 %3563, %3562
  %3565 = add nuw nsw i64 %3536, 1
  %3566 = icmp eq i64 %3565, 6
  br i1 %3566, label %3567, label %3533, !llvm.loop !59

3567:                                             ; preds = %3561
  %3568 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3568, align 4, !tbaa !34
  br label %3569

3569:                                             ; preds = %3528, %3551, %3553, %3559, %3567
  %3570 = phi i64 [ 1, %3528 ], [ 1, %3551 ], [ %3554, %3553 ], [ 1, %3559 ], [ 1, %3567 ]
  %3571 = and i64 %3570, 4294967295
  %3572 = getelementptr inbounds i8, ptr %101, i64 %3571
  %3573 = icmp eq ptr %3352, null
  br i1 %3573, label %3574, label %3576

3574:                                             ; preds = %3569
  %3575 = tail call ptr @__errno_location() #10
  store i32 22, ptr %3575, align 4, !tbaa !34
  br label %3615

3576:                                             ; preds = %3569
  %3577 = load i8, ptr %3352, align 1, !tbaa !43
  %3578 = zext i8 %3577 to i32
  br label %3579

3579:                                             ; preds = %3576, %3607
  %3580 = phi ptr [ %3352, %3576 ], [ %3583, %3607 ]
  %3581 = phi i32 [ %3578, %3576 ], [ %3610, %3607 ]
  %3582 = phi i64 [ 0, %3576 ], [ %3611, %3607 ]
  %3583 = getelementptr inbounds i8, ptr %3580, i64 1
  %3584 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3582
  %3585 = load i32, ptr %3584, align 16, !tbaa !54
  %3586 = and i32 %3585, %3578
  %3587 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3582, i32 1
  %3588 = load i32, ptr %3587, align 4, !tbaa !56
  %3589 = icmp eq i32 %3586, %3588
  br i1 %3589, label %3590, label %3601

3590:                                             ; preds = %3579
  %3591 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3582, i32 2
  %3592 = load i32, ptr %3591, align 8, !tbaa !57
  %3593 = and i32 %3592, %3581
  %3594 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3582, i32 3
  %3595 = load i32, ptr %3594, align 4, !tbaa !58
  %3596 = icmp slt i32 %3593, %3595
  br i1 %3596, label %3597, label %3599

3597:                                             ; preds = %3590
  %3598 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3598, align 4, !tbaa !34
  br label %3615

3599:                                             ; preds = %3590
  %3600 = add nuw nsw i64 %3582, 1
  br label %3615

3601:                                             ; preds = %3579
  %3602 = load i8, ptr %3583, align 1, !tbaa !43
  %3603 = xor i8 %3602, -128
  %3604 = icmp ult i8 %3603, 64
  br i1 %3604, label %3607, label %3605

3605:                                             ; preds = %3601
  %3606 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3606, align 4, !tbaa !34
  br label %3615

3607:                                             ; preds = %3601
  %3608 = zext nneg i8 %3603 to i32
  %3609 = shl i32 %3581, 6
  %3610 = or disjoint i32 %3609, %3608
  %3611 = add nuw nsw i64 %3582, 1
  %3612 = icmp eq i64 %3611, 6
  br i1 %3612, label %3613, label %3579, !llvm.loop !59

3613:                                             ; preds = %3607
  %3614 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3614, align 4, !tbaa !34
  br label %3615

3615:                                             ; preds = %3574, %3597, %3599, %3605, %3613
  %3616 = phi i64 [ 1, %3574 ], [ 1, %3597 ], [ %3600, %3599 ], [ 1, %3605 ], [ 1, %3613 ]
  %3617 = and i64 %3616, 4294967295
  %3618 = getelementptr inbounds i8, ptr %3352, i64 %3617
  br label %3523

3619:                                             ; preds = %141, %3701
  %3620 = phi ptr [ %3704, %3701 ], [ %100, %141 ]
  %3621 = icmp eq ptr %3620, null
  br i1 %3621, label %3653, label %3622

3622:                                             ; preds = %3619
  %3623 = load i8, ptr %3620, align 1, !tbaa !43
  %3624 = zext i8 %3623 to i32
  br label %3625

3625:                                             ; preds = %3622, %3647
  %3626 = phi ptr [ %3620, %3622 ], [ %3629, %3647 ]
  %3627 = phi i32 [ %3624, %3622 ], [ %3650, %3647 ]
  %3628 = phi i64 [ 0, %3622 ], [ %3651, %3647 ]
  %3629 = getelementptr inbounds i8, ptr %3626, i64 1
  %3630 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3628
  %3631 = load i32, ptr %3630, align 16, !tbaa !54
  %3632 = and i32 %3631, %3624
  %3633 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3628, i32 1
  %3634 = load i32, ptr %3633, align 4, !tbaa !56
  %3635 = icmp eq i32 %3632, %3634
  br i1 %3635, label %3636, label %3643

3636:                                             ; preds = %3625
  %3637 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3628, i32 2
  %3638 = load i32, ptr %3637, align 8, !tbaa !57
  %3639 = and i32 %3638, %3627
  %3640 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3628, i32 3
  %3641 = load i32, ptr %3640, align 4, !tbaa !58
  %3642 = icmp slt i32 %3639, %3641
  br i1 %3642, label %3653, label %3656

3643:                                             ; preds = %3625
  %3644 = load i8, ptr %3629, align 1, !tbaa !43
  %3645 = xor i8 %3644, -128
  %3646 = icmp ult i8 %3645, 64
  br i1 %3646, label %3647, label %3653

3647:                                             ; preds = %3643
  %3648 = zext nneg i8 %3645 to i32
  %3649 = shl i32 %3627, 6
  %3650 = or disjoint i32 %3649, %3648
  %3651 = add nuw nsw i64 %3628, 1
  %3652 = icmp eq i64 %3651, 6
  br i1 %3652, label %3653, label %3625, !llvm.loop !59

3653:                                             ; preds = %3647, %3643, %3636, %3619
  %3654 = phi i32 [ 22, %3619 ], [ 84, %3636 ], [ 84, %3643 ], [ 84, %3647 ]
  %3655 = tail call ptr @__errno_location() #10
  store i32 %3654, ptr %3655, align 4, !tbaa !34
  br label %3656

3656:                                             ; preds = %3653, %3636
  %3657 = phi i32 [ %3639, %3636 ], [ -1, %3653 ]
  %3658 = icmp eq i32 %3657, 42
  br i1 %3658, label %3659, label %3705

3659:                                             ; preds = %3656
  br i1 %3621, label %3660, label %3662

3660:                                             ; preds = %3659
  %3661 = tail call ptr @__errno_location() #10
  store i32 22, ptr %3661, align 4, !tbaa !34
  br label %3701

3662:                                             ; preds = %3659
  %3663 = load i8, ptr %3620, align 1, !tbaa !43
  %3664 = zext i8 %3663 to i32
  br label %3665

3665:                                             ; preds = %3662, %3693
  %3666 = phi ptr [ %3620, %3662 ], [ %3669, %3693 ]
  %3667 = phi i32 [ %3664, %3662 ], [ %3696, %3693 ]
  %3668 = phi i64 [ 0, %3662 ], [ %3697, %3693 ]
  %3669 = getelementptr inbounds i8, ptr %3666, i64 1
  %3670 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3668
  %3671 = load i32, ptr %3670, align 16, !tbaa !54
  %3672 = and i32 %3671, %3664
  %3673 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3668, i32 1
  %3674 = load i32, ptr %3673, align 4, !tbaa !56
  %3675 = icmp eq i32 %3672, %3674
  br i1 %3675, label %3676, label %3687

3676:                                             ; preds = %3665
  %3677 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3668, i32 2
  %3678 = load i32, ptr %3677, align 8, !tbaa !57
  %3679 = and i32 %3678, %3667
  %3680 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3668, i32 3
  %3681 = load i32, ptr %3680, align 4, !tbaa !58
  %3682 = icmp slt i32 %3679, %3681
  br i1 %3682, label %3683, label %3685

3683:                                             ; preds = %3676
  %3684 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3684, align 4, !tbaa !34
  br label %3701

3685:                                             ; preds = %3676
  %3686 = add nuw nsw i64 %3668, 1
  br label %3701

3687:                                             ; preds = %3665
  %3688 = load i8, ptr %3669, align 1, !tbaa !43
  %3689 = xor i8 %3688, -128
  %3690 = icmp ult i8 %3689, 64
  br i1 %3690, label %3693, label %3691

3691:                                             ; preds = %3687
  %3692 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3692, align 4, !tbaa !34
  br label %3701

3693:                                             ; preds = %3687
  %3694 = zext nneg i8 %3689 to i32
  %3695 = shl i32 %3667, 6
  %3696 = or disjoint i32 %3695, %3694
  %3697 = add nuw nsw i64 %3668, 1
  %3698 = icmp eq i64 %3697, 6
  br i1 %3698, label %3699, label %3665, !llvm.loop !59

3699:                                             ; preds = %3693
  %3700 = tail call ptr @__errno_location() #10
  store i32 84, ptr %3700, align 4, !tbaa !34
  br label %3701

3701:                                             ; preds = %3660, %3683, %3685, %3691, %3699
  %3702 = phi i64 [ 1, %3660 ], [ 1, %3683 ], [ %3686, %3685 ], [ 1, %3691 ], [ 1, %3699 ]
  %3703 = and i64 %3702, 4294967295
  %3704 = getelementptr inbounds i8, ptr %3620, i64 %3703
  br label %3619, !llvm.loop !71

3705:                                             ; preds = %3656
  %3706 = icmp eq ptr %101, null
  br i1 %3706, label %3738, label %3707

3707:                                             ; preds = %3705
  %3708 = load i8, ptr %101, align 1, !tbaa !43
  %3709 = zext i8 %3708 to i32
  br label %3710

3710:                                             ; preds = %3707, %3732
  %3711 = phi ptr [ %101, %3707 ], [ %3714, %3732 ]
  %3712 = phi i32 [ %3709, %3707 ], [ %3735, %3732 ]
  %3713 = phi i64 [ 0, %3707 ], [ %3736, %3732 ]
  %3714 = getelementptr inbounds i8, ptr %3711, i64 1
  %3715 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3713
  %3716 = load i32, ptr %3715, align 16, !tbaa !54
  %3717 = and i32 %3716, %3709
  %3718 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3713, i32 1
  %3719 = load i32, ptr %3718, align 4, !tbaa !56
  %3720 = icmp eq i32 %3717, %3719
  br i1 %3720, label %3721, label %3728

3721:                                             ; preds = %3710
  %3722 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3713, i32 2
  %3723 = load i32, ptr %3722, align 8, !tbaa !57
  %3724 = and i32 %3723, %3712
  %3725 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3713, i32 3
  %3726 = load i32, ptr %3725, align 4, !tbaa !58
  %3727 = icmp slt i32 %3724, %3726
  br i1 %3727, label %3738, label %3741

3728:                                             ; preds = %3710
  %3729 = load i8, ptr %3714, align 1, !tbaa !43
  %3730 = xor i8 %3729, -128
  %3731 = icmp ult i8 %3730, 64
  br i1 %3731, label %3732, label %3738

3732:                                             ; preds = %3728
  %3733 = zext nneg i8 %3730 to i32
  %3734 = shl i32 %3712, 6
  %3735 = or disjoint i32 %3734, %3733
  %3736 = add nuw nsw i64 %3713, 1
  %3737 = icmp eq i64 %3736, 6
  br i1 %3737, label %3738, label %3710, !llvm.loop !59

3738:                                             ; preds = %3732, %3728, %3721, %3705
  %3739 = phi i32 [ 22, %3705 ], [ 84, %3721 ], [ 84, %3728 ], [ 84, %3732 ]
  %3740 = tail call ptr @__errno_location() #10
  store i32 %3739, ptr %3740, align 4, !tbaa !34
  br label %3741

3741:                                             ; preds = %3738, %3721
  %3742 = phi i32 [ %3724, %3721 ], [ -1, %3738 ]
  %3743 = icmp eq i32 %3742, 0
  br i1 %3743, label %3744, label %3783

3744:                                             ; preds = %3741
  br i1 %3621, label %3776, label %3745

3745:                                             ; preds = %3744
  %3746 = load i8, ptr %3620, align 1, !tbaa !43
  %3747 = zext i8 %3746 to i32
  br label %3748

3748:                                             ; preds = %3745, %3770
  %3749 = phi ptr [ %3620, %3745 ], [ %3752, %3770 ]
  %3750 = phi i32 [ %3747, %3745 ], [ %3773, %3770 ]
  %3751 = phi i64 [ 0, %3745 ], [ %3774, %3770 ]
  %3752 = getelementptr inbounds i8, ptr %3749, i64 1
  %3753 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3751
  %3754 = load i32, ptr %3753, align 16, !tbaa !54
  %3755 = and i32 %3754, %3747
  %3756 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3751, i32 1
  %3757 = load i32, ptr %3756, align 4, !tbaa !56
  %3758 = icmp eq i32 %3755, %3757
  br i1 %3758, label %3759, label %3766

3759:                                             ; preds = %3748
  %3760 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3751, i32 2
  %3761 = load i32, ptr %3760, align 8, !tbaa !57
  %3762 = and i32 %3761, %3750
  %3763 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %3751, i32 3
  %3764 = load i32, ptr %3763, align 4, !tbaa !58
  %3765 = icmp slt i32 %3762, %3764
  br i1 %3765, label %3776, label %3779

3766:                                             ; preds = %3748
  %3767 = load i8, ptr %3752, align 1, !tbaa !43
  %3768 = xor i8 %3767, -128
  %3769 = icmp ult i8 %3768, 64
  br i1 %3769, label %3770, label %3776

3770:                                             ; preds = %3766
  %3771 = zext nneg i8 %3768 to i32
  %3772 = shl i32 %3750, 6
  %3773 = or disjoint i32 %3772, %3771
  %3774 = add nuw nsw i64 %3751, 1
  %3775 = icmp eq i64 %3774, 6
  br i1 %3775, label %3776, label %3748, !llvm.loop !59

3776:                                             ; preds = %3770, %3766, %3759, %3744
  %3777 = phi i32 [ 22, %3744 ], [ 84, %3759 ], [ 84, %3766 ], [ 84, %3770 ]
  %3778 = tail call ptr @__errno_location() #10
  store i32 %3777, ptr %3778, align 4, !tbaa !34
  br label %3779

3779:                                             ; preds = %3776, %3759
  %3780 = phi i32 [ %3762, %3759 ], [ -1, %3776 ]
  %3781 = icmp eq i32 %3780, 0
  %3782 = zext i1 %3781 to i32
  br label %3783

3783:                                             ; preds = %3741, %3779, %41, %38, %3, %86
  %3784 = phi i32 [ 0, %86 ], [ 1, %3 ], [ 1, %38 ], [ 1, %41 ], [ 0, %3741 ], [ %3782, %3779 ]
  ret i32 %3784
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @AcquireImageInfo() local_unnamed_addr #3

declare ptr @AcquireExceptionInfo() local_unnamed_addr #3

declare i32 @SetImageInfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @IsGlob(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @IsPathAccessible(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1, %9
  %5 = phi i32 [ %10, %9 ], [ 0, %1 ]
  %6 = phi ptr [ %11, %9 ], [ %0, %1 ]
  %7 = load i8, ptr %6, align 1, !tbaa !43
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
  br label %4, !llvm.loop !72

12:                                               ; preds = %4, %1
  %13 = phi i32 [ 0, %1 ], [ %5, %4 ]
  ret i32 %13
}

declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @IsMagickTrue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #9
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %12, %9, %6, %3, %1
  %17 = phi i32 [ 0, %1 ], [ 1, %3 ], [ 1, %6 ], [ 1, %9 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Tokenizer(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i64 noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i8 noundef signext %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef %10, ptr nocapture noundef writeonly %11) local_unnamed_addr #7 {
  store i8 0, ptr %9, align 1, !tbaa !43
  store i8 0, ptr %11, align 1, !tbaa !43
  %13 = load i32, ptr %10, align 4, !tbaa !34
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %4, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !43
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %302, label %18

18:                                               ; preds = %12
  store i32 0, ptr %0, align 8, !tbaa !73
  %19 = getelementptr inbounds %struct._TokenInfo, ptr %0, i64 0, i32 3
  store i8 0, ptr %19, align 8, !tbaa !74
  %20 = getelementptr inbounds %struct._TokenInfo, ptr %0, i64 0, i32 1
  store i32 %1, ptr %20, align 4, !tbaa !75
  %21 = getelementptr inbounds %struct._TokenInfo, ptr %0, i64 0, i32 2
  store i64 0, ptr %21, align 8, !tbaa !76
  %22 = load i32, ptr %10, align 4, !tbaa !34
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %4, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !43
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %299, label %27

27:                                               ; preds = %18
  %28 = ptrtoint ptr %6 to i64
  %29 = ptrtoint ptr %7 to i64
  %30 = ptrtoint ptr %5 to i64
  %31 = add i64 %3, -1
  %32 = add i64 %3, -1
  %33 = add i64 %3, -1
  %34 = add i64 %3, -1
  %35 = add i64 %3, -1
  %36 = getelementptr i8, ptr %4, i64 1
  br label %37

37:                                               ; preds = %27, %292
  %38 = phi i8 [ %25, %27 ], [ %297, %292 ]
  %39 = phi i64 [ %23, %27 ], [ %295, %292 ]
  %40 = phi i32 [ %22, %27 ], [ %294, %292 ]
  %41 = load i8, ptr %6, align 1, !tbaa !43
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %37, %50
  %44 = phi i8 [ %52, %50 ], [ %41, %37 ]
  %45 = phi ptr [ %51, %50 ], [ %6, %37 ]
  %46 = icmp eq i8 %44, %38
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = ptrtoint ptr %45 to i64
  %49 = sub i64 %48, %28
  br label %54

50:                                               ; preds = %43
  %51 = getelementptr inbounds i8, ptr %45, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !43
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %43, !llvm.loop !77

54:                                               ; preds = %50, %37, %47
  %55 = phi i64 [ %49, %47 ], [ -1, %37 ], [ -1, %50 ]
  %56 = icmp sgt i64 %55, -1
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i8, ptr %7, align 1, !tbaa !43
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %104, label %93

60:                                               ; preds = %54
  %61 = load i32, ptr %0, align 8, !tbaa !73
  switch i32 %61, label %292 [
    i32 0, label %62
    i32 1, label %62
    i32 3, label %62
    i32 2, label %66
  ]

62:                                               ; preds = %60, %60, %60
  %63 = add nsw i32 %40, 1
  store i32 %63, ptr %10, align 4, !tbaa !34
  %64 = getelementptr inbounds i8, ptr %6, i64 %55
  %65 = load i8, ptr %64, align 1, !tbaa !43
  store i8 %65, ptr %9, align 1, !tbaa !43
  br label %299

66:                                               ; preds = %60
  %67 = load i64, ptr %21, align 8, !tbaa !76
  %68 = icmp sgt i64 %67, -1
  %69 = icmp ult i64 %67, %35
  %70 = and i1 %68, %69
  br i1 %70, label %71, label %292

71:                                               ; preds = %66
  %72 = add nuw nsw i64 %67, 1
  store i64 %72, ptr %21, align 8, !tbaa !76
  %73 = getelementptr inbounds i8, ptr %2, i64 %67
  store i8 %38, ptr %73, align 1, !tbaa !43
  %74 = load i32, ptr %0, align 8, !tbaa !73
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %292, label %76

76:                                               ; preds = %71
  %77 = load i32, ptr %20, align 4, !tbaa !75
  %78 = and i32 %77, 3
  switch i32 %78, label %292 [
    i32 1, label %79
    i32 2, label %86
  ]

79:                                               ; preds = %76
  %80 = tail call ptr @__ctype_toupper_loc() #10
  %81 = load ptr, ptr %80, align 8, !tbaa !41
  %82 = sext i8 %38 to i64
  %83 = getelementptr inbounds i32, ptr %81, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !34
  %85 = trunc i32 %84 to i8
  store i8 %85, ptr %73, align 1, !tbaa !43
  br label %292

86:                                               ; preds = %76
  %87 = tail call ptr @__ctype_tolower_loc() #10
  %88 = load ptr, ptr %87, align 8, !tbaa !41
  %89 = sext i8 %38 to i64
  %90 = getelementptr inbounds i32, ptr %88, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !34
  %92 = trunc i32 %91 to i8
  store i8 %92, ptr %73, align 1, !tbaa !43
  br label %292

93:                                               ; preds = %57, %100
  %94 = phi i8 [ %102, %100 ], [ %58, %57 ]
  %95 = phi ptr [ %101, %100 ], [ %7, %57 ]
  %96 = icmp eq i8 %94, %38
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = ptrtoint ptr %95 to i64
  %99 = sub i64 %98, %29
  br label %104

100:                                              ; preds = %93
  %101 = getelementptr inbounds i8, ptr %95, i64 1
  %102 = load i8, ptr %101, align 1, !tbaa !43
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %93, !llvm.loop !77

104:                                              ; preds = %100, %57, %97
  %105 = phi i64 [ %99, %97 ], [ -1, %57 ], [ -1, %100 ]
  %106 = icmp sgt i64 %105, -1
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i8, ptr %5, align 1, !tbaa !43
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %160, label %149

110:                                              ; preds = %104
  %111 = load i32, ptr %0, align 8, !tbaa !73
  switch i32 %111, label %292 [
    i32 0, label %112
    i32 2, label %115
    i32 1, label %148
    i32 3, label %148
  ]

112:                                              ; preds = %110
  store i32 2, ptr %0, align 8, !tbaa !73
  %113 = getelementptr inbounds i8, ptr %7, i64 %105
  %114 = load i8, ptr %113, align 1, !tbaa !43
  store i8 %114, ptr %19, align 8, !tbaa !74
  store i8 1, ptr %11, align 1, !tbaa !43
  br label %292

115:                                              ; preds = %110
  %116 = getelementptr inbounds i8, ptr %7, i64 %105
  %117 = load i8, ptr %116, align 1, !tbaa !43
  %118 = load i8, ptr %19, align 8, !tbaa !74
  %119 = icmp eq i8 %117, %118
  br i1 %119, label %147, label %120

120:                                              ; preds = %115
  %121 = load i64, ptr %21, align 8, !tbaa !76
  %122 = icmp sgt i64 %121, -1
  %123 = icmp ult i64 %121, %34
  %124 = and i1 %122, %123
  br i1 %124, label %125, label %292

125:                                              ; preds = %120
  %126 = add nuw nsw i64 %121, 1
  store i64 %126, ptr %21, align 8, !tbaa !76
  %127 = getelementptr inbounds i8, ptr %2, i64 %121
  store i8 %38, ptr %127, align 1, !tbaa !43
  %128 = load i32, ptr %0, align 8, !tbaa !73
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %292, label %130

130:                                              ; preds = %125
  %131 = load i32, ptr %20, align 4, !tbaa !75
  %132 = and i32 %131, 3
  switch i32 %132, label %292 [
    i32 1, label %133
    i32 2, label %140
  ]

133:                                              ; preds = %130
  %134 = tail call ptr @__ctype_toupper_loc() #10
  %135 = load ptr, ptr %134, align 8, !tbaa !41
  %136 = sext i8 %38 to i64
  %137 = getelementptr inbounds i32, ptr %135, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !34
  %139 = trunc i32 %138 to i8
  store i8 %139, ptr %127, align 1, !tbaa !43
  br label %292

140:                                              ; preds = %130
  %141 = tail call ptr @__ctype_tolower_loc() #10
  %142 = load ptr, ptr %141, align 8, !tbaa !41
  %143 = sext i8 %38 to i64
  %144 = getelementptr inbounds i32, ptr %142, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !34
  %146 = trunc i32 %145 to i8
  store i8 %146, ptr %127, align 1, !tbaa !43
  br label %292

147:                                              ; preds = %115
  store i32 3, ptr %0, align 8, !tbaa !73
  store i8 0, ptr %19, align 8, !tbaa !74
  br label %292

148:                                              ; preds = %110, %110
  store i8 %38, ptr %9, align 1, !tbaa !43
  br label %299

149:                                              ; preds = %107, %156
  %150 = phi i8 [ %158, %156 ], [ %108, %107 ]
  %151 = phi ptr [ %157, %156 ], [ %5, %107 ]
  %152 = icmp eq i8 %150, %38
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = ptrtoint ptr %151 to i64
  %155 = sub i64 %154, %30
  br label %160

156:                                              ; preds = %149
  %157 = getelementptr inbounds i8, ptr %151, i64 1
  %158 = load i8, ptr %157, align 1, !tbaa !43
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %149, !llvm.loop !77

160:                                              ; preds = %156, %107, %153
  %161 = phi i64 [ %155, %153 ], [ -1, %107 ], [ -1, %156 ]
  %162 = icmp sgt i64 %161, -1
  br i1 %162, label %163, label %193

163:                                              ; preds = %160
  %164 = load i32, ptr %0, align 8, !tbaa !73
  switch i32 %164, label %292 [
    i32 2, label %166
    i32 1, label %165
  ]

165:                                              ; preds = %163
  store i32 3, ptr %0, align 8, !tbaa !73
  br label %292

166:                                              ; preds = %163
  %167 = load i64, ptr %21, align 8, !tbaa !76
  %168 = icmp sgt i64 %167, -1
  %169 = icmp ult i64 %167, %33
  %170 = and i1 %168, %169
  br i1 %170, label %171, label %292

171:                                              ; preds = %166
  %172 = add nuw nsw i64 %167, 1
  store i64 %172, ptr %21, align 8, !tbaa !76
  %173 = getelementptr inbounds i8, ptr %2, i64 %167
  store i8 %38, ptr %173, align 1, !tbaa !43
  %174 = load i32, ptr %0, align 8, !tbaa !73
  %175 = icmp eq i32 %174, 2
  br i1 %175, label %292, label %176

176:                                              ; preds = %171
  %177 = load i32, ptr %20, align 4, !tbaa !75
  %178 = and i32 %177, 3
  switch i32 %178, label %292 [
    i32 1, label %179
    i32 2, label %186
  ]

179:                                              ; preds = %176
  %180 = tail call ptr @__ctype_toupper_loc() #10
  %181 = load ptr, ptr %180, align 8, !tbaa !41
  %182 = sext i8 %38 to i64
  %183 = getelementptr inbounds i32, ptr %181, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !34
  %185 = trunc i32 %184 to i8
  store i8 %185, ptr %173, align 1, !tbaa !43
  br label %292

186:                                              ; preds = %176
  %187 = tail call ptr @__ctype_tolower_loc() #10
  %188 = load ptr, ptr %187, align 8, !tbaa !41
  %189 = sext i8 %38 to i64
  %190 = getelementptr inbounds i32, ptr %188, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !34
  %192 = trunc i32 %191 to i8
  store i8 %192, ptr %173, align 1, !tbaa !43
  br label %292

193:                                              ; preds = %160
  %194 = icmp eq i8 %38, %8
  br i1 %194, label %195, label %262

195:                                              ; preds = %193
  %196 = getelementptr i8, ptr %36, i64 %39
  %197 = load i8, ptr %196, align 1, !tbaa !43
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %227

199:                                              ; preds = %195
  store i8 0, ptr %9, align 1, !tbaa !43
  %200 = load i64, ptr %21, align 8, !tbaa !76
  %201 = icmp sgt i64 %200, -1
  %202 = add i64 %3, -1
  %203 = icmp ult i64 %200, %202
  %204 = and i1 %201, %203
  br i1 %204, label %205, label %224

205:                                              ; preds = %199
  %206 = add nuw nsw i64 %200, 1
  store i64 %206, ptr %21, align 8, !tbaa !76
  %207 = getelementptr inbounds i8, ptr %2, i64 %200
  store i8 %38, ptr %207, align 1, !tbaa !43
  %208 = load i32, ptr %0, align 8, !tbaa !73
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %224, label %210

210:                                              ; preds = %205
  %211 = load i32, ptr %20, align 4, !tbaa !75
  %212 = and i32 %211, 3
  switch i32 %212, label %224 [
    i32 1, label %213
    i32 2, label %215
  ]

213:                                              ; preds = %210
  %214 = tail call ptr @__ctype_toupper_loc() #10
  br label %217

215:                                              ; preds = %210
  %216 = tail call ptr @__ctype_tolower_loc() #10
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi ptr [ %214, %213 ], [ %216, %215 ]
  %219 = load ptr, ptr %218, align 8, !tbaa !41
  %220 = sext i8 %38 to i64
  %221 = getelementptr inbounds i32, ptr %219, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !34
  %223 = trunc i32 %222 to i8
  store i8 %223, ptr %207, align 1, !tbaa !43
  br label %224

224:                                              ; preds = %217, %199, %205, %210
  %225 = load i32, ptr %10, align 4, !tbaa !34
  %226 = add nsw i32 %225, 1
  store i32 %226, ptr %10, align 4, !tbaa !34
  br label %299

227:                                              ; preds = %195
  %228 = load i32, ptr %0, align 8, !tbaa !73
  switch i32 %228, label %292 [
    i32 0, label %229
    i32 1, label %231
    i32 2, label %231
    i32 3, label %299
  ]

229:                                              ; preds = %227
  %230 = add nsw i32 %40, -1
  store i32 %230, ptr %10, align 4, !tbaa !34
  store i32 1, ptr %0, align 8, !tbaa !73
  br label %292

231:                                              ; preds = %227, %227
  %232 = add nsw i32 %40, 1
  store i32 %232, ptr %10, align 4, !tbaa !34
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, ptr %4, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !43
  %236 = load i64, ptr %21, align 8, !tbaa !76
  %237 = icmp sgt i64 %236, -1
  %238 = icmp ult i64 %236, %32
  %239 = and i1 %237, %238
  br i1 %239, label %240, label %292

240:                                              ; preds = %231
  %241 = add nuw nsw i64 %236, 1
  store i64 %241, ptr %21, align 8, !tbaa !76
  %242 = getelementptr inbounds i8, ptr %2, i64 %236
  store i8 %235, ptr %242, align 1, !tbaa !43
  %243 = load i32, ptr %0, align 8, !tbaa !73
  %244 = icmp eq i32 %243, 2
  br i1 %244, label %292, label %245

245:                                              ; preds = %240
  %246 = load i32, ptr %20, align 4, !tbaa !75
  %247 = and i32 %246, 3
  switch i32 %247, label %292 [
    i32 1, label %248
    i32 2, label %255
  ]

248:                                              ; preds = %245
  %249 = tail call ptr @__ctype_toupper_loc() #10
  %250 = load ptr, ptr %249, align 8, !tbaa !41
  %251 = sext i8 %235 to i64
  %252 = getelementptr inbounds i32, ptr %250, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !34
  %254 = trunc i32 %253 to i8
  store i8 %254, ptr %242, align 1, !tbaa !43
  br label %292

255:                                              ; preds = %245
  %256 = tail call ptr @__ctype_tolower_loc() #10
  %257 = load ptr, ptr %256, align 8, !tbaa !41
  %258 = sext i8 %235 to i64
  %259 = getelementptr inbounds i32, ptr %257, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !34
  %261 = trunc i32 %260 to i8
  store i8 %261, ptr %242, align 1, !tbaa !43
  br label %292

262:                                              ; preds = %193
  %263 = load i32, ptr %0, align 8, !tbaa !73
  switch i32 %263, label %292 [
    i32 0, label %264
    i32 1, label %265
    i32 2, label %265
    i32 3, label %299
  ]

264:                                              ; preds = %262
  store i32 1, ptr %0, align 8, !tbaa !73
  br label %265

265:                                              ; preds = %262, %262, %264
  %266 = load i64, ptr %21, align 8, !tbaa !76
  %267 = icmp sgt i64 %266, -1
  %268 = icmp ult i64 %266, %31
  %269 = and i1 %267, %268
  br i1 %269, label %270, label %292

270:                                              ; preds = %265
  %271 = add nuw nsw i64 %266, 1
  store i64 %271, ptr %21, align 8, !tbaa !76
  %272 = getelementptr inbounds i8, ptr %2, i64 %266
  store i8 %38, ptr %272, align 1, !tbaa !43
  %273 = load i32, ptr %0, align 8, !tbaa !73
  %274 = icmp eq i32 %273, 2
  br i1 %274, label %292, label %275

275:                                              ; preds = %270
  %276 = load i32, ptr %20, align 4, !tbaa !75
  %277 = and i32 %276, 3
  switch i32 %277, label %292 [
    i32 1, label %278
    i32 2, label %285
  ]

278:                                              ; preds = %275
  %279 = tail call ptr @__ctype_toupper_loc() #10
  %280 = load ptr, ptr %279, align 8, !tbaa !41
  %281 = sext i8 %38 to i64
  %282 = getelementptr inbounds i32, ptr %280, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !34
  %284 = trunc i32 %283 to i8
  store i8 %284, ptr %272, align 1, !tbaa !43
  br label %292

285:                                              ; preds = %275
  %286 = tail call ptr @__ctype_tolower_loc() #10
  %287 = load ptr, ptr %286, align 8, !tbaa !41
  %288 = sext i8 %38 to i64
  %289 = getelementptr inbounds i32, ptr %287, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !34
  %291 = trunc i32 %290 to i8
  store i8 %291, ptr %272, align 1, !tbaa !43
  br label %292

292:                                              ; preds = %285, %278, %275, %270, %265, %255, %248, %245, %240, %231, %186, %179, %176, %171, %166, %140, %133, %130, %125, %120, %86, %79, %76, %71, %66, %262, %229, %227, %165, %163, %112, %110, %147, %60
  %293 = load i32, ptr %10, align 4, !tbaa !34
  %294 = add nsw i32 %293, 1
  store i32 %294, ptr %10, align 4, !tbaa !34
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, ptr %4, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !43
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %299, label %37, !llvm.loop !78

299:                                              ; preds = %292, %262, %227, %18, %62, %148, %224
  %300 = load i64, ptr %21, align 8, !tbaa !76
  %301 = getelementptr inbounds i8, ptr %2, i64 %300
  store i8 0, ptr %301, align 1, !tbaa !43
  br label %302

302:                                              ; preds = %299, %12
  %303 = phi i32 [ 1, %12 ], [ 0, %299 ]
  ret i32 %303
}

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 24}
!39 = !{!"_TokenInfo", !35, i64 0, !35, i64 4, !40, i64 8, !36, i64 16, !40, i64 24}
!40 = !{!"long", !36, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !36, i64 0}
!43 = !{!36, !36, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !36, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !47, !48}
!50 = distinct !{!50, !47, !48}
!51 = distinct !{!51, !47, !48}
!52 = distinct !{!52, !47, !48}
!53 = distinct !{!53, !47, !48}
!54 = !{!55, !35, i64 0}
!55 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!56 = !{!55, !35, i64 4}
!57 = !{!55, !35, i64 8}
!58 = !{!55, !35, i64 12}
!59 = distinct !{!59, !47, !48}
!60 = !{i32 0, i32 2}
!61 = distinct !{!61, !47, !48}
!62 = distinct !{!62, !47, !48}
!63 = distinct !{!63, !47, !48}
!64 = distinct !{!64, !47, !48}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !47, !48}
!67 = distinct !{!67, !47, !48}
!68 = distinct !{!68, !47, !48}
!69 = distinct !{!69, !47, !48}
!70 = distinct !{!70, !47, !48}
!71 = distinct !{!71, !47, !48}
!72 = distinct !{!72, !47, !48}
!73 = !{!39, !35, i64 0}
!74 = !{!39, !36, i64 16}
!75 = !{!39, !35, i64 4}
!76 = !{!39, !40, i64 8}
!77 = distinct !{!77, !47, !48}
!78 = distinct !{!78, !47, !48}
