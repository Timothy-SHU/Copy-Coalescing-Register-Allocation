; ModuleID = 'zfilterx.c'
source_filename = "zfilterx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.hc_definition_s = type { ptr, i32, ptr, i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_BHCE_state_s = type { ptr, ptr, ptr, i32, i32, i32, %struct.hc_definition_s, i32, i32, i32, %struct.hce_table_s }
%struct.hce_table_s = type { i32, ptr }
%struct.stream_BHCD_state_s = type { ptr, ptr, ptr, i32, i32, i32, %struct.hc_definition_s, i32, i32, i32, %struct.hcd_table_s }
%struct.hcd_table_s = type { i32, i32, ptr }
%struct.stream_BWBS_state_s = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32 }
%struct.stream_BT_state_s = type { ptr, ptr, ptr, [256 x i8] }
%struct.stream_BHC_state_s = type { ptr, ptr, ptr, i32, i32, i32, %struct.hc_definition_s, i32, i32, i32 }

@zfilterx_op_defs.op_defs_ = internal constant [12 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcomputecodes }, %struct.op_def { ptr @.str.1, ptr null }, %struct.op_def { ptr @.str.2, ptr @zBHCE }, %struct.op_def { ptr @.str.3, ptr @zBHCD }, %struct.op_def { ptr @.str.4, ptr @zBWBSE }, %struct.op_def { ptr @.str.5, ptr @zBWBSD }, %struct.op_def { ptr @.str.6, ptr @zBTE }, %struct.op_def { ptr @.str.7, ptr @zBTD }, %struct.op_def { ptr @.str.8, ptr @zMTFE }, %struct.op_def { ptr @.str.9, ptr @zMTFD }, %struct.op_def { ptr @.str.10, ptr @zPCXD }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [15 x i8] c"2.computecodes\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"2BoundedHuffmanEncode\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"2BoundedHuffmanDecode\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"2BWBlockSortEncode\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"2BWBlockSortDecode\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"2ByteTranslateEncode\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"2ByteTranslateDecode\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"1MoveToFrontEncode\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"1MoveToFrontDecode\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"1PCXDecode\00", align 1
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"zcomputecodes\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"zcomputecodes(freqs)\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@s_BHCE_template = external constant %struct.stream_template_s, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"FirstBitLowOrder\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"MaxCodeLength\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"EndOfData\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"EncodeZeroRuns\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Tables\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"bhc_setup(counts)\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"bhc_setup(values)\00", align 1
@s_BHCD_template = external constant %struct.stream_template_s, align 8
@s_BWBSE_template = external constant %struct.stream_template_s, align 8
@.str.20 = private unnamed_addr constant [10 x i8] c"BlockSize\00", align 1
@s_BWBSD_template = external constant %struct.stream_template_s, align 8
@s_BT_template = external constant %struct.stream_template_s, align 8
@s_MTFE_template = external constant %struct.stream_template_s, align 8
@s_MTFD_template = external constant %struct.stream_template_s, align 8
@s_PCXD_template = external constant %struct.stream_template_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfilterx_op_defs() local_unnamed_addr #0 {
  ret ptr @zfilterx_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zcomputecodes(ptr noundef %0) #1 {
  %2 = alloca %struct.hc_definition_s, align 8
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #6
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 11
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %113

9:                                                ; preds = %1
  %10 = load i16, ptr %3, align 8, !tbaa !8
  %11 = and i16 %10, 16144
  %12 = icmp eq i16 %11, 1040
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %0, i64 -15
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = icmp eq i8 %15, 4
  br i1 %16, label %113, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @check_type_failed(ptr noundef nonnull %3) #6
  br label %113

19:                                               ; preds = %9
  %20 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !12
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !5
  %25 = add i64 %24, -17
  %26 = icmp ult i64 %25, -16
  br i1 %26, label %113, label %27

27:                                               ; preds = %19
  %28 = trunc i64 %24 to i32
  %29 = getelementptr inbounds %struct.hc_definition_s, ptr %2, i64 0, i32 1
  store i32 %28, ptr %29, align 8, !tbaa !13
  %30 = add nuw nsw i32 %28, 2
  %31 = icmp ugt i32 %30, %22
  br i1 %31, label %113, label %32

