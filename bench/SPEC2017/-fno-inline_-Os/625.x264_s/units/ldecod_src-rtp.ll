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
  store i32 %3, ptr %4, align 8, !tbaa !35
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
  %3 = load i32, ptr %2, align 8, !tbaa !35
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @close(i32 noundef %3) #12
  store i32 -1, ptr %2, align 8, !tbaa !35
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
  store ptr %7, ptr %8, align 8, !tbaa !46
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #12
  br label %11

11:                                               ; preds = %10, %6
  %12 = tail call noalias dereferenceable_or_null(65508) ptr @malloc(i64 noundef 65508) #13
  %13 = getelementptr inbounds %struct.RTPpacket_t, ptr %3, i64 0, i32 9
  store ptr %12, ptr %13, align 8, !tbaa !48
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #12
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 150
  %18 = load i32, ptr %17, align 8, !tbaa !35
  %19 = tail call i32 @RTPReadPacket(ptr noundef nonnull %3, i32 noundef %18) #14
  %20 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 3
  store i32 1, ptr %20, align 4, !tbaa !49
  %21 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 1
  store i32 0, ptr %21, align 4, !tbaa !51
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %16
  %24 = load i1, ptr @GetRTPNALU.first_call, align 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.RTPpacket_t, ptr %3, i64 0, i32 6
  %27 = load i16, ptr %26, align 8, !tbaa !52
  %28 = load i16, ptr @GetRTPNALU.old_seq, align 2, !tbaa !53
  br label %33

29:                                               ; preds = %23
  store i1 true, ptr @GetRTPNALU.first_call, align 2
  %30 = getelementptr inbounds %struct.RTPpacket_t, ptr %3, i64 0, i32 6
  %31 = load i16, ptr %30, align 8, !tbaa !52
  %32 = add i16 %31, -1
  br label %33

33:                                               ; preds = %25, %29
  %34 = phi i16 [ %28, %25 ], [ %32, %29 ]
  %35 = phi i16 [ %27, %25 ], [ %31, %29 ]
  %36 = xor i16 %34, -1
  %37 = add i16 %35, %36
  %38 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 7
  store i16 %37, ptr %38, align 8, !tbaa !54
  store i16 %35, ptr @GetRTPNALU.old_seq, align 2, !tbaa !53
  %39 = getelementptr inbounds %struct.RTPpacket_t, ptr %3, i64 0, i32 10
  %40 = load i32, ptr %39, align 8, !tbaa !55
  store i32 %40, ptr %21, align 4, !tbaa !51
  %41 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !56
  %43 = load ptr, ptr %13, align 8, !tbaa !48
  %44 = zext i32 %40 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %42, ptr align 1 %43, i64 %44, i1 false)
  %45 = load ptr, ptr %41, align 8, !tbaa !56
  %46 = load i8, ptr %45, align 1, !tbaa !57
  %47 = lshr i8 %46, 7
  %48 = zext nneg i8 %47 to i32
  store i32 %48, ptr %20, align 4, !tbaa !49
  %49 = load i8, ptr %45, align 1, !tbaa !57
  %50 = lshr i8 %49, 5
  %51 = and i8 %50, 3
  %52 = zext nneg i8 %51 to i32
  %53 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 5
  store i32 %52, ptr %53, align 4, !tbaa !58
  %54 = load i8, ptr %45, align 1, !tbaa !57
  %55 = and i8 %54, 31
  %56 = zext nneg i8 %55 to i32
  %57 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 4
  store i32 %56, ptr %57, align 8, !tbaa !59
  %58 = load i16, ptr %38, align 8, !tbaa !54
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %33
  %61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %62

62:                                               ; preds = %60, %33
  tail call void @free(ptr noundef %43) #12
  %63 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void @free(ptr noundef %63) #12
  tail call void @free(ptr noundef nonnull %3) #12
  %64 = load i32, ptr %21, align 4, !tbaa !51
  br label %68

65:                                               ; preds = %16
  %66 = load ptr, ptr %13, align 8, !tbaa !48
  tail call void @free(ptr noundef %66) #12
  %67 = load ptr, ptr %8, align 8, !tbaa !46
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
  %15 = load i32, ptr %5, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = zext i32 %15 to i64
  %19 = tail call i64 @read(i32 noundef %1, ptr noundef %17, i64 noundef %18) #12
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %15, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %5, align 8, !tbaa !60
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %23) #14
  tail call void @exit(i32 noundef -1) #16
  unreachable

25:                                               ; preds = %14
  %26 = tail call i32 @DecomposeRTPpacket(ptr nonnull poison) #14
  %27 = load i32, ptr %5, align 8, !tbaa !60
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
  %5 = load ptr, ptr %2, align 8, !tbaa !46
  %6 = getelementptr inbounds i8, ptr %5, i64 %4
  %7 = load i8, ptr %6, align 1, !tbaa !57
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %8) #14
  %10 = add nuw nsw i64 %4, 1
  %11 = icmp eq i64 %10, 30
  br i1 %11, label %12, label %3, !llvm.loop !61

