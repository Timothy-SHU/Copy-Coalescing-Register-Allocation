; ModuleID = 'VbrTag.c'
source_filename = "VbrTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VBRTAGDATA = type { i32, i32, i32, i32, i32, i32, [100 x i8] }

@SizeOfEmptyFrame = dso_local local_unnamed_addr global [2 x [2 x i32]] [[2 x i32] [i32 32, i32 17], [2 x i32] [i32 17, i32 9]], align 16
@pVbrFrames = dso_local local_unnamed_addr global ptr null, align 8
@nVbrNumFrames = dso_local local_unnamed_addr global i32 0, align 4
@nVbrFrameBufferSize = dso_local local_unnamed_addr global i32 0, align 4
@GetVbrTag.sr_table = internal unnamed_addr constant [4 x i32] [i32 44100, i32 48000, i32 32000, i32 99999], align 16
@pbtStreamBuffer = internal global [216 x i8] zeroinitializer, align 16
@nZeroStreamSize = internal unnamed_addr global i32 0, align 4
@InitVbrTag.framesize = internal unnamed_addr constant [3 x i32] [i32 208, i32 192, i32 288], align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"illegal sampling frequency index\0A\00", align 1
@TotalFrameSize = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Xing VBR header problem...use -t\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"LAME%s\00", align 1

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @AddVbrFrame(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @pVbrFrames, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  %4 = load i32, ptr @nVbrFrameBufferSize, align 4
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  store i32 100, ptr @nVbrFrameBufferSize, align 4, !tbaa !9
  %8 = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #18
  store ptr %8, ptr @pVbrFrames, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %1, %7
  %10 = load i32, ptr @nVbrNumFrames, align 4, !tbaa !9
  %11 = load i32, ptr @nVbrFrameBufferSize, align 4, !tbaa !9
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = shl nsw i32 %11, 1
  store i32 %14, ptr @nVbrFrameBufferSize, align 4, !tbaa !9
  %15 = load ptr, ptr @pVbrFrames, align 8, !tbaa !5
  %16 = sext i32 %14 to i64
  %17 = shl nsw i64 %16, 2
  %18 = tail call ptr @realloc(ptr noundef %15, i64 noundef %17) #19
  store ptr %18, ptr @pVbrFrames, align 8, !tbaa !5
  br label %19

19:                                               ; preds = %13, %9
  %20 = load ptr, ptr @pVbrFrames, align 8, !tbaa !5
  %21 = load i32, ptr @nVbrNumFrames, align 4, !tbaa !9
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr @nVbrNumFrames, align 4, !tbaa !9
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, ptr %20, i64 %23
  store i32 %0, ptr %24, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CreateI4(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = lshr i32 %1, 24
  %4 = trunc i32 %3 to i8
  store i8 %4, ptr %0, align 1, !tbaa !11
  %5 = lshr i32 %1, 16
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !11
  %8 = lshr i32 %1, 8
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %9, ptr %10, align 1, !tbaa !11
  %11 = trunc i32 %1 to i8
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CheckVbrTag(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !11
  %4 = getelementptr inbounds i8, ptr %0, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !11
  %6 = and i8 %3, 8
  %7 = icmp eq i8 %6, 0
  %8 = icmp ugt i8 %5, -65
  %9 = select i1 %8, i64 21, i64 36
  %10 = select i1 %8, i64 13, i64 21
  %11 = select i1 %7, i64 %10, i64 %9
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !11
  %14 = icmp eq i8 %13, 88
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = getelementptr inbounds i8, ptr %12, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !11
  %18 = icmp eq i8 %17, 105
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %12, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = icmp eq i8 %21, 110
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %12, i64 3
  %25 = load i8, ptr %24, align 1, !tbaa !11
  %26 = icmp eq i8 %25, 103
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %23, %19, %15, %1
  %29 = phi i32 [ 0, %1 ], [ 0, %15 ], [ 0, %19 ], [ %27, %23 ]
  ret i32 %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @GetVbrTag(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.VBRTAGDATA, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !12
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !11
  %6 = lshr i8 %5, 3
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 2
  %10 = load i8, ptr %9, align 1, !tbaa !11
  %11 = lshr i8 %10, 2
  %12 = and i8 %11, 3
  %13 = getelementptr inbounds i8, ptr %1, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !11
  %15 = icmp eq i8 %7, 0
  %16 = icmp ugt i8 %14, -65
  %17 = select i1 %16, i64 21, i64 36
  %18 = select i1 %16, i64 13, i64 21
  %19 = select i1 %15, i64 %18, i64 %17
  %20 = getelementptr inbounds i8, ptr %1, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = icmp eq i8 %21, 88
  br i1 %22, label %23, label %144

23:                                               ; preds = %2
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !11
  %26 = icmp eq i8 %25, 105
  br i1 %26, label %27, label %144

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %20, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !11
  %30 = icmp eq i8 %29, 110
  br i1 %30, label %31, label %144

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %20, i64 3
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = icmp eq i8 %33, 103
  br i1 %34, label %35, label %144

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %20, i64 4
  store i32 %8, ptr %0, align 4, !tbaa !14
  %37 = zext nneg i8 %12 to i64
  %38 = getelementptr inbounds [4 x i32], ptr @GetVbrTag.sr_table, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !9
  %40 = getelementptr inbounds %struct.VBRTAGDATA, ptr %0, i64 0, i32 1
  %41 = xor i8 %7, 1
  %42 = zext nneg i8 %41 to i32
  %43 = ashr i32 %39, %42
  store i32 %43, ptr %40, align 4, !tbaa !15
  %44 = load i8, ptr %36, align 1, !tbaa !11
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds i8, ptr %20, i64 5
  %47 = load i8, ptr %46, align 1, !tbaa !11
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %45, 16
  %50 = shl nuw nsw i32 %48, 8
  %51 = or disjoint i32 %50, %49
  %52 = getelementptr inbounds i8, ptr %20, i64 6
  %53 = load i8, ptr %52, align 1, !tbaa !11
  %54 = zext i8 %53 to i32
  %55 = or disjoint i32 %51, %54
  %56 = shl nuw i32 %55, 8
  %57 = getelementptr inbounds i8, ptr %20, i64 7
  %58 = load i8, ptr %57, align 1, !tbaa !11
  %59 = zext i8 %58 to i32
  %60 = or disjoint i32 %56, %59
  store i32 %60, ptr %3, align 4, !tbaa !12
  %61 = getelementptr inbounds i8, ptr %20, i64 8
  %62 = and i32 %59, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %35
  %65 = load i8, ptr %61, align 1, !tbaa !11
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds i8, ptr %20, i64 9
  %68 = load i8, ptr %67, align 1, !tbaa !11
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %66, 16
  %71 = shl nuw nsw i32 %69, 8
  %72 = or disjoint i32 %71, %70
  %73 = getelementptr inbounds i8, ptr %20, i64 10
  %74 = load i8, ptr %73, align 1, !tbaa !11
  %75 = zext i8 %74 to i32
  %76 = or disjoint i32 %72, %75
  %77 = shl nuw i32 %76, 8
  %78 = getelementptr inbounds i8, ptr %20, i64 11
  %79 = load i8, ptr %78, align 1, !tbaa !11
  %80 = zext i8 %79 to i32
  %81 = or disjoint i32 %77, %80
  %82 = getelementptr inbounds %struct.VBRTAGDATA, ptr %0, i64 0, i32 3
  store i32 %81, ptr %82, align 4, !tbaa !16
  %83 = getelementptr inbounds i8, ptr %20, i64 12
  br label %84

84:                                               ; preds = %64, %35
  %85 = phi ptr [ %83, %64 ], [ %61, %35 ]
  %86 = and i32 %59, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %84
  %89 = load i8, ptr %85, align 1, !tbaa !11
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds i8, ptr %85, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !11
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %90, 16
  %95 = shl nuw nsw i32 %93, 8
  %96 = or disjoint i32 %95, %94
  %97 = getelementptr inbounds i8, ptr %85, i64 2
  %98 = load i8, ptr %97, align 1, !tbaa !11
  %99 = zext i8 %98 to i32
  %100 = or disjoint i32 %96, %99
  %101 = shl nuw i32 %100, 8
  %102 = getelementptr inbounds i8, ptr %85, i64 3
  %103 = load i8, ptr %102, align 1, !tbaa !11
  %104 = zext i8 %103 to i32
  %105 = or disjoint i32 %101, %104
  %106 = getelementptr inbounds %struct.VBRTAGDATA, ptr %0, i64 0, i32 4
  store i32 %105, ptr %106, align 4, !tbaa !17
  %107 = getelementptr inbounds i8, ptr %85, i64 4
  br label %108

108:                                              ; preds = %88, %84
  %109 = phi ptr [ %107, %88 ], [ %85, %84 ]
  %110 = and i32 %59, 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %108, %112
  %113 = phi i64 [ %117, %112 ], [ 0, %108 ]
  %114 = getelementptr inbounds i8, ptr %109, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !11
  %116 = getelementptr inbounds %struct.VBRTAGDATA, ptr %0, i64 0, i32 6, i64 %113
  store i8 %115, ptr %116, align 1, !tbaa !11
  %117 = add nuw nsw i64 %113, 1
  %118 = icmp eq i64 %117, 100
  br i1 %118, label %119, label %112, !llvm.loop !18

119:                                              ; preds = %112
  %120 = getelementptr inbounds i8, ptr %109, i64 100
  br label %121

121:                                              ; preds = %119, %108
  %122 = phi ptr [ %120, %119 ], [ %109, %108 ]
  %123 = getelementptr inbounds %struct.VBRTAGDATA, ptr %0, i64 0, i32 5
  store i32 -1, ptr %123, align 4, !tbaa !20
  %124 = and i32 %59, 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %144, label %126

126:                                              ; preds = %121
  %127 = load i8, ptr %122, align 1, !tbaa !11
  %128 = zext i8 %127 to i32
  %129 = getelementptr inbounds i8, ptr %122, i64 1
  %130 = load i8, ptr %129, align 1, !tbaa !11
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 %128, 16
  %133 = shl nuw nsw i32 %131, 8
  %134 = or disjoint i32 %133, %132
  %135 = getelementptr inbounds i8, ptr %122, i64 2
  %136 = load i8, ptr %135, align 1, !tbaa !11
  %137 = zext i8 %136 to i32
  %138 = or disjoint i32 %134, %137
  %139 = shl nuw i32 %138, 8
  %140 = getelementptr inbounds i8, ptr %122, i64 3
  %141 = load i8, ptr %140, align 1, !tbaa !11
  %142 = zext i8 %141 to i32
  %143 = or disjoint i32 %139, %142
  store i32 %143, ptr %123, align 4, !tbaa !20
  br label %144

144:                                              ; preds = %121, %126, %31, %27, %23, %2
  %145 = phi i32 [ 0, %2 ], [ 0, %23 ], [ 0, %27 ], [ 0, %31 ], [ 1, %126 ], [ 1, %121 ]
  ret i32 %145
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @InitVbrTag(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
  store ptr null, ptr @pVbrFrames, align 8, !tbaa !5
  store i32 0, ptr @nVbrNumFrames, align 4, !tbaa !9
  store i32 0, ptr @nVbrFrameBufferSize, align 4, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @pbtStreamBuffer, i8 0, i64 216, i1 false)
  %5 = icmp eq i32 %2, 3
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [2 x [2 x i32]], ptr @SizeOfEmptyFrame, i64 0, i64 %6
  %8 = getelementptr inbounds [2 x [2 x i32]], ptr @SizeOfEmptyFrame, i64 0, i64 %6, i64 1
  %9 = select i1 %5, ptr %8, ptr %7
  %10 = load i32, ptr %9, align 4, !tbaa !9
  %11 = add nsw i32 %10, 4
  store i32 %11, ptr @nZeroStreamSize, align 4, !tbaa !9
  %12 = icmp sgt i32 %3, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %15 = tail call i64 @fwrite(ptr nonnull @.str, i64 33, i64 1, ptr %14) #20
  tail call void @exit(i32 noundef -1) #21
  unreachable

16:                                               ; preds = %4
  %17 = sext i32 %3 to i64
  %18 = getelementptr inbounds [3 x i32], ptr @InitVbrTag.framesize, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !9
  store i32 %19, ptr @TotalFrameSize, align 4, !tbaa !9
  %20 = add nsw i32 %10, 144
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr @TotalFrameSize, align 4, !tbaa !9
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %28, label %33

25:                                               ; preds = %16
  %26 = load ptr, ptr @stderr, align 8, !tbaa !5
  %27 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 33, i64 1, ptr %26) #20
  tail call void @exit(i32 noundef -1) #21
  unreachable

28:                                               ; preds = %22, %28
  %29 = phi i32 [ %30, %28 ], [ 0, %22 ]
  tail call void @putbits(ptr noundef %0, i32 noundef 0, i32 noundef 8) #22
  %30 = add nuw nsw i32 %29, 1
  %31 = load i32, ptr @TotalFrameSize, align 4, !tbaa !9
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %28, label %33, !llvm.loop !21

33:                                               ; preds = %28, %22
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

declare void @putbits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PutVbrTag(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = alloca [100 x i8], align 16
  %5 = alloca [80 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #22
  %6 = load i32, ptr @nVbrNumFrames, align 4, !tbaa !9
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr @pVbrFrames, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %129, label %11

11:                                               ; preds = %3
  %12 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.2)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %129, label %14

14:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @pbtStreamBuffer, i8 0, i64 216, i1 false)
  %15 = tail call i32 @fseek(ptr noundef nonnull %12, i64 noundef 0, i32 noundef 2)
  %16 = tail call i64 @ftell(ptr noundef nonnull %12)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %129, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr @TotalFrameSize, align 4, !tbaa !9
  %20 = sext i32 %19 to i64
  %21 = tail call i32 @fseek(ptr noundef nonnull %12, i64 noundef %20, i32 noundef 0)
  %22 = tail call i64 @fread(ptr noundef nonnull @pbtStreamBuffer, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %12)
  store i8 -1, ptr @pbtStreamBuffer, align 16, !tbaa !11
  %23 = icmp eq i32 %2, 0
  %24 = select i1 %23, i8 -5, i8 -13
  %25 = select i1 %23, i8 80, i8 -128
  store i8 %24, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 1), align 1, !tbaa !11
  %26 = load i8, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 2), align 2, !tbaa !11
  %27 = and i8 %26, 12
  %28 = or disjoint i8 %27, %25
  store i8 %28, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 2), align 2, !tbaa !11
  %29 = tail call i32 @fseek(ptr noundef nonnull %12, i64 noundef 0, i32 noundef 0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %4, i8 0, i64 100, i1 false)
  %30 = load i32, ptr @nVbrNumFrames, align 4, !tbaa !9
  %31 = sitofp i32 %30 to double
  %32 = load ptr, ptr @pVbrFrames, align 8, !tbaa !5
  %33 = sitofp i64 %16 to float
  br label %34