32:                                               ; preds = %27
  %33 = xor i32 %28, -1
  %34 = add nsw i32 %33, %22
  %35 = getelementptr inbounds %struct.hc_definition_s, ptr %2, i64 0, i32 3
  store i32 %34, ptr %35, align 8, !tbaa !17
  %36 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %37 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !20
  %39 = tail call ptr %38(ptr noundef %36, i32 noundef %22, i32 noundef 2, ptr noundef nonnull @.str.11) #6
  %40 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %41 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !20
  %43 = load i32, ptr %35, align 8, !tbaa !17
  %44 = tail call ptr %42(ptr noundef %40, i32 noundef %43, i32 noundef 8, ptr noundef nonnull @.str.12) #6
  %45 = icmp eq ptr %39, null
  %46 = icmp eq ptr %44, null
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %101, label %48

48:                                               ; preds = %32
  store ptr %39, ptr %2, align 8, !tbaa !23
  %49 = load i32, ptr %29, align 8, !tbaa !13
  %50 = add i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i16, ptr %39, i64 %51
  %53 = getelementptr inbounds %struct.hc_definition_s, ptr %2, i64 0, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !24
  %54 = load i32, ptr %35, align 8, !tbaa !17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %78, label %56

56:                                               ; preds = %48
  %57 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %58 = zext i32 %49 to i64
  br label %59

59:                                               ; preds = %73, %56
  %60 = phi i32 [ 0, %56 ], [ %75, %73 ]
  %61 = phi i32 [ 0, %56 ], [ %74, %73 ]
  %62 = load ptr, ptr %57, align 8, !tbaa !5
  %63 = zext i32 %60 to i64
  %64 = getelementptr inbounds %struct.ref_s, ptr %62, i64 %63
  %65 = getelementptr inbounds %struct.ref_s, ptr %64, i64 %58
  %66 = getelementptr inbounds i8, ptr %65, i64 17
  %67 = load i8, ptr %66, align 1, !tbaa !5
  %68 = icmp ne i8 %67, 11
  br i1 %68, label %73, label %69

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.ref_s, ptr %65, i64 1, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !5
  %72 = getelementptr inbounds i64, ptr %44, i64 %63
  store i64 %71, ptr %72, align 8, !tbaa !25
  br label %73

73:                                               ; preds = %59, %69
  %74 = phi i32 [ %61, %69 ], [ -20, %59 ]
  %75 = add nuw i32 %60, 1
  %76 = icmp eq i32 %75, %54
  %77 = select i1 %68, i1 true, i1 %76
  br i1 %77, label %78, label %59, !llvm.loop !27

