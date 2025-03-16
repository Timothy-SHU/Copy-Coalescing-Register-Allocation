; ModuleID = 'src/susan.c'
source_filename = "src/susan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32, i32, i32, i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"Image %s not binary PGM.\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Can't input image %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Image %s does not have binary PGM header.\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Image %s is wrong size.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Can't output image%s.\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Can't write image %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"Distance_thresh (%f) too big for integer arithmetic.\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Too many corners.\0A\00", align 1
@str = private unnamed_addr constant [43 x i8] c"Usage: susan <in.pgm> <out.pgm> [options]\0A\00", align 1
@str.32 = private unnamed_addr constant [30 x i8] c"-s : Smoothing mode (default)\00", align 1
@str.33 = private unnamed_addr constant [16 x i8] c"-e : Edges mode\00", align 1
@str.34 = private unnamed_addr constant [19 x i8] c"-c : Corners mode\0A\00", align 1
@str.35 = private unnamed_addr constant [66 x i8] c"See source code for more information about setting the thresholds\00", align 1
@str.36 = private unnamed_addr constant [59 x i8] c"-t <thresh> : Brightness threshold, all modes (default=20)\00", align 1
@str.37 = private unnamed_addr constant [106 x i8] c"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\00", align 1
@str.38 = private unnamed_addr constant [48 x i8] c"-3 : Use flat 3x3 mask, edges or smoothing mode\00", align 1
@str.39 = private unnamed_addr constant [78 x i8] c"-n : No post-processing on the binary edge map (runs much faster); edges mode\00", align 1
@str.40 = private unnamed_addr constant [110 x i8] c"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\00", align 1
@str.41 = private unnamed_addr constant [107 x i8] c"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\00", align 1
@str.42 = private unnamed_addr constant [90 x i8] c"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\00", align 1
@str.43 = private unnamed_addr constant [76 x i8] c"\0ASUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\00", align 1
@str.44 = private unnamed_addr constant [60 x i8] c"Either reduce it to <=15 or recompile with variable \22total\22\00", align 1
@str.45 = private unnamed_addr constant [39 x i8] c"as a float: see top \22defines\22 section.\00", align 1
@str.46 = private unnamed_addr constant [25 x i8] c"No argument following -t\00", align 1
@str.47 = private unnamed_addr constant [25 x i8] c"No argument following -d\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @usage() local_unnamed_addr #0 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33)
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34)
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.36)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.37)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.38)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.39)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.40)
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.41)
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.42)
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.43)
  tail call void @exit(i32 noundef 0) #20
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @getint(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %2) #21
  br label %3

3:                                                ; preds = %10, %1
  %4 = call i32 @getc(ptr noundef %0)
  switch i32 %4, label %10 [
    i32 35, label %5
    i32 -1, label %7
  ]

5:                                                ; preds = %3
  %6 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 9000, ptr noundef %0)
  br label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #22
  call void @exit(i32 noundef 0) #20
  unreachable

10:                                               ; preds = %5, %3
  %11 = add i32 %4, -48
  %12 = icmp ult i32 %11, 10
  br i1 %12, label %13, label %3, !llvm.loop !9

13:                                               ; preds = %10, %13
  %14 = phi i32 [ %19, %13 ], [ %4, %10 ]
  %15 = phi i32 [ %18, %13 ], [ 0, %10 ]
  %16 = mul nsw i32 %15, 10
  %17 = add nsw i32 %14, -48
  %18 = add nsw i32 %17, %16
  %19 = call i32 @getc(ptr noundef %0)
  %20 = add i32 %19, -58
  %21 = icmp ult i32 %20, -10
  br i1 %21, label %22, label %13, !llvm.loop !11

22:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %2) #21
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @get_image(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #3 {
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.15)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.16, ptr noundef %0) #22
  tail call void @exit(i32 noundef 0) #20
  unreachable

10:                                               ; preds = %4
  %11 = tail call i32 @fgetc(ptr noundef nonnull %5)
  %12 = tail call i32 @fgetc(ptr noundef nonnull %5)
  %13 = and i32 %11, 255
  %14 = icmp eq i32 %13, 80
  %15 = and i32 %12, 255
  %16 = icmp eq i32 %15, 53
  %17 = and i1 %14, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr @stderr, align 8, !tbaa !5
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.17, ptr noundef %0) #22
  tail call void @exit(i32 noundef 0) #20
  unreachable

21:                                               ; preds = %10
  %22 = tail call i32 @getint(ptr noundef nonnull %5)
  store i32 %22, ptr %2, align 4, !tbaa !12
  %23 = tail call i32 @getint(ptr noundef nonnull %5)
  store i32 %23, ptr %3, align 4, !tbaa !12
  %24 = tail call i32 @getint(ptr noundef nonnull %5)
  %25 = load i32, ptr %2, align 4, !tbaa !12
  %26 = load i32, ptr %3, align 4, !tbaa !12
  %27 = mul nsw i32 %26, %25
  %28 = sext i32 %27 to i64
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #23
  store ptr %29, ptr %1, align 8, !tbaa !5
  %30 = tail call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef %28, ptr noundef nonnull %5)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load ptr, ptr @stderr, align 8, !tbaa !5
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.18, ptr noundef %0) #22
  tail call void @exit(i32 noundef 0) #20
  unreachable

35:                                               ; preds = %21
  %36 = tail call i32 @fclose(ptr noundef nonnull %5)
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @put_image(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.19)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef %0) #22
  tail call void @exit(i32 noundef 0) #20
  unreachable

10:                                               ; preds = %4
  %11 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr nonnull %5)
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, i32 noundef %2, i32 noundef %3)
  %13 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 4, i64 1, ptr nonnull %5)
  %14 = mul nsw i32 %3, %2
  %15 = sext i32 %14 to i64
  %16 = tail call i64 @fwrite(ptr noundef %1, i64 noundef %15, i64 noundef 1, ptr noundef nonnull %5)
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr @stderr, align 8, !tbaa !5
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.24, ptr noundef %0) #22
  tail call void @exit(i32 noundef 0) #20
  unreachable

21:                                               ; preds = %10
  %22 = tail call i32 @fclose(ptr noundef nonnull %5)
  ret i32 undef
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @int_to_uchar(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = load i32, ptr %0, align 4, !tbaa !12
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %16, %8 ]
  %10 = phi i32 [ %4, %6 ], [ %15, %8 ]
  %11 = phi i32 [ %4, %6 ], [ %14, %8 ]
  %12 = getelementptr inbounds i32, ptr %0, i64 %9
  %13 = load i32, ptr %12, align 4, !tbaa !12
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 %11)
  %15 = tail call i32 @llvm.smin.i32(i32 %13, i32 %10)
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, %7
  br i1 %17, label %18, label %8, !llvm.loop !14

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %4, %3 ], [ %14, %8 ]
  %20 = phi i32 [ %4, %3 ], [ %15, %8 ]
  %21 = sub nsw i32 %19, %20
  %22 = icmp sgt i32 %2, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = zext nneg i32 %2 to i64
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %34, %25 ]
  %27 = getelementptr inbounds i32, ptr %0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !12
  %29 = sub nsw i32 %28, %20
  %30 = mul nsw i32 %29, 255
  %31 = sdiv i32 %30, %21
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds i8, ptr %1, i64 %26
  store i8 %32, ptr %33, align 1, !tbaa !15
  %34 = add nuw nsw i64 %26, 1
  %35 = icmp eq i64 %34, %24
  br i1 %35, label %36, label %25, !llvm.loop !16

36:                                               ; preds = %25, %18
  ret i32 undef
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @setup_brightness_lut(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #23
  %5 = getelementptr inbounds i8, ptr %4, i64 258
  store ptr %5, ptr %0, align 8, !tbaa !5
  %6 = sitofp i32 %1 to float
  %7 = icmp eq i32 %2, 6
  br label %8

8:                                                ; preds = %3, %8
  %9 = phi i64 [ -256, %3 ], [ %25, %8 ]
  %10 = trunc i64 %9 to i32
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %11, %6
  %13 = fmul float %12, %12
  %14 = fmul float %13, %13
  %15 = select i1 %7, float %14, float 1.000000e+00
  %16 = fneg float %13
  %17 = fmul float %15, %16
  %18 = fpext float %17 to double
  %19 = tail call double @exp(double noundef %18) #21
  %20 = fmul double %19, 1.000000e+02
  %21 = fptrunc double %20 to float
  %22 = fptoui float %21 to i8
  %23 = load ptr, ptr %0, align 8, !tbaa !5
  %24 = getelementptr inbounds i8, ptr %23, i64 %9
  store i8 %22, ptr %24, align 1, !tbaa !15
  %25 = add nsw i64 %9, 1
  %26 = icmp eq i64 %25, 257
  br i1 %26, label %27, label %8, !llvm.loop !17

27:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @susan_principle(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
  %7 = mul nsw i32 %5, %4
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %9, i1 false)
  %10 = icmp sgt i32 %5, 6
  br i1 %10, label %11, label %337

11:                                               ; preds = %6
  %12 = add nsw i32 %5, -3
  %13 = add i32 %4, -3
  %14 = icmp sgt i32 %4, 6
  %15 = sext i32 %13 to i64
  %16 = add nsw i32 %4, -5
  %17 = sext i32 %16 to i64
  %18 = add nsw i32 %4, -6
  %19 = sext i32 %18 to i64
  %20 = sext i32 %4 to i64
  %21 = zext i32 %12 to i64
  %22 = zext i32 %13 to i64
  br label %23

23:                                               ; preds = %11, %334
  %24 = phi i64 [ 3, %11 ], [ %335, %334 ]
  br i1 %14, label %25, label %334

25:                                               ; preds = %23
  %26 = add nsw i64 %24, -3
  %27 = mul nsw i64 %26, %20
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = trunc i64 %24 to i32
  %30 = mul i32 %29, %4
  %31 = zext i32 %30 to i64
  br label %32

32:                                               ; preds = %25, %331
  %33 = phi i64 [ 3, %25 ], [ %332, %331 ]
  %34 = getelementptr inbounds i8, ptr %28, i64 %33
  %35 = getelementptr inbounds i8, ptr %34, i64 -1
  %36 = add nuw nsw i64 %33, %31
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !15
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i8, ptr %2, i64 %39
  %41 = load i8, ptr %35, align 1, !tbaa !15
  %42 = zext i8 %41 to i64
  %43 = sub nsw i64 0, %42
  %44 = getelementptr inbounds i8, ptr %40, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = zext i8 %45 to i32
  %47 = add nuw nsw i32 %46, 100
  %48 = getelementptr inbounds i8, ptr %34, i64 1
  %49 = load i8, ptr %34, align 1, !tbaa !15
  %50 = zext i8 %49 to i64
  %51 = sub nsw i64 0, %50
  %52 = getelementptr inbounds i8, ptr %40, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !15
  %54 = zext i8 %53 to i32
  %55 = add nuw nsw i32 %47, %54
  %56 = load i8, ptr %48, align 1, !tbaa !15
  %57 = zext i8 %56 to i64
  %58 = sub nsw i64 0, %57
  %59 = getelementptr inbounds i8, ptr %40, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !15
  %61 = zext i8 %60 to i32
  %62 = add nuw nsw i32 %55, %61
  %63 = getelementptr inbounds i8, ptr %48, i64 %15
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  %65 = load i8, ptr %63, align 1, !tbaa !15
  %66 = zext i8 %65 to i64
  %67 = sub nsw i64 0, %66
  %68 = getelementptr inbounds i8, ptr %40, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !15
  %70 = zext i8 %69 to i32
  %71 = add nuw nsw i32 %62, %70
  %72 = getelementptr inbounds i8, ptr %63, i64 2
  %73 = load i8, ptr %64, align 1, !tbaa !15
  %74 = zext i8 %73 to i64
  %75 = sub nsw i64 0, %74
  %76 = getelementptr inbounds i8, ptr %40, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !15
  %78 = zext i8 %77 to i32
  %79 = add nuw nsw i32 %71, %78
  %80 = getelementptr inbounds i8, ptr %63, i64 3
  %81 = load i8, ptr %72, align 1, !tbaa !15
  %82 = zext i8 %81 to i64
  %83 = sub nsw i64 0, %82
  %84 = getelementptr inbounds i8, ptr %40, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !15
  %86 = zext i8 %85 to i32
  %87 = add nuw nsw i32 %79, %86
  %88 = getelementptr inbounds i8, ptr %63, i64 4
  %89 = load i8, ptr %80, align 1, !tbaa !15
  %90 = zext i8 %89 to i64
  %91 = sub nsw i64 0, %90
  %92 = getelementptr inbounds i8, ptr %40, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !15
  %94 = zext i8 %93 to i32
  %95 = add nuw nsw i32 %87, %94
  %96 = load i8, ptr %88, align 1, !tbaa !15
  %97 = zext i8 %96 to i64
  %98 = sub nsw i64 0, %97
  %99 = getelementptr inbounds i8, ptr %40, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !15
  %101 = zext i8 %100 to i32
  %102 = add nuw nsw i32 %95, %101
  %103 = getelementptr inbounds i8, ptr %88, i64 %17
  %104 = getelementptr inbounds i8, ptr %103, i64 1
  %105 = load i8, ptr %103, align 1, !tbaa !15
  %106 = zext i8 %105 to i64
  %107 = sub nsw i64 0, %106
  %108 = getelementptr inbounds i8, ptr %40, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !15
  %110 = zext i8 %109 to i32
  %111 = add nuw nsw i32 %102, %110
  %112 = getelementptr inbounds i8, ptr %103, i64 2
  %113 = load i8, ptr %104, align 1, !tbaa !15
  %114 = zext i8 %113 to i64
  %115 = sub nsw i64 0, %114
  %116 = getelementptr inbounds i8, ptr %40, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !15
  %118 = zext i8 %117 to i32
  %119 = add nuw nsw i32 %111, %118
  %120 = getelementptr inbounds i8, ptr %103, i64 3
  %121 = load i8, ptr %112, align 1, !tbaa !15
  %122 = zext i8 %121 to i64
  %123 = sub nsw i64 0, %122
  %124 = getelementptr inbounds i8, ptr %40, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !15
  %126 = zext i8 %125 to i32
  %127 = add nuw nsw i32 %119, %126
  %128 = getelementptr inbounds i8, ptr %103, i64 4
  %129 = load i8, ptr %120, align 1, !tbaa !15
  %130 = zext i8 %129 to i64
  %131 = sub nsw i64 0, %130
  %132 = getelementptr inbounds i8, ptr %40, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !15
  %134 = zext i8 %133 to i32
  %135 = add nuw nsw i32 %127, %134
  %136 = getelementptr inbounds i8, ptr %103, i64 5
  %137 = load i8, ptr %128, align 1, !tbaa !15
  %138 = zext i8 %137 to i64
  %139 = sub nsw i64 0, %138
  %140 = getelementptr inbounds i8, ptr %40, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !15
  %142 = zext i8 %141 to i32
  %143 = add nuw nsw i32 %135, %142
  %144 = getelementptr inbounds i8, ptr %103, i64 6
  %145 = load i8, ptr %136, align 1, !tbaa !15
  %146 = zext i8 %145 to i64
  %147 = sub nsw i64 0, %146
  %148 = getelementptr inbounds i8, ptr %40, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !15
  %150 = zext i8 %149 to i32
  %151 = add nuw nsw i32 %143, %150
  %152 = load i8, ptr %144, align 1, !tbaa !15
  %153 = zext i8 %152 to i64
  %154 = sub nsw i64 0, %153
  %155 = getelementptr inbounds i8, ptr %40, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !15
  %157 = zext i8 %156 to i32
  %158 = add nuw nsw i32 %151, %157
  %159 = getelementptr inbounds i8, ptr %144, i64 %19
  %160 = getelementptr inbounds i8, ptr %159, i64 1
  %161 = load i8, ptr %159, align 1, !tbaa !15
  %162 = zext i8 %161 to i64
  %163 = sub nsw i64 0, %162
  %164 = getelementptr inbounds i8, ptr %40, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !15
  %166 = zext i8 %165 to i32
  %167 = add nuw nsw i32 %158, %166
  %168 = getelementptr inbounds i8, ptr %159, i64 2
  %169 = load i8, ptr %160, align 1, !tbaa !15
  %170 = zext i8 %169 to i64
  %171 = sub nsw i64 0, %170
  %172 = getelementptr inbounds i8, ptr %40, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !15
  %174 = zext i8 %173 to i32
  %175 = add nuw nsw i32 %167, %174
  %176 = load i8, ptr %168, align 1, !tbaa !15
  %177 = zext i8 %176 to i64
  %178 = sub nsw i64 0, %177
  %179 = getelementptr inbounds i8, ptr %40, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !15
  %181 = zext i8 %180 to i32
  %182 = add nuw nsw i32 %175, %181
  %183 = getelementptr inbounds i8, ptr %159, i64 4
  %184 = getelementptr inbounds i8, ptr %159, i64 5
  %185 = load i8, ptr %183, align 1, !tbaa !15
  %186 = zext i8 %185 to i64
  %187 = sub nsw i64 0, %186
  %188 = getelementptr inbounds i8, ptr %40, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !15
  %190 = zext i8 %189 to i32
  %191 = add nuw nsw i32 %182, %190
  %192 = getelementptr inbounds i8, ptr %159, i64 6
  %193 = load i8, ptr %184, align 1, !tbaa !15
  %194 = zext i8 %193 to i64
  %195 = sub nsw i64 0, %194
  %196 = getelementptr inbounds i8, ptr %40, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !15
  %198 = zext i8 %197 to i32
  %199 = add nuw nsw i32 %191, %198
  %200 = load i8, ptr %192, align 1, !tbaa !15
  %201 = zext i8 %200 to i64
  %202 = sub nsw i64 0, %201
  %203 = getelementptr inbounds i8, ptr %40, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !15
  %205 = zext i8 %204 to i32
  %206 = add nuw nsw i32 %199, %205
  %207 = getelementptr inbounds i8, ptr %192, i64 %19
  %208 = getelementptr inbounds i8, ptr %207, i64 1
  %209 = load i8, ptr %207, align 1, !tbaa !15
  %210 = zext i8 %209 to i64
  %211 = sub nsw i64 0, %210
  %212 = getelementptr inbounds i8, ptr %40, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !15
  %214 = zext i8 %213 to i32
  %215 = add nuw nsw i32 %206, %214
  %216 = getelementptr inbounds i8, ptr %207, i64 2
  %217 = load i8, ptr %208, align 1, !tbaa !15
  %218 = zext i8 %217 to i64
  %219 = sub nsw i64 0, %218
  %220 = getelementptr inbounds i8, ptr %40, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !15
  %222 = zext i8 %221 to i32
  %223 = add nuw nsw i32 %215, %222
  %224 = getelementptr inbounds i8, ptr %207, i64 3
  %225 = load i8, ptr %216, align 1, !tbaa !15
  %226 = zext i8 %225 to i64
  %227 = sub nsw i64 0, %226
  %228 = getelementptr inbounds i8, ptr %40, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !15
  %230 = zext i8 %229 to i32
  %231 = add nuw nsw i32 %223, %230
  %232 = getelementptr inbounds i8, ptr %207, i64 4
  %233 = load i8, ptr %224, align 1, !tbaa !15
  %234 = zext i8 %233 to i64
  %235 = sub nsw i64 0, %234
  %236 = getelementptr inbounds i8, ptr %40, i64 %235
  %237 = load i8, ptr %236, align 1, !tbaa !15
  %238 = zext i8 %237 to i32
  %239 = add nuw nsw i32 %231, %238
  %240 = getelementptr inbounds i8, ptr %207, i64 5
  %241 = load i8, ptr %232, align 1, !tbaa !15
  %242 = zext i8 %241 to i64
  %243 = sub nsw i64 0, %242
  %244 = getelementptr inbounds i8, ptr %40, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !15
  %246 = zext i8 %245 to i32
  %247 = add nuw nsw i32 %239, %246
  %248 = getelementptr inbounds i8, ptr %207, i64 6
  %249 = load i8, ptr %240, align 1, !tbaa !15
  %250 = zext i8 %249 to i64
  %251 = sub nsw i64 0, %250
  %252 = getelementptr inbounds i8, ptr %40, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !15
  %254 = zext i8 %253 to i32
  %255 = add nuw nsw i32 %247, %254
  %256 = load i8, ptr %248, align 1, !tbaa !15
  %257 = zext i8 %256 to i64
  %258 = sub nsw i64 0, %257
  %259 = getelementptr inbounds i8, ptr %40, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !15
  %261 = zext i8 %260 to i32
  %262 = add nuw nsw i32 %255, %261
  %263 = getelementptr inbounds i8, ptr %248, i64 %17
  %264 = getelementptr inbounds i8, ptr %263, i64 1
  %265 = load i8, ptr %263, align 1, !tbaa !15
  %266 = zext i8 %265 to i64
  %267 = sub nsw i64 0, %266
  %268 = getelementptr inbounds i8, ptr %40, i64 %267
  %269 = load i8, ptr %268, align 1, !tbaa !15
  %270 = zext i8 %269 to i32
  %271 = add nuw nsw i32 %262, %270
  %272 = getelementptr inbounds i8, ptr %263, i64 2
  %273 = load i8, ptr %264, align 1, !tbaa !15
  %274 = zext i8 %273 to i64
  %275 = sub nsw i64 0, %274
  %276 = getelementptr inbounds i8, ptr %40, i64 %275
  %277 = load i8, ptr %276, align 1, !tbaa !15
  %278 = zext i8 %277 to i32
  %279 = add nuw nsw i32 %271, %278
  %280 = getelementptr inbounds i8, ptr %263, i64 3
  %281 = load i8, ptr %272, align 1, !tbaa !15
  %282 = zext i8 %281 to i64
  %283 = sub nsw i64 0, %282
  %284 = getelementptr inbounds i8, ptr %40, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !15
  %286 = zext i8 %285 to i32
  %287 = add nuw nsw i32 %279, %286
  %288 = getelementptr inbounds i8, ptr %263, i64 4
  %289 = load i8, ptr %280, align 1, !tbaa !15
  %290 = zext i8 %289 to i64
  %291 = sub nsw i64 0, %290
  %292 = getelementptr inbounds i8, ptr %40, i64 %291
  %293 = load i8, ptr %292, align 1, !tbaa !15
  %294 = zext i8 %293 to i32
  %295 = add nuw nsw i32 %287, %294
  %296 = load i8, ptr %288, align 1, !tbaa !15
  %297 = zext i8 %296 to i64
  %298 = sub nsw i64 0, %297
  %299 = getelementptr inbounds i8, ptr %40, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !15
  %301 = zext i8 %300 to i32
  %302 = add nuw nsw i32 %295, %301
  %303 = getelementptr inbounds i8, ptr %288, i64 %15
  %304 = getelementptr inbounds i8, ptr %303, i64 1
  %305 = load i8, ptr %303, align 1, !tbaa !15
  %306 = zext i8 %305 to i64
  %307 = sub nsw i64 0, %306
  %308 = getelementptr inbounds i8, ptr %40, i64 %307
  %309 = load i8, ptr %308, align 1, !tbaa !15
  %310 = zext i8 %309 to i32
  %311 = add nuw nsw i32 %302, %310
  %312 = getelementptr inbounds i8, ptr %303, i64 2
  %313 = load i8, ptr %304, align 1, !tbaa !15
  %314 = zext i8 %313 to i64
  %315 = sub nsw i64 0, %314
  %316 = getelementptr inbounds i8, ptr %40, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !15
  %318 = zext i8 %317 to i32
  %319 = add nuw nsw i32 %311, %318
  %320 = load i8, ptr %312, align 1, !tbaa !15
  %321 = zext i8 %320 to i64
  %322 = sub nsw i64 0, %321
  %323 = getelementptr inbounds i8, ptr %40, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !15
  %325 = zext i8 %324 to i32
  %326 = add nuw nsw i32 %319, %325
  %327 = icmp sgt i32 %326, %3
  br i1 %327, label %331, label %328

328:                                              ; preds = %32
  %329 = sub nsw i32 %3, %326
  %330 = getelementptr inbounds i32, ptr %1, i64 %36
  store i32 %329, ptr %330, align 4, !tbaa !12
  br label %331

331:                                              ; preds = %32, %328
  %332 = add nuw nsw i64 %33, 1
  %333 = icmp eq i64 %332, %22
  br i1 %333, label %334, label %32, !llvm.loop !18

334:                                              ; preds = %331, %23
  %335 = add nuw nsw i64 %24, 1
  %336 = icmp eq i64 %335, %21
  br i1 %336, label %337, label %23, !llvm.loop !19

337:                                              ; preds = %334, %6
  ret i32 undef
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @susan_principle_small(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
  %7 = mul nsw i32 %5, %4
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %9, i1 false)
  %10 = icmp sgt i32 %5, 2
  br i1 %10, label %11, label %110

11:                                               ; preds = %6
  %12 = add nsw i32 %5, -1
  %13 = add i32 %4, -1
  %14 = icmp sgt i32 %4, 2
  %15 = add nsw i32 %4, -2
  %16 = sext i32 %15 to i64
  %17 = sext i32 %4 to i64
  %18 = zext i32 %12 to i64
  %19 = zext i32 %13 to i64
  br label %20

20:                                               ; preds = %11, %107
  %21 = phi i64 [ 1, %11 ], [ %108, %107 ]
  br i1 %14, label %22, label %107

22:                                               ; preds = %20
  %23 = add nsw i64 %21, -1
  %24 = mul nsw i64 %23, %17
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  %26 = trunc i64 %21 to i32
  %27 = mul i32 %26, %4
  %28 = zext i32 %27 to i64
  br label %29

29:                                               ; preds = %22, %104
  %30 = phi i64 [ 1, %22 ], [ %105, %104 ]
  %31 = getelementptr inbounds i8, ptr %25, i64 %30
  %32 = getelementptr inbounds i8, ptr %31, i64 -1
  %33 = add nuw nsw i64 %30, %28
  %34 = getelementptr inbounds i8, ptr %0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i8, ptr %2, i64 %36
  %38 = load i8, ptr %32, align 1, !tbaa !15
  %39 = zext i8 %38 to i64
  %40 = sub nsw i64 0, %39
  %41 = getelementptr inbounds i8, ptr %37, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !15
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %43, 100
  %45 = getelementptr inbounds i8, ptr %31, i64 1
  %46 = load i8, ptr %31, align 1, !tbaa !15
  %47 = zext i8 %46 to i64
  %48 = sub nsw i64 0, %47
  %49 = getelementptr inbounds i8, ptr %37, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !15
  %51 = zext i8 %50 to i32
  %52 = add nuw nsw i32 %44, %51
  %53 = load i8, ptr %45, align 1, !tbaa !15
  %54 = zext i8 %53 to i64
  %55 = sub nsw i64 0, %54
  %56 = getelementptr inbounds i8, ptr %37, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !15
  %58 = zext i8 %57 to i32
  %59 = add nuw nsw i32 %52, %58
  %60 = getelementptr inbounds i8, ptr %45, i64 %16
  %61 = load i8, ptr %60, align 1, !tbaa !15
  %62 = zext i8 %61 to i64
  %63 = sub nsw i64 0, %62
  %64 = getelementptr inbounds i8, ptr %37, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !15
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %59, %66
  %68 = getelementptr inbounds i8, ptr %60, i64 2
  %69 = load i8, ptr %68, align 1, !tbaa !15
  %70 = zext i8 %69 to i64
  %71 = sub nsw i64 0, %70
  %72 = getelementptr inbounds i8, ptr %37, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !15
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %67, %74
  %76 = getelementptr inbounds i8, ptr %68, i64 %16
  %77 = getelementptr inbounds i8, ptr %76, i64 1
  %78 = load i8, ptr %76, align 1, !tbaa !15
  %79 = zext i8 %78 to i64
  %80 = sub nsw i64 0, %79
  %81 = getelementptr inbounds i8, ptr %37, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !15
  %83 = zext i8 %82 to i32
  %84 = add nuw nsw i32 %75, %83
  %85 = getelementptr inbounds i8, ptr %76, i64 2
  %86 = load i8, ptr %77, align 1, !tbaa !15
  %87 = zext i8 %86 to i64
  %88 = sub nsw i64 0, %87
  %89 = getelementptr inbounds i8, ptr %37, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !15
  %91 = zext i8 %90 to i32
  %92 = add nuw nsw i32 %84, %91
  %93 = load i8, ptr %85, align 1, !tbaa !15
  %94 = zext i8 %93 to i64
  %95 = sub nsw i64 0, %94
  %96 = getelementptr inbounds i8, ptr %37, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !15
  %98 = zext i8 %97 to i32
  %99 = add nuw nsw i32 %92, %98
  %100 = icmp slt i32 %99, 731
  br i1 %100, label %101, label %104

101:                                              ; preds = %29
  %102 = sub nuw nsw i32 730, %99
  %103 = getelementptr inbounds i32, ptr %1, i64 %33
  store i32 %102, ptr %103, align 4, !tbaa !12
  br label %104

104:                                              ; preds = %29, %101
  %105 = add nuw nsw i64 %30, 1
  %106 = icmp eq i64 %105, %19
  br i1 %106, label %107, label %29, !llvm.loop !20

107:                                              ; preds = %104, %20
  %108 = add nuw nsw i64 %21, 1
  %109 = icmp eq i64 %108, %18
  br i1 %109, label %110, label %20, !llvm.loop !21

110:                                              ; preds = %107, %6
  ret i32 undef
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i8 @median(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 {
  %5 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %6 = add nsw i32 %1, -1
  %7 = mul nsw i32 %6, %3
  %8 = add nsw i32 %7, %2
  %9 = sext i32 %8 to i64
  %10 = getelementptr i8, ptr %0, i64 %9
  %11 = getelementptr i8, ptr %10, i64 -1
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = zext i8 %12 to i32
  store i32 %13, ptr %5, align 16, !tbaa !12
  %14 = load i8, ptr %10, align 1, !tbaa !15
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 1
  store i32 %15, ptr %16, align 4, !tbaa !12
  %17 = getelementptr i8, ptr %10, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 2
  store i32 %19, ptr %20, align 8, !tbaa !12
  %21 = mul nsw i32 %3, %1
  %22 = add nsw i32 %21, %2
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, ptr %0, i64 %23
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1, !tbaa !15
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 3
  store i32 %27, ptr %28, align 4, !tbaa !12
  %29 = getelementptr i8, ptr %24, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 4
  store i32 %31, ptr %32, align 16, !tbaa !12
  %33 = add nsw i32 %1, 1
  %34 = mul nsw i32 %33, %3
  %35 = add nsw i32 %34, %2
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, ptr %0, i64 %36
  %38 = getelementptr i8, ptr %37, i64 -1
  %39 = load i8, ptr %38, align 1, !tbaa !15
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 5
  store i32 %40, ptr %41, align 4, !tbaa !12
  %42 = load i8, ptr %37, align 1, !tbaa !15
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 6
  store i32 %43, ptr %44, align 8, !tbaa !12
  %45 = getelementptr i8, ptr %37, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !15
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 7
  store i32 %47, ptr %48, align 4, !tbaa !12
  br label %49

49:                                               ; preds = %4, %66
  %50 = phi i32 [ 0, %4 ], [ %67, %66 ]
  %51 = xor i32 %50, 7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = zext nneg i32 %51 to i64
  br label %55

55:                                               ; preds = %53, %64
  %56 = phi i64 [ 0, %53 ], [ %59, %64 ]
  %57 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !12
  %59 = add nuw nsw i64 %56, 1
  %60 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !12
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 %61, ptr %57, align 4, !tbaa !12
  store i32 %58, ptr %60, align 4, !tbaa !12
  br label %64

64:                                               ; preds = %55, %63
  %65 = icmp eq i64 %59, %54
  br i1 %65, label %66, label %55, !llvm.loop !22

66:                                               ; preds = %64, %49
  %67 = add nuw nsw i32 %50, 1
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %69, label %49, !llvm.loop !23

69:                                               ; preds = %66
  %70 = load i32, ptr %28, align 4, !tbaa !12
  %71 = load i32, ptr %32, align 16, !tbaa !12
  %72 = add nsw i32 %71, %70
  %73 = sdiv i32 %72, 2
  %74 = trunc i32 %73 to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  ret i8 %74
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @enlarge(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #12 {
  %6 = load i32, ptr %3, align 4, !tbaa !12
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = shl nsw i32 %4, 1
  %10 = sext i32 %4 to i64
  %11 = getelementptr i8, ptr %1, i64 %10
  br label %19

12:                                               ; preds = %19, %5
  %13 = icmp sgt i32 %4, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %12
  %15 = shl nuw nsw i32 %4, 1
  %16 = zext nneg i32 %4 to i64
  %17 = getelementptr i8, ptr %1, i64 %16
  %18 = getelementptr i8, ptr %1, i64 %16
  br label %40

19:                                               ; preds = %8, %19
  %20 = phi i32 [ 0, %8 ], [ %32, %19 ]
  %21 = add nsw i32 %20, %4
  %22 = load i32, ptr %2, align 4, !tbaa !12
  %23 = add nsw i32 %22, %9
  %24 = mul nsw i32 %23, %21
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, ptr %11, i64 %25
  %27 = load ptr, ptr %0, align 8, !tbaa !5
  %28 = mul nsw i32 %22, %20
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %27, i64 %29
  %31 = sext i32 %22 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %30, i64 %31, i1 false)
  %32 = add nuw nsw i32 %20, 1
  %33 = load i32, ptr %3, align 4, !tbaa !12
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %19, label %12, !llvm.loop !24

35:                                               ; preds = %40, %12
  %36 = icmp sgt i32 %4, 0
  br i1 %36, label %37, label %108

37:                                               ; preds = %35
  %38 = shl nuw nsw i32 %4, 1
  %39 = sub nsw i32 0, %38
  br label %70

40:                                               ; preds = %14, %40
  %41 = phi i32 [ 0, %14 ], [ %68, %40 ]
  %42 = xor i32 %41, -1
  %43 = add nsw i32 %42, %4
  %44 = load i32, ptr %2, align 4, !tbaa !12
  %45 = add nsw i32 %44, %15
  %46 = mul nsw i32 %45, %43
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, ptr %17, i64 %47
  %49 = load ptr, ptr %0, align 8, !tbaa !5
  %50 = mul nsw i32 %44, %41
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  %53 = sext i32 %44 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %48, ptr align 1 %52, i64 %53, i1 false)
  %54 = load i32, ptr %3, align 4, !tbaa !12
  %55 = add nuw i32 %41, %4
  %56 = add i32 %55, %54
  %57 = load i32, ptr %2, align 4, !tbaa !12
  %58 = add nsw i32 %57, %15
  %59 = mul nsw i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, ptr %18, i64 %60
  %62 = load ptr, ptr %0, align 8, !tbaa !5
  %63 = add i32 %54, %42
  %64 = mul nsw i32 %63, %57
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  %67 = sext i32 %57 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %66, i64 %67, i1 false)
  %68 = add nuw nsw i32 %41, 1
  %69 = icmp eq i32 %68, %4
  br i1 %69, label %35, label %40, !llvm.loop !25

70:                                               ; preds = %37, %105
  %71 = phi i32 [ 0, %37 ], [ %106, %105 ]
  %72 = load i32, ptr %3, align 4, !tbaa !12
  %73 = icmp sgt i32 %72, %39
  br i1 %73, label %74, label %105

74:                                               ; preds = %70
  %75 = xor i32 %71, -1
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi i32 [ 0, %74 ], [ %101, %76 ]
  %78 = load i32, ptr %2, align 4, !tbaa !12
  %79 = add nsw i32 %78, %38
  %80 = mul nsw i32 %79, %77
  %81 = add nsw i32 %80, %4
  %82 = add nsw i32 %81, %71
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %1, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !15
  %86 = add i32 %81, %75
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %1, i64 %87
  store i8 %85, ptr %88, align 1, !tbaa !15
  %89 = load i32, ptr %2, align 4, !tbaa !12
  %90 = add nsw i32 %89, %38
  %91 = mul nsw i32 %90, %77
  %92 = add i32 %89, %4
  %93 = add i32 %92, %91
  %94 = add i32 %93, %75
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %1, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !15
  %98 = add nsw i32 %93, %71
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %1, i64 %99
  store i8 %97, ptr %100, align 1, !tbaa !15
  %101 = add nuw nsw i32 %77, 1
  %102 = load i32, ptr %3, align 4, !tbaa !12
  %103 = add nsw i32 %102, %38
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %76, label %105, !llvm.loop !26

105:                                              ; preds = %76, %70
  %106 = add nuw nsw i32 %71, 1
  %107 = icmp eq i32 %106, %4
  br i1 %107, label %108, label %70, !llvm.loop !27

108:                                              ; preds = %105, %35
  %109 = shl nsw i32 %4, 1
  %110 = load i32, ptr %2, align 4, !tbaa !12
  %111 = add nsw i32 %110, %109
  store i32 %111, ptr %2, align 4, !tbaa !12
  %112 = load i32, ptr %3, align 4, !tbaa !12
  %113 = add nsw i32 %112, %109
  store i32 %113, ptr %3, align 4, !tbaa !12
  store ptr %1, ptr %0, align 8, !tbaa !5
  ret i32 undef
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define dso_local void @susan_smoothing(i32 noundef %0, ptr noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #3 {
  %7 = alloca [8 x i32], align 16
  %8 = alloca [8 x i32], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = fptrunc double %2 to float
  store ptr %1, ptr %9, align 8, !tbaa !5
  store i32 %3, ptr %10, align 4, !tbaa !12
  store i32 %4, ptr %11, align 4, !tbaa !12
  %13 = icmp eq i32 %0, 0
  %14 = fpext float %12 to double
  %15 = fmul double %14, 1.500000e+00
  %16 = fptosi double %15 to i32
  %17 = add nsw i32 %16, 1
  %18 = select i1 %13, i32 %17, i32 1
  %19 = fcmp ogt float %12, 1.500000e+01
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %14)
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45)
  tail call void @exit(i32 noundef 0) #20
  unreachable