34:                                               ; preds = %18, %34
  %35 = phi i64 [ 1, %18 ], [ %52, %34 ]
  %36 = trunc i64 %35 to i32
  %37 = sitofp i32 %36 to double
  %38 = fmul double %37, 1.000000e-02
  %39 = fmul double %38, %31
  %40 = tail call double @llvm.floor.f64(double %39)
  %41 = fptosi double %40 to i32
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %32, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !9
  %45 = sitofp i32 %44 to float
  %46 = fmul float %45, 2.560000e+02
  %47 = fdiv float %46, %33
  %48 = fcmp ogt float %47, 2.550000e+02
  %49 = select i1 %48, float 2.550000e+02, float %47
  %50 = fptoui float %49 to i8
  %51 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 %35
  store i8 %50, ptr %51, align 1, !tbaa !11
  %52 = add nuw nsw i64 %35, 1
  %53 = icmp eq i64 %52, 100
  br i1 %53, label %54, label %34, !llvm.loop !22

54:                                               ; preds = %34
  %55 = load i32, ptr @nZeroStreamSize, align 4, !tbaa !9
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %57
  store i8 88, ptr %58, align 1, !tbaa !11
  %59 = add nsw i32 %55, 2
  %60 = sext i32 %56 to i64
  %61 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %60
  store i8 105, ptr %61, align 1, !tbaa !11
  %62 = add nsw i32 %55, 3
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %63
  store i8 110, ptr %64, align 1, !tbaa !11
  %65 = add nsw i32 %55, 4
  %66 = sext i32 %62 to i64
  %67 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %66
  store i8 103, ptr %67, align 1, !tbaa !11
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %68
  store i8 0, ptr %69, align 1, !tbaa !11
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  store i8 0, ptr %70, align 1, !tbaa !11
  %71 = getelementptr inbounds i8, ptr %69, i64 2
  store i8 0, ptr %71, align 1, !tbaa !11
  %72 = getelementptr inbounds i8, ptr %69, i64 3
  store i8 15, ptr %72, align 1, !tbaa !11
  %73 = add nsw i32 %55, 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %74
  %76 = load i32, ptr @nVbrNumFrames, align 4, !tbaa !9
  %77 = lshr i32 %76, 24
  %78 = trunc i32 %77 to i8
  store i8 %78, ptr %75, align 1, !tbaa !11
  %79 = lshr i32 %76, 16
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds i8, ptr %75, i64 1
  store i8 %80, ptr %81, align 1, !tbaa !11
  %82 = lshr i32 %76, 8
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds i8, ptr %75, i64 2
  store i8 %83, ptr %84, align 1, !tbaa !11
  %85 = trunc i32 %76 to i8
  %86 = getelementptr inbounds i8, ptr %75, i64 3
  store i8 %85, ptr %86, align 1, !tbaa !11
  %87 = add nsw i32 %55, 12
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %88
  %90 = lshr i64 %16, 24
  %91 = trunc i64 %90 to i8
  store i8 %91, ptr %89, align 1, !tbaa !11
  %92 = lshr i64 %16, 16
  %93 = trunc i64 %92 to i8
  %94 = getelementptr inbounds i8, ptr %89, i64 1
  store i8 %93, ptr %94, align 1, !tbaa !11
  %95 = lshr i64 %16, 8
  %96 = trunc i64 %95 to i8
  %97 = getelementptr inbounds i8, ptr %89, i64 2
  store i8 %96, ptr %97, align 1, !tbaa !11
  %98 = trunc i64 %16 to i8
  %99 = getelementptr inbounds i8, ptr %89, i64 3
  store i8 %98, ptr %99, align 1, !tbaa !11
  %100 = add nsw i32 %55, 16
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %102, ptr noundef nonnull align 16 dereferenceable(100) %4, i64 100, i1 false)
  %103 = add i32 %55, 116
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %104
  %106 = lshr i32 %1, 24
  %107 = trunc i32 %106 to i8
  store i8 %107, ptr %105, align 1, !tbaa !11
  %108 = lshr i32 %1, 16
  %109 = trunc i32 %108 to i8
  %110 = getelementptr inbounds i8, ptr %105, i64 1
  store i8 %109, ptr %110, align 1, !tbaa !11
  %111 = lshr i32 %1, 8
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds i8, ptr %105, i64 2
  store i8 %112, ptr %113, align 1, !tbaa !11
  %114 = trunc i32 %1 to i8
  %115 = getelementptr inbounds i8, ptr %105, i64 3
  store i8 %114, ptr %115, align 1, !tbaa !11
  %116 = add i32 %55, 120
  %117 = tail call ptr @get_lame_version() #22
  %118 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %117) #22
  %119 = sext i32 %116 to i64
  %120 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %119
  %121 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %120, ptr noundef nonnull dereferenceable(1) %5, i64 noundef 20) #22
  %122 = load i32, ptr @TotalFrameSize, align 4, !tbaa !9
  %123 = sext i32 %122 to i64
  %124 = tail call i64 @fwrite(ptr noundef nonnull @pbtStreamBuffer, i64 noundef %123, i64 noundef 1, ptr noundef nonnull %12)
  %125 = icmp eq i64 %124, 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %54
  %127 = tail call i32 @fclose(ptr noundef nonnull %12)
  %128 = load ptr, ptr @pVbrFrames, align 8, !tbaa !5
  tail call void @free(ptr noundef %128) #22
  store ptr null, ptr @pVbrFrames, align 8, !tbaa !5
  br label %129

