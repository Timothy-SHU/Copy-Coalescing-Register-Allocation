; ModuleID = 'common.c'
source_filename = "common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.parameter = type { i32, i32, i32, i32 }
%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@param = dso_local local_unnamed_addr global %struct.parameter { i32 1, i32 1, i32 0, i32 0 }, align 4
@tabsel_123 = dso_local local_unnamed_addr global [2 x [3 x [16 x i32]]] [[3 x [16 x i32]] [[16 x i32] [i32 0, i32 32, i32 64, i32 96, i32 128, i32 160, i32 192, i32 224, i32 256, i32 288, i32 320, i32 352, i32 384, i32 416, i32 448, i32 0], [16 x i32] [i32 0, i32 32, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320, i32 384, i32 0], [16 x i32] [i32 0, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320, i32 0]], [3 x [16 x i32]] [[16 x i32] [i32 0, i32 32, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160, i32 176, i32 192, i32 224, i32 256, i32 0], [16 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160, i32 0], [16 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160, i32 0]]], align 16
@freqs = dso_local local_unnamed_addr global [9 x i64] [i64 44100, i64 48000, i64 32000, i64 22050, i64 24000, i64 16000, i64 11025, i64 12000, i64 8000], align 16
@pcm_point = dso_local local_unnamed_addr global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"Stream error\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Free format not supported.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"layer=1 Not supported!\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"layer=2 Not supported!\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Sorry, unknown layer type.\0A\00", align 1
@reltable.print_header = internal unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable.print_header to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable.print_header to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable.print_header to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.8 to i64), i64 ptrtoint (ptr @reltable.print_header to i64)) to i32)], align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Stereo\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Joint-Stereo\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Dual-Channel\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Single-Channel\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"II\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"III\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"MPEG %s, Layer: %s, Freq: %ld, mode: %s, modext: %d, BPF : %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"2.5\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"Channels: %d, copyright: %s, original: %s, CRC: %s, emphasis: %d.\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Bitrate: %d Kbits/s, Extension value: %d\0A\00", align 1
@reltable.print_header_compact = internal unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.print_header_compact to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.print_header_compact to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.23 to i64), i64 ptrtoint (ptr @reltable.print_header_compact to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.24 to i64), i64 ptrtoint (ptr @reltable.print_header_compact to i64)) to i32)], align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"joint-stereo\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"dual-channel\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@print_header_compact.layers = internal unnamed_addr constant [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], align 16
@.str.25 = private unnamed_addr constant [40 x i8] c"MPEG %s layer %s, %d kbit/s, %ld Hz %s\0A\00", align 1
@wordpointer = dso_local local_unnamed_addr global ptr null, align 8
@bitindex = dso_local local_unnamed_addr global i32 0, align 4
@pcm_sample = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @decode_header(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = and i64 %1, 1048576
  %4 = icmp eq i64 %3, 0
  %5 = and i64 %1, 1572864
  %6 = icmp ne i64 %5, 1572864
  %7 = zext i1 %6 to i32
  %8 = zext i1 %4 to i32
  %9 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 3
  store i32 %7, ptr %9, align 4, !tbaa !5
  %10 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 4
  store i32 %8, ptr %10, align 4, !tbaa !10
  %11 = trunc i64 %1 to i32
  %12 = lshr i32 %11, 17
  %13 = and i32 %12, 3
  %14 = sub nuw nsw i32 4, %13
  %15 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 6
  store i32 %14, ptr %15, align 4, !tbaa !11
  %16 = lshr i64 %1, 10
  %17 = and i64 %16, 3
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load ptr, ptr @stderr, align 8, !tbaa !12
  %21 = tail call i64 @fwrite(ptr nonnull @.str, i64 13, i64 1, ptr %20) #7
  tail call void @exit(i32 noundef 1) #8
  unreachable

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = trunc i64 %17 to i32
  br label %33

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = mul nsw i32 %30, 3
  %32 = trunc i64 %17 to i32
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %32, %28 ], [ 6, %26 ]
  %35 = phi i32 [ %31, %28 ], [ %27, %26 ]
  %36 = add i32 %35, %34
  %37 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 9
  store i32 %36, ptr %37, align 4, !tbaa !14
  %38 = lshr i32 %11, 16
  %39 = and i32 %38, 1
  %40 = xor i32 %39, 1
  %41 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 7
  store i32 %40, ptr %41, align 4, !tbaa !15
  br i1 %25, label %46, label %42

42:                                               ; preds = %33
  %43 = lshr i32 %11, 12
  %44 = and i32 %43, 15
  %45 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 8
  store i32 %44, ptr %45, align 4, !tbaa !16
  br label %46