24:                                               ; preds = %6
  %25 = shl nsw i32 %18, 1
  %26 = or disjoint i32 %25, 1
  %27 = icmp slt i32 %25, %3
  %28 = icmp slt i32 %25, %4
  %29 = and i1 %27, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %18, i32 noundef %3, i32 noundef %4)
  tail call void @exit(i32 noundef 0) #20
  unreachable

32:                                               ; preds = %24
  %33 = add nsw i32 %25, %3
  %34 = add nsw i32 %25, %4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #23
  %38 = call i32 @enlarge(ptr noundef nonnull %9, ptr noundef %37, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %18)
  br i1 %13, label %50, label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %11, align 4, !tbaa !12
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %447

42:                                               ; preds = %39
  %43 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 1
  %44 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 2
  %45 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 3
  %46 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 4
  %47 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 5
  %48 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 6
  %49 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 7
  br label %245

50:                                               ; preds = %32
  %51 = load i32, ptr %10, align 4, !tbaa !12
  %52 = sub nsw i32 %51, %26
  %53 = mul nsw i32 %26, %26
  %54 = zext nneg i32 %53 to i64
  %55 = tail call noalias ptr @malloc(i64 noundef %54) #23
  %56 = fneg float %12
  %57 = fmul float %56, %12
  %58 = sub nsw i32 0, %18
  %59 = icmp slt i32 %18, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %50, %98
  %61 = phi ptr [ %95, %98 ], [ %55, %50 ]
  %62 = phi i32 [ %99, %98 ], [ %58, %50 ]
  %63 = mul nsw i32 %62, %62
  br label %83

64:                                               ; preds = %98, %50
  %65 = load i32, ptr %11, align 4, !tbaa !12
  %66 = sub nsw i32 %65, %18
  %67 = icmp slt i32 %18, %66
  br i1 %67, label %68, label %447

68:                                               ; preds = %64
  %69 = sub nsw i32 0, %18
  %70 = sext i32 %69 to i64
  %71 = icmp slt i32 %18, 0
  %72 = sext i32 %52 to i64
  %73 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 1
  %74 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 2
  %75 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 3
  %76 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 4
  %77 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 5
  %78 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 6
  %79 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 7
  %80 = or disjoint i32 %25, 1
  %81 = zext i32 %80 to i64
  %82 = sext i32 %18 to i64
  br label %101

83:                                               ; preds = %60, %83
  %84 = phi ptr [ %61, %60 ], [ %95, %83 ]
  %85 = phi i32 [ %58, %60 ], [ %96, %83 ]
  %86 = mul nsw i32 %85, %85
  %87 = add nuw nsw i32 %86, %63
  %88 = sitofp i32 %87 to float
  %89 = fdiv float %88, %57
  %90 = fpext float %89 to double
  %91 = tail call double @exp(double noundef %90) #21
  %92 = fmul double %91, 1.000000e+02
  %93 = fptosi double %92 to i32
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds i8, ptr %84, i64 1
  store i8 %94, ptr %84, align 1, !tbaa !15
  %96 = add i32 %85, 1
  %97 = icmp eq i32 %85, %18
  br i1 %97, label %98, label %83, !llvm.loop !28

98:                                               ; preds = %83
  %99 = add i32 %62, 1
  %100 = icmp eq i32 %62, %18
  br i1 %100, label %64, label %60, !llvm.loop !29

101:                                              ; preds = %68, %239
  %102 = phi ptr [ %1, %68 ], [ %240, %239 ]
  %103 = phi i32 [ %18, %68 ], [ %241, %239 ]
  %104 = load i32, ptr %10, align 4, !tbaa !12
  %105 = sub nsw i32 %104, %18
  %106 = icmp slt i32 %18, %105
  br i1 %106, label %107, label %239

107:                                              ; preds = %101
  %108 = sub nsw i32 %103, %18
  %109 = add nsw i32 %103, -1
  %110 = add nsw i32 %103, 1
  br label %111

111:                                              ; preds = %107, %230
  %112 = phi i64 [ %82, %107 ], [ %234, %230 ]
  %113 = phi i32 [ %104, %107 ], [ %235, %230 ]
  %114 = phi ptr [ %102, %107 ], [ %233, %230 ]
  %115 = load ptr, ptr %9, align 8, !tbaa !5
  %116 = mul nsw i32 %113, %103
  %117 = sext i32 %116 to i64
  %118 = getelementptr i8, ptr %115, i64 %112
  %119 = getelementptr i8, ptr %118, i64 %117
  %120 = load i8, ptr %119, align 1, !tbaa !15
  %121 = zext i8 %120 to i32
  %122 = zext i8 %120 to i64
  %123 = getelementptr inbounds i8, ptr %5, i64 %122
  br i1 %71, label %165, label %124

124:                                              ; preds = %111
  %125 = mul nsw i32 %113, %108
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, ptr %115, i64 %126
  %128 = getelementptr inbounds i8, ptr %127, i64 %112
  %129 = getelementptr inbounds i8, ptr %128, i64 %70
  br label %130

130:                                              ; preds = %124, %160
  %131 = phi i32 [ %157, %160 ], [ 0, %124 ]
  %132 = phi ptr [ %161, %160 ], [ %55, %124 ]
  %133 = phi ptr [ %162, %160 ], [ %129, %124 ]
  %134 = phi i32 [ %155, %160 ], [ 0, %124 ]
  %135 = phi i32 [ %163, %160 ], [ %58, %124 ]
  %136 = getelementptr i8, ptr %133, i64 %81
  br label %137

137:                                              ; preds = %130, %137
  %138 = phi i32 [ %131, %130 ], [ %157, %137 ]
  %139 = phi ptr [ %132, %130 ], [ %146, %137 ]
  %140 = phi ptr [ %133, %130 ], [ %143, %137 ]
  %141 = phi i32 [ %134, %130 ], [ %155, %137 ]
  %142 = phi i32 [ %58, %130 ], [ %158, %137 ]
  %143 = getelementptr inbounds i8, ptr %140, i64 1
  %144 = load i8, ptr %140, align 1, !tbaa !15
  %145 = zext i8 %144 to i32
  %146 = getelementptr inbounds i8, ptr %139, i64 1
  %147 = load i8, ptr %139, align 1, !tbaa !15
  %148 = zext i8 %147 to i32
  %149 = zext i8 %144 to i64
  %150 = sub nsw i64 0, %149
  %151 = getelementptr inbounds i8, ptr %123, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !15
  %153 = zext i8 %152 to i32
  %154 = mul nuw nsw i32 %153, %148
  %155 = add nsw i32 %154, %141
  %156 = mul nuw nsw i32 %154, %145
  %157 = add nsw i32 %156, %138
  %158 = add i32 %142, 1
  %159 = icmp eq i32 %142, %18
  br i1 %159, label %160, label %137, !llvm.loop !30

160:                                              ; preds = %137
  %161 = getelementptr i8, ptr %132, i64 %81
  %162 = getelementptr inbounds i8, ptr %136, i64 %72
  %163 = add i32 %135, 1
  %164 = icmp eq i32 %135, %18
  br i1 %164, label %165, label %130, !llvm.loop !31

165:                                              ; preds = %160, %111
  %166 = phi i32 [ 0, %111 ], [ %155, %160 ]
  %167 = phi i32 [ 0, %111 ], [ %157, %160 ]
  %168 = add nsw i32 %166, -10000
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %226

170:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  %171 = mul nsw i32 %113, %109
  %172 = sext i32 %171 to i64
  %173 = getelementptr i8, ptr %115, i64 %112
  %174 = getelementptr i8, ptr %173, i64 %172
  %175 = getelementptr i8, ptr %174, i64 -1
  %176 = load i8, ptr %175, align 1, !tbaa !15
  %177 = zext i8 %176 to i32
  store i32 %177, ptr %8, align 16, !tbaa !12
  %178 = load i8, ptr %174, align 1, !tbaa !15
  %179 = zext i8 %178 to i32
  store i32 %179, ptr %73, align 4, !tbaa !12
  %180 = getelementptr i8, ptr %174, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !15
  %182 = zext i8 %181 to i32
  store i32 %182, ptr %74, align 8, !tbaa !12
  %183 = getelementptr i8, ptr %119, i64 -1
  %184 = load i8, ptr %183, align 1, !tbaa !15
  %185 = zext i8 %184 to i32
  store i32 %185, ptr %75, align 4, !tbaa !12
  %186 = getelementptr i8, ptr %119, i64 1
  %187 = load i8, ptr %186, align 1, !tbaa !15
  %188 = zext i8 %187 to i32
  store i32 %188, ptr %76, align 16, !tbaa !12
  %189 = mul nsw i32 %113, %110
  %190 = sext i32 %189 to i64
  %191 = getelementptr i8, ptr %115, i64 %112
  %192 = getelementptr i8, ptr %191, i64 %190
  %193 = getelementptr i8, ptr %192, i64 -1
  %194 = load i8, ptr %193, align 1, !tbaa !15
  %195 = zext i8 %194 to i32
  store i32 %195, ptr %77, align 4, !tbaa !12
  %196 = load i8, ptr %192, align 1, !tbaa !15
  %197 = zext i8 %196 to i32
  store i32 %197, ptr %78, align 8, !tbaa !12
  %198 = getelementptr i8, ptr %192, i64 1
  %199 = load i8, ptr %198, align 1, !tbaa !15
  %200 = zext i8 %199 to i32
  store i32 %200, ptr %79, align 4, !tbaa !12
  br label %201

201:                                              ; preds = %218, %170
  %202 = phi i32 [ 0, %170 ], [ %219, %218 ]
  %203 = xor i32 %202, 7
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %218, label %205

205:                                              ; preds = %201
  %206 = zext nneg i32 %203 to i64
  br label %207

207:                                              ; preds = %216, %205
  %208 = phi i64 [ 0, %205 ], [ %211, %216 ]
  %209 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 %208
  %210 = load i32, ptr %209, align 4, !tbaa !12
  %211 = add nuw nsw i64 %208, 1
  %212 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !12
  %214 = icmp sgt i32 %210, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %207
  store i32 %213, ptr %209, align 4, !tbaa !12
  store i32 %210, ptr %212, align 4, !tbaa !12
  br label %216

216:                                              ; preds = %215, %207
  %217 = icmp eq i64 %211, %206
  br i1 %217, label %218, label %207, !llvm.loop !22

218:                                              ; preds = %216, %201
  %219 = add nuw nsw i32 %202, 1
  %220 = icmp eq i32 %219, 7
  br i1 %220, label %221, label %201, !llvm.loop !23

221:                                              ; preds = %218
  %222 = load i32, ptr %75, align 4, !tbaa !12
  %223 = load i32, ptr %76, align 16, !tbaa !12
  %224 = add nsw i32 %223, %222
  %225 = sdiv i32 %224, 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  br label %230

226:                                              ; preds = %165
  %227 = mul nsw i32 %121, -10000
  %228 = add i32 %167, %227
  %229 = sdiv i32 %228, %168
  br label %230

230:                                              ; preds = %221, %226
  %231 = phi i32 [ %229, %226 ], [ %225, %221 ]
  %232 = trunc i32 %231 to i8
  %233 = getelementptr inbounds i8, ptr %114, i64 1
  store i8 %232, ptr %114, align 1, !tbaa !15
  %234 = add nsw i64 %112, 1
  %235 = load i32, ptr %10, align 4, !tbaa !12
  %236 = sub nsw i32 %235, %18
  %237 = sext i32 %236 to i64
  %238 = icmp slt i64 %234, %237
  br i1 %238, label %111, label %239, !llvm.loop !32

239:                                              ; preds = %230, %101
  %240 = phi ptr [ %102, %101 ], [ %233, %230 ]
  %241 = add nsw i32 %103, 1
  %242 = load i32, ptr %11, align 4, !tbaa !12
  %243 = sub nsw i32 %242, %18
  %244 = icmp slt i32 %241, %243
  br i1 %244, label %101, label %447, !llvm.loop !33

245:                                              ; preds = %42, %441
  %246 = phi ptr [ %1, %42 ], [ %442, %441 ]
  %247 = phi i32 [ 1, %42 ], [ %443, %441 ]
  %248 = load i32, ptr %10, align 4, !tbaa !12
  %249 = icmp sgt i32 %248, 2
  br i1 %249, label %250, label %441

250:                                              ; preds = %245
  %251 = add nsw i32 %247, -1
  %252 = add nuw nsw i32 %247, 1
  br label %253

253:                                              ; preds = %250, %432
  %254 = phi i64 [ 1, %250 ], [ %436, %432 ]
  %255 = phi i32 [ %248, %250 ], [ %437, %432 ]
  %256 = phi ptr [ %246, %250 ], [ %435, %432 ]
  %257 = load ptr, ptr %9, align 8, !tbaa !5
  %258 = mul nsw i32 %255, %251
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, ptr %257, i64 %259
  %261 = getelementptr inbounds i8, ptr %260, i64 %254
  %262 = getelementptr inbounds i8, ptr %261, i64 -1
  %263 = mul nsw i32 %255, %247
  %264 = trunc i64 %254 to i32
  %265 = add nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, ptr %257, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !15
  %269 = zext i8 %268 to i64
  %270 = getelementptr inbounds i8, ptr %5, i64 %269
  %271 = load i8, ptr %262, align 1, !tbaa !15
  %272 = zext i8 %271 to i64
  %273 = sub nsw i64 0, %272
  %274 = getelementptr inbounds i8, ptr %270, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !15
  %276 = zext i8 %275 to i32
  %277 = getelementptr inbounds i8, ptr %261, i64 1
  %278 = load i8, ptr %261, align 1, !tbaa !15
  %279 = zext i8 %278 to i64
  %280 = sub nsw i64 0, %279
  %281 = getelementptr inbounds i8, ptr %270, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !15
  %283 = zext i8 %282 to i32
  %284 = load i8, ptr %277, align 1, !tbaa !15
  %285 = zext i8 %284 to i64
  %286 = sub nsw i64 0, %285
  %287 = getelementptr inbounds i8, ptr %270, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !15
  %289 = zext i8 %288 to i32
  %290 = add nsw i32 %255, -2
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, ptr %277, i64 %291
  %293 = getelementptr inbounds i8, ptr %292, i64 1
  %294 = load i8, ptr %292, align 1, !tbaa !15
  %295 = zext i8 %294 to i64
  %296 = sub nsw i64 0, %295
  %297 = getelementptr inbounds i8, ptr %270, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !15
  %299 = zext i8 %298 to i32
  %300 = getelementptr inbounds i8, ptr %292, i64 2
  %301 = load i8, ptr %293, align 1, !tbaa !15
  %302 = zext i8 %301 to i64
  %303 = sub nsw i64 0, %302
  %304 = getelementptr inbounds i8, ptr %270, i64 %303
  %305 = load i8, ptr %304, align 1, !tbaa !15
  %306 = zext i8 %305 to i32
  %307 = load i8, ptr %300, align 1, !tbaa !15
  %308 = zext i8 %307 to i64
  %309 = sub nsw i64 0, %308
  %310 = getelementptr inbounds i8, ptr %270, i64 %309
  %311 = load i8, ptr %310, align 1, !tbaa !15
  %312 = zext i8 %311 to i32
  %313 = getelementptr inbounds i8, ptr %300, i64 %291
  %314 = getelementptr inbounds i8, ptr %313, i64 1
  %315 = load i8, ptr %313, align 1, !tbaa !15
  %316 = zext i8 %315 to i64
  %317 = sub nsw i64 0, %316
  %318 = getelementptr inbounds i8, ptr %270, i64 %317
  %319 = load i8, ptr %318, align 1, !tbaa !15
  %320 = zext i8 %319 to i32
  %321 = getelementptr inbounds i8, ptr %313, i64 2
  %322 = load i8, ptr %314, align 1, !tbaa !15
  %323 = zext i8 %322 to i64
  %324 = sub nsw i64 0, %323
  %325 = getelementptr inbounds i8, ptr %270, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !15
  %327 = zext i8 %326 to i32
  %328 = load i8, ptr %321, align 1, !tbaa !15
  %329 = zext i8 %328 to i64
  %330 = sub nsw i64 0, %329
  %331 = getelementptr inbounds i8, ptr %270, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !15
  %333 = zext i8 %332 to i32
  %334 = add nsw i32 %276, -100
  %335 = add nsw i32 %334, %283
  %336 = add nsw i32 %335, %289
  %337 = add nsw i32 %336, %299
  %338 = add nsw i32 %337, %306
  %339 = add nsw i32 %338, %312
  %340 = add nsw i32 %339, %320
  %341 = add nsw i32 %340, %327
  %342 = add nsw i32 %341, %333
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %401

344:                                              ; preds = %253
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %345 = trunc i64 %254 to i32
  %346 = add nsw i32 %258, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr i8, ptr %257, i64 %347
  %349 = getelementptr i8, ptr %348, i64 -1
  %350 = load i8, ptr %349, align 1, !tbaa !15
  %351 = zext i8 %350 to i32
  store i32 %351, ptr %7, align 16, !tbaa !12
  %352 = load i8, ptr %348, align 1, !tbaa !15
  %353 = zext i8 %352 to i32
  store i32 %353, ptr %43, align 4, !tbaa !12
  %354 = getelementptr i8, ptr %348, i64 1
  %355 = load i8, ptr %354, align 1, !tbaa !15
  %356 = zext i8 %355 to i32
  store i32 %356, ptr %44, align 8, !tbaa !12
  %357 = getelementptr i8, ptr %267, i64 -1
  %358 = load i8, ptr %357, align 1, !tbaa !15
  %359 = zext i8 %358 to i32
  store i32 %359, ptr %45, align 4, !tbaa !12
  %360 = getelementptr i8, ptr %267, i64 1
  %361 = load i8, ptr %360, align 1, !tbaa !15
  %362 = zext i8 %361 to i32
  store i32 %362, ptr %46, align 16, !tbaa !12
  %363 = mul nsw i32 %255, %252
  %364 = trunc i64 %254 to i32
  %365 = add nsw i32 %363, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr i8, ptr %257, i64 %366
  %368 = getelementptr i8, ptr %367, i64 -1
  %369 = load i8, ptr %368, align 1, !tbaa !15
  %370 = zext i8 %369 to i32
  store i32 %370, ptr %47, align 4, !tbaa !12
  %371 = load i8, ptr %367, align 1, !tbaa !15
  %372 = zext i8 %371 to i32
  store i32 %372, ptr %48, align 8, !tbaa !12
  %373 = getelementptr i8, ptr %367, i64 1
  %374 = load i8, ptr %373, align 1, !tbaa !15
  %375 = zext i8 %374 to i32
  store i32 %375, ptr %49, align 4, !tbaa !12
  br label %376

376:                                              ; preds = %393, %344
  %377 = phi i32 [ 0, %344 ], [ %394, %393 ]
  %378 = xor i32 %377, 7
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %393, label %380

380:                                              ; preds = %376
  %381 = zext nneg i32 %378 to i64
  br label %382

382:                                              ; preds = %391, %380
  %383 = phi i64 [ 0, %380 ], [ %386, %391 ]
  %384 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 %383
  %385 = load i32, ptr %384, align 4, !tbaa !12
  %386 = add nuw nsw i64 %383, 1
  %387 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !12
  %389 = icmp sgt i32 %385, %388
  br i1 %389, label %390, label %391

390:                                              ; preds = %382
  store i32 %388, ptr %384, align 4, !tbaa !12
  store i32 %385, ptr %387, align 4, !tbaa !12
  br label %391

391:                                              ; preds = %390, %382
  %392 = icmp eq i64 %386, %381
  br i1 %392, label %393, label %382, !llvm.loop !22

393:                                              ; preds = %391, %376
  %394 = add nuw nsw i32 %377, 1
  %395 = icmp eq i32 %394, 7
  br i1 %395, label %396, label %376, !llvm.loop !23

396:                                              ; preds = %393
  %397 = load i32, ptr %45, align 4, !tbaa !12
  %398 = load i32, ptr %46, align 16, !tbaa !12
  %399 = add nsw i32 %398, %397
  %400 = sdiv i32 %399, 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %432

401:                                              ; preds = %253
  %402 = zext i8 %271 to i32
  %403 = mul nuw nsw i32 %276, %402
  %404 = zext i8 %278 to i32
  %405 = mul nuw nsw i32 %283, %404
  %406 = zext i8 %284 to i32
  %407 = mul nuw nsw i32 %289, %406
  %408 = zext i8 %294 to i32
  %409 = mul nuw nsw i32 %299, %408
  %410 = zext i8 %301 to i32
  %411 = mul nuw nsw i32 %306, %410
  %412 = zext i8 %307 to i32
  %413 = mul nuw nsw i32 %312, %412
  %414 = zext i8 %315 to i32
  %415 = mul nuw nsw i32 %320, %414
  %416 = zext i8 %322 to i32
  %417 = mul nuw nsw i32 %327, %416
  %418 = zext i8 %328 to i32
  %419 = mul nuw nsw i32 %333, %418
  %420 = zext i8 %268 to i32
  %421 = mul nsw i32 %420, -100
  %422 = add nsw i32 %403, %421
  %423 = add nsw i32 %422, %405
  %424 = add nsw i32 %423, %407
  %425 = add nsw i32 %424, %409
  %426 = add nsw i32 %425, %411
  %427 = add nsw i32 %426, %413
  %428 = add nsw i32 %427, %415
  %429 = add nsw i32 %428, %417
  %430 = add nsw i32 %429, %419
  %431 = sdiv i32 %430, %342
  br label %432

432:                                              ; preds = %396, %401
  %433 = phi i32 [ %431, %401 ], [ %400, %396 ]
  %434 = trunc i32 %433 to i8
  %435 = getelementptr inbounds i8, ptr %256, i64 1
  store i8 %434, ptr %256, align 1, !tbaa !15
  %436 = add nuw nsw i64 %254, 1
  %437 = load i32, ptr %10, align 4, !tbaa !12
  %438 = add nsw i32 %437, -1
  %439 = sext i32 %438 to i64
  %440 = icmp slt i64 %436, %439
  br i1 %440, label %253, label %441, !llvm.loop !34

441:                                              ; preds = %432, %245
  %442 = phi ptr [ %246, %245 ], [ %435, %432 ]
  %443 = add nuw nsw i32 %247, 1
  %444 = load i32, ptr %11, align 4, !tbaa !12
  %445 = add nsw i32 %444, -1
  %446 = icmp slt i32 %443, %445
  br i1 %446, label %245, label %447, !llvm.loop !35