129:                                              ; preds = %54, %14, %11, %3, %126
  %130 = phi i32 [ 0, %126 ], [ -1, %3 ], [ -1, %11 ], [ -1, %14 ], [ -1, %54 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #22
  ret i32 %130
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

declare ptr @get_lame_version() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @SeekPoint(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) local_unnamed_addr #16 {
  %4 = fcmp olt float %2, 0.000000e+00
  %5 = select i1 %4, float 0.000000e+00, float %2
  %6 = fcmp ogt float %5, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %5
  %8 = fptosi float %7 to i32
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 99)
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !11
  %13 = icmp slt i32 %8, 99
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr i8, ptr %11, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = uitofp i8 %16 to float
  br label %18

18:                                               ; preds = %3, %14
  %19 = phi float [ %17, %14 ], [ 2.560000e+02, %3 ]
  %20 = uitofp i8 %12 to float
  %21 = fsub float %19, %20
  %22 = sitofp i32 %9 to float
  %23 = fsub float %7, %22
  %24 = tail call float @llvm.fmuladd.f32(float %21, float %23, float %20)
  %25 = fmul float %24, 3.906250e-03
  %26 = sitofp i32 %1 to float
  %27 = fmul float %25, %26
  %28 = fptosi float %27 to i32
  ret i32 %28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

attributes #0 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !10, i64 8}
!13 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !7, i64 24}
!14 = !{!13, !10, i64 0}
!15 = !{!13, !10, i64 4}
!16 = !{!13, !10, i64 12}
!17 = !{!13, !10, i64 16}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!13, !10, i64 20}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