46:                                               ; preds = %42, %33
  %47 = lshr i32 %11, 12
  %48 = and i32 %47, 15
  %49 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 8
  store i32 %48, ptr %49, align 4, !tbaa !16
  %50 = lshr i32 %11, 9
  %51 = and i32 %50, 1
  %52 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 10
  store i32 %51, ptr %52, align 4, !tbaa !17
  %53 = lshr i32 %11, 8
  %54 = and i32 %53, 1
  %55 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 11
  store i32 %54, ptr %55, align 4, !tbaa !18
  %56 = lshr i32 %11, 6
  %57 = and i32 %56, 3
  %58 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 12
  store i32 %57, ptr %58, align 4, !tbaa !19
  %59 = lshr i32 %11, 4
  %60 = and i32 %59, 3
  %61 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 13
  store i32 %60, ptr %61, align 4, !tbaa !20
  %62 = lshr i32 %11, 3
  %63 = and i32 %62, 1
  %64 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 14
  store i32 %63, ptr %64, align 4, !tbaa !21
  %65 = lshr i32 %11, 2
  %66 = and i32 %65, 1
  %67 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 15
  store i32 %66, ptr %67, align 4, !tbaa !22
  %68 = and i32 %11, 3
  %69 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 16
  store i32 %68, ptr %69, align 4, !tbaa !23
  %70 = icmp eq i32 %57, 3
  %71 = select i1 %70, i32 1, i32 2
  store i32 %71, ptr %0, align 4, !tbaa !24
  %72 = icmp eq i32 %48, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %46
  %74 = load ptr, ptr @stderr, align 8, !tbaa !12
  %75 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %74) #7
  br label %107

76:                                               ; preds = %46
  switch i32 %13, label %104 [
    i32 3, label %77
    i32 2, label %80
    i32 1, label %83
  ]

77:                                               ; preds = %76
  %78 = load ptr, ptr @stderr, align 8, !tbaa !12
  %79 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 23, i64 1, ptr %78) #7
  br label %107

80:                                               ; preds = %76
  %81 = load ptr, ptr @stderr, align 8, !tbaa !12
  %82 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 23, i64 1, ptr %81) #7
  br label %107

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !5
  %86 = sext i32 %85 to i64
  %87 = zext nneg i32 %48 to i64
  %88 = getelementptr inbounds [2 x [3 x [16 x i32]]], ptr @tabsel_123, i64 0, i64 %86, i64 2, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !25
  %90 = mul i32 %89, 144000
  %91 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 17
  store i32 %90, ptr %91, align 4, !tbaa !26
  %92 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 9
  %93 = load i32, ptr %92, align 4, !tbaa !14
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [9 x i64], ptr @freqs, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !27
  %97 = zext nneg i32 %85 to i64
  %98 = shl i64 %96, %97
  %99 = sext i32 %90 to i64
  %100 = sdiv i64 %99, %98
  %101 = trunc i64 %100 to i32
  %102 = or disjoint i32 %51, -4
  %103 = add i32 %102, %101
  store i32 %103, ptr %91, align 4, !tbaa !26
  br label %107

104:                                              ; preds = %76
  %105 = load ptr, ptr @stderr, align 8, !tbaa !12
  %106 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %105) #7
  br label %107