447:                                              ; preds = %441, %239, %39, %64
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @edge_draw(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #12 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %5
  %8 = mul nsw i32 %3, %2
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %7
  %11 = ptrtoint ptr %1 to i64
  %12 = sext i32 %2 to i64
  %13 = sub nsw i64 0, %12
  %14 = getelementptr i8, ptr %0, i64 %13
  %15 = add nsw i32 %2, -2
  %16 = sext i32 %15 to i64
  br label %17

17:                                               ; preds = %10, %33
  %18 = phi ptr [ %1, %10 ], [ %34, %33 ]
  %19 = phi i32 [ 0, %10 ], [ %35, %33 ]
  %20 = load i8, ptr %18, align 1, !tbaa !15
  %21 = icmp ult i8 %20, 8
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = ptrtoint ptr %18 to i64
  %24 = sub i64 %23, %11
  %25 = getelementptr i8, ptr %14, i64 %24
  %26 = getelementptr inbounds i8, ptr %25, i64 -1
  store i8 -1, ptr %26, align 1, !tbaa !15
  %27 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 -1, ptr %25, align 1, !tbaa !15
  store i8 -1, ptr %27, align 1, !tbaa !15
  %28 = getelementptr inbounds i8, ptr %27, i64 %16
  store i8 -1, ptr %28, align 1, !tbaa !15
  %29 = getelementptr inbounds i8, ptr %28, i64 2
  store i8 -1, ptr %29, align 1, !tbaa !15
  %30 = getelementptr inbounds i8, ptr %29, i64 %16
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 -1, ptr %30, align 1, !tbaa !15
  %32 = getelementptr inbounds i8, ptr %30, i64 2
  store i8 -1, ptr %31, align 1, !tbaa !15
  store i8 -1, ptr %32, align 1, !tbaa !15
  br label %33

33:                                               ; preds = %22, %17
  %34 = getelementptr inbounds i8, ptr %18, i64 1
  %35 = add nuw nsw i32 %19, 1
  %36 = icmp eq i32 %35, %8
  br i1 %36, label %37, label %17, !llvm.loop !36

37:                                               ; preds = %33, %7, %5
  %38 = mul nsw i32 %3, %2
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = ptrtoint ptr %1 to i64
  br label %42

42:                                               ; preds = %40, %51
  %43 = phi ptr [ %1, %40 ], [ %52, %51 ]
  %44 = phi i32 [ 0, %40 ], [ %53, %51 ]
  %45 = load i8, ptr %43, align 1, !tbaa !15
  %46 = icmp ult i8 %45, 8
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = ptrtoint ptr %43 to i64
  %49 = sub i64 %48, %41
  %50 = getelementptr inbounds i8, ptr %0, i64 %49
  store i8 0, ptr %50, align 1, !tbaa !15
  br label %51

51:                                               ; preds = %47, %42
  %52 = getelementptr inbounds i8, ptr %43, i64 1
  %53 = add nuw nsw i32 %44, 1
  %54 = icmp eq i32 %53, %38
  br i1 %54, label %55, label %42, !llvm.loop !37

55:                                               ; preds = %51, %37
  ret i32 undef
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @susan_thin(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = alloca [9 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  %6 = add nsw i32 %3, -4
  %7 = icmp sgt i32 %3, 8
  br i1 %7, label %8, label %531

8:                                                ; preds = %4
  %9 = add nsw i32 %2, -4
  %10 = icmp sgt i32 %2, 8
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 1
  %13 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 2
  %14 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 3
  %15 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 4
  %16 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 5
  %17 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 6
  %18 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 7
  %19 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 8
  %20 = getelementptr i8, ptr %1, i64 -1
  br label %21

21:                                               ; preds = %8, %525
  %22 = phi i32 [ 4, %8 ], [ %529, %525 ]
  %23 = phi i32 [ undef, %8 ], [ %527, %525 ]
  %24 = phi i32 [ undef, %8 ], [ %526, %525 ]
  br i1 %10, label %25, label %525

25:                                               ; preds = %21, %518
  %26 = phi i32 [ %523, %518 ], [ 4, %21 ]
  %27 = phi i32 [ %521, %518 ], [ %22, %21 ]
  %28 = phi i32 [ %520, %518 ], [ %23, %21 ]
  %29 = phi i32 [ %519, %518 ], [ %24, %21 ]
  %30 = mul nsw i32 %27, %2
  %31 = add nsw i32 %30, %26
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %1, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !15
  %35 = icmp ult i8 %34, 8
  br i1 %35, label %36, label %518

36:                                               ; preds = %25
  %37 = getelementptr inbounds i32, ptr %0, i64 %32
  %38 = load i32, ptr %37, align 4, !tbaa !12
  %39 = add nsw i32 %27, -1
  %40 = mul nsw i32 %39, %2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %1, i64 %41
  %43 = sext i32 %26 to i64
  %44 = getelementptr inbounds i8, ptr %42, i64 %43
  %45 = getelementptr inbounds i8, ptr %44, i64 -1
  %46 = load i8, ptr %45, align 1, !tbaa !15
  %47 = icmp ult i8 %46, 8
  %48 = zext i1 %47 to i32
  %49 = load i8, ptr %44, align 1, !tbaa !15
  %50 = icmp ult i8 %49, 8
  %51 = zext i1 %50 to i32
  %52 = add nuw nsw i32 %51, %48
  %53 = getelementptr inbounds i8, ptr %44, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !15
  %55 = icmp ult i8 %54, 8
  %56 = zext i1 %55 to i32
  %57 = add nuw nsw i32 %52, %56
  %58 = getelementptr inbounds i8, ptr %45, i64 %11
  %59 = load i8, ptr %58, align 1, !tbaa !15
  %60 = icmp ult i8 %59, 8
  %61 = zext i1 %60 to i32
  %62 = add nuw nsw i32 %57, %61
  %63 = getelementptr inbounds i8, ptr %58, i64 2
  %64 = load i8, ptr %63, align 1, !tbaa !15
  %65 = icmp ult i8 %64, 8
  %66 = zext i1 %65 to i32
  %67 = add nuw nsw i32 %62, %66
  %68 = getelementptr inbounds i8, ptr %58, i64 %11
  %69 = load i8, ptr %68, align 1, !tbaa !15
  %70 = icmp ult i8 %69, 8
  %71 = zext i1 %70 to i32
  %72 = add nuw nsw i32 %67, %71
  %73 = getelementptr inbounds i8, ptr %68, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = icmp ult i8 %74, 8
  %76 = zext i1 %75 to i32
  %77 = add nuw nsw i32 %72, %76
  %78 = getelementptr inbounds i8, ptr %68, i64 2
  %79 = load i8, ptr %78, align 1, !tbaa !15
  %80 = icmp ult i8 %79, 8
  %81 = zext i1 %80 to i32
  %82 = add nuw nsw i32 %77, %81
  switch i32 %82, label %250 [
    i32 0, label %83
    i32 1, label %84
  ]

83:                                               ; preds = %36
  store i8 100, ptr %33, align 1, !tbaa !15
  br label %250

84:                                               ; preds = %36
  %85 = icmp ult i8 %34, 6
  br i1 %85, label %86, label %250

86:                                               ; preds = %84
  %87 = add nsw i32 %40, %26
  %88 = add nsw i32 %87, -1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !12
  store i32 %91, ptr %5, align 16, !tbaa !12
  %92 = sext i32 %87 to i64
  %93 = getelementptr inbounds i32, ptr %0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !12
  store i32 %94, ptr %12, align 4, !tbaa !12
  %95 = add nsw i32 %87, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !12
  store i32 %98, ptr %13, align 8, !tbaa !12
  %99 = add nsw i32 %31, -1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !12
  store i32 %102, ptr %14, align 4, !tbaa !12
  store i32 0, ptr %15, align 16, !tbaa !12
  %103 = add nsw i32 %31, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, ptr %0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !12
  store i32 %106, ptr %16, align 4, !tbaa !12
  %107 = add nsw i32 %27, 1
  %108 = mul nsw i32 %107, %2
  %109 = add nsw i32 %108, %26
  %110 = add nsw i32 %109, -1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !12
  store i32 %113, ptr %17, align 8, !tbaa !12
  %114 = sext i32 %109 to i64
  %115 = getelementptr inbounds i32, ptr %0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !12
  store i32 %116, ptr %18, align 4, !tbaa !12
  %117 = add nsw i32 %109, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !12
  store i32 %120, ptr %19, align 16, !tbaa !12
  %121 = getelementptr inbounds i8, ptr %1, i64 %89
  %122 = load i8, ptr %121, align 1, !tbaa !15
  %123 = icmp ult i8 %122, 8
  br i1 %123, label %124, label %130

124:                                              ; preds = %86
  store i32 0, ptr %5, align 16, !tbaa !12
  store i32 0, ptr %12, align 4, !tbaa !12
  store i32 0, ptr %14, align 4, !tbaa !12
  %125 = shl nsw i32 %98, 1
  store i32 %125, ptr %13, align 8, !tbaa !12
  %126 = shl nsw i32 %113, 1
  store i32 %126, ptr %17, align 8, !tbaa !12
  %127 = mul nsw i32 %106, 3
  store i32 %127, ptr %16, align 4, !tbaa !12
  %128 = mul nsw i32 %116, 3
  store i32 %128, ptr %18, align 4, !tbaa !12
  %129 = shl nsw i32 %120, 2
  store i32 %129, ptr %19, align 16, !tbaa !12
  br label %200

130:                                              ; preds = %86
  %131 = getelementptr inbounds i8, ptr %1, i64 %92
  %132 = load i8, ptr %131, align 1, !tbaa !15
  %133 = icmp ult i8 %132, 8
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  store i32 0, ptr %12, align 4, !tbaa !12
  store i32 0, ptr %5, align 16, !tbaa !12
  store i32 0, ptr %13, align 8, !tbaa !12
  %135 = shl nsw i32 %102, 1
  store i32 %135, ptr %14, align 4, !tbaa !12
  %136 = shl nsw i32 %106, 1
  store i32 %136, ptr %16, align 4, !tbaa !12
  %137 = mul nsw i32 %113, 3
  store i32 %137, ptr %17, align 8, !tbaa !12
  %138 = mul nsw i32 %120, 3
  store i32 %138, ptr %19, align 16, !tbaa !12
  %139 = shl nsw i32 %116, 2
  store i32 %139, ptr %18, align 4, !tbaa !12
  br label %200

140:                                              ; preds = %130
  %141 = getelementptr inbounds i8, ptr %1, i64 %96
  %142 = load i8, ptr %141, align 1, !tbaa !15
  %143 = icmp ult i8 %142, 8
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  store i32 0, ptr %13, align 8, !tbaa !12
  store i32 0, ptr %12, align 4, !tbaa !12
  store i32 0, ptr %16, align 4, !tbaa !12
  %145 = shl nsw i32 %91, 1
  store i32 %145, ptr %5, align 16, !tbaa !12
  %146 = shl nsw i32 %120, 1
  store i32 %146, ptr %19, align 16, !tbaa !12
  %147 = mul nsw i32 %102, 3
  store i32 %147, ptr %14, align 4, !tbaa !12
  %148 = mul nsw i32 %116, 3
  store i32 %148, ptr %18, align 4, !tbaa !12
  %149 = shl nsw i32 %113, 2
  store i32 %149, ptr %17, align 8, !tbaa !12
  br label %200

150:                                              ; preds = %140
  %151 = getelementptr inbounds i8, ptr %1, i64 %100
  %152 = load i8, ptr %151, align 1, !tbaa !15
  %153 = icmp ult i8 %152, 8
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  store i32 0, ptr %14, align 4, !tbaa !12
  store i32 0, ptr %5, align 16, !tbaa !12
  store i32 0, ptr %17, align 8, !tbaa !12
  %155 = shl nsw i32 %94, 1
  store i32 %155, ptr %12, align 4, !tbaa !12
  %156 = shl nsw i32 %116, 1
  store i32 %156, ptr %18, align 4, !tbaa !12
  %157 = mul nsw i32 %98, 3
  store i32 %157, ptr %13, align 8, !tbaa !12
  %158 = mul nsw i32 %120, 3
  store i32 %158, ptr %19, align 16, !tbaa !12
  %159 = shl nsw i32 %106, 2
  store i32 %159, ptr %16, align 4, !tbaa !12
  br label %200

160:                                              ; preds = %150
  %161 = getelementptr inbounds i8, ptr %1, i64 %104
  %162 = load i8, ptr %161, align 1, !tbaa !15
  %163 = icmp ult i8 %162, 8
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  store i32 0, ptr %16, align 4, !tbaa !12
  store i32 0, ptr %13, align 8, !tbaa !12
  store i32 0, ptr %19, align 16, !tbaa !12
  %165 = shl nsw i32 %94, 1
  store i32 %165, ptr %12, align 4, !tbaa !12
  %166 = shl nsw i32 %116, 1
  store i32 %166, ptr %18, align 4, !tbaa !12
  %167 = mul nsw i32 %91, 3
  store i32 %167, ptr %5, align 16, !tbaa !12
  %168 = mul nsw i32 %113, 3
  store i32 %168, ptr %17, align 8, !tbaa !12
  %169 = shl nsw i32 %102, 2
  store i32 %169, ptr %14, align 4, !tbaa !12
  br label %200

170:                                              ; preds = %160
  %171 = getelementptr inbounds i8, ptr %1, i64 %111
  %172 = load i8, ptr %171, align 1, !tbaa !15
  %173 = icmp ult i8 %172, 8
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  store i32 0, ptr %17, align 8, !tbaa !12
  store i32 0, ptr %14, align 4, !tbaa !12
  store i32 0, ptr %18, align 4, !tbaa !12
  %175 = shl nsw i32 %91, 1
  store i32 %175, ptr %5, align 16, !tbaa !12
  %176 = shl nsw i32 %120, 1
  store i32 %176, ptr %19, align 16, !tbaa !12
  %177 = mul nsw i32 %94, 3
  store i32 %177, ptr %12, align 4, !tbaa !12
  %178 = mul nsw i32 %106, 3
  store i32 %178, ptr %16, align 4, !tbaa !12
  %179 = shl nsw i32 %98, 2
  store i32 %179, ptr %13, align 8, !tbaa !12
  br label %200

180:                                              ; preds = %170
  %181 = getelementptr inbounds i8, ptr %1, i64 %114
  %182 = load i8, ptr %181, align 1, !tbaa !15
  %183 = icmp ult i8 %182, 8
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  store i32 0, ptr %18, align 4, !tbaa !12
  store i32 0, ptr %17, align 8, !tbaa !12
  store i32 0, ptr %19, align 16, !tbaa !12
  %185 = shl nsw i32 %102, 1
  store i32 %185, ptr %14, align 4, !tbaa !12
  %186 = shl nsw i32 %106, 1
  store i32 %186, ptr %16, align 4, !tbaa !12
  %187 = mul nsw i32 %91, 3
  store i32 %187, ptr %5, align 16, !tbaa !12
  %188 = mul nsw i32 %98, 3
  store i32 %188, ptr %13, align 8, !tbaa !12
  %189 = shl nsw i32 %94, 2
  store i32 %189, ptr %12, align 4, !tbaa !12
  br label %200

190:                                              ; preds = %180
  %191 = getelementptr inbounds i8, ptr %1, i64 %118
  %192 = load i8, ptr %191, align 1, !tbaa !15
  %193 = icmp ult i8 %192, 8
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  store i32 0, ptr %19, align 16, !tbaa !12
  store i32 0, ptr %16, align 4, !tbaa !12
  store i32 0, ptr %18, align 4, !tbaa !12
  %195 = shl nsw i32 %113, 1
  store i32 %195, ptr %17, align 8, !tbaa !12
  %196 = shl nsw i32 %98, 1
  store i32 %196, ptr %13, align 8, !tbaa !12
  %197 = mul nsw i32 %94, 3
  store i32 %197, ptr %12, align 4, !tbaa !12
  %198 = mul nsw i32 %102, 3
  store i32 %198, ptr %14, align 4, !tbaa !12
  %199 = shl nsw i32 %91, 2
  store i32 %199, ptr %5, align 16, !tbaa !12
  br label %200

200:                                              ; preds = %134, %154, %174, %190, %194, %184, %164, %144, %124
  br label %201

201:                                              ; preds = %200, %223
  %202 = phi i64 [ %224, %223 ], [ 0, %200 ]
  %203 = phi i32 [ %220, %223 ], [ %28, %200 ]
  %204 = phi i32 [ %218, %223 ], [ %29, %200 ]
  %205 = phi i32 [ %217, %223 ], [ 0, %200 ]
  %206 = mul nuw nsw i64 %202, 3
  %207 = trunc i64 %202 to i32
  br label %208

208:                                              ; preds = %201, %208
  %209 = phi i64 [ 0, %201 ], [ %221, %208 ]
  %210 = phi i32 [ %203, %201 ], [ %220, %208 ]
  %211 = phi i32 [ %204, %201 ], [ %218, %208 ]
  %212 = phi i32 [ %205, %201 ], [ %217, %208 ]
  %213 = add nuw nsw i64 %209, %206
  %214 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !12
  %216 = icmp sgt i32 %215, %212
  %217 = tail call i32 @llvm.smax.i32(i32 %215, i32 %212)
  %218 = select i1 %216, i32 %207, i32 %211
  %219 = trunc i64 %209 to i32
  %220 = select i1 %216, i32 %219, i32 %210
  %221 = add nuw nsw i64 %209, 1
  %222 = icmp eq i64 %221, 3
  br i1 %222, label %223, label %208, !llvm.loop !38

223:                                              ; preds = %208
  %224 = add nuw nsw i64 %202, 1
  %225 = icmp eq i64 %224, 3
  br i1 %225, label %226, label %201, !llvm.loop !39

226:                                              ; preds = %223
  %227 = icmp sgt i32 %217, 0
  br i1 %227, label %228, label %250

228:                                              ; preds = %226
  %229 = load i8, ptr %33, align 1, !tbaa !15
  %230 = icmp ult i8 %229, 4
  %231 = add i8 %229, 1
  %232 = select i1 %230, i8 4, i8 %231
  %233 = add i32 %27, -1
  %234 = add i32 %233, %218
  %235 = mul nsw i32 %234, %2
  %236 = add i32 %220, %26
  %237 = add i32 %236, %235
  %238 = sext i32 %237 to i64
  %239 = getelementptr i8, ptr %20, i64 %238
  store i8 %232, ptr %239, align 1, !tbaa !15
  %240 = shl nsw i32 %218, 1
  %241 = add nsw i32 %240, %220
  %242 = icmp slt i32 %241, 3
  br i1 %242, label %243, label %250

243:                                              ; preds = %228
  %244 = add i32 %27, -1
  %245 = add i32 %244, %218
  %246 = add i32 %26, -2
  %247 = add i32 %246, %220
  %248 = tail call i32 @llvm.smax.i32(i32 %245, i32 4)
  %249 = tail call i32 @llvm.smax.i32(i32 %247, i32 4)
  br label %250

250:                                              ; preds = %83, %36, %243, %226, %228, %84
  %251 = phi i32 [ %218, %243 ], [ %218, %228 ], [ %218, %226 ], [ %29, %84 ], [ %29, %83 ], [ %29, %36 ]
  %252 = phi i32 [ %220, %243 ], [ %220, %228 ], [ %220, %226 ], [ %28, %84 ], [ %28, %83 ], [ %28, %36 ]
  %253 = phi i32 [ %248, %243 ], [ %27, %228 ], [ %27, %226 ], [ %27, %84 ], [ %27, %83 ], [ %27, %36 ]
  %254 = phi i32 [ %249, %243 ], [ %26, %228 ], [ %26, %226 ], [ %26, %84 ], [ %26, %83 ], [ %26, %36 ]
  %255 = icmp eq i32 %82, 2
  br i1 %255, label %256, label %443

256:                                              ; preds = %250
  %257 = add nsw i32 %253, -1
  %258 = mul nsw i32 %257, %2
  %259 = add nsw i32 %258, %254
  %260 = sext i32 %259 to i64
  %261 = getelementptr i8, ptr %1, i64 %260
  %262 = getelementptr i8, ptr %261, i64 -1
  %263 = load i8, ptr %262, align 1, !tbaa !15
  %264 = icmp ult i8 %263, 8
  %265 = zext i1 %264 to i32
  %266 = getelementptr i8, ptr %261, i64 1
  %267 = load i8, ptr %266, align 1, !tbaa !15
  %268 = icmp ult i8 %267, 8
  %269 = zext i1 %268 to i32
  %270 = add nsw i32 %253, 1
  %271 = mul nsw i32 %270, %2
  %272 = add nsw i32 %271, %254
  %273 = sext i32 %272 to i64
  %274 = getelementptr i8, ptr %1, i64 %273
  %275 = getelementptr i8, ptr %274, i64 -1
  %276 = load i8, ptr %275, align 1, !tbaa !15
  %277 = icmp ult i8 %276, 8
  %278 = zext i1 %277 to i32
  %279 = getelementptr i8, ptr %274, i64 1
  %280 = load i8, ptr %279, align 1, !tbaa !15
  %281 = icmp ult i8 %280, 8
  %282 = zext i1 %281 to i32
  %283 = add nuw nsw i32 %269, %265
  %284 = add nuw nsw i32 %283, %278
  %285 = add nuw nsw i32 %284, %282
  %286 = icmp eq i32 %285, 2
  br i1 %286, label %287, label %364

287:                                              ; preds = %256
  %288 = or i32 %282, %265
  %289 = or i32 %278, %269
  %290 = and i32 %288, %289
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %364, label %292

292:                                              ; preds = %287
  %293 = xor i1 %268, true
  %294 = xor i1 %268, true
  br i1 %264, label %295, label %298

295:                                              ; preds = %292
  %296 = sext i1 %293 to i32
  %297 = sext i1 %268 to i32
  br label %301

298:                                              ; preds = %292
  %299 = zext i1 %268 to i32
  %300 = zext i1 %294 to i32
  br label %301

301:                                              ; preds = %298, %295
  %302 = phi i1 [ %268, %295 ], [ %293, %298 ]
  %303 = phi i32 [ %296, %295 ], [ %299, %298 ]
  %304 = phi i1 [ %294, %295 ], [ %268, %298 ]
  %305 = phi i32 [ %297, %295 ], [ %300, %298 ]
  %306 = add nsw i32 %305, %253
  %307 = mul nsw i32 %306, %2
  %308 = add i32 %303, %254
  %309 = add i32 %308, %307
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, ptr %0, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !12
  %313 = sitofp i32 %312 to float
  %314 = sitofp i32 %38 to float
  %315 = fdiv float %313, %314
  %316 = fpext float %315 to double
  %317 = fcmp ogt double %316, 0x3FE6666666666666
  br i1 %317, label %318, label %443

318:                                              ; preds = %301
  br i1 %302, label %319, label %336

319:                                              ; preds = %318
  %320 = shl nsw i32 %305, 1
  %321 = add nsw i32 %320, %253
  %322 = mul nsw i32 %321, %2
  %323 = add nsw i32 %322, %254
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, ptr %1, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !15
  %327 = icmp ugt i8 %326, 7
  br i1 %327, label %328, label %336

328:                                              ; preds = %319
  %329 = getelementptr i8, ptr %325, i64 -1
  %330 = load i8, ptr %329, align 1, !tbaa !15
  %331 = icmp ugt i8 %330, 7
  br i1 %331, label %332, label %336

332:                                              ; preds = %328
  %333 = getelementptr i8, ptr %325, i64 1
  %334 = load i8, ptr %333, align 1, !tbaa !15
  %335 = icmp ugt i8 %334, 7
  br i1 %335, label %358, label %336

336:                                              ; preds = %332, %328, %319, %318
  br i1 %304, label %337, label %443

337:                                              ; preds = %336
  %338 = mul nsw i32 %253, %2
  %339 = add nsw i32 %338, %254
  %340 = shl nsw i32 %303, 1
  %341 = add nsw i32 %339, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, ptr %1, i64 %342
  %344 = load i8, ptr %343, align 1, !tbaa !15
  %345 = icmp ugt i8 %344, 7
  br i1 %345, label %346, label %443

346:                                              ; preds = %337
  %347 = add nsw i32 %340, %272
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, ptr %1, i64 %348
  %350 = load i8, ptr %349, align 1, !tbaa !15
  %351 = icmp ugt i8 %350, 7
  br i1 %351, label %352, label %443

352:                                              ; preds = %346
  %353 = add nsw i32 %340, %259
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, ptr %1, i64 %354
  %356 = load i8, ptr %355, align 1, !tbaa !15
  %357 = icmp ugt i8 %356, 7
  br i1 %357, label %358, label %443

358:                                              ; preds = %352, %332
  %359 = mul nsw i32 %253, %2
  %360 = add nsw i32 %359, %254
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8, ptr %1, i64 %361
  store i8 100, ptr %362, align 1, !tbaa !15
  %363 = getelementptr inbounds i8, ptr %1, i64 %310
  store i8 3, ptr %363, align 1, !tbaa !15
  br label %443

364:                                              ; preds = %287, %256
  %365 = load i8, ptr %261, align 1, !tbaa !15
  %366 = icmp ult i8 %365, 8
  %367 = zext i1 %366 to i32
  %368 = mul nsw i32 %253, %2
  %369 = add nsw i32 %368, %254
  %370 = sext i32 %369 to i64
  %371 = getelementptr i8, ptr %1, i64 %370
  %372 = getelementptr i8, ptr %371, i64 1
  %373 = load i8, ptr %372, align 1, !tbaa !15
  %374 = icmp ult i8 %373, 8
  %375 = zext i1 %374 to i32
  %376 = load i8, ptr %274, align 1, !tbaa !15
  %377 = icmp ult i8 %376, 8
  %378 = zext i1 %377 to i32
  %379 = getelementptr i8, ptr %371, i64 -1
  %380 = load i8, ptr %379, align 1, !tbaa !15
  %381 = icmp ult i8 %380, 8
  %382 = zext i1 %381 to i32
  %383 = add nuw nsw i32 %375, %367
  %384 = add nuw nsw i32 %383, %378
  %385 = add nuw nsw i32 %384, %382
  %386 = icmp eq i32 %385, 2
  br i1 %386, label %387, label %443

387:                                              ; preds = %364
  %388 = or i32 %382, %375
  %389 = or i32 %378, %367
  %390 = and i32 %388, %389
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %443, label %392

392:                                              ; preds = %387
  %393 = add nsw i32 %253, -2
  %394 = mul nsw i32 %393, %2
  %395 = add nsw i32 %394, %254
  %396 = sext i32 %395 to i64
  %397 = getelementptr i8, ptr %1, i64 %396
  %398 = getelementptr i8, ptr %397, i64 -1
  %399 = load i8, ptr %398, align 1, !tbaa !15
  %400 = icmp ult i8 %399, 8
  %401 = getelementptr i8, ptr %397, i64 1
  %402 = load i8, ptr %401, align 1, !tbaa !15
  %403 = icmp ult i8 %402, 8
  %404 = or i1 %400, %403
  %405 = and i1 %366, %404
  %406 = getelementptr i8, ptr %261, i64 -2
  %407 = load i8, ptr %406, align 1, !tbaa !15
  %408 = icmp ult i8 %407, 8
  %409 = getelementptr i8, ptr %274, i64 -2
  %410 = load i8, ptr %409, align 1, !tbaa !15
  %411 = icmp ult i8 %410, 8
  %412 = or i1 %408, %411
  %413 = and i1 %381, %412
  %414 = or i1 %405, %413
  %415 = getelementptr i8, ptr %261, i64 2
  %416 = load i8, ptr %415, align 1, !tbaa !15
  %417 = icmp ult i8 %416, 8
  %418 = getelementptr i8, ptr %274, i64 2
  %419 = load i8, ptr %418, align 1, !tbaa !15
  %420 = icmp ult i8 %419, 8
  %421 = or i1 %417, %420
  %422 = and i1 %374, %421
  %423 = or i1 %414, %422
  %424 = add nsw i32 %253, 2
  %425 = mul nsw i32 %424, %2
  %426 = add nsw i32 %425, %254
  %427 = sext i32 %426 to i64
  %428 = getelementptr i8, ptr %1, i64 %427
  %429 = getelementptr i8, ptr %428, i64 -1
  %430 = load i8, ptr %429, align 1, !tbaa !15
  %431 = icmp ult i8 %430, 8
  %432 = getelementptr i8, ptr %428, i64 1
  %433 = load i8, ptr %432, align 1, !tbaa !15
  %434 = icmp ult i8 %433, 8
  %435 = or i1 %431, %434
  %436 = and i1 %377, %435
  %437 = or i1 %423, %436
  br i1 %437, label %438, label %443

438:                                              ; preds = %392
  store i8 100, ptr %371, align 1, !tbaa !15
  %439 = tail call i32 @llvm.smax.i32(i32 %253, i32 5)
  %440 = add nsw i32 %439, -1
  %441 = tail call i32 @llvm.smax.i32(i32 %254, i32 6)
  %442 = add nsw i32 %441, -2
  br label %443

443:                                              ; preds = %438, %336, %337, %346, %352, %358, %301, %392, %387, %364, %250
  %444 = phi i32 [ %253, %358 ], [ %253, %352 ], [ %253, %346 ], [ %253, %337 ], [ %253, %336 ], [ %253, %301 ], [ %440, %438 ], [ %253, %392 ], [ %253, %387 ], [ %253, %364 ], [ %253, %250 ]
  %445 = phi i32 [ %254, %358 ], [ %254, %352 ], [ %254, %346 ], [ %254, %337 ], [ %254, %336 ], [ %254, %301 ], [ %442, %438 ], [ %254, %392 ], [ %254, %387 ], [ %254, %364 ], [ %254, %250 ]
  %446 = icmp sgt i32 %82, 2
  br i1 %446, label %447, label %518

447:                                              ; preds = %443
  %448 = add nsw i32 %444, -1
  %449 = mul nsw i32 %448, %2
  %450 = add nsw i32 %449, %445
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8, ptr %1, i64 %451
  %453 = load i8, ptr %452, align 1, !tbaa !15
  %454 = icmp ult i8 %453, 8
  %455 = zext i1 %454 to i32
  %456 = mul nsw i32 %444, %2
  %457 = add nsw i32 %456, %445
  %458 = sext i32 %457 to i64
  %459 = getelementptr i8, ptr %1, i64 %458
  %460 = getelementptr i8, ptr %459, i64 1
  %461 = load i8, ptr %460, align 1, !tbaa !15
  %462 = icmp ult i8 %461, 8
  %463 = zext i1 %462 to i32
  %464 = add nsw i32 %444, 1
  %465 = mul nsw i32 %464, %2
  %466 = add nsw i32 %465, %445
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8, ptr %1, i64 %467
  %469 = load i8, ptr %468, align 1, !tbaa !15
  %470 = icmp ult i8 %469, 8
  %471 = zext i1 %470 to i32
  %472 = getelementptr i8, ptr %459, i64 -1
  %473 = load i8, ptr %472, align 1, !tbaa !15
  %474 = icmp ult i8 %473, 8
  %475 = zext i1 %474 to i32
  %476 = add nuw nsw i32 %463, %455
  %477 = add nuw nsw i32 %476, %471
  %478 = add nuw nsw i32 %477, %475
  %479 = icmp ugt i32 %478, 1
  br i1 %479, label %480, label %518

480:                                              ; preds = %447
  %481 = getelementptr i8, ptr %452, i64 -1
  %482 = load i8, ptr %481, align 1, !tbaa !15
  %483 = icmp ult i8 %482, 8
  %484 = getelementptr i8, ptr %452, i64 1
  %485 = load i8, ptr %484, align 1, !tbaa !15
  %486 = icmp ult i8 %485, 8
  %487 = getelementptr i8, ptr %468, i64 -1
  %488 = load i8, ptr %487, align 1, !tbaa !15
  %489 = icmp ult i8 %488, 8
  %490 = getelementptr i8, ptr %468, i64 1
  %491 = load i8, ptr %490, align 1, !tbaa !15
  %492 = icmp ult i8 %491, 8
  %493 = or i1 %454, %483
  %494 = zext i1 %493 to i32
  %495 = or i1 %462, %486
  %496 = zext i1 %495 to i32
  %497 = or i1 %470, %492
  %498 = zext i1 %497 to i32
  %499 = or i1 %474, %489
  %500 = zext i1 %499 to i32
  %501 = and i32 %496, %455
  %502 = and i32 %498, %463
  %503 = and i32 %500, %471
  %504 = and i32 %494, %475
  %505 = add nuw nsw i32 %496, %494
  %506 = add nuw nsw i32 %505, %500
  %507 = add nuw nsw i32 %504, %501
  %508 = add nuw nsw i32 %506, %498
  %509 = add nuw nsw i32 %507, %503
  %510 = add nuw nsw i32 %509, %502
  %511 = sub nsw i32 %508, %510
  %512 = icmp slt i32 %511, 2
  br i1 %512, label %513, label %518

513:                                              ; preds = %480
  store i8 100, ptr %459, align 1, !tbaa !15
  %514 = tail call i32 @llvm.smax.i32(i32 %444, i32 5)
  %515 = add nsw i32 %514, -1
  %516 = tail call i32 @llvm.smax.i32(i32 %445, i32 6)
  %517 = add nsw i32 %516, -2
  br label %518

518:                                              ; preds = %513, %25, %447, %480, %443
  %519 = phi i32 [ %251, %513 ], [ %251, %480 ], [ %251, %447 ], [ %251, %443 ], [ %29, %25 ]
  %520 = phi i32 [ %252, %513 ], [ %252, %480 ], [ %252, %447 ], [ %252, %443 ], [ %28, %25 ]
  %521 = phi i32 [ %515, %513 ], [ %444, %480 ], [ %444, %447 ], [ %444, %443 ], [ %27, %25 ]
  %522 = phi i32 [ %517, %513 ], [ %445, %480 ], [ %445, %447 ], [ %445, %443 ], [ %26, %25 ]
  %523 = add nsw i32 %522, 1
  %524 = icmp slt i32 %523, %9
  br i1 %524, label %25, label %525, !llvm.loop !40

525:                                              ; preds = %518, %21
  %526 = phi i32 [ %24, %21 ], [ %519, %518 ]
  %527 = phi i32 [ %23, %21 ], [ %520, %518 ]
  %528 = phi i32 [ %22, %21 ], [ %521, %518 ]
  %529 = add nsw i32 %528, 1
  %530 = icmp slt i32 %529, %6
  br i1 %530, label %21, label %531, !llvm.loop !41

531:                                              ; preds = %525, %4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  ret i32 undef
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local i32 @susan_edges(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #14 {
  %8 = mul nsw i32 %6, %5
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %10, i1 false)
  %11 = icmp sgt i32 %6, 6
  br i1 %11, label %12, label %33

12:                                               ; preds = %7
  %13 = add nsw i32 %6, -3
  %14 = add i32 %5, -3
  %15 = icmp sgt i32 %5, 6
  %16 = sext i32 %14 to i64
  %17 = add nsw i32 %5, -5
  %18 = sext i32 %17 to i64
  %19 = add nsw i32 %5, -6
  %20 = sext i32 %19 to i64
  %21 = sext i32 %5 to i64
  %22 = zext i32 %13 to i64
  %23 = zext i32 %14 to i64
  br label %24

24:                                               ; preds = %12, %357
  %25 = phi i64 [ 3, %12 ], [ %358, %357 ]
  br i1 %15, label %26, label %357

26:                                               ; preds = %24
  %27 = add nsw i64 %25, -3
  %28 = mul nsw i64 %27, %21
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = trunc i64 %25 to i32
  %31 = mul i32 %30, %5
  %32 = zext i32 %31 to i64
  br label %55

33:                                               ; preds = %357, %7
  %34 = icmp sgt i32 %6, 8
  br i1 %34, label %35, label %1188

35:                                               ; preds = %33
  %36 = add nsw i32 %6, -4
  %37 = add i32 %5, -4
  %38 = icmp sgt i32 %5, 8
  %39 = add nsw i32 %5, -3
  %40 = sext i32 %39 to i64
  %41 = add nsw i32 %5, -5
  %42 = sext i32 %41 to i64
  %43 = add nsw i32 %5, -6
  %44 = sext i32 %43 to i64
  %45 = add nsw i32 %5, -3
  %46 = sext i32 %45 to i64
  %47 = add nsw i32 %5, -5
  %48 = sext i32 %47 to i64
  %49 = add nsw i32 %5, -6
  %50 = sext i32 %49 to i64
  %51 = sext i32 %5 to i64
  %52 = sext i32 %5 to i64
  %53 = zext i32 %36 to i64
  %54 = zext i32 %37 to i64
  br label %360

55:                                               ; preds = %26, %354
  %56 = phi i64 [ 3, %26 ], [ %355, %354 ]
  %57 = getelementptr inbounds i8, ptr %29, i64 %56
  %58 = getelementptr inbounds i8, ptr %57, i64 -1
  %59 = add nuw nsw i64 %56, %32
  %60 = getelementptr inbounds i8, ptr %0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !15
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i8, ptr %3, i64 %62
  %64 = load i8, ptr %58, align 1, !tbaa !15
  %65 = zext i8 %64 to i64
  %66 = sub nsw i64 0, %65
  %67 = getelementptr inbounds i8, ptr %63, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !15
  %69 = zext i8 %68 to i32
  %70 = add nuw nsw i32 %69, 100
  %71 = getelementptr inbounds i8, ptr %57, i64 1
  %72 = load i8, ptr %57, align 1, !tbaa !15
  %73 = zext i8 %72 to i64
  %74 = sub nsw i64 0, %73
  %75 = getelementptr inbounds i8, ptr %63, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !15
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %70, %77
  %79 = load i8, ptr %71, align 1, !tbaa !15
  %80 = zext i8 %79 to i64
  %81 = sub nsw i64 0, %80
  %82 = getelementptr inbounds i8, ptr %63, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !15
  %84 = zext i8 %83 to i32
  %85 = add nuw nsw i32 %78, %84
  %86 = getelementptr inbounds i8, ptr %71, i64 %16
  %87 = getelementptr inbounds i8, ptr %86, i64 1
  %88 = load i8, ptr %86, align 1, !tbaa !15
  %89 = zext i8 %88 to i64
  %90 = sub nsw i64 0, %89
  %91 = getelementptr inbounds i8, ptr %63, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !15
  %93 = zext i8 %92 to i32
  %94 = add nuw nsw i32 %85, %93
  %95 = getelementptr inbounds i8, ptr %86, i64 2
  %96 = load i8, ptr %87, align 1, !tbaa !15
  %97 = zext i8 %96 to i64
  %98 = sub nsw i64 0, %97
  %99 = getelementptr inbounds i8, ptr %63, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !15
  %101 = zext i8 %100 to i32
  %102 = add nuw nsw i32 %94, %101
  %103 = getelementptr inbounds i8, ptr %86, i64 3
  %104 = load i8, ptr %95, align 1, !tbaa !15
  %105 = zext i8 %104 to i64
  %106 = sub nsw i64 0, %105
  %107 = getelementptr inbounds i8, ptr %63, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !15
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i32 %102, %109
  %111 = getelementptr inbounds i8, ptr %86, i64 4
  %112 = load i8, ptr %103, align 1, !tbaa !15
  %113 = zext i8 %112 to i64
  %114 = sub nsw i64 0, %113
  %115 = getelementptr inbounds i8, ptr %63, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !15
  %117 = zext i8 %116 to i32
  %118 = add nuw nsw i32 %110, %117
  %119 = load i8, ptr %111, align 1, !tbaa !15
  %120 = zext i8 %119 to i64
  %121 = sub nsw i64 0, %120
  %122 = getelementptr inbounds i8, ptr %63, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !15
  %124 = zext i8 %123 to i32
  %125 = add nuw nsw i32 %118, %124
  %126 = getelementptr inbounds i8, ptr %111, i64 %18
  %127 = getelementptr inbounds i8, ptr %126, i64 1
  %128 = load i8, ptr %126, align 1, !tbaa !15
  %129 = zext i8 %128 to i64
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i8, ptr %63, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !15
  %133 = zext i8 %132 to i32
  %134 = add nuw nsw i32 %125, %133
  %135 = getelementptr inbounds i8, ptr %126, i64 2
  %136 = load i8, ptr %127, align 1, !tbaa !15
  %137 = zext i8 %136 to i64
  %138 = sub nsw i64 0, %137
  %139 = getelementptr inbounds i8, ptr %63, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !15
  %141 = zext i8 %140 to i32
  %142 = add nuw nsw i32 %134, %141
  %143 = getelementptr inbounds i8, ptr %126, i64 3
  %144 = load i8, ptr %135, align 1, !tbaa !15
  %145 = zext i8 %144 to i64
  %146 = sub nsw i64 0, %145
  %147 = getelementptr inbounds i8, ptr %63, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !15
  %149 = zext i8 %148 to i32
  %150 = add nuw nsw i32 %142, %149
  %151 = getelementptr inbounds i8, ptr %126, i64 4
  %152 = load i8, ptr %143, align 1, !tbaa !15
  %153 = zext i8 %152 to i64
  %154 = sub nsw i64 0, %153
  %155 = getelementptr inbounds i8, ptr %63, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !15
  %157 = zext i8 %156 to i32
  %158 = add nuw nsw i32 %150, %157
  %159 = getelementptr inbounds i8, ptr %126, i64 5
  %160 = load i8, ptr %151, align 1, !tbaa !15
  %161 = zext i8 %160 to i64
  %162 = sub nsw i64 0, %161
  %163 = getelementptr inbounds i8, ptr %63, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !15
  %165 = zext i8 %164 to i32
  %166 = add nuw nsw i32 %158, %165
  %167 = getelementptr inbounds i8, ptr %126, i64 6
  %168 = load i8, ptr %159, align 1, !tbaa !15
  %169 = zext i8 %168 to i64
  %170 = sub nsw i64 0, %169
  %171 = getelementptr inbounds i8, ptr %63, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !15
  %173 = zext i8 %172 to i32
  %174 = add nuw nsw i32 %166, %173
  %175 = load i8, ptr %167, align 1, !tbaa !15
  %176 = zext i8 %175 to i64
  %177 = sub nsw i64 0, %176
  %178 = getelementptr inbounds i8, ptr %63, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !15
  %180 = zext i8 %179 to i32
  %181 = add nuw nsw i32 %174, %180
  %182 = getelementptr inbounds i8, ptr %167, i64 %20
  %183 = getelementptr inbounds i8, ptr %182, i64 1
  %184 = load i8, ptr %182, align 1, !tbaa !15
  %185 = zext i8 %184 to i64
  %186 = sub nsw i64 0, %185
  %187 = getelementptr inbounds i8, ptr %63, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !15
  %189 = zext i8 %188 to i32
  %190 = add nuw nsw i32 %181, %189
  %191 = getelementptr inbounds i8, ptr %182, i64 2
  %192 = load i8, ptr %183, align 1, !tbaa !15
  %193 = zext i8 %192 to i64
  %194 = sub nsw i64 0, %193
  %195 = getelementptr inbounds i8, ptr %63, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !15
  %197 = zext i8 %196 to i32
  %198 = add nuw nsw i32 %190, %197
  %199 = load i8, ptr %191, align 1, !tbaa !15
  %200 = zext i8 %199 to i64
  %201 = sub nsw i64 0, %200
  %202 = getelementptr inbounds i8, ptr %63, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !15
  %204 = zext i8 %203 to i32
  %205 = add nuw nsw i32 %198, %204
  %206 = getelementptr inbounds i8, ptr %182, i64 4
  %207 = getelementptr inbounds i8, ptr %182, i64 5
  %208 = load i8, ptr %206, align 1, !tbaa !15
  %209 = zext i8 %208 to i64
  %210 = sub nsw i64 0, %209
  %211 = getelementptr inbounds i8, ptr %63, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !15
  %213 = zext i8 %212 to i32
  %214 = add nuw nsw i32 %205, %213
  %215 = getelementptr inbounds i8, ptr %182, i64 6
  %216 = load i8, ptr %207, align 1, !tbaa !15
  %217 = zext i8 %216 to i64
  %218 = sub nsw i64 0, %217
  %219 = getelementptr inbounds i8, ptr %63, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !15
  %221 = zext i8 %220 to i32
  %222 = add nuw nsw i32 %214, %221
  %223 = load i8, ptr %215, align 1, !tbaa !15
  %224 = zext i8 %223 to i64
  %225 = sub nsw i64 0, %224
  %226 = getelementptr inbounds i8, ptr %63, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !15
  %228 = zext i8 %227 to i32
  %229 = add nuw nsw i32 %222, %228
  %230 = getelementptr inbounds i8, ptr %215, i64 %20
  %231 = getelementptr inbounds i8, ptr %230, i64 1
  %232 = load i8, ptr %230, align 1, !tbaa !15
  %233 = zext i8 %232 to i64
  %234 = sub nsw i64 0, %233
  %235 = getelementptr inbounds i8, ptr %63, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !15
  %237 = zext i8 %236 to i32
  %238 = add nuw nsw i32 %229, %237
  %239 = getelementptr inbounds i8, ptr %230, i64 2
  %240 = load i8, ptr %231, align 1, !tbaa !15
  %241 = zext i8 %240 to i64
  %242 = sub nsw i64 0, %241
  %243 = getelementptr inbounds i8, ptr %63, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !15
  %245 = zext i8 %244 to i32
  %246 = add nuw nsw i32 %238, %245
  %247 = getelementptr inbounds i8, ptr %230, i64 3
  %248 = load i8, ptr %239, align 1, !tbaa !15
  %249 = zext i8 %248 to i64
  %250 = sub nsw i64 0, %249
  %251 = getelementptr inbounds i8, ptr %63, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !15
  %253 = zext i8 %252 to i32
  %254 = add nuw nsw i32 %246, %253
  %255 = getelementptr inbounds i8, ptr %230, i64 4
  %256 = load i8, ptr %247, align 1, !tbaa !15
  %257 = zext i8 %256 to i64
  %258 = sub nsw i64 0, %257
  %259 = getelementptr inbounds i8, ptr %63, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !15
  %261 = zext i8 %260 to i32
  %262 = add nuw nsw i32 %254, %261
  %263 = getelementptr inbounds i8, ptr %230, i64 5
  %264 = load i8, ptr %255, align 1, !tbaa !15
  %265 = zext i8 %264 to i64
  %266 = sub nsw i64 0, %265
  %267 = getelementptr inbounds i8, ptr %63, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !15
  %269 = zext i8 %268 to i32
  %270 = add nuw nsw i32 %262, %269
  %271 = getelementptr inbounds i8, ptr %230, i64 6
  %272 = load i8, ptr %263, align 1, !tbaa !15
  %273 = zext i8 %272 to i64
  %274 = sub nsw i64 0, %273
  %275 = getelementptr inbounds i8, ptr %63, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !15
  %277 = zext i8 %276 to i32
  %278 = add nuw nsw i32 %270, %277
  %279 = load i8, ptr %271, align 1, !tbaa !15
  %280 = zext i8 %279 to i64
  %281 = sub nsw i64 0, %280
  %282 = getelementptr inbounds i8, ptr %63, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !15
  %284 = zext i8 %283 to i32
  %285 = add nuw nsw i32 %278, %284
  %286 = getelementptr inbounds i8, ptr %271, i64 %18
  %287 = getelementptr inbounds i8, ptr %286, i64 1
  %288 = load i8, ptr %286, align 1, !tbaa !15
  %289 = zext i8 %288 to i64
  %290 = sub nsw i64 0, %289
  %291 = getelementptr inbounds i8, ptr %63, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !15
  %293 = zext i8 %292 to i32
  %294 = add nuw nsw i32 %285, %293
  %295 = getelementptr inbounds i8, ptr %286, i64 2
  %296 = load i8, ptr %287, align 1, !tbaa !15
  %297 = zext i8 %296 to i64
  %298 = sub nsw i64 0, %297
  %299 = getelementptr inbounds i8, ptr %63, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !15
  %301 = zext i8 %300 to i32
  %302 = add nuw nsw i32 %294, %301
  %303 = getelementptr inbounds i8, ptr %286, i64 3
  %304 = load i8, ptr %295, align 1, !tbaa !15
  %305 = zext i8 %304 to i64
  %306 = sub nsw i64 0, %305
  %307 = getelementptr inbounds i8, ptr %63, i64 %306
  %308 = load i8, ptr %307, align 1, !tbaa !15
  %309 = zext i8 %308 to i32
  %310 = add nuw nsw i32 %302, %309
  %311 = getelementptr inbounds i8, ptr %286, i64 4
  %312 = load i8, ptr %303, align 1, !tbaa !15
  %313 = zext i8 %312 to i64
  %314 = sub nsw i64 0, %313
  %315 = getelementptr inbounds i8, ptr %63, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !15
  %317 = zext i8 %316 to i32
  %318 = add nuw nsw i32 %310, %317
  %319 = load i8, ptr %311, align 1, !tbaa !15
  %320 = zext i8 %319 to i64
  %321 = sub nsw i64 0, %320
  %322 = getelementptr inbounds i8, ptr %63, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !15
  %324 = zext i8 %323 to i32
  %325 = add nuw nsw i32 %318, %324
  %326 = getelementptr inbounds i8, ptr %311, i64 %16
  %327 = getelementptr inbounds i8, ptr %326, i64 1
  %328 = load i8, ptr %326, align 1, !tbaa !15
  %329 = zext i8 %328 to i64
  %330 = sub nsw i64 0, %329
  %331 = getelementptr inbounds i8, ptr %63, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !15
  %333 = zext i8 %332 to i32
  %334 = add nuw nsw i32 %325, %333
  %335 = getelementptr inbounds i8, ptr %326, i64 2
  %336 = load i8, ptr %327, align 1, !tbaa !15
  %337 = zext i8 %336 to i64
  %338 = sub nsw i64 0, %337
  %339 = getelementptr inbounds i8, ptr %63, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !15
  %341 = zext i8 %340 to i32
  %342 = add nuw nsw i32 %334, %341
  %343 = load i8, ptr %335, align 1, !tbaa !15
  %344 = zext i8 %343 to i64
  %345 = sub nsw i64 0, %344
  %346 = getelementptr inbounds i8, ptr %63, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !15
  %348 = zext i8 %347 to i32
  %349 = add nuw nsw i32 %342, %348
  %350 = icmp sgt i32 %349, %4
  br i1 %350, label %354, label %351

351:                                              ; preds = %55
  %352 = sub nsw i32 %4, %349
  %353 = getelementptr inbounds i32, ptr %1, i64 %59
  store i32 %352, ptr %353, align 4, !tbaa !12
  br label %354

354:                                              ; preds = %55, %351
  %355 = add nuw nsw i64 %56, 1
  %356 = icmp eq i64 %355, %23
  br i1 %356, label %357, label %55, !llvm.loop !42

357:                                              ; preds = %354, %24
  %358 = add nuw nsw i64 %25, 1
  %359 = icmp eq i64 %358, %22
  br i1 %359, label %33, label %24, !llvm.loop !43

360:                                              ; preds = %35, %1185
  %361 = phi i64 [ 4, %35 ], [ %1186, %1185 ]
  br i1 %38, label %362, label %1185

362:                                              ; preds = %360
  %363 = add nsw i64 %361, -3
  %364 = mul nsw i64 %363, %52
  %365 = getelementptr inbounds i8, ptr %0, i64 %364
  %366 = add nsw i64 %361, -3
  %367 = mul nsw i64 %366, %51
  %368 = getelementptr inbounds i8, ptr %0, i64 %367
  %369 = trunc i64 %361 to i32
  %370 = mul i32 %369, %5
  %371 = zext i32 %370 to i64
  %372 = trunc i64 %361 to i32
  %373 = trunc i64 %361 to i32
  %374 = trunc i64 %361 to i32
  %375 = trunc i64 %361 to i32
  %376 = trunc i64 %361 to i32
  %377 = trunc i64 %361 to i32
  %378 = trunc i64 %361 to i32
  %379 = trunc i64 %361 to i32
  br label %380

380:                                              ; preds = %362, %1182
  %381 = phi i64 [ 4, %362 ], [ %1183, %1182 ]
  %382 = add nuw nsw i64 %381, %371
  %383 = getelementptr inbounds i32, ptr %1, i64 %382
  %384 = load i32, ptr %383, align 4, !tbaa !12
  %385 = icmp sgt i32 %384, 0
  br i1 %385, label %386, label %1182

386:                                              ; preds = %380
  %387 = sub nsw i32 %4, %384
  %388 = getelementptr inbounds i8, ptr %0, i64 %382
  %389 = load i8, ptr %388, align 1, !tbaa !15
  %390 = zext i8 %389 to i64
  %391 = getelementptr inbounds i8, ptr %3, i64 %390
  %392 = icmp sgt i32 %387, 600
  br i1 %392, label %393, label %778

393:                                              ; preds = %386
  %394 = getelementptr inbounds i8, ptr %365, i64 %381
  %395 = getelementptr inbounds i8, ptr %394, i64 -1
  %396 = load i8, ptr %395, align 1, !tbaa !15
  %397 = zext i8 %396 to i64
  %398 = sub nsw i64 0, %397
  %399 = getelementptr inbounds i8, ptr %391, i64 %398
  %400 = load i8, ptr %399, align 1, !tbaa !15
  %401 = zext i8 %400 to i32
  %402 = getelementptr inbounds i8, ptr %394, i64 1
  %403 = load i8, ptr %394, align 1, !tbaa !15
  %404 = zext i8 %403 to i64
  %405 = sub nsw i64 0, %404
  %406 = getelementptr inbounds i8, ptr %391, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !15
  %408 = zext i8 %407 to i32
  %409 = add nuw nsw i32 %408, %401
  %410 = load i8, ptr %402, align 1, !tbaa !15
  %411 = zext i8 %410 to i64
  %412 = sub nsw i64 0, %411
  %413 = getelementptr inbounds i8, ptr %391, i64 %412
  %414 = load i8, ptr %413, align 1, !tbaa !15
  %415 = zext i8 %414 to i32
  %416 = add nuw nsw i32 %409, %415
  %417 = getelementptr inbounds i8, ptr %402, i64 %40
  %418 = getelementptr inbounds i8, ptr %417, i64 1
  %419 = load i8, ptr %417, align 1, !tbaa !15
  %420 = zext i8 %419 to i64
  %421 = sub nsw i64 0, %420
  %422 = getelementptr inbounds i8, ptr %391, i64 %421
  %423 = load i8, ptr %422, align 1, !tbaa !15
  %424 = zext i8 %423 to i32
  %425 = getelementptr inbounds i8, ptr %417, i64 2
  %426 = load i8, ptr %418, align 1, !tbaa !15
  %427 = zext i8 %426 to i64
  %428 = sub nsw i64 0, %427
  %429 = getelementptr inbounds i8, ptr %391, i64 %428
  %430 = load i8, ptr %429, align 1, !tbaa !15
  %431 = zext i8 %430 to i32
  %432 = add nuw nsw i32 %431, %424
  %433 = getelementptr inbounds i8, ptr %417, i64 3
  %434 = load i8, ptr %425, align 1, !tbaa !15
  %435 = zext i8 %434 to i64
  %436 = sub nsw i64 0, %435
  %437 = getelementptr inbounds i8, ptr %391, i64 %436
  %438 = load i8, ptr %437, align 1, !tbaa !15
  %439 = zext i8 %438 to i32
  %440 = add nuw nsw i32 %432, %439
  %441 = getelementptr inbounds i8, ptr %417, i64 4
  %442 = load i8, ptr %433, align 1, !tbaa !15
  %443 = zext i8 %442 to i64
  %444 = sub nsw i64 0, %443
  %445 = getelementptr inbounds i8, ptr %391, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !15
  %447 = zext i8 %446 to i32
  %448 = add nuw nsw i32 %440, %447
  %449 = load i8, ptr %441, align 1, !tbaa !15
  %450 = zext i8 %449 to i64
  %451 = sub nsw i64 0, %450
  %452 = getelementptr inbounds i8, ptr %391, i64 %451
  %453 = load i8, ptr %452, align 1, !tbaa !15
  %454 = zext i8 %453 to i32
  %455 = add nuw nsw i32 %448, %454
  %456 = getelementptr inbounds i8, ptr %441, i64 %42
  %457 = getelementptr inbounds i8, ptr %456, i64 1
  %458 = load i8, ptr %456, align 1, !tbaa !15
  %459 = zext i8 %458 to i64
  %460 = sub nsw i64 0, %459
  %461 = getelementptr inbounds i8, ptr %391, i64 %460
  %462 = load i8, ptr %461, align 1, !tbaa !15
  %463 = zext i8 %462 to i32
  %464 = getelementptr inbounds i8, ptr %456, i64 2
  %465 = load i8, ptr %457, align 1, !tbaa !15
  %466 = zext i8 %465 to i64
  %467 = sub nsw i64 0, %466
  %468 = getelementptr inbounds i8, ptr %391, i64 %467
  %469 = load i8, ptr %468, align 1, !tbaa !15
  %470 = zext i8 %469 to i32
  %471 = getelementptr inbounds i8, ptr %456, i64 3
  %472 = load i8, ptr %464, align 1, !tbaa !15
  %473 = zext i8 %472 to i64
  %474 = sub nsw i64 0, %473
  %475 = getelementptr inbounds i8, ptr %391, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !15
  %477 = zext i8 %476 to i32
  %478 = getelementptr inbounds i8, ptr %456, i64 4
  %479 = load i8, ptr %471, align 1, !tbaa !15
  %480 = zext i8 %479 to i64
  %481 = sub nsw i64 0, %480
  %482 = getelementptr inbounds i8, ptr %391, i64 %481
  %483 = load i8, ptr %482, align 1, !tbaa !15
  %484 = zext i8 %483 to i32
  %485 = getelementptr inbounds i8, ptr %456, i64 5
  %486 = load i8, ptr %478, align 1, !tbaa !15
  %487 = zext i8 %486 to i64
  %488 = sub nsw i64 0, %487
  %489 = getelementptr inbounds i8, ptr %391, i64 %488
  %490 = load i8, ptr %489, align 1, !tbaa !15
  %491 = zext i8 %490 to i32
  %492 = getelementptr inbounds i8, ptr %456, i64 6
  %493 = load i8, ptr %485, align 1, !tbaa !15
  %494 = zext i8 %493 to i64
  %495 = sub nsw i64 0, %494
  %496 = getelementptr inbounds i8, ptr %391, i64 %495
  %497 = load i8, ptr %496, align 1, !tbaa !15
  %498 = zext i8 %497 to i32
  %499 = load i8, ptr %492, align 1, !tbaa !15
  %500 = zext i8 %499 to i64
  %501 = sub nsw i64 0, %500
  %502 = getelementptr inbounds i8, ptr %391, i64 %501
  %503 = load i8, ptr %502, align 1, !tbaa !15
  %504 = zext i8 %503 to i32
  %505 = getelementptr inbounds i8, ptr %492, i64 %44
  %506 = getelementptr inbounds i8, ptr %505, i64 1
  %507 = load i8, ptr %505, align 1, !tbaa !15
  %508 = zext i8 %507 to i64
  %509 = sub nsw i64 0, %508
  %510 = getelementptr inbounds i8, ptr %391, i64 %509
  %511 = load i8, ptr %510, align 1, !tbaa !15
  %512 = zext i8 %511 to i32
  %513 = getelementptr inbounds i8, ptr %505, i64 2
  %514 = load i8, ptr %506, align 1, !tbaa !15
  %515 = zext i8 %514 to i64
  %516 = sub nsw i64 0, %515
  %517 = getelementptr inbounds i8, ptr %391, i64 %516
  %518 = load i8, ptr %517, align 1, !tbaa !15
  %519 = zext i8 %518 to i32
  %520 = load i8, ptr %513, align 1, !tbaa !15
  %521 = zext i8 %520 to i64
  %522 = sub nsw i64 0, %521
  %523 = getelementptr inbounds i8, ptr %391, i64 %522
  %524 = load i8, ptr %523, align 1, !tbaa !15
  %525 = zext i8 %524 to i32
  %526 = getelementptr inbounds i8, ptr %505, i64 4
  %527 = getelementptr inbounds i8, ptr %505, i64 5
  %528 = load i8, ptr %526, align 1, !tbaa !15
  %529 = zext i8 %528 to i64
  %530 = sub nsw i64 0, %529
  %531 = getelementptr inbounds i8, ptr %391, i64 %530
  %532 = load i8, ptr %531, align 1, !tbaa !15
  %533 = zext i8 %532 to i32
  %534 = getelementptr inbounds i8, ptr %505, i64 6
  %535 = load i8, ptr %527, align 1, !tbaa !15
  %536 = zext i8 %535 to i64
  %537 = sub nsw i64 0, %536
  %538 = getelementptr inbounds i8, ptr %391, i64 %537
  %539 = load i8, ptr %538, align 1, !tbaa !15
  %540 = zext i8 %539 to i32
  %541 = load i8, ptr %534, align 1, !tbaa !15
  %542 = zext i8 %541 to i64
  %543 = sub nsw i64 0, %542
  %544 = getelementptr inbounds i8, ptr %391, i64 %543
  %545 = load i8, ptr %544, align 1, !tbaa !15
  %546 = zext i8 %545 to i32
  %547 = getelementptr inbounds i8, ptr %534, i64 %44
  %548 = getelementptr inbounds i8, ptr %547, i64 1
  %549 = load i8, ptr %547, align 1, !tbaa !15
  %550 = zext i8 %549 to i64
  %551 = sub nsw i64 0, %550
  %552 = getelementptr inbounds i8, ptr %391, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !15
  %554 = zext i8 %553 to i32
  %555 = getelementptr inbounds i8, ptr %547, i64 2
  %556 = load i8, ptr %548, align 1, !tbaa !15
  %557 = zext i8 %556 to i64
  %558 = sub nsw i64 0, %557
  %559 = getelementptr inbounds i8, ptr %391, i64 %558
  %560 = load i8, ptr %559, align 1, !tbaa !15
  %561 = zext i8 %560 to i32
  %562 = getelementptr inbounds i8, ptr %547, i64 3
  %563 = load i8, ptr %555, align 1, !tbaa !15
  %564 = zext i8 %563 to i64
  %565 = sub nsw i64 0, %564
  %566 = getelementptr inbounds i8, ptr %391, i64 %565
  %567 = load i8, ptr %566, align 1, !tbaa !15
  %568 = zext i8 %567 to i32
  %569 = getelementptr inbounds i8, ptr %547, i64 4
  %570 = load i8, ptr %562, align 1, !tbaa !15
  %571 = zext i8 %570 to i64
  %572 = sub nsw i64 0, %571
  %573 = getelementptr inbounds i8, ptr %391, i64 %572
  %574 = load i8, ptr %573, align 1, !tbaa !15
  %575 = zext i8 %574 to i32
  %576 = getelementptr inbounds i8, ptr %547, i64 5
  %577 = load i8, ptr %569, align 1, !tbaa !15
  %578 = zext i8 %577 to i64
  %579 = sub nsw i64 0, %578
  %580 = getelementptr inbounds i8, ptr %391, i64 %579
  %581 = load i8, ptr %580, align 1, !tbaa !15
  %582 = zext i8 %581 to i32
  %583 = getelementptr inbounds i8, ptr %547, i64 6
  %584 = load i8, ptr %576, align 1, !tbaa !15
  %585 = zext i8 %584 to i64
  %586 = sub nsw i64 0, %585
  %587 = getelementptr inbounds i8, ptr %391, i64 %586
  %588 = load i8, ptr %587, align 1, !tbaa !15
  %589 = zext i8 %588 to i32
  %590 = load i8, ptr %583, align 1, !tbaa !15
  %591 = zext i8 %590 to i64
  %592 = sub nsw i64 0, %591
  %593 = getelementptr inbounds i8, ptr %391, i64 %592
  %594 = load i8, ptr %593, align 1, !tbaa !15
  %595 = zext i8 %594 to i32
  %596 = getelementptr inbounds i8, ptr %583, i64 %42
  %597 = getelementptr inbounds i8, ptr %596, i64 1
  %598 = load i8, ptr %596, align 1, !tbaa !15
  %599 = zext i8 %598 to i64
  %600 = sub nsw i64 0, %599
  %601 = getelementptr inbounds i8, ptr %391, i64 %600
  %602 = load i8, ptr %601, align 1, !tbaa !15
  %603 = zext i8 %602 to i32
  %604 = shl nuw nsw i32 %603, 1
  %605 = getelementptr inbounds i8, ptr %596, i64 2
  %606 = load i8, ptr %597, align 1, !tbaa !15
  %607 = zext i8 %606 to i64
  %608 = sub nsw i64 0, %607
  %609 = getelementptr inbounds i8, ptr %391, i64 %608
  %610 = load i8, ptr %609, align 1, !tbaa !15
  %611 = zext i8 %610 to i32
  %612 = getelementptr inbounds i8, ptr %596, i64 3
  %613 = load i8, ptr %605, align 1, !tbaa !15
  %614 = zext i8 %613 to i64
  %615 = sub nsw i64 0, %614
  %616 = getelementptr inbounds i8, ptr %391, i64 %615
  %617 = load i8, ptr %616, align 1, !tbaa !15
  %618 = zext i8 %617 to i32
  %619 = getelementptr inbounds i8, ptr %596, i64 4
  %620 = load i8, ptr %612, align 1, !tbaa !15
  %621 = zext i8 %620 to i64
  %622 = sub nsw i64 0, %621
  %623 = getelementptr inbounds i8, ptr %391, i64 %622
  %624 = load i8, ptr %623, align 1, !tbaa !15
  %625 = zext i8 %624 to i32
  %626 = load i8, ptr %619, align 1, !tbaa !15
  %627 = zext i8 %626 to i64
  %628 = sub nsw i64 0, %627
  %629 = getelementptr inbounds i8, ptr %391, i64 %628
  %630 = load i8, ptr %629, align 1, !tbaa !15
  %631 = zext i8 %630 to i32
  %632 = shl nuw nsw i32 %631, 1
  %633 = getelementptr inbounds i8, ptr %619, i64 %40
  %634 = getelementptr inbounds i8, ptr %633, i64 1
  %635 = load i8, ptr %633, align 1, !tbaa !15
  %636 = zext i8 %635 to i64
  %637 = sub nsw i64 0, %636
  %638 = getelementptr inbounds i8, ptr %391, i64 %637
  %639 = load i8, ptr %638, align 1, !tbaa !15
  %640 = zext i8 %639 to i32
  %641 = getelementptr inbounds i8, ptr %633, i64 2
  %642 = load i8, ptr %634, align 1, !tbaa !15
  %643 = zext i8 %642 to i64
  %644 = sub nsw i64 0, %643
  %645 = getelementptr inbounds i8, ptr %391, i64 %644
  %646 = load i8, ptr %645, align 1, !tbaa !15
  %647 = zext i8 %646 to i32
  %648 = load i8, ptr %641, align 1, !tbaa !15
  %649 = zext i8 %648 to i64
  %650 = sub nsw i64 0, %649
  %651 = getelementptr inbounds i8, ptr %391, i64 %650
  %652 = load i8, ptr %651, align 1, !tbaa !15
  %653 = zext i8 %652 to i32
  %654 = add nuw nsw i32 %463, %512
  %655 = add nuw nsw i32 %504, %546
  %656 = add nuw nsw i32 %654, %554
  %657 = sub nsw i32 %655, %656
  %658 = add nsw i32 %657, %595
  %659 = mul nsw i32 %658, 3
  %660 = add nuw nsw i32 %424, %470
  %661 = add nuw nsw i32 %454, %498
  %662 = add nuw nsw i32 %660, %519
  %663 = add nuw nsw i32 %661, %540
  %664 = add nuw nsw i32 %662, %561
  %665 = sub nsw i32 %663, %664
  %666 = add nsw i32 %665, %589
  %667 = shl nsw i32 %666, 1
  %668 = add nuw nsw i32 %401, %431
  %669 = add nuw nsw i32 %415, %447
  %670 = add nuw nsw i32 %668, %477
  %671 = add nuw nsw i32 %669, %491
  %672 = add nuw nsw i32 %670, %525
  %673 = add nuw nsw i32 %671, %533
  %674 = add nuw nsw i32 %672, %568
  %675 = add nuw nsw i32 %673, %582
  %676 = add nuw nsw i32 %674, %604
  %677 = add nuw nsw i32 %676, %611
  %678 = sub nsw i32 %675, %677
  %679 = add nsw i32 %678, %659
  %680 = add i32 %679, %667
  %681 = add i32 %680, %625
  %682 = add i32 %681, %632
  %683 = sub i32 %682, %640
  %684 = add i32 %683, %653
  %685 = sub nsw i32 %640, %416
  %686 = add nsw i32 %685, %647
  %687 = add nsw i32 %686, %653
  %688 = mul nsw i32 %687, 3
  %689 = sub nsw i32 %611, %455
  %690 = add nsw i32 %689, %618
  %691 = add nsw i32 %690, %625
  %692 = shl nsw i32 %691, 1
  %693 = add nuw nsw i32 %470, %463
  %694 = add nuw nsw i32 %693, %477
  %695 = add nuw nsw i32 %694, %484
  %696 = add nuw nsw i32 %695, %491
  %697 = add nuw nsw i32 %696, %498
  %698 = add nuw nsw i32 %697, %504
  %699 = sub nsw i32 %554, %698
  %700 = add nsw i32 %699, %561
  %701 = add nsw i32 %700, %568
  %702 = add nsw i32 %701, %575
  %703 = add nsw i32 %702, %582
  %704 = add nsw i32 %703, %589
  %705 = add nsw i32 %704, %595
  %706 = add nsw i32 %705, %604
  %707 = add nsw i32 %706, %632
  %708 = add i32 %707, %692
  %709 = add i32 %708, %688
  %710 = mul nsw i32 %684, %684
  %711 = mul nsw i32 %709, %709
  %712 = add nuw nsw i32 %711, %710
  %713 = sitofp i32 %712 to float
  %714 = tail call float @sqrtf(float noundef %713) #8
  %715 = fpext float %714 to double
  %716 = sitofp i32 %387 to float
  %717 = fpext float %716 to double
  %718 = fmul double %717, 9.000000e-01
  %719 = fcmp olt double %718, %715
  br i1 %719, label %720, label %778

720:                                              ; preds = %393
  %721 = icmp eq i32 %684, 0
  %722 = sitofp i32 %709 to float
  %723 = sitofp i32 %684 to float
  %724 = fdiv float %722, %723
  %725 = select i1 %721, float 1.000000e+06, float %724
  %726 = fcmp uge float %725, 0.000000e+00
  %727 = fneg float %725
  %728 = select i1 %726, float %725, float %727
  %729 = fcmp olt float %728, 5.000000e-01
  br i1 %729, label %734, label %730

730:                                              ; preds = %720
  %731 = fcmp ogt float %728, 2.000000e+00
  br i1 %731, label %734, label %732

732:                                              ; preds = %730
  %733 = select i1 %726, i32 1, i32 -1
  br label %734

734:                                              ; preds = %732, %730, %720
  %735 = phi i32 [ 0, %720 ], [ 1, %730 ], [ %733, %732 ]
  %736 = phi i32 [ 1, %720 ], [ 0, %730 ], [ 1, %732 ]
  %737 = add nsw i32 %735, %376
  %738 = mul nsw i32 %737, %5
  %739 = trunc i64 %381 to i32
  %740 = add nuw nsw i32 %736, %739
  %741 = add i32 %740, %738
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds i32, ptr %1, i64 %742
  %744 = load i32, ptr %743, align 4, !tbaa !12
  %745 = icmp sgt i32 %384, %744
  br i1 %745, label %746, label %1182

746:                                              ; preds = %734
  %747 = sub nsw i32 %377, %735
  %748 = mul nsw i32 %747, %5
  %749 = trunc i64 %381 to i32
  %750 = sub nsw i32 %749, %736
  %751 = add i32 %750, %748
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds i32, ptr %1, i64 %752
  %754 = load i32, ptr %753, align 4, !tbaa !12
  %755 = icmp slt i32 %384, %754
  br i1 %755, label %1182, label %756

756:                                              ; preds = %746
  %757 = shl nsw i32 %735, 1
  %758 = add nsw i32 %757, %378
  %759 = mul nsw i32 %758, %5
  %760 = shl nuw nsw i32 %736, 1
  %761 = trunc i64 %381 to i32
  %762 = add nuw i32 %760, %761
  %763 = add i32 %762, %759
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds i32, ptr %1, i64 %764
  %766 = load i32, ptr %765, align 4, !tbaa !12
  %767 = icmp sgt i32 %384, %766
  br i1 %767, label %768, label %1182

768:                                              ; preds = %756
  %769 = sub nsw i32 %379, %757
  %770 = mul nsw i32 %769, %5
  %771 = trunc i64 %381 to i32
  %772 = sub nsw i32 %771, %760
  %773 = add i32 %772, %770
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds i32, ptr %1, i64 %774
  %776 = load i32, ptr %775, align 4, !tbaa !12
  %777 = icmp slt i32 %384, %776
  br i1 %777, label %1182, label %1179

778:                                              ; preds = %393, %386
  %779 = getelementptr inbounds i8, ptr %368, i64 %381
  %780 = getelementptr inbounds i8, ptr %779, i64 -1
  %781 = load i8, ptr %780, align 1, !tbaa !15
  %782 = zext i8 %781 to i64
  %783 = sub nsw i64 0, %782
  %784 = getelementptr inbounds i8, ptr %391, i64 %783
  %785 = load i8, ptr %784, align 1, !tbaa !15
  %786 = zext i8 %785 to i32
  %787 = getelementptr inbounds i8, ptr %779, i64 1
  %788 = load i8, ptr %779, align 1, !tbaa !15
  %789 = zext i8 %788 to i64
  %790 = sub nsw i64 0, %789
  %791 = getelementptr inbounds i8, ptr %391, i64 %790
  %792 = load i8, ptr %791, align 1, !tbaa !15
  %793 = zext i8 %792 to i32
  %794 = load i8, ptr %787, align 1, !tbaa !15
  %795 = zext i8 %794 to i64
  %796 = sub nsw i64 0, %795
  %797 = getelementptr inbounds i8, ptr %391, i64 %796
  %798 = load i8, ptr %797, align 1, !tbaa !15
  %799 = zext i8 %798 to i32
  %800 = getelementptr inbounds i8, ptr %787, i64 %46
  %801 = getelementptr inbounds i8, ptr %800, i64 1
  %802 = load i8, ptr %800, align 1, !tbaa !15
  %803 = zext i8 %802 to i64
  %804 = sub nsw i64 0, %803
  %805 = getelementptr inbounds i8, ptr %391, i64 %804
  %806 = load i8, ptr %805, align 1, !tbaa !15
  %807 = zext i8 %806 to i32
  %808 = shl nuw nsw i32 %807, 2
  %809 = getelementptr inbounds i8, ptr %800, i64 2
  %810 = load i8, ptr %801, align 1, !tbaa !15
  %811 = zext i8 %810 to i64
  %812 = sub nsw i64 0, %811
  %813 = getelementptr inbounds i8, ptr %391, i64 %812
  %814 = load i8, ptr %813, align 1, !tbaa !15
  %815 = zext i8 %814 to i32
  %816 = getelementptr inbounds i8, ptr %800, i64 3
  %817 = load i8, ptr %809, align 1, !tbaa !15
  %818 = zext i8 %817 to i64
  %819 = sub nsw i64 0, %818
  %820 = getelementptr inbounds i8, ptr %391, i64 %819
  %821 = load i8, ptr %820, align 1, !tbaa !15
  %822 = zext i8 %821 to i32
  %823 = getelementptr inbounds i8, ptr %800, i64 4
  %824 = load i8, ptr %816, align 1, !tbaa !15
  %825 = zext i8 %824 to i64
  %826 = sub nsw i64 0, %825
  %827 = getelementptr inbounds i8, ptr %391, i64 %826
  %828 = load i8, ptr %827, align 1, !tbaa !15
  %829 = zext i8 %828 to i32
  %830 = load i8, ptr %823, align 1, !tbaa !15
  %831 = zext i8 %830 to i64
  %832 = sub nsw i64 0, %831
  %833 = getelementptr inbounds i8, ptr %391, i64 %832
  %834 = load i8, ptr %833, align 1, !tbaa !15
  %835 = zext i8 %834 to i32
  %836 = shl nuw nsw i32 %835, 2
  %837 = getelementptr inbounds i8, ptr %823, i64 %48
  %838 = getelementptr inbounds i8, ptr %837, i64 1
  %839 = load i8, ptr %837, align 1, !tbaa !15
  %840 = zext i8 %839 to i64
  %841 = sub nsw i64 0, %840
  %842 = getelementptr inbounds i8, ptr %391, i64 %841
  %843 = load i8, ptr %842, align 1, !tbaa !15
  %844 = zext i8 %843 to i32
  %845 = getelementptr inbounds i8, ptr %837, i64 2
  %846 = load i8, ptr %838, align 1, !tbaa !15
  %847 = zext i8 %846 to i64
  %848 = sub nsw i64 0, %847
  %849 = getelementptr inbounds i8, ptr %391, i64 %848
  %850 = load i8, ptr %849, align 1, !tbaa !15
  %851 = zext i8 %850 to i32
  %852 = getelementptr inbounds i8, ptr %837, i64 3
  %853 = load i8, ptr %845, align 1, !tbaa !15
  %854 = zext i8 %853 to i64
  %855 = sub nsw i64 0, %854
  %856 = getelementptr inbounds i8, ptr %391, i64 %855
  %857 = load i8, ptr %856, align 1, !tbaa !15
  %858 = zext i8 %857 to i32
  %859 = getelementptr inbounds i8, ptr %837, i64 4
  %860 = load i8, ptr %852, align 1, !tbaa !15
  %861 = zext i8 %860 to i64
  %862 = sub nsw i64 0, %861
  %863 = getelementptr inbounds i8, ptr %391, i64 %862
  %864 = load i8, ptr %863, align 1, !tbaa !15
  %865 = zext i8 %864 to i32
  %866 = getelementptr inbounds i8, ptr %837, i64 5
  %867 = load i8, ptr %859, align 1, !tbaa !15
  %868 = zext i8 %867 to i64
  %869 = sub nsw i64 0, %868
  %870 = getelementptr inbounds i8, ptr %391, i64 %869
  %871 = load i8, ptr %870, align 1, !tbaa !15
  %872 = zext i8 %871 to i32
  %873 = getelementptr inbounds i8, ptr %837, i64 6
  %874 = load i8, ptr %866, align 1, !tbaa !15
  %875 = zext i8 %874 to i64
  %876 = sub nsw i64 0, %875
  %877 = getelementptr inbounds i8, ptr %391, i64 %876
  %878 = load i8, ptr %877, align 1, !tbaa !15
  %879 = zext i8 %878 to i32
  %880 = load i8, ptr %873, align 1, !tbaa !15
  %881 = zext i8 %880 to i64
  %882 = sub nsw i64 0, %881
  %883 = getelementptr inbounds i8, ptr %391, i64 %882
  %884 = load i8, ptr %883, align 1, !tbaa !15
  %885 = zext i8 %884 to i32
  %886 = getelementptr inbounds i8, ptr %873, i64 %50
  %887 = getelementptr inbounds i8, ptr %886, i64 6
  %888 = getelementptr inbounds i8, ptr %887, i64 %50
  %889 = getelementptr inbounds i8, ptr %888, i64 1
  %890 = load i8, ptr %888, align 1, !tbaa !15
  %891 = zext i8 %890 to i64
  %892 = sub nsw i64 0, %891
  %893 = getelementptr inbounds i8, ptr %391, i64 %892
  %894 = load i8, ptr %893, align 1, !tbaa !15
  %895 = zext i8 %894 to i32
  %896 = getelementptr inbounds i8, ptr %888, i64 2
  %897 = load i8, ptr %889, align 1, !tbaa !15
  %898 = zext i8 %897 to i64
  %899 = sub nsw i64 0, %898
  %900 = getelementptr inbounds i8, ptr %391, i64 %899
  %901 = load i8, ptr %900, align 1, !tbaa !15
  %902 = zext i8 %901 to i32
  %903 = getelementptr inbounds i8, ptr %888, i64 3
  %904 = load i8, ptr %896, align 1, !tbaa !15
  %905 = zext i8 %904 to i64
  %906 = sub nsw i64 0, %905
  %907 = getelementptr inbounds i8, ptr %391, i64 %906
  %908 = load i8, ptr %907, align 1, !tbaa !15
  %909 = zext i8 %908 to i32
  %910 = getelementptr inbounds i8, ptr %888, i64 4
  %911 = load i8, ptr %903, align 1, !tbaa !15
  %912 = zext i8 %911 to i64
  %913 = sub nsw i64 0, %912
  %914 = getelementptr inbounds i8, ptr %391, i64 %913
  %915 = load i8, ptr %914, align 1, !tbaa !15
  %916 = zext i8 %915 to i32
  %917 = getelementptr inbounds i8, ptr %888, i64 5
  %918 = load i8, ptr %910, align 1, !tbaa !15
  %919 = zext i8 %918 to i64
  %920 = sub nsw i64 0, %919
  %921 = getelementptr inbounds i8, ptr %391, i64 %920
  %922 = load i8, ptr %921, align 1, !tbaa !15
  %923 = zext i8 %922 to i32
  %924 = getelementptr inbounds i8, ptr %888, i64 6
  %925 = load i8, ptr %917, align 1, !tbaa !15
  %926 = zext i8 %925 to i64
  %927 = sub nsw i64 0, %926
  %928 = getelementptr inbounds i8, ptr %391, i64 %927
  %929 = load i8, ptr %928, align 1, !tbaa !15
  %930 = zext i8 %929 to i32
  %931 = load i8, ptr %924, align 1, !tbaa !15
  %932 = zext i8 %931 to i64
  %933 = sub nsw i64 0, %932
  %934 = getelementptr inbounds i8, ptr %391, i64 %933
  %935 = load i8, ptr %934, align 1, !tbaa !15
  %936 = zext i8 %935 to i32
  %937 = getelementptr inbounds i8, ptr %924, i64 %48
  %938 = getelementptr inbounds i8, ptr %937, i64 1
  %939 = load i8, ptr %937, align 1, !tbaa !15
  %940 = zext i8 %939 to i64
  %941 = sub nsw i64 0, %940
  %942 = getelementptr inbounds i8, ptr %391, i64 %941
  %943 = load i8, ptr %942, align 1, !tbaa !15
  %944 = zext i8 %943 to i32
  %945 = shl nuw nsw i32 %944, 2
  %946 = getelementptr inbounds i8, ptr %937, i64 2
  %947 = load i8, ptr %938, align 1, !tbaa !15
  %948 = zext i8 %947 to i64
  %949 = sub nsw i64 0, %948
  %950 = getelementptr inbounds i8, ptr %391, i64 %949
  %951 = load i8, ptr %950, align 1, !tbaa !15
  %952 = zext i8 %951 to i32
  %953 = getelementptr inbounds i8, ptr %937, i64 3
  %954 = load i8, ptr %946, align 1, !tbaa !15
  %955 = zext i8 %954 to i64
  %956 = sub nsw i64 0, %955
  %957 = getelementptr inbounds i8, ptr %391, i64 %956
  %958 = load i8, ptr %957, align 1, !tbaa !15
  %959 = zext i8 %958 to i32
  %960 = getelementptr inbounds i8, ptr %937, i64 4
  %961 = load i8, ptr %953, align 1, !tbaa !15
  %962 = zext i8 %961 to i64
  %963 = sub nsw i64 0, %962
  %964 = getelementptr inbounds i8, ptr %391, i64 %963
  %965 = load i8, ptr %964, align 1, !tbaa !15
  %966 = zext i8 %965 to i32
  %967 = load i8, ptr %960, align 1, !tbaa !15
  %968 = zext i8 %967 to i64
  %969 = sub nsw i64 0, %968
  %970 = getelementptr inbounds i8, ptr %391, i64 %969
  %971 = load i8, ptr %970, align 1, !tbaa !15
  %972 = zext i8 %971 to i32
  %973 = shl nuw nsw i32 %972, 2
  %974 = getelementptr inbounds i8, ptr %960, i64 %46
  %975 = getelementptr inbounds i8, ptr %974, i64 1
  %976 = load i8, ptr %974, align 1, !tbaa !15
  %977 = zext i8 %976 to i64
  %978 = sub nsw i64 0, %977
  %979 = getelementptr inbounds i8, ptr %391, i64 %978
  %980 = load i8, ptr %979, align 1, !tbaa !15
  %981 = zext i8 %980 to i32
  %982 = getelementptr inbounds i8, ptr %974, i64 2
  %983 = load i8, ptr %975, align 1, !tbaa !15
  %984 = zext i8 %983 to i64
  %985 = sub nsw i64 0, %984
  %986 = getelementptr inbounds i8, ptr %391, i64 %985
  %987 = load i8, ptr %986, align 1, !tbaa !15
  %988 = zext i8 %987 to i32
  %989 = load i8, ptr %982, align 1, !tbaa !15
  %990 = zext i8 %989 to i64
  %991 = sub nsw i64 0, %990
  %992 = getelementptr inbounds i8, ptr %391, i64 %991
  %993 = load i8, ptr %992, align 1, !tbaa !15
  %994 = zext i8 %993 to i32
  %995 = add nuw nsw i32 %822, %815
  %996 = add nuw nsw i32 %995, %829
  %997 = add nuw nsw i32 %996, %952
  %998 = add nuw nsw i32 %997, %959
  %999 = add nuw nsw i32 %998, %966
  %1000 = shl nuw nsw i32 %999, 2
  %1001 = add nuw nsw i32 %793, %786
  %1002 = add nuw nsw i32 %1001, %799
  %1003 = add nuw nsw i32 %1002, %981
  %1004 = add nuw nsw i32 %1003, %988
  %1005 = add nuw nsw i32 %1004, %994
  %1006 = mul nuw nsw i32 %1005, 9
  %1007 = add nuw nsw i32 %836, %808
  %1008 = add nuw nsw i32 %1007, %844
  %1009 = add nuw nsw i32 %1008, %851
  %1010 = add nuw nsw i32 %1009, %858
  %1011 = add nuw nsw i32 %1010, %865
  %1012 = add nuw nsw i32 %1011, %872
  %1013 = add nuw nsw i32 %1012, %879
  %1014 = add nuw nsw i32 %1013, %885
  %1015 = add nuw nsw i32 %1014, %895
  %1016 = add nuw nsw i32 %1015, %902
  %1017 = add nuw nsw i32 %1016, %909
  %1018 = add nuw nsw i32 %1017, %916
  %1019 = add nuw nsw i32 %1018, %923
  %1020 = add nuw nsw i32 %1019, %930
  %1021 = add nuw nsw i32 %1020, %936
  %1022 = add nuw nsw i32 %1021, %945
  %1023 = add nuw nsw i32 %1022, %973
  %1024 = add nuw nsw i32 %1023, %1000
  %1025 = add nuw nsw i32 %1024, %1006
  %1026 = add nuw nsw i32 %786, %844
  %1027 = add nuw nsw i32 %799, %885
  %1028 = add nuw nsw i32 %1027, %895
  %1029 = add nuw nsw i32 %1026, %936
  %1030 = add nuw nsw i32 %1028, %981
  %1031 = sub nsw i32 %1029, %1030
  %1032 = add nsw i32 %1031, %994
  %1033 = mul nsw i32 %1032, 3
  %1034 = add nuw nsw i32 %815, %851
  %1035 = add nuw nsw i32 %829, %879
  %1036 = add nuw nsw i32 %1035, %902
  %1037 = add nuw nsw i32 %1034, %930
  %1038 = add nuw nsw i32 %1036, %952
  %1039 = sub nsw i32 %1037, %1038
  %1040 = add nsw i32 %1039, %966
  %1041 = shl nsw i32 %1040, 1
  %1042 = add nuw nsw i32 %808, %858
  %1043 = add nuw nsw i32 %836, %872
  %1044 = add nuw nsw i32 %1043, %909
  %1045 = add nuw nsw i32 %1042, %923
  %1046 = add nuw nsw i32 %1044, %945
  %1047 = sub nsw i32 %1045, %1046
  %1048 = add nsw i32 %1047, %973
  %1049 = add i32 %1048, %1041
  %1050 = add i32 %1049, %1033
  %1051 = icmp eq i32 %1025, 0
  br i1 %1051, label %1127, label %1052

1052:                                             ; preds = %778
  %1053 = load i8, ptr %886, align 1, !tbaa !15
  %1054 = zext i8 %1053 to i64
  %1055 = sub nsw i64 0, %1054
  %1056 = getelementptr inbounds i8, ptr %391, i64 %1055
  %1057 = load i8, ptr %1056, align 1, !tbaa !15
  %1058 = zext i8 %1057 to i32
  %1059 = getelementptr inbounds i8, ptr %886, i64 1
  %1060 = load i8, ptr %1059, align 1, !tbaa !15
  %1061 = zext i8 %1060 to i64
  %1062 = sub nsw i64 0, %1061
  %1063 = getelementptr inbounds i8, ptr %391, i64 %1062
  %1064 = load i8, ptr %1063, align 1, !tbaa !15
  %1065 = zext i8 %1064 to i32
  %1066 = getelementptr inbounds i8, ptr %886, i64 2
  %1067 = load i8, ptr %1066, align 1, !tbaa !15
  %1068 = zext i8 %1067 to i64
  %1069 = sub nsw i64 0, %1068
  %1070 = getelementptr inbounds i8, ptr %391, i64 %1069
  %1071 = load i8, ptr %1070, align 1, !tbaa !15
  %1072 = zext i8 %1071 to i32
  %1073 = getelementptr inbounds i8, ptr %886, i64 4
  %1074 = load i8, ptr %1073, align 1, !tbaa !15
  %1075 = zext i8 %1074 to i64
  %1076 = sub nsw i64 0, %1075
  %1077 = getelementptr inbounds i8, ptr %391, i64 %1076
  %1078 = load i8, ptr %1077, align 1, !tbaa !15
  %1079 = zext i8 %1078 to i32
  %1080 = getelementptr inbounds i8, ptr %886, i64 5
  %1081 = load i8, ptr %1080, align 1, !tbaa !15
  %1082 = zext i8 %1081 to i64
  %1083 = sub nsw i64 0, %1082
  %1084 = getelementptr inbounds i8, ptr %391, i64 %1083
  %1085 = load i8, ptr %1084, align 1, !tbaa !15
  %1086 = zext i8 %1085 to i32
  %1087 = load i8, ptr %887, align 1, !tbaa !15
  %1088 = zext i8 %1087 to i64
  %1089 = sub nsw i64 0, %1088
  %1090 = getelementptr inbounds i8, ptr %391, i64 %1089
  %1091 = load i8, ptr %1090, align 1, !tbaa !15
  %1092 = zext i8 %1091 to i32
  %1093 = add nuw nsw i32 %879, %851
  %1094 = add nuw nsw i32 %1093, %902
  %1095 = add nuw nsw i32 %1094, %930
  %1096 = add nuw nsw i32 %1095, %1065
  %1097 = add nuw nsw i32 %1096, %1086
  %1098 = shl nuw nsw i32 %1097, 2
  %1099 = add nuw nsw i32 %885, %844
  %1100 = add nuw nsw i32 %1099, %895
  %1101 = add nuw nsw i32 %1100, %936
  %1102 = add nuw nsw i32 %1101, %1058
  %1103 = add nuw nsw i32 %1102, %1092
  %1104 = mul nuw nsw i32 %1103, 9
  %1105 = add nuw nsw i32 %799, %786
  %1106 = add nuw nsw i32 %1105, %808
  %1107 = add nuw nsw i32 %1106, %815
  %1108 = add nuw nsw i32 %1107, %829
  %1109 = add nuw nsw i32 %1108, %836
  %1110 = add nuw nsw i32 %1109, %858
  %1111 = add nuw nsw i32 %1110, %872
  %1112 = add nuw nsw i32 %1111, %909
  %1113 = add nuw nsw i32 %1112, %923
  %1114 = add nuw nsw i32 %1113, %945
  %1115 = add nuw nsw i32 %1114, %952
  %1116 = add nuw nsw i32 %1115, %966
  %1117 = add nuw nsw i32 %1116, %973
  %1118 = add nuw nsw i32 %1117, %981
  %1119 = add nuw nsw i32 %1118, %994
  %1120 = add nuw nsw i32 %1119, %1072
  %1121 = add nuw nsw i32 %1120, %1079
  %1122 = add nuw nsw i32 %1121, %1098
  %1123 = add nuw nsw i32 %1122, %1104
  %1124 = sitofp i32 %1123 to float
  %1125 = sitofp i32 %1025 to float
  %1126 = fdiv float %1124, %1125
  br label %1127

1127:                                             ; preds = %778, %1052
  %1128 = phi float [ %1126, %1052 ], [ 1.000000e+06, %778 ]
  %1129 = fcmp olt float %1128, 5.000000e-01
  br i1 %1129, label %1135, label %1130

1130:                                             ; preds = %1127
  %1131 = fcmp ogt float %1128, 2.000000e+00
  br i1 %1131, label %1135, label %1132

1132:                                             ; preds = %1130
  %1133 = icmp slt i32 %1050, 1
  %1134 = select i1 %1133, i32 1, i32 -1
  br label %1135

1135:                                             ; preds = %1132, %1130, %1127
  %1136 = phi i32 [ 0, %1127 ], [ 1, %1130 ], [ %1134, %1132 ]
  %1137 = phi i32 [ 1, %1127 ], [ 0, %1130 ], [ 1, %1132 ]
  %1138 = add nsw i32 %1136, %372
  %1139 = mul nsw i32 %1138, %5
  %1140 = trunc i64 %381 to i32
  %1141 = add nuw nsw i32 %1137, %1140
  %1142 = add i32 %1141, %1139
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds i32, ptr %1, i64 %1143
  %1145 = load i32, ptr %1144, align 4, !tbaa !12
  %1146 = icmp sgt i32 %384, %1145
  br i1 %1146, label %1147, label %1182

1147:                                             ; preds = %1135
  %1148 = sub nsw i32 %373, %1136
  %1149 = mul nsw i32 %1148, %5
  %1150 = trunc i64 %381 to i32
  %1151 = sub nsw i32 %1150, %1137
  %1152 = add i32 %1151, %1149
  %1153 = sext i32 %1152 to i64
  %1154 = getelementptr inbounds i32, ptr %1, i64 %1153
  %1155 = load i32, ptr %1154, align 4, !tbaa !12
  %1156 = icmp slt i32 %384, %1155
  br i1 %1156, label %1182, label %1157

1157:                                             ; preds = %1147
  %1158 = shl nsw i32 %1136, 1
  %1159 = add nsw i32 %1158, %374
  %1160 = mul nsw i32 %1159, %5
  %1161 = shl nuw nsw i32 %1137, 1
  %1162 = trunc i64 %381 to i32
  %1163 = add nuw i32 %1161, %1162
  %1164 = add i32 %1163, %1160
  %1165 = sext i32 %1164 to i64
  %1166 = getelementptr inbounds i32, ptr %1, i64 %1165
  %1167 = load i32, ptr %1166, align 4, !tbaa !12
  %1168 = icmp sgt i32 %384, %1167
  br i1 %1168, label %1169, label %1182

1169:                                             ; preds = %1157
  %1170 = sub nsw i32 %375, %1158
  %1171 = mul nsw i32 %1170, %5
  %1172 = trunc i64 %381 to i32
  %1173 = sub nsw i32 %1172, %1161
  %1174 = add i32 %1173, %1171
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds i32, ptr %1, i64 %1175
  %1177 = load i32, ptr %1176, align 4, !tbaa !12
  %1178 = icmp slt i32 %384, %1177
  br i1 %1178, label %1182, label %1179

1179:                                             ; preds = %1169, %768
  %1180 = phi i8 [ 1, %768 ], [ 2, %1169 ]
  %1181 = getelementptr inbounds i8, ptr %2, i64 %382
  store i8 %1180, ptr %1181, align 1, !tbaa !15
  br label %1182

1182:                                             ; preds = %1179, %768, %756, %746, %734, %380, %1135, %1147, %1157, %1169
  %1183 = add nuw nsw i64 %381, 1
  %1184 = icmp eq i64 %1183, %54
  br i1 %1184, label %1185, label %380, !llvm.loop !44

1185:                                             ; preds = %1182, %360
  %1186 = add nuw nsw i64 %361, 1
  %1187 = icmp eq i64 %1186, %53
  br i1 %1187, label %1188, label %360, !llvm.loop !45

1188:                                             ; preds = %1185, %33
  ret i32 undef
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local i32 @susan_edges_small(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #14 {
  %8 = mul nsw i32 %6, %5
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %10, i1 false)
  %11 = icmp sgt i32 %6, 2
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = add nsw i32 %6, -1
  %14 = add i32 %5, -1
  %15 = icmp sgt i32 %5, 2
  %16 = add nsw i32 %5, -2
  %17 = sext i32 %16 to i64
  %18 = sext i32 %5 to i64
  %19 = zext i32 %13 to i64
  %20 = zext i32 %14 to i64
  br label %21

21:                                               ; preds = %12, %120
  %22 = phi i64 [ 1, %12 ], [ %121, %120 ]
  br i1 %15, label %23, label %120

23:                                               ; preds = %21
  %24 = add nsw i64 %22, -1
  %25 = mul nsw i64 %24, %18
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  %27 = trunc i64 %22 to i32
  %28 = mul i32 %27, %5
  %29 = zext i32 %28 to i64
  br label %42

30:                                               ; preds = %120, %7
  %31 = icmp sgt i32 %6, 4
  br i1 %31, label %32, label %378

32:                                               ; preds = %30
  %33 = add nsw i32 %6, -2
  %34 = add i32 %5, -2
  %35 = icmp sgt i32 %5, 4
  %36 = sext i32 %34 to i64
  %37 = sext i32 %34 to i64
  %38 = sext i32 %5 to i64
  %39 = sext i32 %5 to i64
  %40 = zext i32 %33 to i64
  %41 = zext i32 %34 to i64
  br label %123

42:                                               ; preds = %23, %117
  %43 = phi i64 [ 1, %23 ], [ %118, %117 ]
  %44 = getelementptr inbounds i8, ptr %26, i64 %43
  %45 = getelementptr inbounds i8, ptr %44, i64 -1
  %46 = add nuw nsw i64 %43, %29
  %47 = getelementptr inbounds i8, ptr %0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !15
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds i8, ptr %3, i64 %49
  %51 = load i8, ptr %45, align 1, !tbaa !15
  %52 = zext i8 %51 to i64
  %53 = sub nsw i64 0, %52
  %54 = getelementptr inbounds i8, ptr %50, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %56, 100
  %58 = getelementptr inbounds i8, ptr %44, i64 1
  %59 = load i8, ptr %44, align 1, !tbaa !15
  %60 = zext i8 %59 to i64
  %61 = sub nsw i64 0, %60
  %62 = getelementptr inbounds i8, ptr %50, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !15
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %57, %64
  %66 = load i8, ptr %58, align 1, !tbaa !15
  %67 = zext i8 %66 to i64
  %68 = sub nsw i64 0, %67
  %69 = getelementptr inbounds i8, ptr %50, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !15
  %71 = zext i8 %70 to i32
  %72 = add nuw nsw i32 %65, %71
  %73 = getelementptr inbounds i8, ptr %58, i64 %17
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = zext i8 %74 to i64
  %76 = sub nsw i64 0, %75
  %77 = getelementptr inbounds i8, ptr %50, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !15
  %79 = zext i8 %78 to i32
  %80 = add nuw nsw i32 %72, %79
  %81 = getelementptr inbounds i8, ptr %73, i64 2
  %82 = load i8, ptr %81, align 1, !tbaa !15
  %83 = zext i8 %82 to i64
  %84 = sub nsw i64 0, %83
  %85 = getelementptr inbounds i8, ptr %50, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !15
  %87 = zext i8 %86 to i32
  %88 = add nuw nsw i32 %80, %87
  %89 = getelementptr inbounds i8, ptr %81, i64 %17
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  %91 = load i8, ptr %89, align 1, !tbaa !15
  %92 = zext i8 %91 to i64
  %93 = sub nsw i64 0, %92
  %94 = getelementptr inbounds i8, ptr %50, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !15
  %96 = zext i8 %95 to i32
  %97 = add nuw nsw i32 %88, %96
  %98 = getelementptr inbounds i8, ptr %89, i64 2
  %99 = load i8, ptr %90, align 1, !tbaa !15
  %100 = zext i8 %99 to i64
  %101 = sub nsw i64 0, %100
  %102 = getelementptr inbounds i8, ptr %50, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !15
  %104 = zext i8 %103 to i32
  %105 = add nuw nsw i32 %97, %104
  %106 = load i8, ptr %98, align 1, !tbaa !15
  %107 = zext i8 %106 to i64
  %108 = sub nsw i64 0, %107
  %109 = getelementptr inbounds i8, ptr %50, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !15
  %111 = zext i8 %110 to i32
  %112 = add nuw nsw i32 %105, %111
  %113 = icmp slt i32 %112, 731
  br i1 %113, label %114, label %117

114:                                              ; preds = %42
  %115 = sub nuw nsw i32 730, %112
  %116 = getelementptr inbounds i32, ptr %1, i64 %46
  store i32 %115, ptr %116, align 4, !tbaa !12
  br label %117

117:                                              ; preds = %42, %114
  %118 = add nuw nsw i64 %43, 1
  %119 = icmp eq i64 %118, %20
  br i1 %119, label %120, label %42, !llvm.loop !46

120:                                              ; preds = %117, %21
  %121 = add nuw nsw i64 %22, 1
  %122 = icmp eq i64 %121, %19
  br i1 %122, label %30, label %21, !llvm.loop !47

123:                                              ; preds = %32, %375
  %124 = phi i64 [ 2, %32 ], [ %376, %375 ]
  br i1 %35, label %125, label %375

125:                                              ; preds = %123
  %126 = add nsw i64 %124, -1
  %127 = mul nsw i64 %126, %39
  %128 = getelementptr inbounds i8, ptr %0, i64 %127
  %129 = add nsw i64 %124, -1
  %130 = mul nsw i64 %129, %38
  %131 = getelementptr inbounds i8, ptr %0, i64 %130
  %132 = trunc i64 %124 to i32
  %133 = mul i32 %132, %5
  %134 = zext i32 %133 to i64
  %135 = trunc i64 %124 to i32
  %136 = trunc i64 %124 to i32
  %137 = trunc i64 %124 to i32
  %138 = trunc i64 %124 to i32
  br label %139

139:                                              ; preds = %125, %372
  %140 = phi i64 [ 2, %125 ], [ %373, %372 ]
  %141 = add nuw nsw i64 %140, %134
  %142 = getelementptr inbounds i32, ptr %1, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !12
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %372

145:                                              ; preds = %139
  %146 = getelementptr inbounds i8, ptr %0, i64 %141
  %147 = load i8, ptr %146, align 1, !tbaa !15
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds i8, ptr %3, i64 %148
  %150 = icmp slt i32 %143, 480
  br i1 %150, label %151, label %265

151:                                              ; preds = %145
  %152 = sub nsw i32 730, %143
  %153 = getelementptr inbounds i8, ptr %128, i64 %140
  %154 = getelementptr inbounds i8, ptr %153, i64 -1
  %155 = load i8, ptr %154, align 1, !tbaa !15
  %156 = zext i8 %155 to i64
  %157 = sub nsw i64 0, %156
  %158 = getelementptr inbounds i8, ptr %149, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !15
  %160 = zext i8 %159 to i32
  %161 = getelementptr inbounds i8, ptr %153, i64 1
  %162 = load i8, ptr %153, align 1, !tbaa !15
  %163 = zext i8 %162 to i64
  %164 = sub nsw i64 0, %163
  %165 = getelementptr inbounds i8, ptr %149, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !15
  %167 = zext i8 %166 to i32
  %168 = load i8, ptr %161, align 1, !tbaa !15
  %169 = zext i8 %168 to i64
  %170 = sub nsw i64 0, %169
  %171 = getelementptr inbounds i8, ptr %149, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !15
  %173 = zext i8 %172 to i32
  %174 = getelementptr inbounds i8, ptr %161, i64 %36
  %175 = load i8, ptr %174, align 1, !tbaa !15
  %176 = zext i8 %175 to i64
  %177 = sub nsw i64 0, %176
  %178 = getelementptr inbounds i8, ptr %149, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !15
  %180 = zext i8 %179 to i32
  %181 = getelementptr inbounds i8, ptr %174, i64 2
  %182 = load i8, ptr %181, align 1, !tbaa !15
  %183 = zext i8 %182 to i64
  %184 = sub nsw i64 0, %183
  %185 = getelementptr inbounds i8, ptr %149, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !15
  %187 = zext i8 %186 to i32
  %188 = getelementptr inbounds i8, ptr %181, i64 %36
  %189 = getelementptr inbounds i8, ptr %188, i64 1
  %190 = load i8, ptr %188, align 1, !tbaa !15
  %191 = zext i8 %190 to i64
  %192 = sub nsw i64 0, %191
  %193 = getelementptr inbounds i8, ptr %149, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !15
  %195 = zext i8 %194 to i32
  %196 = add nuw nsw i32 %167, %160
  %197 = add nuw nsw i32 %196, %173
  %198 = sub nsw i32 %195, %197
  %199 = getelementptr inbounds i8, ptr %188, i64 2
  %200 = load i8, ptr %189, align 1, !tbaa !15
  %201 = zext i8 %200 to i64
  %202 = sub nsw i64 0, %201
  %203 = getelementptr inbounds i8, ptr %149, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !15
  %205 = zext i8 %204 to i32
  %206 = add nsw i32 %198, %205
  %207 = load i8, ptr %199, align 1, !tbaa !15
  %208 = zext i8 %207 to i64
  %209 = sub nsw i64 0, %208
  %210 = getelementptr inbounds i8, ptr %149, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !15
  %212 = zext i8 %211 to i32
  %213 = add nuw nsw i32 %160, %180
  %214 = add nuw nsw i32 %173, %187
  %215 = add nuw nsw i32 %213, %195
  %216 = sub nsw i32 %214, %215
  %217 = add nsw i32 %216, %212
  %218 = add nsw i32 %206, %212
  %219 = mul nsw i32 %217, %217
  %220 = mul nsw i32 %218, %218
  %221 = add nuw nsw i32 %219, %220
  %222 = sitofp i32 %221 to float
  %223 = tail call float @sqrtf(float noundef %222) #8
  %224 = fpext float %223 to double
  %225 = sitofp i32 %152 to float
  %226 = fpext float %225 to double
  %227 = fmul double %226, 4.000000e-01
  %228 = fcmp olt double %227, %224
  br i1 %228, label %229, label %265

229:                                              ; preds = %151
  %230 = icmp eq i32 %217, 0
  %231 = sitofp i32 %218 to float
  %232 = sitofp i32 %217 to float
  %233 = fdiv float %231, %232
  %234 = select i1 %230, float 1.000000e+06, float %233
  %235 = fcmp uge float %234, 0.000000e+00
  %236 = fneg float %234
  %237 = select i1 %235, float %234, float %236
  %238 = fcmp olt float %237, 5.000000e-01
  br i1 %238, label %243, label %239

239:                                              ; preds = %229
  %240 = fcmp ogt float %237, 2.000000e+00
  br i1 %240, label %243, label %241

241:                                              ; preds = %239
  %242 = select i1 %235, i32 1, i32 -1
  br label %243

243:                                              ; preds = %241, %239, %229
  %244 = phi i32 [ 0, %229 ], [ 1, %239 ], [ %242, %241 ]
  %245 = phi i32 [ 1, %229 ], [ 0, %239 ], [ 1, %241 ]
  %246 = add nsw i32 %244, %137
  %247 = mul nsw i32 %246, %5
  %248 = trunc i64 %140 to i32
  %249 = add nuw nsw i32 %245, %248
  %250 = add i32 %249, %247
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, ptr %1, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !12
  %254 = icmp sgt i32 %143, %253
  br i1 %254, label %255, label %372

255:                                              ; preds = %243
  %256 = sub nsw i32 %138, %244
  %257 = mul nsw i32 %256, %5
  %258 = trunc i64 %140 to i32
  %259 = sub nsw i32 %258, %245
  %260 = add i32 %259, %257
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, ptr %1, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !12
  %264 = icmp slt i32 %143, %263
  br i1 %264, label %372, label %369

265:                                              ; preds = %151, %145
  %266 = getelementptr inbounds i8, ptr %131, i64 %140
  %267 = getelementptr inbounds i8, ptr %266, i64 -1
  %268 = load i8, ptr %267, align 1, !tbaa !15
  %269 = zext i8 %268 to i64
  %270 = sub nsw i64 0, %269
  %271 = getelementptr inbounds i8, ptr %149, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !15
  %273 = zext i8 %272 to i32
  %274 = getelementptr inbounds i8, ptr %266, i64 1
  %275 = load i8, ptr %266, align 1, !tbaa !15
  %276 = zext i8 %275 to i64
  %277 = sub nsw i64 0, %276
  %278 = getelementptr inbounds i8, ptr %149, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !15
  %280 = zext i8 %279 to i32
  %281 = load i8, ptr %274, align 1, !tbaa !15
  %282 = zext i8 %281 to i64
  %283 = sub nsw i64 0, %282
  %284 = getelementptr inbounds i8, ptr %149, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !15
  %286 = zext i8 %285 to i32
  %287 = getelementptr inbounds i8, ptr %274, i64 %37
  %288 = getelementptr inbounds i8, ptr %287, i64 2
  %289 = getelementptr inbounds i8, ptr %288, i64 %37
  %290 = getelementptr inbounds i8, ptr %289, i64 1
  %291 = load i8, ptr %289, align 1, !tbaa !15
  %292 = zext i8 %291 to i64
  %293 = sub nsw i64 0, %292
  %294 = getelementptr inbounds i8, ptr %149, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !15
  %296 = zext i8 %295 to i32
  %297 = getelementptr inbounds i8, ptr %289, i64 2
  %298 = load i8, ptr %290, align 1, !tbaa !15
  %299 = zext i8 %298 to i64
  %300 = sub nsw i64 0, %299
  %301 = getelementptr inbounds i8, ptr %149, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !15
  %303 = zext i8 %302 to i32
  %304 = load i8, ptr %297, align 1, !tbaa !15
  %305 = zext i8 %304 to i64
  %306 = sub nsw i64 0, %305
  %307 = getelementptr inbounds i8, ptr %149, i64 %306
  %308 = load i8, ptr %307, align 1, !tbaa !15
  %309 = zext i8 %308 to i32
  %310 = add nuw nsw i32 %296, %286
  %311 = add nuw nsw i32 %310, %273
  %312 = add nuw nsw i32 %311, %280
  %313 = add nuw nsw i32 %312, %303
  %314 = add nuw nsw i32 %313, %309
  %315 = add nuw nsw i32 %309, %273
  %316 = add nuw nsw i32 %286, %296
  %317 = icmp eq i32 %314, 0
  br i1 %317, label %339, label %318

318:                                              ; preds = %265
  %319 = load i8, ptr %287, align 1, !tbaa !15
  %320 = zext i8 %319 to i64
  %321 = sub nsw i64 0, %320
  %322 = getelementptr inbounds i8, ptr %149, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !15
  %324 = zext i8 %323 to i32
  %325 = load i8, ptr %288, align 1, !tbaa !15
  %326 = zext i8 %325 to i64
  %327 = sub nsw i64 0, %326
  %328 = getelementptr inbounds i8, ptr %149, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !15
  %330 = zext i8 %329 to i32
  %331 = add nuw nsw i32 %296, %286
  %332 = add nuw nsw i32 %331, %273
  %333 = add nuw nsw i32 %332, %309
  %334 = add nuw nsw i32 %333, %324
  %335 = add nuw nsw i32 %334, %330
  %336 = sitofp i32 %335 to float
  %337 = sitofp i32 %314 to float
  %338 = fdiv float %336, %337
  br label %339

339:                                              ; preds = %265, %318
  %340 = phi float [ %338, %318 ], [ 1.000000e+06, %265 ]
  %341 = fcmp olt float %340, 5.000000e-01
  br i1 %341, label %347, label %342

342:                                              ; preds = %339
  %343 = fcmp ogt float %340, 2.000000e+00
  br i1 %343, label %347, label %344

344:                                              ; preds = %342
  %345 = icmp ugt i32 %315, %316
  %346 = select i1 %345, i32 -1, i32 1
  br label %347

347:                                              ; preds = %344, %342, %339
  %348 = phi i32 [ 0, %339 ], [ 1, %342 ], [ %346, %344 ]
  %349 = phi i32 [ 1, %339 ], [ 0, %342 ], [ 1, %344 ]
  %350 = add nsw i32 %348, %135
  %351 = mul nsw i32 %350, %5
  %352 = trunc i64 %140 to i32
  %353 = add nuw nsw i32 %349, %352
  %354 = add i32 %353, %351
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, ptr %1, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !12
  %358 = icmp sgt i32 %143, %357
  br i1 %358, label %359, label %372

359:                                              ; preds = %347
  %360 = sub nsw i32 %136, %348
  %361 = mul nsw i32 %360, %5
  %362 = trunc i64 %140 to i32
  %363 = sub nsw i32 %362, %349
  %364 = add i32 %363, %361
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, ptr %1, i64 %365
  %367 = load i32, ptr %366, align 4, !tbaa !12
  %368 = icmp slt i32 %143, %367
  br i1 %368, label %372, label %369

369:                                              ; preds = %359, %255
  %370 = phi i8 [ 1, %255 ], [ 2, %359 ]
  %371 = getelementptr inbounds i8, ptr %2, i64 %141
  store i8 %370, ptr %371, align 1, !tbaa !15
  br label %372

372:                                              ; preds = %369, %255, %243, %139, %347, %359
  %373 = add nuw nsw i64 %140, 1
  %374 = icmp eq i64 %373, %41
  br i1 %374, label %375, label %139, !llvm.loop !48

375:                                              ; preds = %372, %123
  %376 = add nuw nsw i64 %124, 1
  %377 = icmp eq i64 %376, %40
  br i1 %377, label %378, label %123, !llvm.loop !49

378:                                              ; preds = %375, %30
  ret i32 undef
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @corner_draw(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 {
  %5 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %46, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %3, 0
  %10 = add nsw i32 %2, -2
  %11 = sext i32 %10 to i64
  br label %12

12:                                               ; preds = %8, %40
  %13 = phi i64 [ 0, %8 ], [ %41, %40 ]
  %14 = phi ptr [ %1, %8 ], [ %42, %40 ]
  %15 = getelementptr inbounds %struct.anon, ptr %1, i64 %13, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !52
  br i1 %9, label %17, label %33

17:                                               ; preds = %12
  %18 = add nsw i32 %16, -1
  %19 = mul nsw i32 %18, %2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i32, ptr %14, align 4, !tbaa !53
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 -1
  store i8 -1, ptr %25, align 1, !tbaa !15
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 -1, ptr %24, align 1, !tbaa !15
  store i8 -1, ptr %26, align 1, !tbaa !15
  %27 = getelementptr inbounds i8, ptr %26, i64 %11
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 -1, ptr %27, align 1, !tbaa !15
  %29 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 0, ptr %28, align 1, !tbaa !15
  store i8 -1, ptr %29, align 1, !tbaa !15
  %30 = getelementptr inbounds i8, ptr %29, i64 %11
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 -1, ptr %30, align 1, !tbaa !15
  %32 = getelementptr inbounds i8, ptr %30, i64 2
  store i8 -1, ptr %31, align 1, !tbaa !15
  store i8 -1, ptr %32, align 1, !tbaa !15
  br label %40

33:                                               ; preds = %12
  %34 = mul nsw i32 %16, %2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = load i32, ptr %14, align 4, !tbaa !53
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  store i8 0, ptr %39, align 1, !tbaa !15
  br label %40

40:                                               ; preds = %33, %17
  %41 = add nuw nsw i64 %13, 1
  %42 = getelementptr inbounds %struct.anon, ptr %1, i64 %41
  %43 = getelementptr inbounds %struct.anon, ptr %1, i64 %41, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !50
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %46, label %12, !llvm.loop !54

46:                                               ; preds = %40, %4
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local i32 @susan_corners(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
  %8 = mul nsw i32 %6, %5
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %10, i1 false)
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #23
  %12 = tail call noalias ptr @malloc(i64 noundef %10) #23
  %13 = add i32 %6, -5
  %14 = icmp sgt i32 %6, 10
  br i1 %14, label %15, label %41

15:                                               ; preds = %7
  %16 = add i32 %5, -5
  %17 = icmp sgt i32 %5, 10
  %18 = add nsw i32 %5, -3
  %19 = sext i32 %18 to i64
  %20 = sext i32 %16 to i64
  %21 = add nsw i32 %5, -6
  %22 = sext i32 %21 to i64
  %23 = sext i32 %5 to i64
  %24 = zext i32 %13 to i64
  %25 = zext i32 %16 to i64
  br label %26

26:                                               ; preds = %15, %598
  %27 = phi i64 [ 5, %15 ], [ %599, %598 ]
  br i1 %17, label %28, label %598

28:                                               ; preds = %26
  %29 = add nsw i64 %27, -3
  %30 = mul nsw i64 %29, %23
  %31 = getelementptr inbounds i8, ptr %0, i64 %30
  %32 = trunc i64 %27 to i32
  %33 = mul i32 %32, %5
  %34 = zext i32 %33 to i64
  %35 = trunc i64 %27 to i32
  %36 = trunc i64 %27 to i32
  %37 = trunc i64 %27 to i32
  %38 = trunc i64 %27 to i32
  %39 = trunc i64 %27 to i32
  %40 = trunc i64 %27 to i32
  br label %55

41:                                               ; preds = %598, %7
  %42 = icmp sgt i32 %6, 10
  br i1 %42, label %43, label %855

43:                                               ; preds = %41
  %44 = add i32 %5, -5
  %45 = icmp sgt i32 %5, 10
  %46 = sext i32 %5 to i64
  %47 = sext i32 %5 to i64
  %48 = sext i32 %5 to i64
  %49 = sext i32 %5 to i64
  %50 = sext i32 %5 to i64
  %51 = sext i32 %5 to i64
  %52 = sext i32 %5 to i64
  %53 = zext i32 %13 to i64
  %54 = zext i32 %44 to i64
  br label %601

55:                                               ; preds = %28, %595
  %56 = phi i64 [ 5, %28 ], [ %596, %595 ]
  %57 = getelementptr inbounds i8, ptr %31, i64 %56
  %58 = getelementptr inbounds i8, ptr %57, i64 -1
  %59 = add nuw nsw i64 %56, %34
  %60 = getelementptr inbounds i8, ptr %0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !15
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i8, ptr %2, i64 %62
  %64 = load i8, ptr %58, align 1, !tbaa !15
  %65 = zext i8 %64 to i64
  %66 = sub nsw i64 0, %65
  %67 = getelementptr inbounds i8, ptr %63, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !15
  %69 = zext i8 %68 to i32
  %70 = add nuw nsw i32 %69, 100
  %71 = getelementptr inbounds i8, ptr %57, i64 1
  %72 = load i8, ptr %57, align 1, !tbaa !15
  %73 = zext i8 %72 to i64
  %74 = sub nsw i64 0, %73
  %75 = getelementptr inbounds i8, ptr %63, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !15
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %70, %77
  %79 = load i8, ptr %71, align 1, !tbaa !15
  %80 = zext i8 %79 to i64
  %81 = sub nsw i64 0, %80
  %82 = getelementptr inbounds i8, ptr %63, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !15
  %84 = zext i8 %83 to i32
  %85 = add nuw nsw i32 %78, %84
  %86 = getelementptr inbounds i8, ptr %71, i64 %19
  %87 = getelementptr inbounds i8, ptr %86, i64 1
  %88 = load i8, ptr %86, align 1, !tbaa !15
  %89 = zext i8 %88 to i64
  %90 = sub nsw i64 0, %89
  %91 = getelementptr inbounds i8, ptr %63, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !15
  %93 = zext i8 %92 to i32
  %94 = add nuw nsw i32 %85, %93
  %95 = getelementptr inbounds i8, ptr %86, i64 2
  %96 = load i8, ptr %87, align 1, !tbaa !15
  %97 = zext i8 %96 to i64
  %98 = sub nsw i64 0, %97
  %99 = getelementptr inbounds i8, ptr %63, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !15
  %101 = zext i8 %100 to i32
  %102 = add nuw nsw i32 %94, %101
  %103 = getelementptr inbounds i8, ptr %86, i64 3
  %104 = load i8, ptr %95, align 1, !tbaa !15
  %105 = zext i8 %104 to i64
  %106 = sub nsw i64 0, %105
  %107 = getelementptr inbounds i8, ptr %63, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !15
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i32 %102, %109
  %111 = getelementptr inbounds i8, ptr %86, i64 4
  %112 = load i8, ptr %103, align 1, !tbaa !15
  %113 = zext i8 %112 to i64
  %114 = sub nsw i64 0, %113
  %115 = getelementptr inbounds i8, ptr %63, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !15
  %117 = zext i8 %116 to i32
  %118 = add nuw nsw i32 %110, %117
  %119 = load i8, ptr %111, align 1, !tbaa !15
  %120 = zext i8 %119 to i64
  %121 = sub nsw i64 0, %120
  %122 = getelementptr inbounds i8, ptr %63, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !15
  %124 = zext i8 %123 to i32
  %125 = add nuw nsw i32 %118, %124
  %126 = getelementptr inbounds i8, ptr %111, i64 %20
  %127 = getelementptr inbounds i8, ptr %126, i64 1
  %128 = load i8, ptr %126, align 1, !tbaa !15
  %129 = zext i8 %128 to i64
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i8, ptr %63, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !15
  %133 = zext i8 %132 to i32
  %134 = add nuw nsw i32 %125, %133
  %135 = getelementptr inbounds i8, ptr %126, i64 2
  %136 = load i8, ptr %127, align 1, !tbaa !15
  %137 = zext i8 %136 to i64
  %138 = sub nsw i64 0, %137
  %139 = getelementptr inbounds i8, ptr %63, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !15
  %141 = zext i8 %140 to i32
  %142 = add nuw nsw i32 %134, %141
  %143 = getelementptr inbounds i8, ptr %126, i64 3
  %144 = load i8, ptr %135, align 1, !tbaa !15
  %145 = zext i8 %144 to i64
  %146 = sub nsw i64 0, %145
  %147 = getelementptr inbounds i8, ptr %63, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !15
  %149 = zext i8 %148 to i32
  %150 = add nuw nsw i32 %142, %149
  %151 = getelementptr inbounds i8, ptr %126, i64 4
  %152 = load i8, ptr %143, align 1, !tbaa !15
  %153 = zext i8 %152 to i64
  %154 = sub nsw i64 0, %153
  %155 = getelementptr inbounds i8, ptr %63, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !15
  %157 = zext i8 %156 to i32
  %158 = add nuw nsw i32 %150, %157
  %159 = getelementptr inbounds i8, ptr %126, i64 5
  %160 = load i8, ptr %151, align 1, !tbaa !15
  %161 = zext i8 %160 to i64
  %162 = sub nsw i64 0, %161
  %163 = getelementptr inbounds i8, ptr %63, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !15
  %165 = zext i8 %164 to i32
  %166 = add nuw nsw i32 %158, %165
  %167 = getelementptr inbounds i8, ptr %126, i64 6
  %168 = load i8, ptr %159, align 1, !tbaa !15
  %169 = zext i8 %168 to i64
  %170 = sub nsw i64 0, %169
  %171 = getelementptr inbounds i8, ptr %63, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !15
  %173 = zext i8 %172 to i32
  %174 = add nuw nsw i32 %166, %173
  %175 = load i8, ptr %167, align 1, !tbaa !15
  %176 = zext i8 %175 to i64
  %177 = sub nsw i64 0, %176
  %178 = getelementptr inbounds i8, ptr %63, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !15
  %180 = zext i8 %179 to i32
  %181 = add nuw nsw i32 %174, %180
  %182 = getelementptr inbounds i8, ptr %167, i64 %22
  %183 = getelementptr inbounds i8, ptr %182, i64 1
  %184 = load i8, ptr %182, align 1, !tbaa !15
  %185 = zext i8 %184 to i64
  %186 = sub nsw i64 0, %185
  %187 = getelementptr inbounds i8, ptr %63, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !15
  %189 = zext i8 %188 to i32
  %190 = add nuw nsw i32 %181, %189
  %191 = getelementptr inbounds i8, ptr %182, i64 2
  %192 = load i8, ptr %183, align 1, !tbaa !15
  %193 = zext i8 %192 to i64
  %194 = sub nsw i64 0, %193
  %195 = getelementptr inbounds i8, ptr %63, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !15
  %197 = zext i8 %196 to i32
  %198 = add nuw nsw i32 %190, %197
  %199 = load i8, ptr %191, align 1, !tbaa !15
  %200 = zext i8 %199 to i64
  %201 = sub nsw i64 0, %200
  %202 = getelementptr inbounds i8, ptr %63, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !15
  %204 = zext i8 %203 to i32
  %205 = add nuw nsw i32 %198, %204
  %206 = icmp slt i32 %205, %3
  br i1 %206, label %207, label %595

207:                                              ; preds = %55
  %208 = getelementptr inbounds i8, ptr %182, i64 4
  %209 = load i8, ptr %208, align 1, !tbaa !15
  %210 = zext i8 %209 to i64
  %211 = sub nsw i64 0, %210
  %212 = getelementptr inbounds i8, ptr %63, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !15
  %214 = zext i8 %213 to i32
  %215 = add nuw nsw i32 %205, %214
  %216 = icmp slt i32 %215, %3
  br i1 %216, label %217, label %595

217:                                              ; preds = %207
  %218 = getelementptr inbounds i8, ptr %182, i64 5
  %219 = getelementptr inbounds i8, ptr %182, i64 6
  %220 = load i8, ptr %218, align 1, !tbaa !15
  %221 = zext i8 %220 to i64
  %222 = sub nsw i64 0, %221
  %223 = getelementptr inbounds i8, ptr %63, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !15
  %225 = zext i8 %224 to i32
  %226 = add nuw nsw i32 %215, %225
  %227 = icmp slt i32 %226, %3
  br i1 %227, label %228, label %595

228:                                              ; preds = %217
  %229 = load i8, ptr %219, align 1, !tbaa !15
  %230 = zext i8 %229 to i64
  %231 = sub nsw i64 0, %230
  %232 = getelementptr inbounds i8, ptr %63, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !15
  %234 = zext i8 %233 to i32
  %235 = add nuw nsw i32 %226, %234
  %236 = icmp slt i32 %235, %3
  br i1 %236, label %237, label %595

237:                                              ; preds = %228
  %238 = getelementptr inbounds i8, ptr %219, i64 %22
  %239 = load i8, ptr %238, align 1, !tbaa !15
  %240 = zext i8 %239 to i64
  %241 = sub nsw i64 0, %240
  %242 = getelementptr inbounds i8, ptr %63, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !15
  %244 = zext i8 %243 to i32
  %245 = add nuw nsw i32 %235, %244
  %246 = icmp slt i32 %245, %3
  br i1 %246, label %247, label %595

247:                                              ; preds = %237
  %248 = getelementptr inbounds i8, ptr %238, i64 1
  %249 = load i8, ptr %248, align 1, !tbaa !15
  %250 = zext i8 %249 to i64
  %251 = sub nsw i64 0, %250
  %252 = getelementptr inbounds i8, ptr %63, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !15
  %254 = zext i8 %253 to i32
  %255 = add nuw nsw i32 %245, %254
  %256 = icmp slt i32 %255, %3
  br i1 %256, label %257, label %595

257:                                              ; preds = %247
  %258 = getelementptr inbounds i8, ptr %238, i64 2
  %259 = load i8, ptr %258, align 1, !tbaa !15
  %260 = zext i8 %259 to i64
  %261 = sub nsw i64 0, %260
  %262 = getelementptr inbounds i8, ptr %63, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !15
  %264 = zext i8 %263 to i32
  %265 = add nuw nsw i32 %255, %264
  %266 = icmp slt i32 %265, %3
  br i1 %266, label %267, label %595

267:                                              ; preds = %257
  %268 = getelementptr inbounds i8, ptr %238, i64 3
  %269 = load i8, ptr %268, align 1, !tbaa !15
  %270 = zext i8 %269 to i64
  %271 = sub nsw i64 0, %270
  %272 = getelementptr inbounds i8, ptr %63, i64 %271
  %273 = load i8, ptr %272, align 1, !tbaa !15
  %274 = zext i8 %273 to i32
  %275 = add nuw nsw i32 %265, %274
  %276 = icmp slt i32 %275, %3
  br i1 %276, label %277, label %595

277:                                              ; preds = %267
  %278 = getelementptr inbounds i8, ptr %238, i64 4
  %279 = load i8, ptr %278, align 1, !tbaa !15
  %280 = zext i8 %279 to i64
  %281 = sub nsw i64 0, %280
  %282 = getelementptr inbounds i8, ptr %63, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !15
  %284 = zext i8 %283 to i32
  %285 = add nuw nsw i32 %275, %284
  %286 = icmp slt i32 %285, %3
  br i1 %286, label %287, label %595

287:                                              ; preds = %277
  %288 = getelementptr inbounds i8, ptr %238, i64 5
  %289 = getelementptr inbounds i8, ptr %238, i64 6
  %290 = load i8, ptr %288, align 1, !tbaa !15
  %291 = zext i8 %290 to i64
  %292 = sub nsw i64 0, %291
  %293 = getelementptr inbounds i8, ptr %63, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !15
  %295 = zext i8 %294 to i32
  %296 = add nuw nsw i32 %285, %295
  %297 = icmp slt i32 %296, %3
  br i1 %297, label %298, label %595

298:                                              ; preds = %287
  %299 = load i8, ptr %289, align 1, !tbaa !15
  %300 = zext i8 %299 to i64
  %301 = sub nsw i64 0, %300
  %302 = getelementptr inbounds i8, ptr %63, i64 %301
  %303 = load i8, ptr %302, align 1, !tbaa !15
  %304 = zext i8 %303 to i32
  %305 = add nuw nsw i32 %296, %304
  %306 = icmp slt i32 %305, %3
  br i1 %306, label %307, label %595

307:                                              ; preds = %298
  %308 = getelementptr inbounds i8, ptr %289, i64 %20
  %309 = load i8, ptr %308, align 1, !tbaa !15
  %310 = zext i8 %309 to i64
  %311 = sub nsw i64 0, %310
  %312 = getelementptr inbounds i8, ptr %63, i64 %311
  %313 = load i8, ptr %312, align 1, !tbaa !15
  %314 = zext i8 %313 to i32
  %315 = add nuw nsw i32 %305, %314
  %316 = icmp slt i32 %315, %3
  br i1 %316, label %317, label %595

317:                                              ; preds = %307
  %318 = getelementptr inbounds i8, ptr %308, i64 1
  %319 = load i8, ptr %318, align 1, !tbaa !15
  %320 = zext i8 %319 to i64
  %321 = sub nsw i64 0, %320
  %322 = getelementptr inbounds i8, ptr %63, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !15
  %324 = zext i8 %323 to i32
  %325 = add nuw nsw i32 %315, %324
  %326 = icmp slt i32 %325, %3
  br i1 %326, label %327, label %595

327:                                              ; preds = %317
  %328 = getelementptr inbounds i8, ptr %308, i64 2
  %329 = load i8, ptr %328, align 1, !tbaa !15
  %330 = zext i8 %329 to i64
  %331 = sub nsw i64 0, %330
  %332 = getelementptr inbounds i8, ptr %63, i64 %331
  %333 = load i8, ptr %332, align 1, !tbaa !15
  %334 = zext i8 %333 to i32
  %335 = add nuw nsw i32 %325, %334
  %336 = icmp slt i32 %335, %3
  br i1 %336, label %337, label %595

337:                                              ; preds = %327
  %338 = getelementptr inbounds i8, ptr %308, i64 3
  %339 = getelementptr inbounds i8, ptr %308, i64 4
  %340 = load i8, ptr %338, align 1, !tbaa !15
  %341 = zext i8 %340 to i64
  %342 = sub nsw i64 0, %341
  %343 = getelementptr inbounds i8, ptr %63, i64 %342
  %344 = load i8, ptr %343, align 1, !tbaa !15
  %345 = zext i8 %344 to i32
  %346 = add nuw nsw i32 %335, %345
  %347 = icmp slt i32 %346, %3
  br i1 %347, label %348, label %595

348:                                              ; preds = %337
  %349 = load i8, ptr %339, align 1, !tbaa !15
  %350 = zext i8 %349 to i64
  %351 = sub nsw i64 0, %350
  %352 = getelementptr inbounds i8, ptr %63, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !15
  %354 = zext i8 %353 to i32
  %355 = add nuw nsw i32 %346, %354
  %356 = icmp slt i32 %355, %3
  br i1 %356, label %357, label %595

357:                                              ; preds = %348
  %358 = getelementptr inbounds i8, ptr %339, i64 %19
  %359 = load i8, ptr %358, align 1, !tbaa !15
  %360 = zext i8 %359 to i64
  %361 = sub nsw i64 0, %360
  %362 = getelementptr inbounds i8, ptr %63, i64 %361
  %363 = load i8, ptr %362, align 1, !tbaa !15
  %364 = zext i8 %363 to i32
  %365 = add nuw nsw i32 %355, %364
  %366 = icmp slt i32 %365, %3
  br i1 %366, label %367, label %595

367:                                              ; preds = %357
  %368 = getelementptr inbounds i8, ptr %358, i64 1
  %369 = load i8, ptr %368, align 1, !tbaa !15
  %370 = zext i8 %369 to i64
  %371 = sub nsw i64 0, %370
  %372 = getelementptr inbounds i8, ptr %63, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !15
  %374 = zext i8 %373 to i32
  %375 = add nuw nsw i32 %365, %374
  %376 = icmp slt i32 %375, %3
  br i1 %376, label %377, label %595

377:                                              ; preds = %367
  %378 = getelementptr inbounds i8, ptr %358, i64 2
  %379 = load i8, ptr %378, align 1, !tbaa !15
  %380 = zext i8 %379 to i64
  %381 = sub nsw i64 0, %380
  %382 = getelementptr inbounds i8, ptr %63, i64 %381
  %383 = load i8, ptr %382, align 1, !tbaa !15
  %384 = zext i8 %383 to i32
  %385 = add nuw nsw i32 %375, %384
  %386 = icmp slt i32 %385, %3
  br i1 %386, label %387, label %595

387:                                              ; preds = %377
  %388 = add nuw nsw i32 %77, %69
  %389 = add nuw nsw i32 %388, %84
  %390 = add nuw nsw i32 %101, %93
  %391 = add nuw nsw i32 %390, %109
  %392 = add nuw nsw i32 %391, %117
  %393 = add nuw nsw i32 %392, %124
  %394 = shl nuw nsw i32 %314, 1
  %395 = shl nuw nsw i32 %354, 1
  %396 = add nuw nsw i32 %133, %189
  %397 = add nuw nsw i32 %180, %234
  %398 = add nuw nsw i32 %396, %244
  %399 = sub nsw i32 %397, %398
  %400 = add nsw i32 %399, %304
  %401 = mul nsw i32 %400, 3
  %402 = add nuw nsw i32 %93, %141
  %403 = add nuw nsw i32 %124, %173
  %404 = add nuw nsw i32 %402, %197
  %405 = add nuw nsw i32 %403, %225
  %406 = add nuw nsw i32 %404, %254
  %407 = sub nsw i32 %405, %406
  %408 = add nsw i32 %407, %295
  %409 = shl nsw i32 %408, 1
  %410 = add nuw nsw i32 %69, %101
  %411 = add nuw nsw i32 %84, %117
  %412 = add nuw nsw i32 %410, %149
  %413 = add nuw nsw i32 %411, %165
  %414 = add nuw nsw i32 %412, %204
  %415 = add nuw nsw i32 %413, %214
  %416 = add nuw nsw i32 %414, %264
  %417 = sub nsw i32 %415, %416
  %418 = add nsw i32 %417, %284
  %419 = add i32 %418, %409
  %420 = add i32 %419, %401
  %421 = add nuw nsw i32 %394, %324
  %422 = sub i32 %420, %421
  %423 = add i32 %422, %345
  %424 = add i32 %423, %395
  %425 = sub i32 %424, %364
  %426 = add i32 %425, %384
  %427 = sub nsw i32 %364, %389
  %428 = add nsw i32 %427, %374
  %429 = add nsw i32 %428, %384
  %430 = mul nsw i32 %429, 3
  %431 = sub nsw i32 %324, %393
  %432 = add nsw i32 %431, %334
  %433 = add nsw i32 %432, %345
  %434 = shl nsw i32 %433, 1
  %435 = add nuw nsw i32 %141, %133
  %436 = add nuw nsw i32 %435, %149
  %437 = add nuw nsw i32 %436, %157
  %438 = add nuw nsw i32 %437, %165
  %439 = add nuw nsw i32 %438, %173
  %440 = add nuw nsw i32 %439, %180
  %441 = sub nsw i32 %244, %440
  %442 = add nsw i32 %441, %254
  %443 = add nsw i32 %442, %264
  %444 = add nsw i32 %443, %274
  %445 = add nsw i32 %444, %284
  %446 = add nsw i32 %445, %295
  %447 = add nsw i32 %446, %304
  %448 = add nsw i32 %447, %394
  %449 = add i32 %448, %434
  %450 = add i32 %449, %395
  %451 = add i32 %450, %430
  %452 = mul nsw i32 %426, %426
  %453 = mul nsw i32 %451, %451
  %454 = add nuw nsw i32 %453, %452
  %455 = mul nuw nsw i32 %385, %385
  %456 = lshr i32 %455, 1
  %457 = icmp ugt i32 %454, %456
  br i1 %457, label %458, label %595

458:                                              ; preds = %387
  %459 = icmp ult i32 %453, %452
  %460 = trunc i64 %56 to i32
  br i1 %459, label %461, label %517

461:                                              ; preds = %458
  %462 = sitofp i32 %451 to float
  %463 = tail call i32 @llvm.abs.i32(i32 %426, i1 true)
  %464 = sitofp i32 %463 to float
  %465 = fdiv float %462, %464
  %466 = sdiv i32 %463, %426
  %467 = fcmp olt float %465, 0.000000e+00
  %468 = fpext float %465 to double
  %469 = select i1 %467, double -5.000000e-01, double 5.000000e-01
  %470 = fadd double %469, %468
  %471 = fptosi double %470 to i32
  %472 = add nsw i32 %38, %471
  %473 = mul nsw i32 %472, %5
  %474 = add nsw i32 %473, %460
  %475 = add nsw i32 %474, %466
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i8, ptr %0, i64 %476
  %478 = load i8, ptr %477, align 1, !tbaa !15
  %479 = zext i8 %478 to i64
  %480 = sub nsw i64 0, %479
  %481 = getelementptr inbounds i8, ptr %63, i64 %480
  %482 = load i8, ptr %481, align 1, !tbaa !15
  %483 = zext i8 %482 to i32
  %484 = fmul float %465, 2.000000e+00
  %485 = fcmp olt float %484, 0.000000e+00
  %486 = fpext float %484 to double
  %487 = select i1 %485, double -5.000000e-01, double 5.000000e-01
  %488 = fadd double %487, %486
  %489 = fptosi double %488 to i32
  %490 = add nsw i32 %39, %489
  %491 = mul nsw i32 %490, %5
  %492 = trunc i64 %56 to i32
  %493 = add nsw i32 %491, %492
  %494 = shl nsw i32 %466, 1
  %495 = add nsw i32 %493, %494
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i8, ptr %0, i64 %496
  %498 = load i8, ptr %497, align 1, !tbaa !15
  %499 = zext i8 %498 to i64
  %500 = sub nsw i64 0, %499
  %501 = getelementptr inbounds i8, ptr %63, i64 %500
  %502 = load i8, ptr %501, align 1, !tbaa !15
  %503 = zext i8 %502 to i32
  %504 = add nuw nsw i32 %503, %483
  %505 = fmul float %465, 3.000000e+00
  %506 = fcmp olt float %505, 0.000000e+00
  %507 = fpext float %505 to double
  %508 = select i1 %506, double -5.000000e-01, double 5.000000e-01
  %509 = fadd double %508, %507
  %510 = fptosi double %509 to i32
  %511 = add nsw i32 %40, %510
  %512 = mul nsw i32 %511, %5
  %513 = trunc i64 %56 to i32
  %514 = add nsw i32 %512, %513
  %515 = mul nsw i32 %466, 3
  %516 = add nsw i32 %514, %515
  br label %573

517:                                              ; preds = %458
  %518 = sitofp i32 %426 to float
  %519 = tail call i32 @llvm.abs.i32(i32 %451, i1 true)
  %520 = sitofp i32 %519 to float
  %521 = fdiv float %518, %520
  %522 = sdiv i32 %519, %451
  %523 = add nsw i32 %522, %35
  %524 = mul nsw i32 %523, %5
  %525 = fcmp olt float %521, 0.000000e+00
  %526 = fpext float %521 to double
  %527 = select i1 %525, double -5.000000e-01, double 5.000000e-01
  %528 = fadd double %527, %526
  %529 = fptosi double %528 to i32
  %530 = add i32 %460, %529
  %531 = add i32 %530, %524
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i8, ptr %0, i64 %532
  %534 = load i8, ptr %533, align 1, !tbaa !15
  %535 = zext i8 %534 to i64
  %536 = sub nsw i64 0, %535
  %537 = getelementptr inbounds i8, ptr %63, i64 %536
  %538 = load i8, ptr %537, align 1, !tbaa !15
  %539 = zext i8 %538 to i32
  %540 = shl nsw i32 %522, 1
  %541 = add nsw i32 %540, %36
  %542 = mul nsw i32 %541, %5
  %543 = fmul float %521, 2.000000e+00
  %544 = fcmp olt float %543, 0.000000e+00
  %545 = fpext float %543 to double
  %546 = select i1 %544, double -5.000000e-01, double 5.000000e-01
  %547 = fadd double %546, %545
  %548 = fptosi double %547 to i32
  %549 = trunc i64 %56 to i32
  %550 = add i32 %549, %548
  %551 = add i32 %550, %542
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i8, ptr %0, i64 %552
  %554 = load i8, ptr %553, align 1, !tbaa !15
  %555 = zext i8 %554 to i64
  %556 = sub nsw i64 0, %555
  %557 = getelementptr inbounds i8, ptr %63, i64 %556
  %558 = load i8, ptr %557, align 1, !tbaa !15
  %559 = zext i8 %558 to i32
  %560 = add nuw nsw i32 %559, %539
  %561 = mul nsw i32 %522, 3
  %562 = add nsw i32 %561, %37
  %563 = mul nsw i32 %562, %5
  %564 = fmul float %521, 3.000000e+00
  %565 = fcmp olt float %564, 0.000000e+00
  %566 = fpext float %564 to double
  %567 = select i1 %565, double -5.000000e-01, double 5.000000e-01
  %568 = fadd double %567, %566
  %569 = fptosi double %568 to i32
  %570 = trunc i64 %56 to i32
  %571 = add i32 %570, %569
  %572 = add i32 %571, %563
  br label %573

573:                                              ; preds = %517, %461
  %574 = phi i32 [ %572, %517 ], [ %516, %461 ]
  %575 = phi i32 [ %560, %517 ], [ %504, %461 ]
  %576 = sext i32 %574 to i64
  %577 = getelementptr inbounds i8, ptr %0, i64 %576
  %578 = load i8, ptr %577, align 1, !tbaa !15
  %579 = zext i8 %578 to i64
  %580 = sub nsw i64 0, %579
  %581 = getelementptr inbounds i8, ptr %63, i64 %580
  %582 = load i8, ptr %581, align 1, !tbaa !15
  %583 = zext i8 %582 to i32
  %584 = add nuw nsw i32 %575, %583
  %585 = icmp sgt i32 %584, 290
  br i1 %585, label %586, label %595

586:                                              ; preds = %573
  %587 = sub nsw i32 %3, %385
  %588 = getelementptr inbounds i32, ptr %1, i64 %59
  store i32 %587, ptr %588, align 4, !tbaa !12
  %589 = mul nsw i32 %426, 51
  %590 = sdiv i32 %589, %385
  %591 = getelementptr inbounds i32, ptr %11, i64 %59
  store i32 %590, ptr %591, align 4, !tbaa !12
  %592 = mul nsw i32 %451, 51
  %593 = sdiv i32 %592, %385
  %594 = getelementptr inbounds i32, ptr %12, i64 %59
  store i32 %593, ptr %594, align 4, !tbaa !12
  br label %595

595:                                              ; preds = %55, %217, %237, %257, %277, %298, %317, %337, %357, %377, %573, %586, %387, %367, %348, %327, %307, %287, %267, %247, %228, %207
  %596 = add nuw nsw i64 %56, 1
  %597 = icmp eq i64 %596, %25
  br i1 %597, label %598, label %55, !llvm.loop !55

598:                                              ; preds = %595, %26
  %599 = add nuw nsw i64 %27, 1
  %600 = icmp eq i64 %599, %24
  br i1 %600, label %41, label %26, !llvm.loop !56

601:                                              ; preds = %43, %849
  %602 = phi i64 [ 5, %43 ], [ %851, %849 ]
  %603 = phi i32 [ 0, %43 ], [ %850, %849 ]
  br i1 %45, label %604, label %849

604:                                              ; preds = %601
  %605 = mul nsw i64 %602, %49
  %606 = add nsw i64 %602, -3
  %607 = mul nsw i64 %606, %48
  %608 = add nsw i64 %602, -2
  %609 = mul nsw i64 %608, %47
  %610 = add nsw i64 %602, -1
  %611 = mul nsw i64 %610, %46
  %612 = add nuw nsw i64 %602, 1
  %613 = mul nsw i64 %612, %50
  %614 = add nuw nsw i64 %602, 2
  %615 = mul nsw i64 %614, %51
  %616 = add nuw nsw i64 %602, 3
  %617 = mul nsw i64 %616, %52
  %618 = getelementptr i32, ptr %1, i64 %607
  %619 = getelementptr i32, ptr %1, i64 %609
  %620 = getelementptr i32, ptr %1, i64 %611
  %621 = getelementptr i32, ptr %1, i64 %613
  %622 = getelementptr i32, ptr %1, i64 %615
  %623 = getelementptr i32, ptr %1, i64 %617
  %624 = trunc i64 %602 to i32
  br label %625

625:                                              ; preds = %604, %845
  %626 = phi i64 [ 5, %604 ], [ %847, %845 ]
  %627 = phi i32 [ %603, %604 ], [ %846, %845 ]
  %628 = add nuw nsw i64 %626, %605
  %629 = getelementptr inbounds i32, ptr %1, i64 %628
  %630 = load i32, ptr %629, align 4, !tbaa !12
  %631 = icmp sgt i32 %630, 0
  br i1 %631, label %632, label %845

632:                                              ; preds = %625
  %633 = getelementptr i32, ptr %618, i64 %626
  %634 = getelementptr i32, ptr %633, i64 -3
  %635 = load i32, ptr %634, align 4, !tbaa !12
  %636 = icmp sgt i32 %630, %635
  br i1 %636, label %637, label %845

637:                                              ; preds = %632
  %638 = getelementptr i32, ptr %633, i64 -2
  %639 = load i32, ptr %638, align 4, !tbaa !12
  %640 = icmp sgt i32 %630, %639
  br i1 %640, label %641, label %845

641:                                              ; preds = %637
  %642 = getelementptr i32, ptr %633, i64 -1
  %643 = load i32, ptr %642, align 4, !tbaa !12
  %644 = icmp sgt i32 %630, %643
  br i1 %644, label %645, label %845

645:                                              ; preds = %641
  %646 = load i32, ptr %633, align 4, !tbaa !12
  %647 = icmp sgt i32 %630, %646
  br i1 %647, label %648, label %845

648:                                              ; preds = %645
  %649 = getelementptr i32, ptr %633, i64 1
  %650 = load i32, ptr %649, align 4, !tbaa !12
  %651 = icmp sgt i32 %630, %650
  br i1 %651, label %652, label %845

652:                                              ; preds = %648
  %653 = getelementptr i32, ptr %633, i64 2
  %654 = load i32, ptr %653, align 4, !tbaa !12
  %655 = icmp sgt i32 %630, %654
  br i1 %655, label %656, label %845

656:                                              ; preds = %652
  %657 = getelementptr i32, ptr %633, i64 3
  %658 = load i32, ptr %657, align 4, !tbaa !12
  %659 = icmp sgt i32 %630, %658
  br i1 %659, label %660, label %845

660:                                              ; preds = %656
  %661 = getelementptr i32, ptr %619, i64 %626
  %662 = getelementptr i32, ptr %661, i64 -3
  %663 = load i32, ptr %662, align 4, !tbaa !12
  %664 = icmp sgt i32 %630, %663
  br i1 %664, label %665, label %845

665:                                              ; preds = %660
  %666 = getelementptr i32, ptr %661, i64 -2
  %667 = load i32, ptr %666, align 4, !tbaa !12
  %668 = icmp sgt i32 %630, %667
  br i1 %668, label %669, label %845

669:                                              ; preds = %665
  %670 = getelementptr i32, ptr %661, i64 -1
  %671 = load i32, ptr %670, align 4, !tbaa !12
  %672 = icmp sgt i32 %630, %671
  br i1 %672, label %673, label %845

673:                                              ; preds = %669
  %674 = load i32, ptr %661, align 4, !tbaa !12
  %675 = icmp sgt i32 %630, %674
  br i1 %675, label %676, label %845

676:                                              ; preds = %673
  %677 = getelementptr i32, ptr %661, i64 1
  %678 = load i32, ptr %677, align 4, !tbaa !12
  %679 = icmp sgt i32 %630, %678
  br i1 %679, label %680, label %845

680:                                              ; preds = %676
  %681 = getelementptr i32, ptr %661, i64 2
  %682 = load i32, ptr %681, align 4, !tbaa !12
  %683 = icmp sgt i32 %630, %682
  br i1 %683, label %684, label %845

684:                                              ; preds = %680
  %685 = getelementptr i32, ptr %661, i64 3
  %686 = load i32, ptr %685, align 4, !tbaa !12
  %687 = icmp sgt i32 %630, %686
  br i1 %687, label %688, label %845

688:                                              ; preds = %684
  %689 = getelementptr i32, ptr %620, i64 %626
  %690 = getelementptr i32, ptr %689, i64 -3
  %691 = load i32, ptr %690, align 4, !tbaa !12
  %692 = icmp sgt i32 %630, %691
  br i1 %692, label %693, label %845

693:                                              ; preds = %688
  %694 = getelementptr i32, ptr %689, i64 -2
  %695 = load i32, ptr %694, align 4, !tbaa !12
  %696 = icmp sgt i32 %630, %695
  br i1 %696, label %697, label %845

697:                                              ; preds = %693
  %698 = getelementptr i32, ptr %689, i64 -1
  %699 = load i32, ptr %698, align 4, !tbaa !12
  %700 = icmp sgt i32 %630, %699
  br i1 %700, label %701, label %845

701:                                              ; preds = %697
  %702 = load i32, ptr %689, align 4, !tbaa !12
  %703 = icmp sgt i32 %630, %702
  br i1 %703, label %704, label %845

704:                                              ; preds = %701
  %705 = getelementptr i32, ptr %689, i64 1
  %706 = load i32, ptr %705, align 4, !tbaa !12
  %707 = icmp sgt i32 %630, %706
  br i1 %707, label %708, label %845

708:                                              ; preds = %704
  %709 = getelementptr i32, ptr %689, i64 2
  %710 = load i32, ptr %709, align 4, !tbaa !12
  %711 = icmp sgt i32 %630, %710
  br i1 %711, label %712, label %845

712:                                              ; preds = %708
  %713 = getelementptr i32, ptr %689, i64 3
  %714 = load i32, ptr %713, align 4, !tbaa !12
  %715 = icmp sgt i32 %630, %714
  br i1 %715, label %716, label %845

716:                                              ; preds = %712
  %717 = getelementptr i32, ptr %629, i64 -3
  %718 = load i32, ptr %717, align 4, !tbaa !12
  %719 = icmp sgt i32 %630, %718
  br i1 %719, label %720, label %845

720:                                              ; preds = %716
  %721 = getelementptr i32, ptr %629, i64 -2
  %722 = load i32, ptr %721, align 4, !tbaa !12
  %723 = icmp sgt i32 %630, %722
  br i1 %723, label %724, label %845

724:                                              ; preds = %720
  %725 = getelementptr i32, ptr %629, i64 -1
  %726 = load i32, ptr %725, align 4, !tbaa !12
  %727 = icmp sgt i32 %630, %726
  br i1 %727, label %728, label %845

728:                                              ; preds = %724
  %729 = getelementptr i32, ptr %629, i64 1
  %730 = load i32, ptr %729, align 4, !tbaa !12
  %731 = icmp slt i32 %630, %730
  br i1 %731, label %845, label %732

732:                                              ; preds = %728
  %733 = getelementptr i32, ptr %629, i64 2
  %734 = load i32, ptr %733, align 4, !tbaa !12
  %735 = icmp slt i32 %630, %734
  br i1 %735, label %845, label %736

736:                                              ; preds = %732
  %737 = getelementptr i32, ptr %629, i64 3
  %738 = load i32, ptr %737, align 4, !tbaa !12
  %739 = icmp slt i32 %630, %738
  br i1 %739, label %845, label %740

740:                                              ; preds = %736
  %741 = getelementptr i32, ptr %621, i64 %626
  %742 = getelementptr i32, ptr %741, i64 -3
  %743 = load i32, ptr %742, align 4, !tbaa !12
  %744 = icmp slt i32 %630, %743
  br i1 %744, label %845, label %745

745:                                              ; preds = %740
  %746 = getelementptr i32, ptr %741, i64 -2
  %747 = load i32, ptr %746, align 4, !tbaa !12
  %748 = icmp slt i32 %630, %747
  br i1 %748, label %845, label %749

749:                                              ; preds = %745
  %750 = getelementptr i32, ptr %741, i64 -1
  %751 = load i32, ptr %750, align 4, !tbaa !12
  %752 = icmp slt i32 %630, %751
  br i1 %752, label %845, label %753

753:                                              ; preds = %749
  %754 = load i32, ptr %741, align 4, !tbaa !12
  %755 = icmp slt i32 %630, %754
  br i1 %755, label %845, label %756

756:                                              ; preds = %753
  %757 = getelementptr i32, ptr %741, i64 1
  %758 = load i32, ptr %757, align 4, !tbaa !12
  %759 = icmp slt i32 %630, %758
  br i1 %759, label %845, label %760

760:                                              ; preds = %756
  %761 = getelementptr i32, ptr %741, i64 2
  %762 = load i32, ptr %761, align 4, !tbaa !12
  %763 = icmp slt i32 %630, %762
  br i1 %763, label %845, label %764

764:                                              ; preds = %760
  %765 = getelementptr i32, ptr %741, i64 3
  %766 = load i32, ptr %765, align 4, !tbaa !12
  %767 = icmp slt i32 %630, %766
  br i1 %767, label %845, label %768

768:                                              ; preds = %764
  %769 = getelementptr i32, ptr %622, i64 %626
  %770 = getelementptr i32, ptr %769, i64 -3
  %771 = load i32, ptr %770, align 4, !tbaa !12
  %772 = icmp slt i32 %630, %771
  br i1 %772, label %845, label %773

773:                                              ; preds = %768
  %774 = getelementptr i32, ptr %769, i64 -2
  %775 = load i32, ptr %774, align 4, !tbaa !12
  %776 = icmp slt i32 %630, %775
  br i1 %776, label %845, label %777

777:                                              ; preds = %773
  %778 = getelementptr i32, ptr %769, i64 -1
  %779 = load i32, ptr %778, align 4, !tbaa !12
  %780 = icmp slt i32 %630, %779
  br i1 %780, label %845, label %781

781:                                              ; preds = %777
  %782 = load i32, ptr %769, align 4, !tbaa !12
  %783 = icmp slt i32 %630, %782
  br i1 %783, label %845, label %784

784:                                              ; preds = %781
  %785 = getelementptr i32, ptr %769, i64 1
  %786 = load i32, ptr %785, align 4, !tbaa !12
  %787 = icmp slt i32 %630, %786
  br i1 %787, label %845, label %788

788:                                              ; preds = %784
  %789 = getelementptr i32, ptr %769, i64 2
  %790 = load i32, ptr %789, align 4, !tbaa !12
  %791 = icmp slt i32 %630, %790
  br i1 %791, label %845, label %792

792:                                              ; preds = %788
  %793 = getelementptr i32, ptr %769, i64 3
  %794 = load i32, ptr %793, align 4, !tbaa !12
  %795 = icmp slt i32 %630, %794
  br i1 %795, label %845, label %796

796:                                              ; preds = %792
  %797 = getelementptr i32, ptr %623, i64 %626
  %798 = getelementptr i32, ptr %797, i64 -3
  %799 = load i32, ptr %798, align 4, !tbaa !12
  %800 = icmp slt i32 %630, %799
  br i1 %800, label %845, label %801

801:                                              ; preds = %796
  %802 = getelementptr i32, ptr %797, i64 -2
  %803 = load i32, ptr %802, align 4, !tbaa !12
  %804 = icmp slt i32 %630, %803
  br i1 %804, label %845, label %805

805:                                              ; preds = %801
  %806 = getelementptr i32, ptr %797, i64 -1
  %807 = load i32, ptr %806, align 4, !tbaa !12
  %808 = icmp slt i32 %630, %807
  br i1 %808, label %845, label %809

809:                                              ; preds = %805
  %810 = load i32, ptr %797, align 4, !tbaa !12
  %811 = icmp slt i32 %630, %810
  br i1 %811, label %845, label %812

812:                                              ; preds = %809
  %813 = getelementptr i32, ptr %797, i64 1
  %814 = load i32, ptr %813, align 4, !tbaa !12
  %815 = icmp slt i32 %630, %814
  br i1 %815, label %845, label %816

816:                                              ; preds = %812
  %817 = getelementptr i32, ptr %797, i64 2
  %818 = load i32, ptr %817, align 4, !tbaa !12
  %819 = icmp slt i32 %630, %818
  br i1 %819, label %845, label %820

820:                                              ; preds = %816
  %821 = getelementptr i32, ptr %797, i64 3
  %822 = load i32, ptr %821, align 4, !tbaa !12
  %823 = icmp slt i32 %630, %822
  br i1 %823, label %845, label %824

824:                                              ; preds = %820
  %825 = sext i32 %627 to i64
  %826 = getelementptr inbounds %struct.anon, ptr %4, i64 %825
  %827 = getelementptr inbounds %struct.anon, ptr %4, i64 %825, i32 2
  store i32 0, ptr %827, align 4, !tbaa !50
  %828 = trunc i64 %626 to i32
  store i32 %828, ptr %826, align 4, !tbaa !53
  %829 = getelementptr inbounds %struct.anon, ptr %4, i64 %825, i32 1
  store i32 %624, ptr %829, align 4, !tbaa !52
  %830 = getelementptr inbounds i32, ptr %11, i64 %628
  %831 = load i32, ptr %830, align 4, !tbaa !12
  %832 = getelementptr inbounds %struct.anon, ptr %4, i64 %825, i32 3
  store i32 %831, ptr %832, align 4, !tbaa !57
  %833 = getelementptr inbounds i32, ptr %12, i64 %628
  %834 = load i32, ptr %833, align 4, !tbaa !12
  %835 = getelementptr inbounds %struct.anon, ptr %4, i64 %825, i32 4
  store i32 %834, ptr %835, align 4, !tbaa !58
  %836 = getelementptr inbounds i8, ptr %0, i64 %628
  %837 = load i8, ptr %836, align 1, !tbaa !15
  %838 = zext i8 %837 to i32
  %839 = getelementptr inbounds %struct.anon, ptr %4, i64 %825, i32 5
  store i32 %838, ptr %839, align 4, !tbaa !59
  %840 = add nsw i32 %627, 1
  %841 = icmp eq i32 %840, 15000
  br i1 %841, label %842, label %845

842:                                              ; preds = %824
  %843 = load ptr, ptr @stderr, align 8, !tbaa !5
  %844 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %843) #22
  tail call void @exit(i32 noundef 1) #20
  unreachable

845:                                              ; preds = %625, %824, %820, %816, %812, %809, %805, %801, %796, %792, %788, %784, %781, %777, %773, %768, %764, %760, %756, %753, %749, %745, %740, %736, %732, %728, %724, %720, %716, %712, %708, %704, %701, %697, %693, %688, %684, %680, %676, %673, %669, %665, %660, %656, %652, %648, %645, %641, %637, %632
  %846 = phi i32 [ %840, %824 ], [ %627, %820 ], [ %627, %816 ], [ %627, %812 ], [ %627, %809 ], [ %627, %805 ], [ %627, %801 ], [ %627, %796 ], [ %627, %792 ], [ %627, %788 ], [ %627, %784 ], [ %627, %781 ], [ %627, %777 ], [ %627, %773 ], [ %627, %768 ], [ %627, %764 ], [ %627, %760 ], [ %627, %756 ], [ %627, %753 ], [ %627, %749 ], [ %627, %745 ], [ %627, %740 ], [ %627, %736 ], [ %627, %732 ], [ %627, %728 ], [ %627, %724 ], [ %627, %720 ], [ %627, %716 ], [ %627, %712 ], [ %627, %708 ], [ %627, %704 ], [ %627, %701 ], [ %627, %697 ], [ %627, %693 ], [ %627, %688 ], [ %627, %684 ], [ %627, %680 ], [ %627, %676 ], [ %627, %673 ], [ %627, %669 ], [ %627, %665 ], [ %627, %660 ], [ %627, %656 ], [ %627, %652 ], [ %627, %648 ], [ %627, %645 ], [ %627, %641 ], [ %627, %637 ], [ %627, %632 ], [ %627, %625 ]
  %847 = add nuw nsw i64 %626, 1
  %848 = icmp eq i64 %847, %54
  br i1 %848, label %849, label %625, !llvm.loop !60

849:                                              ; preds = %845, %601
  %850 = phi i32 [ %603, %601 ], [ %846, %845 ]
  %851 = add nuw nsw i64 %602, 1
  %852 = icmp eq i64 %851, %53
  br i1 %852, label %853, label %601, !llvm.loop !61

853:                                              ; preds = %849
  %854 = sext i32 %850 to i64
  br label %855

855:                                              ; preds = %853, %41
  %856 = phi i64 [ 0, %41 ], [ %854, %853 ]
  %857 = getelementptr inbounds %struct.anon, ptr %4, i64 %856, i32 2
  store i32 7, ptr %857, align 4, !tbaa !50
  tail call void @free(ptr noundef %11) #21
  tail call void @free(ptr noundef %12) #21
  ret i32 undef
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local i32 @susan_corners_quick(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
  %8 = mul nsw i32 %6, %5
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %10, i1 false)
  %11 = add i32 %6, -7
  %12 = icmp sgt i32 %6, 14
  br i1 %12, label %13, label %34

13:                                               ; preds = %7
  %14 = add i32 %5, -7
  %15 = icmp sgt i32 %5, 14
  %16 = add nsw i32 %5, -3
  %17 = sext i32 %16 to i64
  %18 = add nsw i32 %5, -5
  %19 = sext i32 %18 to i64
  %20 = add nsw i32 %5, -6
  %21 = sext i32 %20 to i64
  %22 = sext i32 %5 to i64
  %23 = zext i32 %11 to i64
  %24 = zext i32 %14 to i64
  br label %25

25:                                               ; preds = %13, %386
  %26 = phi i64 [ 7, %13 ], [ %387, %386 ]
  br i1 %15, label %27, label %386

27:                                               ; preds = %25
  %28 = add nsw i64 %26, -3
  %29 = mul nsw i64 %28, %22
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = trunc i64 %26 to i32
  %32 = mul i32 %31, %5
  %33 = zext i32 %32 to i64
  br label %48

34:                                               ; preds = %386, %7
  %35 = icmp sgt i32 %6, 14
  br i1 %35, label %36, label %846

36:                                               ; preds = %34
  %37 = add i32 %5, -7
  %38 = icmp sgt i32 %5, 14
  %39 = sext i32 %5 to i64
  %40 = sext i32 %5 to i64
  %41 = sext i32 %5 to i64
  %42 = sext i32 %5 to i64
  %43 = sext i32 %5 to i64
  %44 = sext i32 %5 to i64
  %45 = sext i32 %5 to i64
  %46 = zext i32 %11 to i64
  %47 = zext i32 %37 to i64
  br label %389

48:                                               ; preds = %27, %383
  %49 = phi i64 [ 7, %27 ], [ %384, %383 ]
  %50 = getelementptr inbounds i8, ptr %30, i64 %49
  %51 = getelementptr inbounds i8, ptr %50, i64 -1
  %52 = add nuw nsw i64 %49, %33
  %53 = getelementptr inbounds i8, ptr %0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !15
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i8, ptr %2, i64 %55
  %57 = load i8, ptr %51, align 1, !tbaa !15
  %58 = zext i8 %57 to i64
  %59 = sub nsw i64 0, %58
  %60 = getelementptr inbounds i8, ptr %56, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !15
  %62 = zext i8 %61 to i32
  %63 = add nuw nsw i32 %62, 100
  %64 = getelementptr inbounds i8, ptr %50, i64 1
  %65 = load i8, ptr %50, align 1, !tbaa !15
  %66 = zext i8 %65 to i64
  %67 = sub nsw i64 0, %66
  %68 = getelementptr inbounds i8, ptr %56, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !15
  %70 = zext i8 %69 to i32
  %71 = add nuw nsw i32 %63, %70
  %72 = load i8, ptr %64, align 1, !tbaa !15
  %73 = zext i8 %72 to i64
  %74 = sub nsw i64 0, %73
  %75 = getelementptr inbounds i8, ptr %56, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !15
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %71, %77
  %79 = getelementptr inbounds i8, ptr %64, i64 %17
  %80 = getelementptr inbounds i8, ptr %79, i64 1
  %81 = load i8, ptr %79, align 1, !tbaa !15
  %82 = zext i8 %81 to i64
  %83 = sub nsw i64 0, %82
  %84 = getelementptr inbounds i8, ptr %56, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !15
  %86 = zext i8 %85 to i32
  %87 = add nuw nsw i32 %78, %86
  %88 = getelementptr inbounds i8, ptr %79, i64 2
  %89 = load i8, ptr %80, align 1, !tbaa !15
  %90 = zext i8 %89 to i64
  %91 = sub nsw i64 0, %90
  %92 = getelementptr inbounds i8, ptr %56, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !15
  %94 = zext i8 %93 to i32
  %95 = add nuw nsw i32 %87, %94
  %96 = getelementptr inbounds i8, ptr %79, i64 3
  %97 = load i8, ptr %88, align 1, !tbaa !15
  %98 = zext i8 %97 to i64
  %99 = sub nsw i64 0, %98
  %100 = getelementptr inbounds i8, ptr %56, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !15
  %102 = zext i8 %101 to i32
  %103 = add nuw nsw i32 %95, %102
  %104 = getelementptr inbounds i8, ptr %79, i64 4
  %105 = load i8, ptr %96, align 1, !tbaa !15
  %106 = zext i8 %105 to i64
  %107 = sub nsw i64 0, %106
  %108 = getelementptr inbounds i8, ptr %56, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !15
  %110 = zext i8 %109 to i32
  %111 = add nuw nsw i32 %103, %110
  %112 = load i8, ptr %104, align 1, !tbaa !15
  %113 = zext i8 %112 to i64
  %114 = sub nsw i64 0, %113
  %115 = getelementptr inbounds i8, ptr %56, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !15
  %117 = zext i8 %116 to i32
  %118 = add nuw nsw i32 %111, %117
  %119 = getelementptr inbounds i8, ptr %104, i64 %19
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  %121 = load i8, ptr %119, align 1, !tbaa !15
  %122 = zext i8 %121 to i64
  %123 = sub nsw i64 0, %122
  %124 = getelementptr inbounds i8, ptr %56, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !15
  %126 = zext i8 %125 to i32
  %127 = add nuw nsw i32 %118, %126
  %128 = getelementptr inbounds i8, ptr %119, i64 2
  %129 = load i8, ptr %120, align 1, !tbaa !15
  %130 = zext i8 %129 to i64
  %131 = sub nsw i64 0, %130
  %132 = getelementptr inbounds i8, ptr %56, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !15
  %134 = zext i8 %133 to i32
  %135 = add nuw nsw i32 %127, %134
  %136 = getelementptr inbounds i8, ptr %119, i64 3
  %137 = load i8, ptr %128, align 1, !tbaa !15
  %138 = zext i8 %137 to i64
  %139 = sub nsw i64 0, %138
  %140 = getelementptr inbounds i8, ptr %56, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !15
  %142 = zext i8 %141 to i32
  %143 = add nuw nsw i32 %135, %142
  %144 = getelementptr inbounds i8, ptr %119, i64 4
  %145 = load i8, ptr %136, align 1, !tbaa !15
  %146 = zext i8 %145 to i64
  %147 = sub nsw i64 0, %146
  %148 = getelementptr inbounds i8, ptr %56, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !15
  %150 = zext i8 %149 to i32
  %151 = add nuw nsw i32 %143, %150
  %152 = getelementptr inbounds i8, ptr %119, i64 5
  %153 = load i8, ptr %144, align 1, !tbaa !15
  %154 = zext i8 %153 to i64
  %155 = sub nsw i64 0, %154
  %156 = getelementptr inbounds i8, ptr %56, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !15
  %158 = zext i8 %157 to i32
  %159 = add nuw nsw i32 %151, %158
  %160 = getelementptr inbounds i8, ptr %119, i64 6
  %161 = load i8, ptr %152, align 1, !tbaa !15
  %162 = zext i8 %161 to i64
  %163 = sub nsw i64 0, %162
  %164 = getelementptr inbounds i8, ptr %56, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !15
  %166 = zext i8 %165 to i32
  %167 = add nuw nsw i32 %159, %166
  %168 = load i8, ptr %160, align 1, !tbaa !15
  %169 = zext i8 %168 to i64
  %170 = sub nsw i64 0, %169
  %171 = getelementptr inbounds i8, ptr %56, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !15
  %173 = zext i8 %172 to i32
  %174 = add nuw nsw i32 %167, %173
  %175 = getelementptr inbounds i8, ptr %160, i64 %21
  %176 = getelementptr inbounds i8, ptr %175, i64 1
  %177 = load i8, ptr %175, align 1, !tbaa !15
  %178 = zext i8 %177 to i64
  %179 = sub nsw i64 0, %178
  %180 = getelementptr inbounds i8, ptr %56, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !15
  %182 = zext i8 %181 to i32
  %183 = add nuw nsw i32 %174, %182
  %184 = getelementptr inbounds i8, ptr %175, i64 2
  %185 = load i8, ptr %176, align 1, !tbaa !15
  %186 = zext i8 %185 to i64
  %187 = sub nsw i64 0, %186
  %188 = getelementptr inbounds i8, ptr %56, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !15
  %190 = zext i8 %189 to i32
  %191 = add nuw nsw i32 %183, %190
  %192 = load i8, ptr %184, align 1, !tbaa !15
  %193 = zext i8 %192 to i64
  %194 = sub nsw i64 0, %193
  %195 = getelementptr inbounds i8, ptr %56, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !15
  %197 = zext i8 %196 to i32
  %198 = add nuw nsw i32 %191, %197
  %199 = icmp slt i32 %198, %3
  br i1 %199, label %200, label %383

200:                                              ; preds = %48
  %201 = getelementptr inbounds i8, ptr %175, i64 4
  %202 = load i8, ptr %201, align 1, !tbaa !15
  %203 = zext i8 %202 to i64
  %204 = sub nsw i64 0, %203
  %205 = getelementptr inbounds i8, ptr %56, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !15
  %207 = zext i8 %206 to i32
  %208 = add nuw nsw i32 %198, %207
  %209 = icmp slt i32 %208, %3
  br i1 %209, label %210, label %383

210:                                              ; preds = %200
  %211 = getelementptr inbounds i8, ptr %175, i64 5
  %212 = getelementptr inbounds i8, ptr %175, i64 6
  %213 = load i8, ptr %211, align 1, !tbaa !15
  %214 = zext i8 %213 to i64
  %215 = sub nsw i64 0, %214
  %216 = getelementptr inbounds i8, ptr %56, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !15
  %218 = zext i8 %217 to i32
  %219 = add nuw nsw i32 %208, %218
  %220 = icmp slt i32 %219, %3
  br i1 %220, label %221, label %383

221:                                              ; preds = %210
  %222 = load i8, ptr %212, align 1, !tbaa !15
  %223 = zext i8 %222 to i64
  %224 = sub nsw i64 0, %223
  %225 = getelementptr inbounds i8, ptr %56, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !15
  %227 = zext i8 %226 to i32
  %228 = add nuw nsw i32 %219, %227
  %229 = icmp slt i32 %228, %3
  br i1 %229, label %230, label %383

230:                                              ; preds = %221
  %231 = getelementptr inbounds i8, ptr %212, i64 %21
  %232 = load i8, ptr %231, align 1, !tbaa !15
  %233 = zext i8 %232 to i64
  %234 = sub nsw i64 0, %233
  %235 = getelementptr inbounds i8, ptr %56, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !15
  %237 = zext i8 %236 to i32
  %238 = add nuw nsw i32 %228, %237
  %239 = icmp slt i32 %238, %3
  br i1 %239, label %240, label %383

240:                                              ; preds = %230
  %241 = getelementptr inbounds i8, ptr %231, i64 1
  %242 = load i8, ptr %241, align 1, !tbaa !15
  %243 = zext i8 %242 to i64
  %244 = sub nsw i64 0, %243
  %245 = getelementptr inbounds i8, ptr %56, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !15
  %247 = zext i8 %246 to i32
  %248 = add nuw nsw i32 %238, %247
  %249 = icmp slt i32 %248, %3
  br i1 %249, label %250, label %383

250:                                              ; preds = %240
  %251 = getelementptr inbounds i8, ptr %231, i64 2
  %252 = load i8, ptr %251, align 1, !tbaa !15
  %253 = zext i8 %252 to i64
  %254 = sub nsw i64 0, %253
  %255 = getelementptr inbounds i8, ptr %56, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !15
  %257 = zext i8 %256 to i32
  %258 = add nuw nsw i32 %248, %257
  %259 = icmp slt i32 %258, %3
  br i1 %259, label %260, label %383

260:                                              ; preds = %250
  %261 = getelementptr inbounds i8, ptr %231, i64 3
  %262 = load i8, ptr %261, align 1, !tbaa !15
  %263 = zext i8 %262 to i64
  %264 = sub nsw i64 0, %263
  %265 = getelementptr inbounds i8, ptr %56, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !15
  %267 = zext i8 %266 to i32
  %268 = add nuw nsw i32 %258, %267
  %269 = icmp slt i32 %268, %3
  br i1 %269, label %270, label %383

270:                                              ; preds = %260
  %271 = getelementptr inbounds i8, ptr %231, i64 4
  %272 = load i8, ptr %271, align 1, !tbaa !15
  %273 = zext i8 %272 to i64
  %274 = sub nsw i64 0, %273
  %275 = getelementptr inbounds i8, ptr %56, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !15
  %277 = zext i8 %276 to i32
  %278 = add nuw nsw i32 %268, %277
  %279 = icmp slt i32 %278, %3
  br i1 %279, label %280, label %383

280:                                              ; preds = %270
  %281 = getelementptr inbounds i8, ptr %231, i64 5
  %282 = getelementptr inbounds i8, ptr %231, i64 6
  %283 = load i8, ptr %281, align 1, !tbaa !15
  %284 = zext i8 %283 to i64
  %285 = sub nsw i64 0, %284
  %286 = getelementptr inbounds i8, ptr %56, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !15
  %288 = zext i8 %287 to i32
  %289 = add nuw nsw i32 %278, %288
  %290 = icmp slt i32 %289, %3
  br i1 %290, label %291, label %383

291:                                              ; preds = %280
  %292 = load i8, ptr %282, align 1, !tbaa !15
  %293 = zext i8 %292 to i64
  %294 = sub nsw i64 0, %293
  %295 = getelementptr inbounds i8, ptr %56, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !15
  %297 = zext i8 %296 to i32
  %298 = add nuw nsw i32 %289, %297
  %299 = icmp slt i32 %298, %3
  br i1 %299, label %300, label %383

300:                                              ; preds = %291
  %301 = getelementptr inbounds i8, ptr %282, i64 %19
  %302 = load i8, ptr %301, align 1, !tbaa !15
  %303 = zext i8 %302 to i64
  %304 = sub nsw i64 0, %303
  %305 = getelementptr inbounds i8, ptr %56, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !15
  %307 = zext i8 %306 to i32
  %308 = add nuw nsw i32 %298, %307
  %309 = icmp slt i32 %308, %3
  br i1 %309, label %310, label %383

310:                                              ; preds = %300
  %311 = getelementptr inbounds i8, ptr %301, i64 1
  %312 = load i8, ptr %311, align 1, !tbaa !15
  %313 = zext i8 %312 to i64
  %314 = sub nsw i64 0, %313
  %315 = getelementptr inbounds i8, ptr %56, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !15
  %317 = zext i8 %316 to i32
  %318 = add nuw nsw i32 %308, %317
  %319 = icmp slt i32 %318, %3
  br i1 %319, label %320, label %383

320:                                              ; preds = %310
  %321 = getelementptr inbounds i8, ptr %301, i64 2
  %322 = load i8, ptr %321, align 1, !tbaa !15
  %323 = zext i8 %322 to i64
  %324 = sub nsw i64 0, %323
  %325 = getelementptr inbounds i8, ptr %56, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !15
  %327 = zext i8 %326 to i32
  %328 = add nuw nsw i32 %318, %327
  %329 = icmp slt i32 %328, %3
  br i1 %329, label %330, label %383

330:                                              ; preds = %320
  %331 = getelementptr inbounds i8, ptr %301, i64 3
  %332 = getelementptr inbounds i8, ptr %301, i64 4
  %333 = load i8, ptr %331, align 1, !tbaa !15
  %334 = zext i8 %333 to i64
  %335 = sub nsw i64 0, %334
  %336 = getelementptr inbounds i8, ptr %56, i64 %335
  %337 = load i8, ptr %336, align 1, !tbaa !15
  %338 = zext i8 %337 to i32
  %339 = add nuw nsw i32 %328, %338
  %340 = icmp slt i32 %339, %3
  br i1 %340, label %341, label %383

341:                                              ; preds = %330
  %342 = load i8, ptr %332, align 1, !tbaa !15
  %343 = zext i8 %342 to i64
  %344 = sub nsw i64 0, %343
  %345 = getelementptr inbounds i8, ptr %56, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !15
  %347 = zext i8 %346 to i32
  %348 = add nuw nsw i32 %339, %347
  %349 = icmp slt i32 %348, %3
  br i1 %349, label %350, label %383

350:                                              ; preds = %341
  %351 = getelementptr inbounds i8, ptr %332, i64 %17
  %352 = load i8, ptr %351, align 1, !tbaa !15
  %353 = zext i8 %352 to i64
  %354 = sub nsw i64 0, %353
  %355 = getelementptr inbounds i8, ptr %56, i64 %354
  %356 = load i8, ptr %355, align 1, !tbaa !15
  %357 = zext i8 %356 to i32
  %358 = add nuw nsw i32 %348, %357
  %359 = icmp slt i32 %358, %3
  br i1 %359, label %360, label %383

360:                                              ; preds = %350
  %361 = getelementptr inbounds i8, ptr %351, i64 1
  %362 = load i8, ptr %361, align 1, !tbaa !15
  %363 = zext i8 %362 to i64
  %364 = sub nsw i64 0, %363
  %365 = getelementptr inbounds i8, ptr %56, i64 %364
  %366 = load i8, ptr %365, align 1, !tbaa !15
  %367 = zext i8 %366 to i32
  %368 = add nuw nsw i32 %358, %367
  %369 = icmp slt i32 %368, %3
  br i1 %369, label %370, label %383

370:                                              ; preds = %360
  %371 = getelementptr inbounds i8, ptr %351, i64 2
  %372 = load i8, ptr %371, align 1, !tbaa !15
  %373 = zext i8 %372 to i64
  %374 = sub nsw i64 0, %373
  %375 = getelementptr inbounds i8, ptr %56, i64 %374
  %376 = load i8, ptr %375, align 1, !tbaa !15
  %377 = zext i8 %376 to i32
  %378 = add nuw nsw i32 %368, %377
  %379 = icmp slt i32 %378, %3
  br i1 %379, label %380, label %383

380:                                              ; preds = %370
  %381 = sub nsw i32 %3, %378
  %382 = getelementptr inbounds i32, ptr %1, i64 %52
  store i32 %381, ptr %382, align 4, !tbaa !12
  br label %383

383:                                              ; preds = %48, %210, %230, %250, %270, %291, %310, %330, %350, %370, %380, %360, %341, %320, %300, %280, %260, %240, %221, %200
  %384 = add nuw nsw i64 %49, 1
  %385 = icmp eq i64 %384, %24
  br i1 %385, label %386, label %48, !llvm.loop !62

386:                                              ; preds = %383, %25
  %387 = add nuw nsw i64 %26, 1
  %388 = icmp eq i64 %387, %23
  br i1 %388, label %34, label %25, !llvm.loop !63

389:                                              ; preds = %36, %840
  %390 = phi i64 [ 7, %36 ], [ %842, %840 ]
  %391 = phi i32 [ 0, %36 ], [ %841, %840 ]
  br i1 %38, label %392, label %840

392:                                              ; preds = %389
  %393 = mul nsw i64 %390, %42
  %394 = add nsw i64 %390, -3
  %395 = mul nsw i64 %394, %41
  %396 = add nsw i64 %390, -2
  %397 = mul nsw i64 %396, %40
  %398 = add nsw i64 %390, -1
  %399 = mul nsw i64 %398, %39
  %400 = add nuw nsw i64 %390, 1
  %401 = mul nsw i64 %400, %43
  %402 = add nuw nsw i64 %390, 2
  %403 = mul nsw i64 %402, %44
  %404 = add nuw nsw i64 %390, 3
  %405 = mul nsw i64 %404, %45
  %406 = getelementptr i32, ptr %1, i64 %395
  %407 = getelementptr i32, ptr %1, i64 %405
  %408 = trunc i64 %390 to i32
  br label %409

409:                                              ; preds = %392, %836
  %410 = phi i64 [ 7, %392 ], [ %838, %836 ]
  %411 = phi i32 [ %391, %392 ], [ %837, %836 ]
  %412 = add nuw nsw i64 %410, %393
  %413 = getelementptr inbounds i32, ptr %1, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !12
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %836

416:                                              ; preds = %409
  %417 = getelementptr i32, ptr %406, i64 %410
  %418 = getelementptr i32, ptr %417, i64 -3
  %419 = load i32, ptr %418, align 4, !tbaa !12
  %420 = icmp sgt i32 %414, %419
  br i1 %420, label %421, label %836

421:                                              ; preds = %416
  %422 = getelementptr i32, ptr %417, i64 -2
  %423 = load i32, ptr %422, align 4, !tbaa !12
  %424 = icmp sgt i32 %414, %423
  br i1 %424, label %425, label %836

425:                                              ; preds = %421
  %426 = getelementptr i32, ptr %417, i64 -1
  %427 = load i32, ptr %426, align 4, !tbaa !12
  %428 = icmp sgt i32 %414, %427
  br i1 %428, label %429, label %836

429:                                              ; preds = %425
  %430 = load i32, ptr %417, align 4, !tbaa !12
  %431 = icmp sgt i32 %414, %430
  br i1 %431, label %432, label %836

432:                                              ; preds = %429
  %433 = getelementptr i32, ptr %417, i64 1
  %434 = load i32, ptr %433, align 4, !tbaa !12
  %435 = icmp sgt i32 %414, %434
  br i1 %435, label %436, label %836

436:                                              ; preds = %432
  %437 = getelementptr i32, ptr %417, i64 2
  %438 = load i32, ptr %437, align 4, !tbaa !12
  %439 = icmp sgt i32 %414, %438
  br i1 %439, label %440, label %836

440:                                              ; preds = %436
  %441 = getelementptr i32, ptr %417, i64 3
  %442 = load i32, ptr %441, align 4, !tbaa !12
  %443 = icmp sgt i32 %414, %442
  br i1 %443, label %444, label %836

444:                                              ; preds = %440
  %445 = add nsw i64 %410, %397
  %446 = getelementptr i32, ptr %1, i64 %445
  %447 = getelementptr i32, ptr %446, i64 -3
  %448 = load i32, ptr %447, align 4, !tbaa !12
  %449 = icmp sgt i32 %414, %448
  br i1 %449, label %450, label %836

450:                                              ; preds = %444
  %451 = add nsw i64 %445, -2
  %452 = getelementptr inbounds i32, ptr %1, i64 %451
  %453 = load i32, ptr %452, align 4, !tbaa !12
  %454 = icmp sgt i32 %414, %453
  br i1 %454, label %455, label %836

455:                                              ; preds = %450
  %456 = add nsw i64 %445, -1
  %457 = getelementptr inbounds i32, ptr %1, i64 %456
  %458 = load i32, ptr %457, align 4, !tbaa !12
  %459 = icmp sgt i32 %414, %458
  br i1 %459, label %460, label %836

460:                                              ; preds = %455
  %461 = load i32, ptr %446, align 4, !tbaa !12
  %462 = icmp sgt i32 %414, %461
  br i1 %462, label %463, label %836

463:                                              ; preds = %460
  %464 = add nsw i64 %445, 1
  %465 = getelementptr inbounds i32, ptr %1, i64 %464
  %466 = load i32, ptr %465, align 4, !tbaa !12
  %467 = icmp sgt i32 %414, %466
  br i1 %467, label %468, label %836

468:                                              ; preds = %463
  %469 = add nsw i64 %445, 2
  %470 = getelementptr inbounds i32, ptr %1, i64 %469
  %471 = load i32, ptr %470, align 4, !tbaa !12
  %472 = icmp sgt i32 %414, %471
  br i1 %472, label %473, label %836

473:                                              ; preds = %468
  %474 = getelementptr i32, ptr %446, i64 3
  %475 = load i32, ptr %474, align 4, !tbaa !12
  %476 = icmp sgt i32 %414, %475
  br i1 %476, label %477, label %836

477:                                              ; preds = %473
  %478 = add nsw i64 %410, %399
  %479 = getelementptr i32, ptr %1, i64 %478
  %480 = getelementptr i32, ptr %479, i64 -3
  %481 = load i32, ptr %480, align 4, !tbaa !12
  %482 = icmp sgt i32 %414, %481
  br i1 %482, label %483, label %836

483:                                              ; preds = %477
  %484 = add nsw i64 %478, -2
  %485 = getelementptr inbounds i32, ptr %1, i64 %484
  %486 = load i32, ptr %485, align 4, !tbaa !12
  %487 = icmp sgt i32 %414, %486
  br i1 %487, label %488, label %836

488:                                              ; preds = %483
  %489 = add nsw i64 %478, -1
  %490 = getelementptr inbounds i32, ptr %1, i64 %489
  %491 = load i32, ptr %490, align 4, !tbaa !12
  %492 = icmp sgt i32 %414, %491
  br i1 %492, label %493, label %836

493:                                              ; preds = %488
  %494 = load i32, ptr %479, align 4, !tbaa !12
  %495 = icmp sgt i32 %414, %494
  br i1 %495, label %496, label %836

496:                                              ; preds = %493
  %497 = add nsw i64 %478, 1
  %498 = getelementptr inbounds i32, ptr %1, i64 %497
  %499 = load i32, ptr %498, align 4, !tbaa !12
  %500 = icmp sgt i32 %414, %499
  br i1 %500, label %501, label %836

501:                                              ; preds = %496
  %502 = add nsw i64 %478, 2
  %503 = getelementptr inbounds i32, ptr %1, i64 %502
  %504 = load i32, ptr %503, align 4, !tbaa !12
  %505 = icmp sgt i32 %414, %504
  br i1 %505, label %506, label %836

506:                                              ; preds = %501
  %507 = getelementptr i32, ptr %479, i64 3
  %508 = load i32, ptr %507, align 4, !tbaa !12
  %509 = icmp sgt i32 %414, %508
  br i1 %509, label %510, label %836

510:                                              ; preds = %506
  %511 = getelementptr i32, ptr %413, i64 -3
  %512 = load i32, ptr %511, align 4, !tbaa !12
  %513 = icmp sgt i32 %414, %512
  br i1 %513, label %514, label %836

514:                                              ; preds = %510
  %515 = add nsw i64 %412, -2
  %516 = getelementptr inbounds i32, ptr %1, i64 %515
  %517 = load i32, ptr %516, align 4, !tbaa !12
  %518 = icmp sgt i32 %414, %517
  br i1 %518, label %519, label %836

519:                                              ; preds = %514
  %520 = add nsw i64 %412, -1
  %521 = getelementptr inbounds i32, ptr %1, i64 %520
  %522 = load i32, ptr %521, align 4, !tbaa !12
  %523 = icmp sgt i32 %414, %522
  br i1 %523, label %524, label %836

524:                                              ; preds = %519
  %525 = add nuw nsw i64 %412, 1
  %526 = getelementptr inbounds i32, ptr %1, i64 %525
  %527 = load i32, ptr %526, align 4, !tbaa !12
  %528 = icmp slt i32 %414, %527
  br i1 %528, label %836, label %529

529:                                              ; preds = %524
  %530 = add nuw nsw i64 %412, 2
  %531 = getelementptr inbounds i32, ptr %1, i64 %530
  %532 = load i32, ptr %531, align 4, !tbaa !12
  %533 = icmp slt i32 %414, %532
  br i1 %533, label %836, label %534

534:                                              ; preds = %529
  %535 = getelementptr i32, ptr %413, i64 3
  %536 = load i32, ptr %535, align 4, !tbaa !12
  %537 = icmp slt i32 %414, %536
  br i1 %537, label %836, label %538

538:                                              ; preds = %534
  %539 = add nuw nsw i64 %410, %401
  %540 = getelementptr i32, ptr %1, i64 %539
  %541 = getelementptr i32, ptr %540, i64 -3
  %542 = load i32, ptr %541, align 4, !tbaa !12
  %543 = icmp slt i32 %414, %542
  br i1 %543, label %836, label %544

544:                                              ; preds = %538
  %545 = add nsw i64 %539, -2
  %546 = getelementptr inbounds i32, ptr %1, i64 %545
  %547 = load i32, ptr %546, align 4, !tbaa !12
  %548 = icmp slt i32 %414, %547
  br i1 %548, label %836, label %549

549:                                              ; preds = %544
  %550 = add nsw i64 %539, -1
  %551 = getelementptr inbounds i32, ptr %1, i64 %550
  %552 = load i32, ptr %551, align 4, !tbaa !12
  %553 = icmp slt i32 %414, %552
  br i1 %553, label %836, label %554

554:                                              ; preds = %549
  %555 = load i32, ptr %540, align 4, !tbaa !12
  %556 = icmp slt i32 %414, %555
  br i1 %556, label %836, label %557

557:                                              ; preds = %554
  %558 = add nuw nsw i64 %539, 1
  %559 = getelementptr inbounds i32, ptr %1, i64 %558
  %560 = load i32, ptr %559, align 4, !tbaa !12
  %561 = icmp slt i32 %414, %560
  br i1 %561, label %836, label %562

562:                                              ; preds = %557
  %563 = add nuw nsw i64 %539, 2
  %564 = getelementptr inbounds i32, ptr %1, i64 %563
  %565 = load i32, ptr %564, align 4, !tbaa !12
  %566 = icmp slt i32 %414, %565
  br i1 %566, label %836, label %567

567:                                              ; preds = %562
  %568 = getelementptr i32, ptr %540, i64 3
  %569 = load i32, ptr %568, align 4, !tbaa !12
  %570 = icmp slt i32 %414, %569
  br i1 %570, label %836, label %571

571:                                              ; preds = %567
  %572 = add nuw nsw i64 %410, %403
  %573 = getelementptr i32, ptr %1, i64 %572
  %574 = getelementptr i32, ptr %573, i64 -3
  %575 = load i32, ptr %574, align 4, !tbaa !12
  %576 = icmp slt i32 %414, %575
  br i1 %576, label %836, label %577

577:                                              ; preds = %571
  %578 = add nsw i64 %572, -2
  %579 = getelementptr inbounds i32, ptr %1, i64 %578
  %580 = load i32, ptr %579, align 4, !tbaa !12
  %581 = icmp slt i32 %414, %580
  br i1 %581, label %836, label %582

582:                                              ; preds = %577
  %583 = add nsw i64 %572, -1
  %584 = getelementptr inbounds i32, ptr %1, i64 %583
  %585 = load i32, ptr %584, align 4, !tbaa !12
  %586 = icmp slt i32 %414, %585
  br i1 %586, label %836, label %587

587:                                              ; preds = %582
  %588 = load i32, ptr %573, align 4, !tbaa !12
  %589 = icmp slt i32 %414, %588
  br i1 %589, label %836, label %590

590:                                              ; preds = %587
  %591 = add nuw nsw i64 %572, 1
  %592 = getelementptr inbounds i32, ptr %1, i64 %591
  %593 = load i32, ptr %592, align 4, !tbaa !12
  %594 = icmp slt i32 %414, %593
  br i1 %594, label %836, label %595

595:                                              ; preds = %590
  %596 = add nuw nsw i64 %572, 2
  %597 = getelementptr inbounds i32, ptr %1, i64 %596
  %598 = load i32, ptr %597, align 4, !tbaa !12
  %599 = icmp slt i32 %414, %598
  br i1 %599, label %836, label %600

600:                                              ; preds = %595
  %601 = getelementptr i32, ptr %573, i64 3
  %602 = load i32, ptr %601, align 4, !tbaa !12
  %603 = icmp slt i32 %414, %602
  br i1 %603, label %836, label %604

604:                                              ; preds = %600
  %605 = getelementptr i32, ptr %407, i64 %410
  %606 = getelementptr i32, ptr %605, i64 -3
  %607 = load i32, ptr %606, align 4, !tbaa !12
  %608 = icmp slt i32 %414, %607
  br i1 %608, label %836, label %609

609:                                              ; preds = %604
  %610 = getelementptr i32, ptr %605, i64 -2
  %611 = load i32, ptr %610, align 4, !tbaa !12
  %612 = icmp slt i32 %414, %611
  br i1 %612, label %836, label %613

613:                                              ; preds = %609
  %614 = getelementptr i32, ptr %605, i64 -1
  %615 = load i32, ptr %614, align 4, !tbaa !12
  %616 = icmp slt i32 %414, %615
  br i1 %616, label %836, label %617

617:                                              ; preds = %613
  %618 = load i32, ptr %605, align 4, !tbaa !12
  %619 = icmp slt i32 %414, %618
  br i1 %619, label %836, label %620

620:                                              ; preds = %617
  %621 = getelementptr i32, ptr %605, i64 1
  %622 = load i32, ptr %621, align 4, !tbaa !12
  %623 = icmp slt i32 %414, %622
  br i1 %623, label %836, label %624

624:                                              ; preds = %620
  %625 = getelementptr i32, ptr %605, i64 2
  %626 = load i32, ptr %625, align 4, !tbaa !12
  %627 = icmp slt i32 %414, %626
  br i1 %627, label %836, label %628

628:                                              ; preds = %624
  %629 = getelementptr i32, ptr %605, i64 3
  %630 = load i32, ptr %629, align 4, !tbaa !12
  %631 = icmp slt i32 %414, %630
  br i1 %631, label %836, label %632

632:                                              ; preds = %628
  %633 = sext i32 %411 to i64
  %634 = getelementptr inbounds %struct.anon, ptr %4, i64 %633
  %635 = getelementptr inbounds %struct.anon, ptr %4, i64 %633, i32 2
  store i32 0, ptr %635, align 4, !tbaa !50
  %636 = trunc i64 %410 to i32
  store i32 %636, ptr %634, align 4, !tbaa !53
  %637 = getelementptr inbounds %struct.anon, ptr %4, i64 %633, i32 1
  store i32 %408, ptr %637, align 4, !tbaa !52
  %638 = getelementptr inbounds i8, ptr %0, i64 %451
  %639 = load i8, ptr %638, align 1, !tbaa !15
  %640 = zext i8 %639 to i32
  %641 = getelementptr inbounds i8, ptr %0, i64 %456
  %642 = load i8, ptr %641, align 1, !tbaa !15
  %643 = zext i8 %642 to i32
  %644 = add nuw nsw i32 %643, %640
  %645 = getelementptr inbounds i8, ptr %0, i64 %445
  %646 = load i8, ptr %645, align 1, !tbaa !15
  %647 = zext i8 %646 to i32
  %648 = add nuw nsw i32 %644, %647
  %649 = getelementptr inbounds i8, ptr %0, i64 %464
  %650 = load i8, ptr %649, align 1, !tbaa !15
  %651 = zext i8 %650 to i32
  %652 = add nuw nsw i32 %648, %651
  %653 = getelementptr inbounds i8, ptr %0, i64 %469
  %654 = load i8, ptr %653, align 1, !tbaa !15
  %655 = zext i8 %654 to i32
  %656 = add nuw nsw i32 %652, %655
  %657 = getelementptr inbounds i8, ptr %0, i64 %484
  %658 = load i8, ptr %657, align 1, !tbaa !15
  %659 = zext i8 %658 to i32
  %660 = add nuw nsw i32 %656, %659
  %661 = getelementptr inbounds i8, ptr %0, i64 %489
  %662 = load i8, ptr %661, align 1, !tbaa !15
  %663 = zext i8 %662 to i32
  %664 = add nuw nsw i32 %660, %663
  %665 = getelementptr inbounds i8, ptr %0, i64 %478
  %666 = load i8, ptr %665, align 1, !tbaa !15
  %667 = zext i8 %666 to i32
  %668 = add nuw nsw i32 %664, %667
  %669 = getelementptr inbounds i8, ptr %0, i64 %497
  %670 = load i8, ptr %669, align 1, !tbaa !15
  %671 = zext i8 %670 to i32
  %672 = add nuw nsw i32 %668, %671
  %673 = getelementptr inbounds i8, ptr %0, i64 %502
  %674 = load i8, ptr %673, align 1, !tbaa !15
  %675 = zext i8 %674 to i32
  %676 = add nuw nsw i32 %672, %675
  %677 = getelementptr inbounds i8, ptr %0, i64 %515
  %678 = load i8, ptr %677, align 1, !tbaa !15
  %679 = zext i8 %678 to i32
  %680 = add nuw nsw i32 %676, %679
  %681 = getelementptr inbounds i8, ptr %0, i64 %520
  %682 = load i8, ptr %681, align 1, !tbaa !15
  %683 = zext i8 %682 to i32
  %684 = add nuw nsw i32 %680, %683
  %685 = getelementptr inbounds i8, ptr %0, i64 %412
  %686 = load i8, ptr %685, align 1, !tbaa !15
  %687 = zext i8 %686 to i32
  %688 = add nuw nsw i32 %684, %687
  %689 = getelementptr inbounds i8, ptr %0, i64 %525
  %690 = load i8, ptr %689, align 1, !tbaa !15
  %691 = zext i8 %690 to i32
  %692 = add nuw nsw i32 %688, %691
  %693 = getelementptr inbounds i8, ptr %0, i64 %530
  %694 = load i8, ptr %693, align 1, !tbaa !15
  %695 = zext i8 %694 to i32
  %696 = add nuw nsw i32 %692, %695
  %697 = getelementptr inbounds i8, ptr %0, i64 %545
  %698 = load i8, ptr %697, align 1, !tbaa !15
  %699 = zext i8 %698 to i32
  %700 = add nuw nsw i32 %696, %699
  %701 = getelementptr inbounds i8, ptr %0, i64 %550
  %702 = load i8, ptr %701, align 1, !tbaa !15
  %703 = zext i8 %702 to i32
  %704 = add nuw nsw i32 %700, %703
  %705 = getelementptr inbounds i8, ptr %0, i64 %539
  %706 = load i8, ptr %705, align 1, !tbaa !15
  %707 = zext i8 %706 to i32
  %708 = add nuw nsw i32 %704, %707
  %709 = getelementptr inbounds i8, ptr %0, i64 %558
  %710 = load i8, ptr %709, align 1, !tbaa !15
  %711 = zext i8 %710 to i32
  %712 = add nuw nsw i32 %708, %711
  %713 = getelementptr inbounds i8, ptr %0, i64 %563
  %714 = load i8, ptr %713, align 1, !tbaa !15
  %715 = zext i8 %714 to i32
  %716 = add nuw nsw i32 %712, %715
  %717 = getelementptr inbounds i8, ptr %0, i64 %578
  %718 = load i8, ptr %717, align 1, !tbaa !15
  %719 = zext i8 %718 to i32
  %720 = add nuw nsw i32 %716, %719
  %721 = getelementptr inbounds i8, ptr %0, i64 %583
  %722 = load i8, ptr %721, align 1, !tbaa !15
  %723 = zext i8 %722 to i32
  %724 = add nuw nsw i32 %720, %723
  %725 = getelementptr inbounds i8, ptr %0, i64 %572
  %726 = load i8, ptr %725, align 1, !tbaa !15
  %727 = zext i8 %726 to i32
  %728 = add nuw nsw i32 %724, %727
  %729 = getelementptr inbounds i8, ptr %0, i64 %591
  %730 = load i8, ptr %729, align 1, !tbaa !15
  %731 = zext i8 %730 to i32
  %732 = add nuw nsw i32 %728, %731
  %733 = getelementptr inbounds i8, ptr %0, i64 %596
  %734 = load i8, ptr %733, align 1, !tbaa !15
  %735 = zext i8 %734 to i32
  %736 = add nuw nsw i32 %732, %735
  %737 = udiv i32 %736, 25
  %738 = getelementptr inbounds %struct.anon, ptr %4, i64 %633, i32 5
  store i32 %737, ptr %738, align 4, !tbaa !59
  %739 = load i8, ptr %653, align 1, !tbaa !15
  %740 = zext i8 %739 to i32
  %741 = load i8, ptr %673, align 1, !tbaa !15
  %742 = zext i8 %741 to i32
  %743 = load i8, ptr %693, align 1, !tbaa !15
  %744 = zext i8 %743 to i32
  %745 = load i8, ptr %713, align 1, !tbaa !15
  %746 = zext i8 %745 to i32
  %747 = load i8, ptr %733, align 1, !tbaa !15
  %748 = zext i8 %747 to i32
  %749 = load i8, ptr %638, align 1, !tbaa !15
  %750 = zext i8 %749 to i32
  %751 = load i8, ptr %657, align 1, !tbaa !15
  %752 = zext i8 %751 to i32
  %753 = load i8, ptr %677, align 1, !tbaa !15
  %754 = zext i8 %753 to i32
  %755 = load i8, ptr %697, align 1, !tbaa !15
  %756 = zext i8 %755 to i32
  %757 = load i8, ptr %717, align 1, !tbaa !15
  %758 = zext i8 %757 to i32
  %759 = add nuw nsw i32 %742, %740
  %760 = add nuw nsw i32 %759, %744
  %761 = add nuw nsw i32 %760, %746
  %762 = add nuw nsw i32 %761, %748
  %763 = add nuw nsw i32 %750, %752
  %764 = add nuw nsw i32 %763, %754
  %765 = add nuw nsw i32 %764, %756
  %766 = add nuw nsw i32 %765, %758
  %767 = sub nsw i32 %762, %766
  %768 = load i8, ptr %649, align 1, !tbaa !15
  %769 = zext i8 %768 to i32
  %770 = load i8, ptr %669, align 1, !tbaa !15
  %771 = zext i8 %770 to i32
  %772 = load i8, ptr %689, align 1, !tbaa !15
  %773 = zext i8 %772 to i32
  %774 = load i8, ptr %709, align 1, !tbaa !15
  %775 = zext i8 %774 to i32
  %776 = load i8, ptr %729, align 1, !tbaa !15
  %777 = zext i8 %776 to i32
  %778 = load i8, ptr %641, align 1, !tbaa !15
  %779 = zext i8 %778 to i32
  %780 = load i8, ptr %661, align 1, !tbaa !15
  %781 = zext i8 %780 to i32
  %782 = load i8, ptr %681, align 1, !tbaa !15
  %783 = zext i8 %782 to i32
  %784 = load i8, ptr %701, align 1, !tbaa !15
  %785 = zext i8 %784 to i32
  %786 = load i8, ptr %721, align 1, !tbaa !15
  %787 = zext i8 %786 to i32
  %788 = shl nsw i32 %767, 1
  %789 = add nuw nsw i32 %771, %769
  %790 = add i32 %789, %788
  %791 = add i32 %790, %773
  %792 = add i32 %791, %775
  %793 = add i32 %792, %777
  %794 = add nuw nsw i32 %779, %781
  %795 = add nuw nsw i32 %794, %783
  %796 = add nuw nsw i32 %795, %785
  %797 = add nuw nsw i32 %796, %787
  %798 = sub i32 %793, %797
  %799 = load i8, ptr %725, align 1, !tbaa !15
  %800 = zext i8 %799 to i32
  %801 = load i8, ptr %645, align 1, !tbaa !15
  %802 = zext i8 %801 to i32
  %803 = add nuw nsw i32 %740, %750
  %804 = add nuw nsw i32 %748, %758
  %805 = add nuw nsw i32 %803, %769
  %806 = add nuw nsw i32 %804, %777
  %807 = add nuw nsw i32 %805, %779
  %808 = sub nsw i32 %806, %807
  %809 = add nsw i32 %808, %787
  %810 = add nsw i32 %809, %800
  %811 = sub nsw i32 %810, %802
  %812 = load i8, ptr %705, align 1, !tbaa !15
  %813 = zext i8 %812 to i32
  %814 = load i8, ptr %665, align 1, !tbaa !15
  %815 = zext i8 %814 to i32
  %816 = shl nsw i32 %811, 1
  %817 = add nuw nsw i32 %742, %752
  %818 = add nuw nsw i32 %746, %756
  %819 = add nuw nsw i32 %817, %771
  %820 = add nuw nsw i32 %818, %775
  %821 = add nuw nsw i32 %819, %781
  %822 = sub nsw i32 %820, %821
  %823 = add nsw i32 %822, %785
  %824 = add nsw i32 %823, %813
  %825 = sub nsw i32 %824, %815
  %826 = add i32 %825, %816
  %827 = sdiv i32 %798, 15
  %828 = getelementptr inbounds %struct.anon, ptr %4, i64 %633, i32 3
  store i32 %827, ptr %828, align 4, !tbaa !57
  %829 = sdiv i32 %826, 15
  %830 = getelementptr inbounds %struct.anon, ptr %4, i64 %633, i32 4
  store i32 %829, ptr %830, align 4, !tbaa !58
  %831 = add nsw i32 %411, 1
  %832 = icmp eq i32 %831, 15000
  br i1 %832, label %833, label %836

833:                                              ; preds = %632
  %834 = load ptr, ptr @stderr, align 8, !tbaa !5
  %835 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %834) #22
  tail call void @exit(i32 noundef 1) #20
  unreachable

836:                                              ; preds = %409, %632, %628, %624, %620, %617, %613, %609, %604, %600, %595, %590, %587, %582, %577, %571, %567, %562, %557, %554, %549, %544, %538, %534, %529, %524, %519, %514, %510, %506, %501, %496, %493, %488, %483, %477, %473, %468, %463, %460, %455, %450, %444, %440, %436, %432, %429, %425, %421, %416
  %837 = phi i32 [ %831, %632 ], [ %411, %628 ], [ %411, %624 ], [ %411, %620 ], [ %411, %617 ], [ %411, %613 ], [ %411, %609 ], [ %411, %604 ], [ %411, %600 ], [ %411, %595 ], [ %411, %590 ], [ %411, %587 ], [ %411, %582 ], [ %411, %577 ], [ %411, %571 ], [ %411, %567 ], [ %411, %562 ], [ %411, %557 ], [ %411, %554 ], [ %411, %549 ], [ %411, %544 ], [ %411, %538 ], [ %411, %534 ], [ %411, %529 ], [ %411, %524 ], [ %411, %519 ], [ %411, %514 ], [ %411, %510 ], [ %411, %506 ], [ %411, %501 ], [ %411, %496 ], [ %411, %493 ], [ %411, %488 ], [ %411, %483 ], [ %411, %477 ], [ %411, %473 ], [ %411, %468 ], [ %411, %463 ], [ %411, %460 ], [ %411, %455 ], [ %411, %450 ], [ %411, %444 ], [ %411, %440 ], [ %411, %436 ], [ %411, %432 ], [ %411, %429 ], [ %411, %425 ], [ %411, %421 ], [ %411, %416 ], [ %411, %409 ]
  %838 = add nuw nsw i64 %410, 1
  %839 = icmp eq i64 %838, %47
  br i1 %839, label %840, label %409, !llvm.loop !64

840:                                              ; preds = %836, %389
  %841 = phi i32 [ %391, %389 ], [ %837, %836 ]
  %842 = add nuw nsw i64 %390, 1
  %843 = icmp eq i64 %842, %46
  br i1 %843, label %844, label %389, !llvm.loop !65

844:                                              ; preds = %840
  %845 = sext i32 %841 to i64
  br label %846

846:                                              ; preds = %844, %34
  %847 = phi i64 [ 0, %34 ], [ %845, %844 ]
  %848 = getelementptr inbounds %struct.anon, ptr %4, i64 %847, i32 2
  store i32 7, ptr %848, align 4, !tbaa !50
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [15000 x %struct.anon], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 360000, ptr nonnull %6) #21
  %7 = icmp slt i32 %0, 3
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i32 @usage()
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  call void @get_image(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %13 = icmp eq i32 %0, 3
  br i1 %13, label %78, label %14

14:                                               ; preds = %10, %66
  %15 = phi i32 [ %75, %66 ], [ 0, %10 ]
  %16 = phi float [ %74, %66 ], [ 4.000000e+00, %10 ]
  %17 = phi i32 [ %73, %66 ], [ 0, %10 ]
  %18 = phi i32 [ %72, %66 ], [ 0, %10 ]
  %19 = phi i32 [ %71, %66 ], [ 0, %10 ]
  %20 = phi i32 [ %70, %66 ], [ 1, %10 ]
  %21 = phi i32 [ %69, %66 ], [ 0, %10 ]
  %22 = phi i32 [ %68, %66 ], [ 20, %10 ]
  %23 = phi i32 [ %76, %66 ], [ 3, %10 ]
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %1, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = load i8, ptr %26, align 1, !tbaa !15
  %28 = icmp eq i8 %27, 45
  br i1 %28, label %29, label %64

29:                                               ; preds = %14
  %30 = getelementptr inbounds i8, ptr %26, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !15
  switch i8 %31, label %66 [
    i8 115, label %32
    i8 101, label %33
    i8 99, label %34
    i8 112, label %35
    i8 110, label %36
    i8 98, label %37
    i8 51, label %38
    i8 113, label %39
    i8 100, label %40
    i8 116, label %53
  ]

32:                                               ; preds = %29
  br label %66

33:                                               ; preds = %29
  br label %66

34:                                               ; preds = %29
  br label %66

35:                                               ; preds = %29
  br label %66

36:                                               ; preds = %29
  br label %66

37:                                               ; preds = %29
  br label %66

38:                                               ; preds = %29
  br label %66

39:                                               ; preds = %29
  br label %66

40:                                               ; preds = %29
  %41 = add nsw i32 %23, 1
  %42 = icmp slt i32 %41, %0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.47)
  tail call void @exit(i32 noundef 0) #20
  unreachable

45:                                               ; preds = %40
  %46 = sext i32 %41 to i64
  %47 = getelementptr inbounds ptr, ptr %1, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = tail call double @strtod(ptr nocapture noundef nonnull %48, ptr noundef null) #21
  %50 = fptrunc double %49 to float
  %51 = fcmp olt float %50, 0.000000e+00
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  br label %66

53:                                               ; preds = %29
  %54 = add nsw i32 %23, 1
  %55 = icmp slt i32 %54, %0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.46)
  tail call void @exit(i32 noundef 0) #20
  unreachable

58:                                               ; preds = %53
  %59 = sext i32 %54 to i64
  %60 = getelementptr inbounds ptr, ptr %1, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = tail call i64 @strtol(ptr nocapture noundef nonnull %61, ptr noundef null, i32 noundef 10) #21
  %63 = trunc i64 %62 to i32
  br label %66

64:                                               ; preds = %14
  %65 = tail call i32 @usage()
  unreachable

66:                                               ; preds = %32, %33, %34, %35, %36, %37, %38, %39, %58, %29, %52, %45
  %67 = phi i32 [ %23, %29 ], [ %54, %58 ], [ %41, %52 ], [ %41, %45 ], [ %23, %39 ], [ %23, %38 ], [ %23, %37 ], [ %23, %36 ], [ %23, %35 ], [ %23, %34 ], [ %23, %33 ], [ %23, %32 ]
  %68 = phi i32 [ %22, %29 ], [ %63, %58 ], [ %22, %52 ], [ %22, %45 ], [ %22, %39 ], [ %22, %38 ], [ %22, %37 ], [ %22, %36 ], [ %22, %35 ], [ %22, %34 ], [ %22, %33 ], [ %22, %32 ]
  %69 = phi i32 [ %21, %29 ], [ %21, %58 ], [ %21, %52 ], [ %21, %45 ], [ %21, %39 ], [ %21, %38 ], [ %21, %37 ], [ %21, %36 ], [ 1, %35 ], [ %21, %34 ], [ %21, %33 ], [ %21, %32 ]
  %70 = phi i32 [ %20, %29 ], [ %20, %58 ], [ %20, %52 ], [ %20, %45 ], [ %20, %39 ], [ %20, %38 ], [ %20, %37 ], [ 0, %36 ], [ %20, %35 ], [ %20, %34 ], [ %20, %33 ], [ %20, %32 ]
  %71 = phi i32 [ %19, %29 ], [ %19, %58 ], [ 1, %52 ], [ %19, %45 ], [ %19, %39 ], [ 1, %38 ], [ %19, %37 ], [ %19, %36 ], [ %19, %35 ], [ %19, %34 ], [ %19, %33 ], [ %19, %32 ]
  %72 = phi i32 [ %18, %29 ], [ %18, %58 ], [ %18, %52 ], [ %18, %45 ], [ %18, %39 ], [ %18, %38 ], [ 1, %37 ], [ %18, %36 ], [ %18, %35 ], [ %18, %34 ], [ %18, %33 ], [ %18, %32 ]
  %73 = phi i32 [ %17, %29 ], [ %17, %58 ], [ %17, %52 ], [ %17, %45 ], [ 1, %39 ], [ %17, %38 ], [ %17, %37 ], [ %17, %36 ], [ %17, %35 ], [ %17, %34 ], [ %17, %33 ], [ %17, %32 ]
  %74 = phi float [ %16, %29 ], [ %16, %58 ], [ %50, %52 ], [ %50, %45 ], [ %16, %39 ], [ %16, %38 ], [ %16, %37 ], [ %16, %36 ], [ %16, %35 ], [ %16, %34 ], [ %16, %33 ], [ %16, %32 ]
  %75 = phi i32 [ %15, %29 ], [ %15, %58 ], [ %15, %52 ], [ %15, %45 ], [ %15, %39 ], [ %15, %38 ], [ %15, %37 ], [ %15, %36 ], [ %15, %35 ], [ 2, %34 ], [ 1, %33 ], [ 0, %32 ]
  %76 = add nsw i32 %67, 1
  %77 = icmp slt i32 %76, %0
  br i1 %77, label %14, label %78, !llvm.loop !66

78:                                               ; preds = %66, %10
  %79 = phi i32 [ 20, %10 ], [ %68, %66 ]
  %80 = phi i32 [ 0, %10 ], [ %69, %66 ]
  %81 = phi i32 [ 1, %10 ], [ %70, %66 ]
  %82 = phi i32 [ 0, %10 ], [ %71, %66 ]
  %83 = phi i32 [ 0, %10 ], [ %72, %66 ]
  %84 = phi i32 [ 0, %10 ], [ %73, %66 ]
  %85 = phi float [ 4.000000e+00, %10 ], [ %74, %66 ]
  %86 = phi i32 [ 0, %10 ], [ %75, %66 ]
  %87 = icmp eq i32 %80, 1
  %88 = icmp eq i32 %86, 0
  %89 = select i1 %87, i1 %88, i1 false
  %90 = select i1 %89, i32 1, i32 %86
  switch i32 %90, label %358 [
    i32 0, label %91
    i32 1, label %115
    i32 2, label %245
  ]

91:                                               ; preds = %78
  %92 = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #23
  %93 = getelementptr inbounds i8, ptr %92, i64 258
  %94 = sitofp i32 %79 to float
  br label %95

95:                                               ; preds = %95, %91
  %96 = phi i64 [ -256, %91 ], [ %108, %95 ]
  %97 = trunc i64 %96 to i32
  %98 = sitofp i32 %97 to float
  %99 = fdiv float %98, %94
  %100 = fneg float %99
  %101 = fmul float %99, %100
  %102 = fpext float %101 to double
  %103 = tail call double @exp(double noundef %102) #21
  %104 = fmul double %103, 1.000000e+02
  %105 = fptrunc double %104 to float
  %106 = fptoui float %105 to i8
  %107 = getelementptr inbounds i8, ptr %93, i64 %96
  store i8 %106, ptr %107, align 1, !tbaa !15
  %108 = add nsw i64 %96, 1
  %109 = icmp eq i64 %108, 257
  br i1 %109, label %110, label %95, !llvm.loop !17

110:                                              ; preds = %95
  %111 = load ptr, ptr %3, align 8, !tbaa !5
  %112 = fpext float %85 to double
  %113 = load i32, ptr %4, align 4, !tbaa !12
  %114 = load i32, ptr %5, align 4, !tbaa !12
  tail call void @susan_smoothing(i32 noundef %82, ptr noundef %111, double noundef %112, i32 noundef %113, i32 noundef %114, ptr noundef nonnull %93)
  br label %359

115:                                              ; preds = %78
  %116 = load i32, ptr %4, align 4, !tbaa !12
  %117 = load i32, ptr %5, align 4, !tbaa !12
  %118 = mul nsw i32 %117, %116
  %119 = sext i32 %118 to i64
  %120 = shl nsw i64 %119, 2
  %121 = tail call noalias ptr @malloc(i64 noundef %120) #23
  %122 = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #23
  %123 = getelementptr inbounds i8, ptr %122, i64 258
  %124 = sitofp i32 %79 to float
  br label %125

125:                                              ; preds = %125, %115
  %126 = phi i64 [ -256, %115 ], [ %140, %125 ]
  %127 = trunc i64 %126 to i32
  %128 = sitofp i32 %127 to float
  %129 = fdiv float %128, %124
  %130 = fmul float %129, %129
  %131 = fmul float %130, %130
  %132 = fneg float %130
  %133 = fmul float %131, %132
  %134 = fpext float %133 to double
  %135 = tail call double @exp(double noundef %134) #21
  %136 = fmul double %135, 1.000000e+02
  %137 = fptrunc double %136 to float
  %138 = fptoui float %137 to i8
  %139 = getelementptr inbounds i8, ptr %123, i64 %126
  store i8 %138, ptr %139, align 1, !tbaa !15
  %140 = add nsw i64 %126, 1
  %141 = icmp eq i64 %140, 257
  br i1 %141, label %142, label %125, !llvm.loop !17

142:                                              ; preds = %125
  %143 = icmp eq i32 %80, 0
  br i1 %143, label %184, label %144

144:                                              ; preds = %142
  %145 = icmp eq i32 %82, 0
  %146 = load ptr, ptr %3, align 8, !tbaa !5
  br i1 %145, label %149, label %147

147:                                              ; preds = %144
  %148 = tail call i32 @susan_principle_small(ptr noundef %146, ptr noundef %121, ptr noundef nonnull %123, i32 poison, i32 noundef %116, i32 noundef %117)
  br label %151

149:                                              ; preds = %144
  %150 = tail call i32 @susan_principle(ptr noundef %146, ptr noundef %121, ptr noundef nonnull %123, i32 noundef 2650, i32 noundef %116, i32 noundef %117)
  br label %151

151:                                              ; preds = %149, %147
  %152 = load ptr, ptr %3, align 8, !tbaa !5
  %153 = load i32, ptr %121, align 4, !tbaa !12
  %154 = icmp sgt i32 %118, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %151
  %156 = zext nneg i32 %118 to i64
  br label %157

157:                                              ; preds = %157, %155
  %158 = phi i64 [ 0, %155 ], [ %165, %157 ]
  %159 = phi i32 [ %153, %155 ], [ %164, %157 ]
  %160 = phi i32 [ %153, %155 ], [ %163, %157 ]
  %161 = getelementptr inbounds i32, ptr %121, i64 %158
  %162 = load i32, ptr %161, align 4, !tbaa !12
  %163 = tail call i32 @llvm.smax.i32(i32 %162, i32 %160)
  %164 = tail call i32 @llvm.smin.i32(i32 %162, i32 %159)
  %165 = add nuw nsw i64 %158, 1
  %166 = icmp eq i64 %165, %156
  br i1 %166, label %167, label %157, !llvm.loop !14

167:                                              ; preds = %157, %151
  %168 = phi i32 [ %153, %151 ], [ %163, %157 ]
  %169 = phi i32 [ %153, %151 ], [ %164, %157 ]
  %170 = sub nsw i32 %168, %169
  br i1 %154, label %171, label %359

171:                                              ; preds = %167
  %172 = zext nneg i32 %118 to i64
  br label %173

173:                                              ; preds = %173, %171
  %174 = phi i64 [ 0, %171 ], [ %182, %173 ]
  %175 = getelementptr inbounds i32, ptr %121, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !12
  %177 = sub nsw i32 %176, %169
  %178 = mul nsw i32 %177, 255
  %179 = sdiv i32 %178, %170
  %180 = trunc i32 %179 to i8
  %181 = getelementptr inbounds i8, ptr %152, i64 %174
  store i8 %180, ptr %181, align 1, !tbaa !15
  %182 = add nuw nsw i64 %174, 1
  %183 = icmp eq i64 %182, %172
  br i1 %183, label %359, label %173, !llvm.loop !16

184:                                              ; preds = %142
  %185 = tail call noalias ptr @malloc(i64 noundef %119) #23
  tail call void @llvm.memset.p0.i64(ptr align 1 %185, i8 100, i64 %119, i1 false)
  %186 = icmp eq i32 %82, 0
  %187 = load ptr, ptr %3, align 8, !tbaa !5
  br i1 %186, label %190, label %188

188:                                              ; preds = %184
  %189 = tail call i32 @susan_edges_small(ptr noundef %187, ptr noundef %121, ptr noundef %185, ptr noundef nonnull %123, i32 poison, i32 noundef %116, i32 noundef %117)
  br label %192

190:                                              ; preds = %184
  %191 = tail call i32 @susan_edges(ptr noundef %187, ptr noundef %121, ptr noundef %185, ptr noundef nonnull %123, i32 noundef 2650, i32 noundef %116, i32 noundef %117)
  br label %192

192:                                              ; preds = %190, %188
  %193 = icmp eq i32 %81, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %192
  %195 = tail call i32 @susan_thin(ptr noundef %121, ptr noundef %185, i32 noundef %116, i32 noundef %117)
  br label %196

196:                                              ; preds = %194, %192
  %197 = load ptr, ptr %3, align 8, !tbaa !5
  %198 = icmp eq i32 %83, 0
  %199 = icmp sgt i32 %118, 0
  %200 = and i1 %198, %199
  br i1 %200, label %201, label %228

201:                                              ; preds = %196
  %202 = ptrtoint ptr %185 to i64
  %203 = sext i32 %116 to i64
  %204 = sub nsw i64 0, %203
  %205 = getelementptr i8, ptr %197, i64 %204
  %206 = add nsw i32 %116, -2
  %207 = sext i32 %206 to i64
  br label %208

208:                                              ; preds = %224, %201
  %209 = phi ptr [ %185, %201 ], [ %225, %224 ]
  %210 = phi i32 [ 0, %201 ], [ %226, %224 ]
  %211 = load i8, ptr %209, align 1, !tbaa !15
  %212 = icmp ult i8 %211, 8
  br i1 %212, label %213, label %224

213:                                              ; preds = %208
  %214 = ptrtoint ptr %209 to i64
  %215 = sub i64 %214, %202
  %216 = getelementptr i8, ptr %205, i64 %215
  %217 = getelementptr inbounds i8, ptr %216, i64 -1
  store i8 -1, ptr %217, align 1, !tbaa !15
  %218 = getelementptr inbounds i8, ptr %216, i64 1
  store i8 -1, ptr %216, align 1, !tbaa !15
  store i8 -1, ptr %218, align 1, !tbaa !15
  %219 = getelementptr inbounds i8, ptr %218, i64 %207
  store i8 -1, ptr %219, align 1, !tbaa !15
  %220 = getelementptr inbounds i8, ptr %219, i64 2
  store i8 -1, ptr %220, align 1, !tbaa !15
  %221 = getelementptr inbounds i8, ptr %220, i64 %207
  %222 = getelementptr inbounds i8, ptr %221, i64 1
  store i8 -1, ptr %221, align 1, !tbaa !15
  %223 = getelementptr inbounds i8, ptr %221, i64 2
  store i8 -1, ptr %222, align 1, !tbaa !15
  store i8 -1, ptr %223, align 1, !tbaa !15
  br label %224

224:                                              ; preds = %213, %208
  %225 = getelementptr inbounds i8, ptr %209, i64 1
  %226 = add nuw nsw i32 %210, 1
  %227 = icmp eq i32 %226, %118
  br i1 %227, label %228, label %208, !llvm.loop !36

228:                                              ; preds = %224, %196
  %229 = icmp sgt i32 %118, 0
  br i1 %229, label %230, label %359

230:                                              ; preds = %228
  %231 = ptrtoint ptr %185 to i64
  br label %232

232:                                              ; preds = %241, %230
  %233 = phi ptr [ %185, %230 ], [ %242, %241 ]
  %234 = phi i32 [ 0, %230 ], [ %243, %241 ]
  %235 = load i8, ptr %233, align 1, !tbaa !15
  %236 = icmp ult i8 %235, 8
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = ptrtoint ptr %233 to i64
  %239 = sub i64 %238, %231
  %240 = getelementptr inbounds i8, ptr %197, i64 %239
  store i8 0, ptr %240, align 1, !tbaa !15
  br label %241

241:                                              ; preds = %237, %232
  %242 = getelementptr inbounds i8, ptr %233, i64 1
  %243 = add nuw nsw i32 %234, 1
  %244 = icmp eq i32 %243, %118
  br i1 %244, label %359, label %232, !llvm.loop !37

245:                                              ; preds = %78
  %246 = load i32, ptr %4, align 4, !tbaa !12
  %247 = load i32, ptr %5, align 4, !tbaa !12
  %248 = mul nsw i32 %247, %246
  %249 = sext i32 %248 to i64
  %250 = shl nsw i64 %249, 2
  %251 = tail call noalias ptr @malloc(i64 noundef %250) #23
  %252 = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #23
  %253 = getelementptr inbounds i8, ptr %252, i64 258
  %254 = sitofp i32 %79 to float
  br label %255

255:                                              ; preds = %255, %245
  %256 = phi i64 [ -256, %245 ], [ %270, %255 ]
  %257 = trunc i64 %256 to i32
  %258 = sitofp i32 %257 to float
  %259 = fdiv float %258, %254
  %260 = fmul float %259, %259
  %261 = fmul float %260, %260
  %262 = fneg float %260
  %263 = fmul float %261, %262
  %264 = fpext float %263 to double
  %265 = tail call double @exp(double noundef %264) #21
  %266 = fmul double %265, 1.000000e+02
  %267 = fptrunc double %266 to float
  %268 = fptoui float %267 to i8
  %269 = getelementptr inbounds i8, ptr %253, i64 %256
  store i8 %268, ptr %269, align 1, !tbaa !15
  %270 = add nsw i64 %256, 1
  %271 = icmp eq i64 %270, 257
  br i1 %271, label %272, label %255, !llvm.loop !17

272:                                              ; preds = %255
  %273 = icmp eq i32 %80, 0
  br i1 %273, label %308, label %274

274:                                              ; preds = %272
  %275 = load ptr, ptr %3, align 8, !tbaa !5
  %276 = tail call i32 @susan_principle(ptr noundef %275, ptr noundef %251, ptr noundef nonnull %253, i32 noundef 1850, i32 noundef %246, i32 noundef %247)
  %277 = load i32, ptr %251, align 4, !tbaa !12
  %278 = icmp sgt i32 %248, 0
  br i1 %278, label %279, label %291

279:                                              ; preds = %274
  %280 = zext nneg i32 %248 to i64
  br label %281

281:                                              ; preds = %281, %279
  %282 = phi i64 [ 0, %279 ], [ %289, %281 ]
  %283 = phi i32 [ %277, %279 ], [ %288, %281 ]
  %284 = phi i32 [ %277, %279 ], [ %287, %281 ]
  %285 = getelementptr inbounds i32, ptr %251, i64 %282
  %286 = load i32, ptr %285, align 4, !tbaa !12
  %287 = tail call i32 @llvm.smax.i32(i32 %286, i32 %284)
  %288 = tail call i32 @llvm.smin.i32(i32 %286, i32 %283)
  %289 = add nuw nsw i64 %282, 1
  %290 = icmp eq i64 %289, %280
  br i1 %290, label %291, label %281, !llvm.loop !14

291:                                              ; preds = %281, %274
  %292 = phi i32 [ %277, %274 ], [ %287, %281 ]
  %293 = phi i32 [ %277, %274 ], [ %288, %281 ]
  %294 = sub nsw i32 %292, %293
  br i1 %278, label %295, label %359

295:                                              ; preds = %291
  %296 = zext nneg i32 %248 to i64
  br label %297

297:                                              ; preds = %297, %295
  %298 = phi i64 [ 0, %295 ], [ %306, %297 ]
  %299 = getelementptr inbounds i32, ptr %251, i64 %298
  %300 = load i32, ptr %299, align 4, !tbaa !12
  %301 = sub nsw i32 %300, %293
  %302 = mul nsw i32 %301, 255
  %303 = sdiv i32 %302, %294
  %304 = trunc i32 %303 to i8
  %305 = getelementptr inbounds i8, ptr %275, i64 %298
  store i8 %304, ptr %305, align 1, !tbaa !15
  %306 = add nuw nsw i64 %298, 1
  %307 = icmp eq i64 %306, %296
  br i1 %307, label %359, label %297, !llvm.loop !16

308:                                              ; preds = %272
  %309 = icmp eq i32 %84, 0
  %310 = load ptr, ptr %3, align 8, !tbaa !5
  br i1 %309, label %313, label %311

311:                                              ; preds = %308
  %312 = call i32 @susan_corners_quick(ptr noundef %310, ptr noundef %251, ptr noundef nonnull %253, i32 noundef 1850, ptr noundef nonnull %6, i32 noundef %246, i32 noundef %247)
  br label %315

313:                                              ; preds = %308
  %314 = call i32 @susan_corners(ptr noundef %310, ptr noundef %251, ptr noundef nonnull %253, i32 noundef 1850, ptr noundef nonnull %6, i32 noundef %246, i32 noundef %247)
  br label %315

315:                                              ; preds = %313, %311
  %316 = load ptr, ptr %3, align 8, !tbaa !5
  %317 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 2
  %318 = load i32, ptr %317, align 8, !tbaa !50
  %319 = icmp eq i32 %318, 7
  br i1 %319, label %359, label %320

320:                                              ; preds = %315
  %321 = icmp eq i32 %83, 0
  %322 = add nsw i32 %246, -2
  %323 = sext i32 %322 to i64
  br label %324

324:                                              ; preds = %352, %320
  %325 = phi i64 [ 0, %320 ], [ %353, %352 ]
  %326 = phi ptr [ %6, %320 ], [ %354, %352 ]
  %327 = getelementptr inbounds %struct.anon, ptr %6, i64 %325, i32 1
  %328 = load i32, ptr %327, align 4, !tbaa !52
  br i1 %321, label %329, label %345

329:                                              ; preds = %324
  %330 = add nsw i32 %328, -1
  %331 = mul nsw i32 %330, %246
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, ptr %316, i64 %332
  %334 = load i32, ptr %326, align 4, !tbaa !53
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, ptr %333, i64 %335
  %337 = getelementptr inbounds i8, ptr %336, i64 -1
  store i8 -1, ptr %337, align 1, !tbaa !15
  %338 = getelementptr inbounds i8, ptr %336, i64 1
  store i8 -1, ptr %336, align 1, !tbaa !15
  store i8 -1, ptr %338, align 1, !tbaa !15
  %339 = getelementptr inbounds i8, ptr %338, i64 %323
  %340 = getelementptr inbounds i8, ptr %339, i64 1
  store i8 -1, ptr %339, align 1, !tbaa !15
  %341 = getelementptr inbounds i8, ptr %339, i64 2
  store i8 0, ptr %340, align 1, !tbaa !15
  store i8 -1, ptr %341, align 1, !tbaa !15
  %342 = getelementptr inbounds i8, ptr %341, i64 %323
  %343 = getelementptr inbounds i8, ptr %342, i64 1
  store i8 -1, ptr %342, align 1, !tbaa !15
  %344 = getelementptr inbounds i8, ptr %342, i64 2
  store i8 -1, ptr %343, align 1, !tbaa !15
  store i8 -1, ptr %344, align 1, !tbaa !15
  br label %352

345:                                              ; preds = %324
  %346 = mul nsw i32 %328, %246
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, ptr %316, i64 %347
  %349 = load i32, ptr %326, align 4, !tbaa !53
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, ptr %348, i64 %350
  store i8 0, ptr %351, align 1, !tbaa !15
  br label %352

352:                                              ; preds = %345, %329
  %353 = add nuw nsw i64 %325, 1
  %354 = getelementptr inbounds %struct.anon, ptr %6, i64 %353
  %355 = getelementptr inbounds %struct.anon, ptr %6, i64 %353, i32 2
  %356 = load i32, ptr %355, align 8, !tbaa !50
  %357 = icmp eq i32 %356, 7
  br i1 %357, label %359, label %324, !llvm.loop !54

358:                                              ; preds = %78
  unreachable

359:                                              ; preds = %297, %352, %173, %241, %315, %291, %228, %167, %110
  %360 = getelementptr inbounds ptr, ptr %1, i64 2
  %361 = load ptr, ptr %360, align 8, !tbaa !5
  %362 = load ptr, ptr %3, align 8, !tbaa !5
  %363 = load i32, ptr %4, align 4, !tbaa !12
  %364 = load i32, ptr %5, align 4, !tbaa !12
  %365 = tail call i32 @put_image(ptr noundef %361, ptr noundef %362, i32 noundef %363, i32 noundef %364)
  call void @llvm.lifetime.end.p0(i64 360000, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind }
attributes #22 = { cold }
attributes #23 = { nounwind allocsize(0) }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = distinct !{!14, !10}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = !{!51, !13, i64 8}
!51 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!52 = !{!51, !13, i64 4}
!53 = !{!51, !13, i64 0}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = !{!51, !13, i64 12}
!58 = !{!51, !13, i64 16}
!59 = !{!51, !13, i64 20}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !10}