78:                                               ; preds = %73, %48
  %79 = phi i32 [ 0, %48 ], [ %74, %73 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %83 = call i32 @hc_compute(ptr noundef nonnull %2, ptr noundef %44, ptr noundef %82) #6
  %84 = icmp sgt i32 %83, -1
  %85 = icmp ne i16 %21, 0
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %89 = zext i16 %21 to i64
  br label %90

90:                                               ; preds = %87, %90
  %91 = phi i64 [ 0, %87 ], [ %99, %90 ]
  %92 = getelementptr inbounds i16, ptr %39, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !29
  %94 = zext i16 %93 to i64
  %95 = load ptr, ptr %88, align 8, !tbaa !5
  %96 = getelementptr inbounds %struct.ref_s, ptr %95, i64 %91, i32 1
  store i64 %94, ptr %96, align 8, !tbaa !5
  %97 = load ptr, ptr %88, align 8, !tbaa !5
  %98 = getelementptr inbounds %struct.ref_s, ptr %97, i64 %91
  store i16 2816, ptr %98, align 8, !tbaa !8
  %99 = add nuw nsw i64 %91, 1
  %100 = icmp eq i64 %99, %89
  br i1 %100, label %101, label %90, !llvm.loop !30

101:                                              ; preds = %90, %78, %81, %32
  %102 = phi i32 [ -25, %32 ], [ %79, %78 ], [ %83, %81 ], [ %83, %90 ]
  %103 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %104 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %103, i64 0, i32 11
  %105 = load ptr, ptr %104, align 8, !tbaa !31
  call void %105(ptr noundef %103, ptr noundef %44, ptr noundef nonnull @.str.12) #6
  %106 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %107 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %106, i64 0, i32 11
  %108 = load ptr, ptr %107, align 8, !tbaa !31
  call void %108(ptr noundef %106, ptr noundef %39, ptr noundef nonnull @.str.11) #6
  %109 = icmp slt i32 %102, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %101
  %111 = load ptr, ptr @o_stack, align 8, !tbaa !32
  %112 = getelementptr inbounds %struct.ref_s, ptr %111, i64 -1
  store ptr %112, ptr @o_stack, align 8, !tbaa !32
  br label %113

113:                                              ; preds = %101, %27, %19, %17, %13, %110, %7
  %114 = phi i32 [ %102, %110 ], [ %8, %7 ], [ %18, %17 ], [ -7, %13 ], [ -15, %19 ], [ -15, %27 ], [ %102, %101 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  ret i32 %114
}

; Function Attrs: nounwind uwtable
define internal i32 @zBHCE(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_BHCE_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #6
  %3 = call fastcc i32 @bhc_setup(ptr noundef %0, ptr noundef nonnull %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @filter_write(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @s_BHCE_template, ptr noundef nonnull %2, i32 noundef 0) #6
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #6
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @zBHCD(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_BHCD_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #6
  %3 = call fastcc i32 @bhc_setup(ptr noundef %0, ptr noundef nonnull %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @filter_read(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @s_BHCD_template, ptr noundef nonnull %2, i32 noundef 0) #6
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #6
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @zBWBSE(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_BWBS_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #6
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %21

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = load i16, ptr %10, align 8, !tbaa !34
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %2, i64 0, i32 3
  %16 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef 536870901, i32 noundef 16384, ptr noundef nonnull %15) #6
  %17 = call i32 @llvm.smin.i32(i32 %16, i32 0)
  %18 = icmp slt i32 %16, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 @filter_write(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @s_BWBSE_template, ptr noundef nonnull %2, i32 noundef 0) #6
  br label %21

21:                                               ; preds = %14, %8, %19, %6
  %22 = phi i32 [ %20, %19 ], [ %7, %6 ], [ -7, %8 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #6
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @zBWBSD(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_BWBS_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #6
  %3 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %2, i64 0, i32 3
  %4 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef 536870901, i32 noundef 16384, ptr noundef nonnull %3) #6
  %5 = call i32 @llvm.smin.i32(i32 %4, i32 0)
  %6 = icmp slt i32 %4, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @filter_read(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @s_BWBSD_template, ptr noundef nonnull %2, i32 noundef 0) #6
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ %5, %1 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #6
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @zBTE(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_BT_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %2) #6
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  %6 = sext i1 %5 to i64
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %6
  %8 = select i1 %5, i32 2, i32 1
  %9 = load i16, ptr %7, align 8, !tbaa !8
  %10 = and i16 %9, 16160
  %11 = icmp eq i16 %10, 4640
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds i8, ptr %7, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 18
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @check_type_failed(ptr noundef nonnull %7) #6
  br label %26

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.tas_s, ptr %7, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !12
  %21 = icmp eq i16 %20, 256
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.stream_BT_state_s, ptr %2, i64 0, i32 3
  %24 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %6, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %23, ptr noundef nonnull align 1 dereferenceable(256) %25, i64 256, i1 false)
  br label %26

26:                                               ; preds = %12, %16, %18, %22
  %27 = phi i32 [ %8, %22 ], [ %17, %16 ], [ -7, %12 ], [ -15, %18 ]
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i32 @filter_write(ptr noundef %0, i32 noundef %27, ptr noundef nonnull @s_BT_template, ptr noundef nonnull %2, i32 noundef 0) #6
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi i32 [ %30, %29 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %2) #6
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @zBTD(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_BT_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %2) #6
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  %6 = sext i1 %5 to i64
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %6
  %8 = select i1 %5, i32 2, i32 1
  %9 = load i16, ptr %7, align 8, !tbaa !8
  %10 = and i16 %9, 16160
  %11 = icmp eq i16 %10, 4640
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds i8, ptr %7, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 18
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @check_type_failed(ptr noundef nonnull %7) #6
  br label %26

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.tas_s, ptr %7, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !12
  %21 = icmp eq i16 %20, 256
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.stream_BT_state_s, ptr %2, i64 0, i32 3
  %24 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %6, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %23, ptr noundef nonnull align 1 dereferenceable(256) %25, i64 256, i1 false)
  br label %26

26:                                               ; preds = %12, %16, %18, %22
  %27 = phi i32 [ %8, %22 ], [ %17, %16 ], [ -7, %12 ], [ -15, %18 ]
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i32 @filter_read(ptr noundef %0, i32 noundef %27, ptr noundef nonnull @s_BT_template, ptr noundef nonnull %2, i32 noundef 0) #6
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi i32 [ %30, %29 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %2) #6
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @zMTFE(ptr noundef %0) #1 {
  %2 = tail call i32 @filter_write_simple(ptr noundef %0, ptr noundef nonnull @s_MTFE_template) #6
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zMTFD(ptr noundef %0) #1 {
  %2 = tail call i32 @filter_read_simple(ptr noundef %0, ptr noundef nonnull @s_MTFD_template) #6
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zPCXD(ptr noundef %0) #1 {
  %2 = tail call i32 @filter_read_simple(ptr noundef %0, ptr noundef nonnull @s_PCXD_template) #6
  ret i32 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @hc_compute(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @bhc_setup(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca [374 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 1496, ptr nonnull %4) #6
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %147

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = load i16, ptr %12, align 8, !tbaa !34
  %14 = and i16 %13, 32
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %147, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.stream_BHC_state_s, ptr %1, i64 0, i32 3
  %18 = tail call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef nonnull %17) #6
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 16, i32 noundef 16, ptr noundef nonnull %3) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.stream_BHC_state_s, ptr %1, i64 0, i32 7
  %25 = call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef nonnull %24) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.stream_BHC_state_s, ptr %1, i64 0, i32 8
  %29 = call i32 @dict_uint_param(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef 256, i32 noundef 256, ptr noundef nonnull %28) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = call i32 @dict_int_array_param(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 374, ptr noundef nonnull %4) #6
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %27, %23, %20, %16
  %35 = phi i32 [ %18, %16 ], [ %21, %20 ], [ %25, %23 ], [ %29, %27 ], [ %32, %31 ]
  %36 = icmp slt i32 %35, 0
  %37 = select i1 %36, i32 %35, i32 -15
  br label %147

38:                                               ; preds = %31
  %39 = load i32, ptr %3, align 4, !tbaa !36
  %40 = add nsw i32 %39, 2
  %41 = icmp ugt i32 %32, %40
  br i1 %41, label %42, label %147

42:                                               ; preds = %38
  %43 = icmp slt i32 %39, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %42
  %45 = add nuw i32 %39, 1
  %46 = add nuw i32 %39, 1
  %47 = zext i32 %46 to i64
  br label %48

48:                                               ; preds = %44, %55
  %49 = phi i64 [ 0, %44 ], [ %58, %55 ]
  %50 = phi i32 [ 0, %44 ], [ %56, %55 ]
  %51 = phi i32 [ 0, %44 ], [ %59, %55 ]
  %52 = getelementptr inbounds [374 x i32], ptr %4, i64 0, i64 %49
  %53 = load i32, ptr %52, align 4, !tbaa !36
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %147

55:                                               ; preds = %48
  %56 = add i32 %53, %50
  %57 = add i32 %53, %51
  %58 = add nuw nsw i64 %49, 1
  %59 = shl i32 %57, 1
  %60 = icmp eq i64 %58, %47
  br i1 %60, label %61, label %48, !llvm.loop !37

61:                                               ; preds = %55, %42
  %62 = phi i32 [ 0, %42 ], [ %59, %55 ]
  %63 = phi i32 [ 0, %42 ], [ %56, %55 ]
  %64 = phi i32 [ 0, %42 ], [ %45, %55 ]
  %65 = add nsw i32 %39, 1
  %66 = add i32 %63, %65
  %67 = icmp eq i32 %32, %66
  %68 = shl nuw i32 1, %65
  %69 = icmp eq i32 %62, %68
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %147

71:                                               ; preds = %61
  %72 = load i32, ptr %28, align 4, !tbaa !38
  %73 = load i32, ptr %24, align 8, !tbaa !40
  %74 = icmp ne i32 %73, 0
  %75 = sext i1 %74 to i32
  %76 = add i32 %63, %75
  %77 = icmp ugt i32 %72, %76
  br i1 %77, label %147, label %78

78:                                               ; preds = %71
  %79 = icmp ult i32 %64, %66
  br i1 %79, label %80, label %93

80:                                               ; preds = %78
  %81 = zext i32 %64 to i64
  br label %86

82:                                               ; preds = %86
  %83 = add nuw nsw i64 %87, 1
  %84 = trunc i64 %83 to i32
  %85 = icmp eq i32 %66, %84
  br i1 %85, label %93, label %86, !llvm.loop !41

86:                                               ; preds = %80, %82
  %87 = phi i64 [ %81, %80 ], [ %83, %82 ]
  %88 = getelementptr inbounds [374 x i32], ptr %4, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !36
  %90 = icmp sgt i32 %89, -1
  %91 = icmp ult i32 %89, %63
  %92 = and i1 %90, %91
  br i1 %92, label %82, label %147

93:                                               ; preds = %82, %78
  %94 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %95 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %94, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !20
  %97 = call ptr %96(ptr noundef %94, i32 noundef %65, i32 noundef 2, ptr noundef nonnull @.str.18) #6
  %98 = getelementptr inbounds %struct.stream_BHC_state_s, ptr %1, i64 0, i32 6
  store ptr %97, ptr %98, align 8, !tbaa !42
  %99 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %100 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %99, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !20
  %102 = call ptr %101(ptr noundef %99, i32 noundef %63, i32 noundef 2, ptr noundef nonnull @.str.19) #6
  %103 = getelementptr inbounds %struct.stream_BHC_state_s, ptr %1, i64 0, i32 6, i32 2
  store ptr %102, ptr %103, align 8, !tbaa !43
  %104 = icmp eq ptr %97, null
  %105 = icmp eq ptr %102, null
  %106 = select i1 %104, i1 true, i1 %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %93
  %108 = load i32, ptr %3, align 4, !tbaa !36
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %128, label %110

110:                                              ; preds = %107
  %111 = add nuw i32 %108, 1
  %112 = zext i32 %111 to i64
  br label %120

113:                                              ; preds = %93
  %114 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %115 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %114, i64 0, i32 11
  %116 = load ptr, ptr %115, align 8, !tbaa !31
  call void %116(ptr noundef %114, ptr noundef %102, ptr noundef nonnull @.str.19) #6
  %117 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %118 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %117, i64 0, i32 11
  %119 = load ptr, ptr %118, align 8, !tbaa !31
  call void %119(ptr noundef %117, ptr noundef %97, ptr noundef nonnull @.str.18) #6
  br label %147

120:                                              ; preds = %110, %120
  %121 = phi i64 [ 0, %110 ], [ %126, %120 ]
  %122 = getelementptr inbounds [374 x i32], ptr %4, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !36
  %124 = trunc i32 %123 to i16
  %125 = getelementptr inbounds i16, ptr %97, i64 %121
  store i16 %124, ptr %125, align 2, !tbaa !29
  %126 = add nuw nsw i64 %121, 1
  %127 = icmp eq i64 %126, %112
  br i1 %127, label %128, label %120, !llvm.loop !44

128:                                              ; preds = %120, %107
  store ptr %97, ptr %98, align 8, !tbaa !42
  %129 = getelementptr inbounds %struct.stream_BHC_state_s, ptr %1, i64 0, i32 6, i32 1
  store i32 %108, ptr %129, align 8, !tbaa !45
  %130 = icmp eq i32 %63, 0
  br i1 %130, label %145, label %131

131:                                              ; preds = %128
  %132 = add i32 %108, 1
  %133 = zext i32 %63 to i64
  br label %134

134:                                              ; preds = %131, %134
  %135 = phi i64 [ 0, %131 ], [ %143, %134 ]
  %136 = trunc i64 %135 to i32
  %137 = add i32 %132, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [374 x i32], ptr %4, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !36
  %141 = trunc i32 %140 to i16
  %142 = getelementptr inbounds i16, ptr %102, i64 %135
  store i16 %141, ptr %142, align 2, !tbaa !29
  %143 = add nuw nsw i64 %135, 1
  %144 = icmp eq i64 %143, %133
  br i1 %144, label %145, label %134, !llvm.loop !46

145:                                              ; preds = %134, %128
  store ptr %102, ptr %103, align 8, !tbaa !43
  %146 = getelementptr inbounds %struct.stream_BHC_state_s, ptr %1, i64 0, i32 6, i32 3
  store i32 %63, ptr %146, align 8, !tbaa !47
  br label %147

147:                                              ; preds = %48, %86, %61, %71, %38, %10, %145, %113, %34, %8
  %148 = phi i32 [ %37, %34 ], [ -25, %113 ], [ 0, %145 ], [ %9, %8 ], [ -7, %10 ], [ -15, %38 ], [ -15, %71 ], [ -15, %61 ], [ -15, %86 ], [ -15, %48 ]
  call void @llvm.lifetime.end.p0(i64 1496, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %148
}

declare i32 @filter_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dict_bool_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_uint_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_int_array_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @filter_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @filter_write_simple(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @filter_read_simple(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 0}
!9 = !{!"ref_s", !10, i64 0, !6, i64 8}
!10 = !{!"tas_s", !11, i64 0, !11, i64 2}
!11 = !{!"short", !6, i64 0}
!12 = !{!9, !11, i64 2}
!13 = !{!14, !16, i64 8}
!14 = !{!"hc_definition_s", !15, i64 0, !16, i64 8, !15, i64 16, !16, i64 24}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"int", !6, i64 0}
!17 = !{!14, !16, i64 24}
!18 = !{!19, !15, i64 0}
!19 = !{!"gs_dual_memory_s", !15, i64 0, !6, i64 8, !16, i64 40, !16, i64 44, !15, i64 48, !16, i64 56, !16, i64 60}
!20 = !{!21, !15, i64 32}
!21 = !{!"gs_memory_s", !22, i64 0}
!22 = !{!"gs_memory_procs_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152}
!23 = !{!14, !15, i64 0}
!24 = !{!14, !15, i64 16}
!25 = !{!26, !26, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!11, !11, i64 0}
!30 = distinct !{!30, !28}
!31 = !{!21, !15, i64 88}
!32 = !{!33, !15, i64 0}
!33 = !{!"ref_stack_s", !15, i64 0, !15, i64 8, !15, i64 16, !9, i64 24, !16, i64 40, !16, i64 44, !9, i64 48, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !16, i64 80, !9, i64 88, !16, i64 104, !16, i64 108, !16, i64 112, !15, i64 120}
!34 = !{!35, !11, i64 0}
!35 = !{!"dict_s", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 48}
!36 = !{!16, !16, i64 0}
!37 = distinct !{!37, !28}
!38 = !{!39, !16, i64 76}
!39 = !{!"stream_BHC_state_s", !15, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !16, i64 28, !16, i64 32, !14, i64 40, !16, i64 72, !16, i64 76, !16, i64 80}
!40 = !{!39, !16, i64 72}
!41 = distinct !{!41, !28}
!42 = !{!39, !15, i64 40}
!43 = !{!39, !15, i64 56}
!44 = distinct !{!44, !28}
!45 = !{!39, !16, i64 48}
!46 = distinct !{!46, !28}
!47 = !{!39, !16, i64 64}