107:                                              ; preds = %77, %80, %83, %104, %73
  %108 = phi i32 [ 0, %104 ], [ 0, %73 ], [ 1, %83 ], [ 1, %80 ], [ 1, %77 ]
  ret i32 %108
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_header(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.16, ptr @.str.15
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi ptr [ %10, %6 ], [ @.str.14, %1 ]
  %13 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !11
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x ptr], ptr @print_header_compact.layers, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !14
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [9 x i64], ptr @freqs, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !27
  %23 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 12
  %24 = load i32, ptr %23, align 4, !tbaa !19
  %25 = sext i32 %24 to i64
  %26 = shl i64 %25, 2
  %27 = call ptr @llvm.load.relative.i64(ptr @reltable.print_header, i64 %26)
  %28 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 13
  %29 = load i32, ptr %28, align 4, !tbaa !20
  %30 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 17
  %31 = load i32, ptr %30, align 4, !tbaa !26
  %32 = add nsw i32 %31, 4
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef nonnull %12, ptr noundef %17, i64 noundef %22, ptr noundef %27, i32 noundef %29, i32 noundef %32) #7
  %34 = load ptr, ptr @stderr, align 8, !tbaa !12
  %35 = load i32, ptr %0, align 4, !tbaa !24
  %36 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 14
  %37 = load i32, ptr %36, align 4, !tbaa !21
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, ptr @.str.19, ptr @.str.18
  %40 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 15
  %41 = load i32, ptr %40, align 4, !tbaa !22
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @.str.19, ptr @.str.18
  %44 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 7
  %45 = load i32, ptr %44, align 4, !tbaa !15
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr @.str.19, ptr @.str.18
  %48 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 16
  %49 = load i32, ptr %48, align 4, !tbaa !23
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.17, i32 noundef %35, ptr noundef nonnull %39, ptr noundef nonnull %43, ptr noundef nonnull %47, i32 noundef %49) #7
  %51 = load ptr, ptr @stderr, align 8, !tbaa !12
  %52 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !5
  %54 = sext i32 %53 to i64
  %55 = load i32, ptr %13, align 4, !tbaa !11
  %56 = add nsw i32 %55, -1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 8
  %59 = load i32, ptr %58, align 4, !tbaa !16
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x [3 x [16 x i32]]], ptr @tabsel_123, i64 0, i64 %54, i64 %57, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !25
  %63 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 11
  %64 = load i32, ptr %63, align 4, !tbaa !18
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.20, i32 noundef %62, i32 noundef %64) #7
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_header_compact(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.16, ptr @.str.15
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi ptr [ %10, %6 ], [ @.str.14, %1 ]
  %13 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !11
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x ptr], ptr @print_header_compact.layers, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = sext i32 %19 to i64
  %21 = add nsw i32 %14, -1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 8
  %24 = load i32, ptr %23, align 4, !tbaa !16
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [2 x [3 x [16 x i32]]], ptr @tabsel_123, i64 0, i64 %20, i64 %22, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !25
  %28 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 4, !tbaa !14
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [9 x i64], ptr @freqs, i64 0, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !27
  %33 = getelementptr inbounds %struct.frame, ptr %0, i64 0, i32 12
  %34 = load i32, ptr %33, align 4, !tbaa !19
  %35 = sext i32 %34 to i64
  %36 = shl i64 %35, 2
  %37 = call ptr @llvm.load.relative.i64(ptr @reltable.print_header_compact, i64 %36)
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, ptr noundef nonnull %12, ptr noundef %17, i32 noundef %27, i64 noundef %32, ptr noundef %37) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @getbits(i32 noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @wordpointer, align 8, !tbaa !12
  %5 = load i8, ptr %4, align 1, !tbaa !29
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !29
  %9 = zext i8 %8 to i64
  %10 = shl nuw nsw i64 %6, 16
  %11 = shl nuw nsw i64 %9, 8
  %12 = or disjoint i64 %11, %10
  %13 = getelementptr inbounds i8, ptr %4, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !29
  %15 = zext i8 %14 to i64
  %16 = or disjoint i64 %12, %15
  %17 = load i32, ptr @bitindex, align 4, !tbaa !25
  %18 = zext nneg i32 %17 to i64
  %19 = shl i64 %16, %18
  %20 = and i64 %19, 16777215
  %21 = add nsw i32 %17, %0
  store i32 %21, ptr @bitindex, align 4, !tbaa !25
  %22 = sub nsw i32 24, %0
  %23 = zext nneg i32 %22 to i64
  %24 = lshr i64 %20, %23
  %25 = ashr i32 %21, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %4, i64 %26
  store ptr %27, ptr @wordpointer, align 8, !tbaa !12
  %28 = and i32 %21, 7
  store i32 %28, ptr @bitindex, align 4, !tbaa !25
  %29 = trunc i64 %24 to i32
  br label %30

30:                                               ; preds = %1, %3
  %31 = phi i32 [ %29, %3 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @getbits_fast(i32 noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @wordpointer, align 8, !tbaa !12
  %3 = load i8, ptr %2, align 1, !tbaa !29
  %4 = zext i8 %3 to i64
  %5 = shl nuw nsw i64 %4, 8
  %6 = getelementptr inbounds i8, ptr %2, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !29
  %8 = zext i8 %7 to i64
  %9 = or disjoint i64 %5, %8
  %10 = load i32, ptr @bitindex, align 4, !tbaa !25
  %11 = zext nneg i32 %10 to i64
  %12 = shl i64 %9, %11
  %13 = and i64 %12, 65535
  %14 = add nsw i32 %10, %0
  store i32 %14, ptr @bitindex, align 4, !tbaa !25
  %15 = sub nsw i32 16, %0
  %16 = zext nneg i32 %15 to i64
  %17 = lshr i64 %13, %16
  %18 = ashr i32 %14, 3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %2, i64 %19
  store ptr %20, ptr @wordpointer, align 8, !tbaa !12
  %21 = and i32 %14, 7
  store i32 %21, ptr @bitindex, align 4, !tbaa !25
  %22 = trunc i64 %17 to i32
  ret i32 %22
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { cold }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 12}
!6 = !{!"frame", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 16}
!11 = !{!6, !7, i64 24}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!6, !7, i64 36}
!15 = !{!6, !7, i64 28}
!16 = !{!6, !7, i64 32}
!17 = !{!6, !7, i64 40}
!18 = !{!6, !7, i64 44}
!19 = !{!6, !7, i64 48}
!20 = !{!6, !7, i64 52}
!21 = !{!6, !7, i64 56}
!22 = !{!6, !7, i64 60}
!23 = !{!6, !7, i64 64}
!24 = !{!6, !7, i64 0}
!25 = !{!7, !7, i64 0}
!26 = !{!6, !7, i64 68}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !8, i64 0}
!29 = !{!8, !8, i64 0}
