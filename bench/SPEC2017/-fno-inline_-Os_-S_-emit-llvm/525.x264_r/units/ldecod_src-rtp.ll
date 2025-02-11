; ModuleID = 'ldecod_src/rtp.c'
source_filename = "ldecod_src/rtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.RTPpacket_t = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, ptr, i32, ptr, i32 }
%struct.nalu_t = type { i32, i32, i32, i32, i32, i32, ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32 }

@errortext = external global [300 x i8], align 16
@.str = private unnamed_addr constant [26 x i8] c"Cannot open RTP file '%s'\00", align 1
@GetRTPNALU.first_call = internal unnamed_addr global i1 false, align 2
@GetRTPNALU.old_seq = internal unnamed_addr global i16 0, align 2
@.str.1 = private unnamed_addr constant [13 x i8] c"GetRTPNALU-1\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"GetRTPNALU-2\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"GetRTPNALU-3\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Version (V): %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Padding (P): %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Extension (X): %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"CSRC count (CC): %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Marker bit (M): %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Payload Type (PT): %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Sequence Number: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Timestamp: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"SSRC: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"RTPReadPacket: File corruption, could not read %d bytes\0A\00", align 1
@str = private unnamed_addr constant [52 x i8] c"Warning: RTP sequence number discontinuity detected\00", align 1
@str.19 = private unnamed_addr constant [63 x i8] c"RTPReadPacket: File corruption, could not read Timestamp, exit\00", align 1
@str.20 = private unnamed_addr constant [72 x i8] c"ERROR: we're in DecompseRTPpacket which shouldn't be called in SPEC CPU\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OpenRTPFile(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (ptr, i32, ...) @open(ptr noundef %1, i32 noundef 0) #12
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 150
  store i32 %3, ptr %4, align 8, !tbaa !5
  %5 = icmp eq i32 %3, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str, ptr noundef %1) #12
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #12
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CloseRTPFile(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 150
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @close(i32 noundef %3) #12
  store i32 -1, ptr %2, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetRTPNALU(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #12
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noalias dereferenceable_or_null(65508) ptr @malloc(i64 noundef 65508) #13
  %8 = getelementptr inbounds %struct.RTPpacket_t, ptr %3, i64 0, i32 11
  store ptr %7, ptr %8, align 8, !tbaa !16
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #12
  br label %11

11:                                               ; preds = %10, %6
  %12 = tail call noalias dereferenceable_or_null(65508) ptr @malloc(i64 noundef 65508) #13
  %13 = getelementptr inbounds %struct.RTPpacket_t, ptr %3, i64 0, i32 9
  store ptr %12, ptr %13, align 8, !tbaa !18
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #12
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 150
  %18 = load i32, ptr %17, align 8, !tbaa !5
  %19 = tail call i32 @RTPReadPacket(ptr noundef nonnull %3, i32 noundef %18) #14
  %20 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 3
  store i32 1, ptr %20, align 4, !tbaa !19
  %21 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 1
  store i32 0, ptr %21, align 4, !tbaa !21
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %16
  %24 = load i1, ptr @GetRTPNALU.first_call, align 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.RTPpacket_t, ptr %3, i64 0, i32 6
  %27 = load i16, ptr %26, align 8, !tbaa !22
  %28 = load i16, ptr @GetRTPNALU.old_seq, align 2, !tbaa !23
  br label %33

29:                                               ; preds = %23
  store i1 true, ptr @GetRTPNALU.first_call, align 2
  %30 = getelementptr inbounds %struct.RTPpacket_t, ptr %3, i64 0, i32 6
  %31 = load i16, ptr %30, align 8, !tbaa !22
  %32 = add i16 %31, -1
  br label %33

33:                                               ; preds = %25, %29
  %34 = phi i16 [ %28, %25 ], [ %32, %29 ]
  %35 = phi i16 [ %27, %25 ], [ %31, %29 ]
  %36 = xor i16 %34, -1
  %37 = add i16 %35, %36
  %38 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 7
  store i16 %37, ptr %38, align 8, !tbaa !24
  store i16 %35, ptr @GetRTPNALU.old_seq, align 2, !tbaa !23
  %39 = getelementptr inbounds %struct.RTPpacket_t, ptr %3, i64 0, i32 10
  %40 = load i32, ptr %39, align 8, !tbaa !25
  store i32 %40, ptr %21, align 4, !tbaa !21
  %41 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !26
  %43 = load ptr, ptr %13, align 8, !tbaa !18
  %44 = zext i32 %40 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %42, ptr align 1 %43, i64 %44, i1 false)
  %45 = load ptr, ptr %41, align 8, !tbaa !26
  %46 = load i8, ptr %45, align 1, !tbaa !27
  %47 = lshr i8 %46, 7
  %48 = zext nneg i8 %47 to i32
  store i32 %48, ptr %20, align 4, !tbaa !19
  %49 = load i8, ptr %45, align 1, !tbaa !27
  %50 = lshr i8 %49, 5
  %51 = and i8 %50, 3
  %52 = zext nneg i8 %51 to i32
  %53 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 5
  store i32 %52, ptr %53, align 4, !tbaa !28
  %54 = load i8, ptr %45, align 1, !tbaa !27
  %55 = and i8 %54, 31
  %56 = zext nneg i8 %55 to i32
  %57 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 4
  store i32 %56, ptr %57, align 8, !tbaa !29
  %58 = load i16, ptr %38, align 8, !tbaa !24
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %33
  %61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %62

62:                                               ; preds = %60, %33
  tail call void @free(ptr noundef %43) #12
  %63 = load ptr, ptr %8, align 8, !tbaa !16
  tail call void @free(ptr noundef %63) #12
  tail call void @free(ptr noundef nonnull %3) #12
  %64 = load i32, ptr %21, align 4, !tbaa !21
  br label %68

65:                                               ; preds = %16
  %66 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @free(ptr noundef %66) #12
  %67 = load ptr, ptr %8, align 8, !tbaa !16
  tail call void @free(ptr noundef %67) #12
  tail call void @free(ptr noundef nonnull %3) #12
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i32 [ %64, %62 ], [ %19, %65 ]
  ret i32 %69
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RTPReadPacket(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = tail call i64 @lseek(i32 noundef %1, i64 noundef 0, i32 noundef 1) #12
  %5 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 12
  %6 = tail call i64 @read(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 4) #12
  %7 = icmp eq i64 %6, 4
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = call i64 @read(i32 noundef %1, ptr noundef nonnull %3, i64 noundef 4) #12
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call i64 @lseek(i32 noundef %1, i64 noundef %4, i32 noundef 0) #12
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  tail call void @exit(i32 noundef -1) #16
  unreachable

14:                                               ; preds = %8
  %15 = load i32, ptr %5, align 8, !tbaa !30
  %16 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = zext i32 %15 to i64
  %19 = tail call i64 @read(i32 noundef %1, ptr noundef %17, i64 noundef %18) #12
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %15, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %5, align 8, !tbaa !30
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %23) #14
  tail call void @exit(i32 noundef -1) #16
  unreachable

25:                                               ; preds = %14
  %26 = tail call i32 @DecomposeRTPpacket(ptr nonnull poison) #14
  %27 = load i32, ptr %5, align 8, !tbaa !30
  br label %28

28:                                               ; preds = %2, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %29
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @DecomposeRTPpacket(ptr nocapture readnone %0) local_unnamed_addr #8 {
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  ret i32 1
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @DumpRTPHeader(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 11
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %10, %3 ]
  %5 = load ptr, ptr %2, align 8, !tbaa !16
  %6 = getelementptr inbounds i8, ptr %5, i64 %4
  %7 = load i8, ptr %6, align 1, !tbaa !27
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %8) #14
  %10 = add nuw nsw i64 %4, 1
  %11 = icmp eq i64 %10, 30
  br i1 %11, label %12, label %3, !llvm.loop !31

