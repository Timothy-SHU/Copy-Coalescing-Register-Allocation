; ModuleID = 'zgstate.c'
source_filename = "zgstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.int_gstate_s = type { %struct.ref_s, %union.anon, %union.anon, %struct.ref_s, %struct.ref_s, %struct.ref_colorspace_s, %struct.ref_s, %struct.anon.3, %struct.ref_s, %struct.ref_s }
%union.anon = type { [4 x %struct.ref_s] }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.2 }
%struct.ref_cie_procs_s = type { %union.anon.0, %union.anon.1, %struct.ref_s }
%union.anon.0 = type { %struct.ref_s }
%union.anon.1 = type { %struct.ref_s }
%union.anon.2 = type { %struct.ref_separation_params_s }
%struct.ref_separation_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.3 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_point_s = type { double, double }

@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@igs = dso_local global ptr null, align 8
@st_int_gstate = internal constant %struct.gs_memory_struct_type_s { i32 400, ptr @.str.27, ptr null, ptr @ref_struct_clear_marks, ptr @ref_struct_enum_ptrs, ptr @ref_struct_reloc_ptrs, ptr null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"igs_init\00", align 1
@i_null_pagedevice = dso_local global %struct.ref_s zeroinitializer, align 8
@npd_p = internal global ptr null, align 8
@npd_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"igs(npd)\00", align 1
@istate_procs = internal constant %struct.gs_state_client_procs_s { ptr @gs_istate_alloc, ptr @gs_istate_copy, ptr @gs_istate_free, ptr null }, align 8
@igs_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"igs\00", align 1
@zgstate_op_defs.op_defs_ = internal constant [25 x %struct.op_def] [%struct.op_def { ptr @.str.3, ptr @zcurrentaccuratecurves }, %struct.op_def { ptr @.str.4, ptr @zcurrentdash }, %struct.op_def { ptr @.str.5, ptr @zcurrentdashadapt }, %struct.op_def { ptr @.str.6, ptr @zcurrentdotlength }, %struct.op_def { ptr @.str.7, ptr @zcurrentfilladjust2 }, %struct.op_def { ptr @.str.8, ptr @zcurrentflat }, %struct.op_def { ptr @.str.9, ptr @zcurrentlinecap }, %struct.op_def { ptr @.str.10, ptr @zcurrentlinejoin }, %struct.op_def { ptr @.str.11, ptr @zcurrentlinewidth }, %struct.op_def { ptr @.str.12, ptr @zcurrentmiterlimit }, %struct.op_def { ptr @.str.13, ptr @zgrestore }, %struct.op_def { ptr @.str.14, ptr @zgrestoreall }, %struct.op_def { ptr @.str.15, ptr @zgsave }, %struct.op_def { ptr @.str.16, ptr @zinitgraphics }, %struct.op_def { ptr @.str.17, ptr @zsetaccuratecurves }, %struct.op_def { ptr @.str.18, ptr @zsetdash }, %struct.op_def { ptr @.str.19, ptr @zsetdashadapt }, %struct.op_def { ptr @.str.20, ptr @zsetdotlength }, %struct.op_def { ptr @.str.21, ptr @zsetfilladjust2 }, %struct.op_def { ptr @.str.22, ptr @zsetflat }, %struct.op_def { ptr @.str.23, ptr @zsetlinecap }, %struct.op_def { ptr @.str.24, ptr @zsetlinejoin }, %struct.op_def { ptr @.str.25, ptr @zsetlinewidth }, %struct.op_def { ptr @.str.26, ptr @zsetmiterlimit }, %struct.op_def zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [24 x i8] c"0.currentaccuratecurves\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"0currentdash\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"0.currentdashadapt\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"0.currentdotlength\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"0.currentfilladjust2\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"0currentflat\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"0currentlinecap\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"0currentlinejoin\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"0currentlinewidth\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"0currentmiterlimit\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"0grestore\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"0grestoreall\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"0gsave\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"0initgraphics\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"1.setaccuratecurves\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"2setdash\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"1.setdashadapt\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"2.setdotlength\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"2.setfilladjust2\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"1setflat\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"1.setlinecap\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"1.setlinejoin\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"1setlinewidth\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"1setmiterlimit\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"int_gstate\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"int_gsave\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"int_grestore\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@.str.30 = private unnamed_addr constant [8 x i8] c"setdash\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @igs_init() local_unnamed_addr #0 {
  %1 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #6
  %2 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %3 = tail call ptr @gs_state_alloc(ptr noundef %2) #6
  store ptr %3, ptr @igs, align 8, !tbaa !11
  %4 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = tail call ptr %6(ptr noundef %4, ptr noundef nonnull @st_int_gstate, ptr noundef nonnull @.str) #6
  br label %8

8:                                                ; preds = %8, %0
  %9 = phi ptr [ %7, %0 ], [ %11, %8 ]
  %10 = phi i32 [ 25, %0 ], [ %12, %8 ]
  store i16 3584, ptr %9, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.ref_s, ptr %9, i64 1
  %12 = add nsw i32 %10, -1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8, !llvm.loop !19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ref_s, ptr %7, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !21
  store i16 1136, ptr %7, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.tas_s, ptr %7, i64 0, i32 1
  store i16 0, ptr %16, align 2, !tbaa !29
  %17 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %18 = call i32 @gs_alloc_ref_array(ptr noundef %17, ptr noundef nonnull %1, i32 noundef 224, i32 noundef 2, ptr noundef nonnull @.str) #6
  %19 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 0, i32 1
  store ptr @zpop, ptr %21, align 8, !tbaa !21
  %22 = load ptr, ptr %19, align 8, !tbaa !21
  store i16 3968, ptr %22, align 8, !tbaa !15
  %23 = load ptr, ptr %19, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.tas_s, ptr %23, i64 0, i32 1
  store i16 0, ptr %24, align 2, !tbaa !30
  %25 = load ptr, ptr %19, align 8, !tbaa !21
  %26 = getelementptr inbounds %struct.ref_s, ptr %25, i64 1, i32 1
  store float 0.000000e+00, ptr %26, align 8, !tbaa !21
  %27 = getelementptr inbounds %struct.ref_s, ptr %25, i64 1
  store i16 4096, ptr %27, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.int_gstate_s, ptr %7, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !31
  %29 = getelementptr inbounds %struct.int_gstate_s, ptr %7, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !31
  %30 = call i32 @dict_create(i32 noundef 0, ptr noundef nonnull @i_null_pagedevice) #6
  %31 = load i16, ptr @i_null_pagedevice, align 8, !tbaa !15
  %32 = and i16 %31, -17
  store i16 %32, ptr @i_null_pagedevice, align 8, !tbaa !15
  %33 = getelementptr inbounds %struct.int_gstate_s, ptr %7, i64 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) @i_null_pagedevice, i64 16, i1 false), !tbaa.struct !31
  store ptr @i_null_pagedevice, ptr @npd_p, align 8, !tbaa !11
  %34 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %34, i64 0, i32 16
  %36 = load ptr, ptr %35, align 8, !tbaa !37
  call void %36(ptr noundef %34, ptr noundef nonnull @npd_root, ptr noundef nonnull @ptr_ref_procs, ptr noundef nonnull @npd_p, ptr noundef nonnull @.str.1) #6
  %37 = load ptr, ptr @igs, align 8, !tbaa !11
  call void @gs_state_set_client(ptr noundef %37, ptr noundef nonnull %7, ptr noundef nonnull @istate_procs) #6
  %38 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %38, i64 0, i32 16
  %40 = load ptr, ptr %39, align 8, !tbaa !37
  call void %40(ptr noundef %38, ptr noundef nonnull @igs_root, ptr noundef nonnull @ptr_struct_procs, ptr noundef nonnull @igs, ptr noundef nonnull @.str.2) #6
  %41 = load ptr, ptr @igs, align 8, !tbaa !11
  call void @gs_setlimitclamp(ptr noundef %41, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @gs_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @zpop(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @dict_create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_state_set_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_setlimitclamp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zgsave(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !11
  %3 = tail call i32 @gs_gsave(ptr noundef %2) #6
  ret i32 %3
}

declare i32 @gs_gsave(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zgrestore(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !11
  %3 = tail call i32 @gs_grestore(ptr noundef %2) #6
  ret i32 %3
}

declare i32 @gs_grestore(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zgrestoreall(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !11
  %3 = tail call i32 @gs_grestoreall(ptr noundef %2) #6
  ret i32 %3
}

declare i32 @gs_grestoreall(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zgstate_op_defs() local_unnamed_addr #4 {
  ret ptr @zgstate_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentaccuratecurves(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !38
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !40
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !41
  %7 = load ptr, ptr @igs, align 8, !tbaa !11
  %8 = tail call i32 @gs_currentaccuratecurves(ptr noundef %7) #6
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !21
  store i16 256, ptr %2, align 8, !tbaa !15
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentdash(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !38
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !40
  br label %13

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %8 = load ptr, ptr @igs, align 8, !tbaa !11
  %9 = tail call ptr @gs_state_client_data(ptr noundef %8) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !31
  %10 = load ptr, ptr @igs, align 8, !tbaa !11
  %11 = tail call float @gs_currentdash_offset(ptr noundef %10) #6
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store float %11, ptr %12, align 8, !tbaa !21
  store i16 4096, ptr %2, align 8, !tbaa !15
  br label %13

13:                                               ; preds = %6, %5
  %14 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentdashadapt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !38
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !40
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !41
  %7 = load ptr, ptr @igs, align 8, !tbaa !11
  %8 = tail call i32 @gs_currentdashadapt(ptr noundef %7) #6
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !21
  store i16 256, ptr %2, align 8, !tbaa !15
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentdotlength(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !38
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !40
  br label %15

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !41
  %7 = load ptr, ptr @igs, align 8, !tbaa !11
  %8 = tail call float @gs_currentdotlength(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %8, ptr %10, align 8, !tbaa !21
  store i16 4096, ptr %9, align 8, !tbaa !15
  %11 = load ptr, ptr @igs, align 8, !tbaa !11
  %12 = tail call i32 @gs_currentdotlength_absolute(ptr noundef %11) #6
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i16 %13, ptr %14, align 8, !tbaa !21
  store i16 256, ptr %2, align 8, !tbaa !15
  br label %15

15:                                               ; preds = %6, %5
  %16 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentfilladjust2(ptr noundef %0) #0 {
  %2 = alloca %struct.gs_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !38
  %5 = icmp ugt ptr %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !40
  br label %18

7:                                                ; preds = %1
  store ptr %3, ptr @o_stack, align 8, !tbaa !41
  %8 = load ptr, ptr @igs, align 8, !tbaa !11
  %9 = call i32 @gs_currentfilladjust(ptr noundef %8, ptr noundef nonnull %2) #6
  %10 = load double, ptr %2, align 8, !tbaa !42
  %11 = fptrunc double %10 to float
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %11, ptr %13, align 8, !tbaa !21
  store i16 4096, ptr %12, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 0, i32 1
  %15 = load double, ptr %14, align 8, !tbaa !45
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store float %16, ptr %17, align 8, !tbaa !21
  store i16 4096, ptr %3, align 8, !tbaa !15
  br label %18

18:                                               ; preds = %7, %6
  %19 = phi i32 [ -16, %6 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentflat(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !38
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !40
  br label %10

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !41
  %7 = load ptr, ptr @igs, align 8, !tbaa !11
  %8 = tail call float @gs_currentflat(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %8, ptr %9, align 8, !tbaa !21
  store i16 4096, ptr %2, align 8, !tbaa !15
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentlinecap(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !38
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !40
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !41
  %7 = load ptr, ptr @igs, align 8, !tbaa !11
  %8 = tail call i32 @gs_currentlinecap(ptr noundef %7) #6
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %9, ptr %10, align 8, !tbaa !21
  store i16 2816, ptr %2, align 8, !tbaa !15
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentlinejoin(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !38
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !40
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !41
  %7 = load ptr, ptr @igs, align 8, !tbaa !11
  %8 = tail call i32 @gs_currentlinejoin(ptr noundef %7) #6
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %9, ptr %10, align 8, !tbaa !21
  store i16 2816, ptr %2, align 8, !tbaa !15
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentlinewidth(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !38
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !40
  br label %10

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !41
  %7 = load ptr, ptr @igs, align 8, !tbaa !11
  %8 = tail call float @gs_currentlinewidth(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %8, ptr %9, align 8, !tbaa !21
  store i16 4096, ptr %2, align 8, !tbaa !15
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentmiterlimit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !38
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !40
  br label %10

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !41
  %7 = load ptr, ptr @igs, align 8, !tbaa !11
  %8 = tail call float @gs_currentmiterlimit(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %8, ptr %9, align 8, !tbaa !21
  store i16 4096, ptr %2, align 8, !tbaa !15
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @zinitgraphics(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !11
  %3 = tail call i32 @gs_initgraphics(ptr noundef %2) #6
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !11
  %7 = tail call ptr @gs_state_client_data(ptr noundef %6) #6
  %8 = getelementptr inbounds %struct.int_gstate_s, ptr %7, i64 0, i32 5
  store i16 3584, ptr %8, align 8, !tbaa !46
  br label %9

9:                                                ; preds = %5, %1
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetaccuratecurves(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !21
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr @igs, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !21
  %11 = zext i16 %10 to i32
  tail call void @gs_setaccuratecurves(ptr noundef %8, i32 noundef %11) #6
  %12 = load ptr, ptr @o_stack, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.ref_s, ptr %12, i64 -1
  store ptr %13, ptr @o_stack, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %7, %5
  %15 = phi i32 [ 0, %7 ], [ %6, %5 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetdash(ptr noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.ref_s, align 8
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %5 = call i32 @real_param(ptr noundef %0, ptr noundef nonnull %2) #6
  %6 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %7 = icmp slt i32 %5, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @check_type_failed(ptr noundef %0) #6
  br label %55

10:                                               ; preds = %1
  %11 = load i16, ptr %4, align 8, !tbaa !15
  %12 = and i16 %11, 15360
  %13 = icmp eq i16 %12, 1024
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = call i32 @check_type_failed(ptr noundef nonnull %4) #6
  br label %55

16:                                               ; preds = %10
  %17 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !30
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = call ptr %21(ptr noundef %6, i32 noundef %19, i32 noundef 4, ptr noundef nonnull @.str.30) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %55, label %24

24:                                               ; preds = %16
  %25 = icmp eq i16 %18, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %24
  %27 = zext i16 %18 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %33, %28 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %30 = call i32 @array_get(ptr noundef nonnull %4, i64 noundef %29, ptr noundef nonnull %3) #6
  %31 = getelementptr inbounds float, ptr %22, i64 %29
  %32 = call i32 @real_param(ptr noundef nonnull %3, ptr noundef nonnull %31) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %33 = add nuw nsw i64 %29, 1
  %34 = icmp ult i64 %33, %27
  %35 = icmp sgt i32 %32, -1
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %28, label %37, !llvm.loop !48

37:                                               ; preds = %28, %24
  %38 = phi i32 [ 0, %24 ], [ %32, %28 ]
  %39 = phi i1 [ true, %24 ], [ %35, %28 ]
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load ptr, ptr @igs, align 8, !tbaa !11
  %42 = load float, ptr %2, align 4, !tbaa !35
  %43 = fpext float %42 to double
  %44 = call i32 @gs_setdash(ptr noundef %41, ptr noundef nonnull %22, i32 noundef %19, double noundef %43) #6
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i32 [ %44, %40 ], [ %38, %37 ]
  %47 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  call void %48(ptr noundef %6, ptr noundef nonnull %22, ptr noundef nonnull @.str.30) #6
  %49 = icmp slt i32 %46, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr @igs, align 8, !tbaa !11
  %52 = call ptr @gs_state_client_data(ptr noundef %51) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !31
  %53 = load ptr, ptr @o_stack, align 8, !tbaa !41
  %54 = getelementptr inbounds %struct.ref_s, ptr %53, i64 -2
  store ptr %54, ptr @o_stack, align 8, !tbaa !41
  br label %55

55:                                               ; preds = %45, %16, %50, %14, %8
  %56 = phi i32 [ %9, %8 ], [ %46, %50 ], [ %15, %14 ], [ -25, %16 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetdashadapt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !21
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr @igs, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !21
  %11 = zext i16 %10 to i32
  tail call void @gs_setdashadapt(ptr noundef %8, i32 noundef %11) #6
  %12 = load ptr, ptr @o_stack, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.ref_s, ptr %12, i64 -1
  store ptr %13, ptr @o_stack, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %7, %5
  %15 = phi i32 [ 0, %7 ], [ %6, %5 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetdotlength(ptr noundef %0) #0 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %4 = call i32 @num_params(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %2) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !21
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = call i32 @check_type_failed(ptr noundef %0) #6
  br label %24

12:                                               ; preds = %6
  %13 = load ptr, ptr @igs, align 8, !tbaa !11
  %14 = load float, ptr %2, align 4, !tbaa !35
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %17 = load i16, ptr %16, align 8, !tbaa !21
  %18 = zext i16 %17 to i32
  %19 = call i32 @gs_setdotlength(ptr noundef %13, double noundef %15, i32 noundef %18) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load ptr, ptr @o_stack, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 -2
  store ptr %23, ptr @o_stack, align 8, !tbaa !41
  br label %24

24:                                               ; preds = %12, %1, %21, %10
  %25 = phi i32 [ 0, %21 ], [ %11, %10 ], [ %4, %1 ], [ %19, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetfilladjust2(ptr noundef %0) #0 {
  %2 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !11
  %7 = load float, ptr %2, align 4, !tbaa !35
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !35
  %11 = fpext float %10 to double
  %12 = call i32 @gs_setfilladjust(ptr noundef %6, double noundef %8, double noundef %11) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr @o_stack, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.ref_s, ptr %15, i64 -2
  store ptr %16, ptr @o_stack, align 8, !tbaa !41
  br label %17

17:                                               ; preds = %5, %1, %14
  %18 = phi i32 [ 0, %14 ], [ %3, %1 ], [ %12, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetflat(ptr noundef %0) #0 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %3 = call i32 @real_param(ptr noundef %0, ptr noundef nonnull %2) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @check_type_failed(ptr noundef %0) #6
  br label %16

7:                                                ; preds = %1
  %8 = load ptr, ptr @igs, align 8, !tbaa !11
  %9 = load float, ptr %2, align 4, !tbaa !35
  %10 = fpext float %9 to double
  %11 = call i32 @gs_setflat(ptr noundef %8, double noundef %10) #6, !callees !50
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load ptr, ptr @o_stack, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.ref_s, ptr %14, i64 -1
  store ptr %15, ptr @o_stack, align 8, !tbaa !41
  br label %16

16:                                               ; preds = %5, %7, %13
  %17 = phi i32 [ %6, %5 ], [ %11, %13 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetlinecap(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %3 = call i32 @int_param(ptr noundef %0, i32 noundef 2147483647, ptr noundef nonnull %2) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !11
  %7 = load i32, ptr %2, align 4, !tbaa !51
  %8 = call i32 @gs_setlinecap(ptr noundef %6, i32 noundef %7) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @o_stack, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.ref_s, ptr %11, i64 -1
  store ptr %12, ptr @o_stack, align 8, !tbaa !41
  br label %13

13:                                               ; preds = %1, %5, %10
  %14 = phi i32 [ 0, %10 ], [ %3, %1 ], [ %8, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetlinejoin(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %3 = call i32 @int_param(ptr noundef %0, i32 noundef 2147483647, ptr noundef nonnull %2) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !11
  %7 = load i32, ptr %2, align 4, !tbaa !51
  %8 = call i32 @gs_setlinejoin(ptr noundef %6, i32 noundef %7) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @o_stack, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.ref_s, ptr %11, i64 -1
  store ptr %12, ptr @o_stack, align 8, !tbaa !41
  br label %13

13:                                               ; preds = %1, %5, %10
  %14 = phi i32 [ 0, %10 ], [ %3, %1 ], [ %8, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetlinewidth(ptr noundef %0) #0 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %3 = call i32 @real_param(ptr noundef %0, ptr noundef nonnull %2) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @check_type_failed(ptr noundef %0) #6
  br label %16

7:                                                ; preds = %1
  %8 = load ptr, ptr @igs, align 8, !tbaa !11
  %9 = load float, ptr %2, align 4, !tbaa !35
  %10 = fpext float %9 to double
  %11 = call i32 @gs_setlinewidth(ptr noundef %8, double noundef %10) #6, !callees !50
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load ptr, ptr @o_stack, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.ref_s, ptr %14, i64 -1
  store ptr %15, ptr @o_stack, align 8, !tbaa !41
  br label %16

16:                                               ; preds = %5, %7, %13
  %17 = phi i32 [ %6, %5 ], [ %11, %13 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetmiterlimit(ptr noundef %0) #0 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %3 = call i32 @real_param(ptr noundef %0, ptr noundef nonnull %2) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @check_type_failed(ptr noundef %0) #6
  br label %16

7:                                                ; preds = %1
  %8 = load ptr, ptr @igs, align 8, !tbaa !11
  %9 = load float, ptr %2, align 4, !tbaa !35
  %10 = fpext float %9 to double
  %11 = call i32 @gs_setmiterlimit(ptr noundef %8, double noundef %10) #6, !callees !50
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load ptr, ptr @o_stack, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.ref_s, ptr %14, i64 -1
  store ptr %15, ptr @o_stack, align 8, !tbaa !41
  br label %16

16:                                               ; preds = %5, %7, %13
  %17 = phi i32 [ %6, %5 ], [ %11, %13 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %17
}

declare void @ref_struct_clear_marks(ptr noundef, i32 noundef) #2

declare ptr @ref_struct_enum_ptrs(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @ref_struct_reloc_ptrs(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @gs_istate_alloc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = tail call ptr %3(ptr noundef %0, ptr noundef nonnull @st_int_gstate, ptr noundef nonnull @.str.28) #6
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @gs_istate_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #5 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(400) %1, i64 400, i1 false), !tbaa.struct !52
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gs_istate_free(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  tail call void %4(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.29) #6
  ret void
}

declare i32 @gs_currentaccuratecurves(ptr noundef) local_unnamed_addr #2

declare ptr @gs_state_client_data(ptr noundef) local_unnamed_addr #2

declare float @gs_currentdash_offset(ptr noundef) local_unnamed_addr #2

declare i32 @gs_currentdashadapt(ptr noundef) local_unnamed_addr #2

declare float @gs_currentdotlength(ptr noundef) local_unnamed_addr #2

declare i32 @gs_currentdotlength_absolute(ptr noundef) local_unnamed_addr #2

declare i32 @gs_currentfilladjust(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @gs_currentflat(ptr noundef) local_unnamed_addr #2

declare i32 @gs_currentlinecap(ptr noundef) local_unnamed_addr #2

declare i32 @gs_currentlinejoin(ptr noundef) local_unnamed_addr #2

declare float @gs_currentlinewidth(ptr noundef) local_unnamed_addr #2

declare float @gs_currentmiterlimit(ptr noundef) local_unnamed_addr #2

declare i32 @gs_initgraphics(ptr noundef) local_unnamed_addr #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare void @gs_setaccuratecurves(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @real_param(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_setdash(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare void @gs_setdashadapt(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_setdotlength(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gs_setfilladjust(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @gs_setflat(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @int_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_setlinecap(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gs_setlinejoin(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gs_setlinewidth(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @gs_setmiterlimit(ptr noundef, double noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !10, i64 40, !10, i64 44, !7, i64 48, !10, i64 56, !10, i64 60}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !7, i64 16}
!13 = !{!"gs_memory_s", !14, i64 0}
!14 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!15 = !{!16, !18, i64 0}
!16 = !{!"ref_s", !17, i64 0, !8, i64 8}
!17 = !{!"tas_s", !18, i64 0, !18, i64 2}
!18 = !{!"short", !8, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!8, !8, i64 0}
!22 = !{!23, !18, i64 0}
!23 = !{!"int_gstate_s", !16, i64 0, !8, i64 16, !8, i64 80, !16, i64 144, !16, i64 160, !24, i64 176, !16, i64 272, !27, i64 288, !16, i64 368, !16, i64 384}
!24 = !{!"ref_colorspace_s", !16, i64 0, !25, i64 16}
!25 = !{!"ref_color_procs_s", !26, i64 0, !8, i64 48}
!26 = !{!"ref_cie_procs_s", !8, i64 0, !8, i64 16, !16, i64 32}
!27 = !{!"", !16, i64 0, !28, i64 16}
!28 = !{!"ref_cie_render_procs_s", !16, i64 0, !16, i64 16, !16, i64 32, !16, i64 48}
!29 = !{!23, !18, i64 2}
!30 = !{!16, !18, i64 2}
!31 = !{i64 0, i64 2, !32, i64 2, i64 2, !32, i64 8, i64 8, !33, i64 8, i64 2, !32, i64 8, i64 4, !35, i64 8, i64 8, !33, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11}
!32 = !{!18, !18, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"long", !8, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !8, i64 0}
!37 = !{!13, !7, i64 128}
!38 = !{!39, !7, i64 16}
!39 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !16, i64 24, !10, i64 40, !10, i64 44, !16, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !16, i64 88, !10, i64 104, !10, i64 108, !10, i64 112, !7, i64 120}
!40 = !{!39, !10, i64 64}
!41 = !{!39, !7, i64 0}
!42 = !{!43, !44, i64 0}
!43 = !{!"gs_point_s", !44, i64 0, !44, i64 8}
!44 = !{!"double", !8, i64 0}
!45 = !{!43, !44, i64 8}
!46 = !{!23, !18, i64 176}
!47 = !{!13, !7, i64 32}
!48 = distinct !{!48, !20}
!49 = !{!13, !7, i64 88}
!50 = !{ptr @gs_setflat, ptr @gs_setlinewidth, ptr @gs_setmiterlimit}
!51 = !{!10, !10, i64 0}
!52 = !{i64 0, i64 2, !32, i64 2, i64 2, !32, i64 8, i64 8, !33, i64 8, i64 2, !32, i64 8, i64 4, !35, i64 8, i64 8, !33, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 64, !21, i64 16, i64 2, !32, i64 18, i64 2, !32, i64 24, i64 8, !33, i64 24, i64 2, !32, i64 24, i64 4, !35, i64 24, i64 8, !33, i64 24, i64 8, !11, i64 24, i64 8, !11, i64 24, i64 8, !11, i64 24, i64 8, !11, i64 24, i64 8, !11, i64 24, i64 8, !11, i64 24, i64 8, !11, i64 24, i64 8, !11, i64 24, i64 8, !11, i64 24, i64 8, !11, i64 24, i64 8, !11, i64 24, i64 8, !11, i64 24, i64 8, !11, i64 32, i64 2, !32, i64 34, i64 2, !32, i64 40, i64 8, !33, i64 40, i64 2, !32, i64 40, i64 4, !35, i64 40, i64 8, !33, i64 40, i64 8, !11, i64 40, i64 8, !11, i64 40, i64 8, !11, i64 40, i64 8, !11, i64 40, i64 8, !11, i64 40, i64 8, !11, i64 40, i64 8, !11, i64 40, i64 8, !11, i64 40, i64 8, !11, i64 40, i64 8, !11, i64 40, i64 8, !11, i64 40, i64 8, !11, i64 40, i64 8, !11, i64 48, i64 2, !32, i64 50, i64 2, !32, i64 56, i64 8, !33, i64 56, i64 2, !32, i64 56, i64 4, !35, i64 56, i64 8, !33, i64 56, i64 8, !11, i64 56, i64 8, !11, i64 56, i64 8, !11, i64 56, i64 8, !11, i64 56, i64 8, !11, i64 56, i64 8, !11, i64 56, i64 8, !11, i64 56, i64 8, !11, i64 56, i64 8, !11, i64 56, i64 8, !11, i64 56, i64 8, !11, i64 56, i64 8, !11, i64 56, i64 8, !11, i64 64, i64 2, !32, i64 66, i64 2, !32, i64 72, i64 8, !33, i64 72, i64 2, !32, i64 72, i64 4, !35, i64 72, i64 8, !33, i64 72, i64 8, !11, i64 72, i64 8, !11, i64 72, i64 8, !11, i64 72, i64 8, !11, i64 72, i64 8, !11, i64 72, i64 8, !11, i64 72, i64 8, !11, i64 72, i64 8, !11, i64 72, i64 8, !11, i64 72, i64 8, !11, i64 72, i64 8, !11, i64 72, i64 8, !11, i64 72, i64 8, !11, i64 80, i64 64, !21, i64 80, i64 2, !32, i64 82, i64 2, !32, i64 88, i64 8, !33, i64 88, i64 2, !32, i64 88, i64 4, !35, i64 88, i64 8, !33, i64 88, i64 8, !11, i64 88, i64 8, !11, i64 88, i64 8, !11, i64 88, i64 8, !11, i64 88, i64 8, !11, i64 88, i64 8, !11, i64 88, i64 8, !11, i64 88, i64 8, !11, i64 88, i64 8, !11, i64 88, i64 8, !11, i64 88, i64 8, !11, i64 88, i64 8, !11, i64 88, i64 8, !11, i64 96, i64 2, !32, i64 98, i64 2, !32, i64 104, i64 8, !33, i64 104, i64 2, !32, i64 104, i64 4, !35, i64 104, i64 8, !33, i64 104, i64 8, !11, i64 104, i64 8, !11, i64 104, i64 8, !11, i64 104, i64 8, !11, i64 104, i64 8, !11, i64 104, i64 8, !11, i64 104, i64 8, !11, i64 104, i64 8, !11, i64 104, i64 8, !11, i64 104, i64 8, !11, i64 104, i64 8, !11, i64 104, i64 8, !11, i64 104, i64 8, !11, i64 112, i64 2, !32, i64 114, i64 2, !32, i64 120, i64 8, !33, i64 120, i64 2, !32, i64 120, i64 4, !35, i64 120, i64 8, !33, i64 120, i64 8, !11, i64 120, i64 8, !11, i64 120, i64 8, !11, i64 120, i64 8, !11, i64 120, i64 8, !11, i64 120, i64 8, !11, i64 120, i64 8, !11, i64 120, i64 8, !11, i64 120, i64 8, !11, i64 120, i64 8, !11, i64 120, i64 8, !11, i64 120, i64 8, !11, i64 120, i64 8, !11, i64 128, i64 2, !32, i64 130, i64 2, !32, i64 136, i64 8, !33, i64 136, i64 2, !32, i64 136, i64 4, !35, i64 136, i64 8, !33, i64 136, i64 8, !11, i64 136, i64 8, !11, i64 136, i64 8, !11, i64 136, i64 8, !11, i64 136, i64 8, !11, i64 136, i64 8, !11, i64 136, i64 8, !11, i64 136, i64 8, !11, i64 136, i64 8, !11, i64 136, i64 8, !11, i64 136, i64 8, !11, i64 136, i64 8, !11, i64 136, i64 8, !11, i64 144, i64 2, !32, i64 146, i64 2, !32, i64 152, i64 8, !33, i64 152, i64 2, !32, i64 152, i64 4, !35, i64 152, i64 8, !33, i64 152, i64 8, !11, i64 152, i64 8, !11, i64 152, i64 8, !11, i64 152, i64 8, !11, i64 152, i64 8, !11, i64 152, i64 8, !11, i64 152, i64 8, !11, i64 152, i64 8, !11, i64 152, i64 8, !11, i64 152, i64 8, !11, i64 152, i64 8, !11, i64 152, i64 8, !11, i64 152, i64 8, !11, i64 160, i64 2, !32, i64 162, i64 2, !32, i64 168, i64 8, !33, i64 168, i64 2, !32, i64 168, i64 4, !35, i64 168, i64 8, !33, i64 168, i64 8, !11, i64 168, i64 8, !11, i64 168, i64 8, !11, i64 168, i64 8, !11, i64 168, i64 8, !11, i64 168, i64 8, !11, i64 168, i64 8, !11, i64 168, i64 8, !11, i64 168, i64 8, !11, i64 168, i64 8, !11, i64 168, i64 8, !11, i64 168, i64 8, !11, i64 168, i64 8, !11, i64 176, i64 2, !32, i64 178, i64 2, !32, i64 184, i64 8, !33, i64 184, i64 2, !32, i64 184, i64 4, !35, i64 184, i64 8, !33, i64 184, i64 8, !11, i64 184, i64 8, !11, i64 184, i64 8, !11, i64 184, i64 8, !11, i64 184, i64 8, !11, i64 184, i64 8, !11, i64 184, i64 8, !11, i64 184, i64 8, !11, i64 184, i64 8, !11, i64 184, i64 8, !11, i64 184, i64 8, !11, i64 184, i64 8, !11, i64 184, i64 8, !11, i64 192, i64 2, !32, i64 194, i64 2, !32, i64 200, i64 8, !33, i64 200, i64 2, !32, i64 200, i64 4, !35, i64 200, i64 8, !33, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 192, i64 2, !32, i64 194, i64 2, !32, i64 200, i64 8, !33, i64 200, i64 2, !32, i64 200, i64 4, !35, i64 200, i64 8, !33, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 200, i64 8, !11, i64 208, i64 2, !32, i64 210, i64 2, !32, i64 216, i64 8, !33, i64 216, i64 2, !32, i64 216, i64 4, !35, i64 216, i64 8, !33, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 208, i64 2, !32, i64 210, i64 2, !32, i64 216, i64 8, !33, i64 216, i64 2, !32, i64 216, i64 4, !35, i64 216, i64 8, !33, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 216, i64 8, !11, i64 224, i64 2, !32, i64 226, i64 2, !32, i64 232, i64 8, !33, i64 232, i64 2, !32, i64 232, i64 4, !35, i64 232, i64 8, !33, i64 232, i64 8, !11, i64 232, i64 8, !11, i64 232, i64 8, !11, i64 232, i64 8, !11, i64 232, i64 8, !11, i64 232, i64 8, !11, i64 232, i64 8, !11, i64 232, i64 8, !11, i64 232, i64 8, !11, i64 232, i64 8, !11, i64 232, i64 8, !11, i64 232, i64 8, !11, i64 232, i64 8, !11, i64 240, i64 2, !32, i64 242, i64 2, !32, i64 248, i64 8, !33, i64 248, i64 2, !32, i64 248, i64 4, !35, i64 248, i64 8, !33, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 256, i64 2, !32, i64 258, i64 2, !32, i64 264, i64 8, !33, i64 264, i64 2, !32, i64 264, i64 4, !35, i64 264, i64 8, !33, i64 264, i64 8, !11, i64 264, i64 8, !11, i64 264, i64 8, !11, i64 264, i64 8, !11, i64 264, i64 8, !11, i64 264, i64 8, !11, i64 264, i64 8, !11, i64 264, i64 8, !11, i64 264, i64 8, !11, i64 264, i64 8, !11, i64 264, i64 8, !11, i64 264, i64 8, !11, i64 264, i64 8, !11, i64 240, i64 2, !32, i64 242, i64 2, !32, i64 248, i64 8, !33, i64 248, i64 2, !32, i64 248, i64 4, !35, i64 248, i64 8, !33, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 248, i64 8, !11, i64 272, i64 2, !32, i64 274, i64 2, !32, i64 280, i64 8, !33, i64 280, i64 2, !32, i64 280, i64 4, !35, i64 280, i64 8, !33, i64 280, i64 8, !11, i64 280, i64 8, !11, i64 280, i64 8, !11, i64 280, i64 8, !11, i64 280, i64 8, !11, i64 280, i64 8, !11, i64 280, i64 8, !11, i64 280, i64 8, !11, i64 280, i64 8, !11, i64 280, i64 8, !11, i64 280, i64 8, !11, i64 280, i64 8, !11, i64 280, i64 8, !11, i64 288, i64 2, !32, i64 290, i64 2, !32, i64 296, i64 8, !33, i64 296, i64 2, !32, i64 296, i64 4, !35, i64 296, i64 8, !33, i64 296, i64 8, !11, i64 296, i64 8, !11, i64 296, i64 8, !11, i64 296, i64 8, !11, i64 296, i64 8, !11, i64 296, i64 8, !11, i64 296, i64 8, !11, i64 296, i64 8, !11, i64 296, i64 8, !11, i64 296, i64 8, !11, i64 296, i64 8, !11, i64 296, i64 8, !11, i64 296, i64 8, !11, i64 304, i64 2, !32, i64 306, i64 2, !32, i64 312, i64 8, !33, i64 312, i64 2, !32, i64 312, i64 4, !35, i64 312, i64 8, !33, i64 312, i64 8, !11, i64 312, i64 8, !11, i64 312, i64 8, !11, i64 312, i64 8, !11, i64 312, i64 8, !11, i64 312, i64 8, !11, i64 312, i64 8, !11, i64 312, i64 8, !11, i64 312, i64 8, !11, i64 312, i64 8, !11, i64 312, i64 8, !11, i64 312, i64 8, !11, i64 312, i64 8, !11, i64 320, i64 2, !32, i64 322, i64 2, !32, i64 328, i64 8, !33, i64 328, i64 2, !32, i64 328, i64 4, !35, i64 328, i64 8, !33, i64 328, i64 8, !11, i64 328, i64 8, !11, i64 328, i64 8, !11, i64 328, i64 8, !11, i64 328, i64 8, !11, i64 328, i64 8, !11, i64 328, i64 8, !11, i64 328, i64 8, !11, i64 328, i64 8, !11, i64 328, i64 8, !11, i64 328, i64 8, !11, i64 328, i64 8, !11, i64 328, i64 8, !11, i64 336, i64 2, !32, i64 338, i64 2, !32, i64 344, i64 8, !33, i64 344, i64 2, !32, i64 344, i64 4, !35, i64 344, i64 8, !33, i64 344, i64 8, !11, i64 344, i64 8, !11, i64 344, i64 8, !11, i64 344, i64 8, !11, i64 344, i64 8, !11, i64 344, i64 8, !11, i64 344, i64 8, !11, i64 344, i64 8, !11, i64 344, i64 8, !11, i64 344, i64 8, !11, i64 344, i64 8, !11, i64 344, i64 8, !11, i64 344, i64 8, !11, i64 352, i64 2, !32, i64 354, i64 2, !32, i64 360, i64 8, !33, i64 360, i64 2, !32, i64 360, i64 4, !35, i64 360, i64 8, !33, i64 360, i64 8, !11, i64 360, i64 8, !11, i64 360, i64 8, !11, i64 360, i64 8, !11, i64 360, i64 8, !11, i64 360, i64 8, !11, i64 360, i64 8, !11, i64 360, i64 8, !11, i64 360, i64 8, !11, i64 360, i64 8, !11, i64 360, i64 8, !11, i64 360, i64 8, !11, i64 360, i64 8, !11, i64 368, i64 2, !32, i64 370, i64 2, !32, i64 376, i64 8, !33, i64 376, i64 2, !32, i64 376, i64 4, !35, i64 376, i64 8, !33, i64 376, i64 8, !11, i64 376, i64 8, !11, i64 376, i64 8, !11, i64 376, i64 8, !11, i64 376, i64 8, !11, i64 376, i64 8, !11, i64 376, i64 8, !11, i64 376, i64 8, !11, i64 376, i64 8, !11, i64 376, i64 8, !11, i64 376, i64 8, !11, i64 376, i64 8, !11, i64 376, i64 8, !11, i64 384, i64 2, !32, i64 386, i64 2, !32, i64 392, i64 8, !33, i64 392, i64 2, !32, i64 392, i64 4, !35, i64 392, i64 8, !33, i64 392, i64 8, !11, i64 392, i64 8, !11, i64 392, i64 8, !11, i64 392, i64 8, !11, i64 392, i64 8, !11, i64 392, i64 8, !11, i64 392, i64 8, !11, i64 392, i64 8, !11, i64 392, i64 8, !11, i64 392, i64 8, !11, i64 392, i64 8, !11, i64 392, i64 8, !11, i64 392, i64 8, !11}