12:                                               ; preds = %3
  %13 = load i32, ptr %0, align 8, !tbaa !63
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %13) #14
  %15 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !64
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %16) #14
  %18 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !65
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %19) #14
  %21 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !66
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %22) #14
  %24 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !67
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %25) #14
  %27 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !68
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %28) #14
  %30 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 6
  %31 = load i16, ptr %30, align 8, !tbaa !52
  %32 = zext i16 %31 to i32
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %32) #14
  %34 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !69
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %35) #14
  %37 = getelementptr inbounds %struct.RTPpacket_t, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !70
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !40, i64 856648}
!36 = !{!"video_par", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 132120, !37, i64 699416, !38, i64 699424, !40, i64 848672, !40, i64 848676, !40, i64 848680, !40, i64 848684, !37, i64 848688, !37, i64 848696, !37, i64 848704, !40, i64 848712, !40, i64 848716, !40, i64 848720, !40, i64 848724, !40, i64 848728, !37, i64 848736, !37, i64 848744, !38, i64 848752, !40, i64 848776, !40, i64 848780, !40, i64 848784, !40, i64 848788, !40, i64 848792, !37, i64 848800, !38, i64 848808, !37, i64 848832, !37, i64 848840, !38, i64 848848, !40, i64 848872, !40, i64 848876, !37, i64 848880, !37, i64 848888, !38, i64 848896, !40, i64 848920, !37, i64 848928, !37, i64 848936, !40, i64 848944, !40, i64 848948, !40, i64 848952, !40, i64 848956, !40, i64 848960, !40, i64 848964, !40, i64 848968, !40, i64 848972, !40, i64 848976, !40, i64 848980, !40, i64 848984, !40, i64 848988, !40, i64 848992, !40, i64 848996, !40, i64 849000, !40, i64 849004, !40, i64 849008, !40, i64 849012, !40, i64 849016, !40, i64 849020, !40, i64 849024, !40, i64 849028, !40, i64 849032, !40, i64 849036, !41, i64 849040, !41, i64 849042, !38, i64 849044, !40, i64 849052, !40, i64 849056, !38, i64 849060, !38, i64 849072, !40, i64 849084, !40, i64 849088, !40, i64 849092, !40, i64 849096, !40, i64 849100, !40, i64 849104, !40, i64 849108, !40, i64 849112, !40, i64 849116, !40, i64 849120, !38, i64 849124, !38, i64 849148, !38, i64 849172, !40, i64 849196, !40, i64 849200, !40, i64 849204, !40, i64 849208, !40, i64 849212, !40, i64 849216, !40, i64 849220, !40, i64 849224, !40, i64 849228, !40, i64 849232, !40, i64 849236, !40, i64 849240, !40, i64 849244, !40, i64 849248, !40, i64 849252, !40, i64 849256, !40, i64 849260, !40, i64 849264, !40, i64 849268, !40, i64 849272, !40, i64 849276, !40, i64 849280, !40, i64 849284, !37, i64 849288, !37, i64 849296, !42, i64 849304, !42, i64 849624, !42, i64 849944, !42, i64 850264, !42, i64 850584, !42, i64 850904, !42, i64 851224, !42, i64 851544, !40, i64 851864, !40, i64 851868, !40, i64 851872, !45, i64 851880, !40, i64 851888, !38, i64 851892, !40, i64 855988, !40, i64 855992, !40, i64 855996, !40, i64 856000, !40, i64 856004, !40, i64 856008, !40, i64 856012, !37, i64 856016, !37, i64 856024, !37, i64 856032, !37, i64 856040, !37, i64 856048, !38, i64 856056, !37, i64 856456, !38, i64 856464, !37, i64 856488, !37, i64 856496, !37, i64 856504, !40, i64 856512, !37, i64 856520, !38, i64 856528, !37, i64 856608, !37, i64 856616, !37, i64 856624, !37, i64 856632, !40, i64 856640, !40, i64 856644, !40, i64 856648, !37, i64 856656, !37, i64 856664, !38, i64 856672, !38, i64 856688, !37, i64 856704, !37, i64 856712, !40, i64 856720, !37, i64 856728, !37, i64 856736, !37, i64 856744, !37, i64 856752, !37, i64 856760, !37, i64 856768, !37, i64 856776, !37, i64 856784, !37, i64 856792, !37, i64 856800, !37, i64 856808, !37, i64 856816, !40, i64 856824, !37, i64 856832, !40, i64 856840, !40, i64 856844, !40, i64 856848, !40, i64 856852, !40, i64 856856, !40, i64 856860, !40, i64 856864, !37, i64 856872}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!"image_data", !43, i64 0, !38, i64 136, !38, i64 160, !38, i64 184, !38, i64 208, !38, i64 232, !38, i64 256, !38, i64 280, !38, i64 292, !38, i64 304}
!43 = !{!"frame_format", !40, i64 0, !40, i64 4, !44, i64 8, !38, i64 16, !38, i64 28, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !38, i64 72, !40, i64 84, !38, i64 88, !38, i64 100, !38, i64 112, !40, i64 124, !40, i64 128}
!44 = !{!"double", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !37, i64 56}
!47 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !41, i64 24, !40, i64 28, !40, i64 32, !37, i64 40, !40, i64 48, !37, i64 56, !40, i64 64}
!48 = !{!47, !37, i64 40}
!49 = !{!50, !40, i64 12}
!50 = !{!"nalu_t", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64}
!51 = !{!50, !40, i64 4}
!52 = !{!47, !41, i64 24}
!53 = !{!41, !41, i64 0}
!54 = !{!50, !41, i64 32}
!55 = !{!47, !40, i64 48}
!56 = !{!50, !37, i64 24}
!57 = !{!38, !38, i64 0}
!58 = !{!50, !40, i64 20}
!59 = !{!50, !40, i64 16}
!60 = !{!47, !40, i64 64}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!47, !40, i64 0}
!64 = !{!47, !40, i64 4}
!65 = !{!47, !40, i64 8}
!66 = !{!47, !40, i64 12}
!67 = !{!47, !40, i64 16}
!68 = !{!47, !40, i64 20}
!69 = !{!47, !40, i64 28}
!70 = !{!47, !40, i64 32}