12:                                               ; preds = %3
  %13 = load i32, ptr %0, align 8, !tbaa !33
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %13) #14
  %15 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !34
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %16) #14
  %18 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !35
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %19) #14
  %21 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !36
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %22) #14
  %24 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !37
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %25) #14
  %27 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !38
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %28) #14
  %30 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 6
  %31 = load i16, ptr %30, align 8, !tbaa !22
  %32 = zext i16 %31 to i32
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %32) #14
  %34 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !39
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %35) #14
  %37 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !40
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %38) #14
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind optsize allocsize(0) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 856648}
!6 = !{!"video_par", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 132120, !7, i64 699416, !8, i64 699424, !10, i64 848672, !10, i64 848676, !10, i64 848680, !10, i64 848684, !7, i64 848688, !7, i64 848696, !7, i64 848704, !10, i64 848712, !10, i64 848716, !10, i64 848720, !10, i64 848724, !10, i64 848728, !7, i64 848736, !7, i64 848744, !8, i64 848752, !10, i64 848776, !10, i64 848780, !10, i64 848784, !10, i64 848788, !10, i64 848792, !7, i64 848800, !8, i64 848808, !7, i64 848832, !7, i64 848840, !8, i64 848848, !10, i64 848872, !10, i64 848876, !7, i64 848880, !7, i64 848888, !8, i64 848896, !10, i64 848920, !7, i64 848928, !7, i64 848936, !10, i64 848944, !10, i64 848948, !10, i64 848952, !10, i64 848956, !10, i64 848960, !10, i64 848964, !10, i64 848968, !10, i64 848972, !10, i64 848976, !10, i64 848980, !10, i64 848984, !10, i64 848988, !10, i64 848992, !10, i64 848996, !10, i64 849000, !10, i64 849004, !10, i64 849008, !10, i64 849012, !10, i64 849016, !10, i64 849020, !10, i64 849024, !10, i64 849028, !10, i64 849032, !10, i64 849036, !11, i64 849040, !11, i64 849042, !8, i64 849044, !10, i64 849052, !10, i64 849056, !8, i64 849060, !8, i64 849072, !10, i64 849084, !10, i64 849088, !10, i64 849092, !10, i64 849096, !10, i64 849100, !10, i64 849104, !10, i64 849108, !10, i64 849112, !10, i64 849116, !10, i64 849120, !8, i64 849124, !8, i64 849148, !8, i64 849172, !10, i64 849196, !10, i64 849200, !10, i64 849204, !10, i64 849208, !10, i64 849212, !10, i64 849216, !10, i64 849220, !10, i64 849224, !10, i64 849228, !10, i64 849232, !10, i64 849236, !10, i64 849240, !10, i64 849244, !10, i64 849248, !10, i64 849252, !10, i64 849256, !10, i64 849260, !10, i64 849264, !10, i64 849268, !10, i64 849272, !10, i64 849276, !10, i64 849280, !10, i64 849284, !7, i64 849288, !7, i64 849296, !12, i64 849304, !12, i64 849624, !12, i64 849944, !12, i64 850264, !12, i64 850584, !12, i64 850904, !12, i64 851224, !12, i64 851544, !10, i64 851864, !10, i64 851868, !10, i64 851872, !15, i64 851880, !10, i64 851888, !8, i64 851892, !10, i64 855988, !10, i64 855992, !10, i64 855996, !10, i64 856000, !10, i64 856004, !10, i64 856008, !10, i64 856012, !7, i64 856016, !7, i64 856024, !7, i64 856032, !7, i64 856040, !7, i64 856048, !8, i64 856056, !7, i64 856456, !8, i64 856464, !7, i64 856488, !7, i64 856496, !7, i64 856504, !10, i64 856512, !7, i64 856520, !8, i64 856528, !7, i64 856608, !7, i64 856616, !7, i64 856624, !7, i64 856632, !10, i64 856640, !10, i64 856644, !10, i64 856648, !7, i64 856656, !7, i64 856664, !8, i64 856672, !8, i64 856688, !7, i64 856704, !7, i64 856712, !10, i64 856720, !7, i64 856728, !7, i64 856736, !7, i64 856744, !7, i64 856752, !7, i64 856760, !7, i64 856768, !7, i64 856776, !7, i64 856784, !7, i64 856792, !7, i64 856800, !7, i64 856808, !7, i64 856816, !10, i64 856824, !7, i64 856832, !10, i64 856840, !10, i64 856844, !10, i64 856848, !10, i64 856852, !10, i64 856856, !10, i64 856860, !10, i64 856864, !7, i64 856872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!"image_data", !13, i64 0, !8, i64 136, !8, i64 160, !8, i64 184, !8, i64 208, !8, i64 232, !8, i64 256, !8, i64 280, !8, i64 292, !8, i64 304}
!13 = !{!"frame_format", !10, i64 0, !10, i64 4, !14, i64 8, !8, i64 16, !8, i64 28, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !8, i64 72, !10, i64 84, !8, i64 88, !8, i64 100, !8, i64 112, !10, i64 124, !10, i64 128}
!14 = !{!"double", !8, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!17, !7, i64 56}
!17 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !11, i64 24, !10, i64 28, !10, i64 32, !7, i64 40, !10, i64 48, !7, i64 56, !10, i64 64}
!18 = !{!17, !7, i64 40}
!19 = !{!20, !10, i64 12}
!20 = !{!"nalu_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !7, i64 24, !11, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64}
!21 = !{!20, !10, i64 4}
!22 = !{!17, !11, i64 24}
!23 = !{!11, !11, i64 0}
!24 = !{!20, !11, i64 32}
!25 = !{!17, !10, i64 48}
!26 = !{!20, !7, i64 24}
!27 = !{!8, !8, i64 0}
!28 = !{!20, !10, i64 20}
!29 = !{!20, !10, i64 16}
!30 = !{!17, !10, i64 64}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!17, !10, i64 0}
!34 = !{!17, !10, i64 4}
!35 = !{!17, !10, i64 8}
!36 = !{!17, !10, i64 12}
!37 = !{!17, !10, i64 16}
!38 = !{!17, !10, i64 20}
!39 = !{!17, !10, i64 28}
!40 = !{!17, !10, i64 32}
