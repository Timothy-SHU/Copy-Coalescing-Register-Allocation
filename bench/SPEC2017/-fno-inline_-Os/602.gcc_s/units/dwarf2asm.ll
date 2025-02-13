; ModuleID = 'dwarf2asm.c'
source_filename = "dwarf2asm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }

@asm_out_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%x,\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s0x%lx\00", align 1
@flag_debug_asm = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"\09%s \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\09.ascii \22\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"\\%o\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\\0\22\09%s \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\22\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\09.string\09\00", align 1
@.str.12 = private unnamed_addr constant [257 x i8] c"\01\01\01\01\01\01\01\01btn\01fr\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\\\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"\09.ascii\09\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.15 = private unnamed_addr constant [12 x i8] c"dwarf2asm.c\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@eh_data_format_name.format_names = internal unnamed_addr constant [256 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr null, ptr null, ptr null, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr null, ptr null, ptr null, ptr null, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr null, ptr null, ptr null, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr null, ptr null, ptr null, ptr null, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr null, ptr null, ptr null, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr null, ptr null, ptr null, ptr null, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr null, ptr null, ptr null, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr null, ptr null, ptr null, ptr null, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr null, ptr null, ptr null, ptr @.str.62, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.63, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr null, ptr null, ptr null, ptr null, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr null, ptr null, ptr null, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr null, ptr null, ptr null, ptr null, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr null, ptr null, ptr null, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr null, ptr null, ptr null, ptr null, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr null, ptr null, ptr null, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr null, ptr null, ptr null, ptr null, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.100], align 16
@.str.17 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"uleb128\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"udata2\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"udata4\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"udata8\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"sleb128\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"sdata2\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"sdata4\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"sdata8\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"pcrel\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"pcrel uleb128\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"pcrel udata2\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"pcrel udata4\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"pcrel udata8\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"pcrel sleb128\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"pcrel sdata2\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"pcrel sdata4\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"pcrel sdata8\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"textrel\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"textrel uleb128\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"textrel udata2\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"textrel udata4\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"textrel udata8\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"textrel sleb128\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"textrel sdata2\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"textrel sdata4\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"textrel sdata8\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"datarel\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"datarel uleb128\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"datarel udata2\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"datarel udata4\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"datarel udata8\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"datarel sleb128\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"datarel sdata2\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"datarel sdata4\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"datarel sdata8\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"funcrel\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"funcrel uleb128\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"funcrel udata2\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"funcrel udata4\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"funcrel udata8\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"funcrel sleb128\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"funcrel sdata2\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"funcrel sdata4\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"funcrel sdata8\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"aligned absolute\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"indirect absolute\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"indirect pcrel\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"indirect pcrel uleb128\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"indirect pcrel udata2\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"indirect pcrel udata4\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"indirect pcrel udata8\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"indirect pcrel sleb128\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"indirect pcrel sdata2\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"indirect pcrel sdata4\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"indirect pcrel sdata8\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"indirect textrel\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"indirect textrel uleb128\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"indirect textrel udata2\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"indirect textrel udata4\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"indirect textrel udata8\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"indirect textrel sleb128\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"indirect textrel sdata2\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"indirect textrel sdata4\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"indirect textrel sdata8\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"indirect datarel\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"indirect datarel uleb128\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"indirect datarel udata2\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"indirect datarel udata4\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"indirect datarel udata8\00", align 1
@.str.87 = private unnamed_addr constant [25 x i8] c"indirect datarel sleb128\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"indirect datarel sdata2\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"indirect datarel sdata4\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"indirect datarel sdata8\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"indirect funcrel\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"indirect funcrel uleb128\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"indirect funcrel udata2\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"indirect funcrel udata4\00", align 1
@.str.95 = private unnamed_addr constant [24 x i8] c"indirect funcrel udata8\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"indirect funcrel sleb128\00", align 1
@.str.97 = private unnamed_addr constant [24 x i8] c"indirect funcrel sdata2\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"indirect funcrel sdata4\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"indirect funcrel sdata8\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"omit\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"\09.uleb128 0x%lx\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"\09.sleb128 %ld\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"\09.uleb128 \00", align 1
@indirect_pool = internal global ptr null, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.104 = private unnamed_addr constant [10 x i8] c"DW.ref.%s\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"LDFCM\00", align 1
@dw2_const_labelno = internal global i32 0, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.107 = private unnamed_addr constant [22 x i8] c"\09.hidden %sDW.ref.%s\0A\00", align 1
@user_label_prefix = external local_unnamed_addr global ptr, align 8
@.str.108 = private unnamed_addr constant [8 x i8] c"\09.long\09\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"@GOT\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"@GOTOFF\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@gt_ggc_r_gt_dwarf2asm_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @indirect_pool, i64 1, i64 8, ptr @gt_ggc_m_SP9tree_node12splay_tree_s, ptr @gt_pch_n_SP9tree_node12splay_tree_s }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_pch_rs_gt_dwarf2asm_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @dw2_const_labelno, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@switch.table.size_of_encoded_value = private unnamed_addr constant [5 x i32] [i32 4, i32 4, i32 2, i32 4, i32 8], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dw2_assemble_integer(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = tail call ptr @integer_asm_op(i32 noundef %0, i32 noundef 0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %7 = tail call i32 @fputs(ptr noundef nonnull %3, ptr noundef %6) #10
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 30
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  br i1 %10, label %12, label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !40
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str, i64 noundef %14) #10
  br label %19

16:                                               ; preds = %5
  tail call void @output_addr_const(ptr noundef %11, ptr noundef nonnull %1) #9
  br label %19

17:                                               ; preds = %2
  %18 = tail call zeroext i8 @assemble_integer(ptr noundef %1, i32 noundef %0, i32 noundef 8, i32 noundef 1) #9
  br label %19

19:                                               ; preds = %12, %16, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @integer_asm_op(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @output_addr_const(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @assemble_integer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dw2_asm_output_data_raw(i32 noundef %0, i64 noundef %1) local_unnamed_addr #4 !prof !35 {
  %3 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  br label %9

4:                                                ; preds = %9
  %5 = add i32 %0, -1
  %6 = icmp sgt i32 %0, 1
  br i1 %6, label %7, label %28

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  br label %17

9:                                                ; preds = %2, %9
  %10 = phi i64 [ 0, %2 ], [ %15, %9 ]
  %11 = phi i64 [ %1, %2 ], [ %14, %9 ]
  %12 = trunc i64 %11 to i8
  %13 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 %10
  store i8 %12, ptr %13, align 1, !tbaa !40
  %14 = lshr i64 %11, 8
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %4, label %9, !llvm.loop !41

17:                                               ; preds = %7, %17
  %18 = phi i64 [ 0, %7 ], [ %24, %17 ]
  %19 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %20 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 %18
  %21 = load i8, ptr %20, align 1, !tbaa !40
  %22 = zext i8 %21 to i32
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef %22) #10
  %24 = add nuw nsw i64 %18, 1
  %25 = icmp eq i64 %24, %8
  br i1 %25, label %26, label %17, !llvm.loop !43

26:                                               ; preds = %17
  %27 = zext nneg i32 %5 to i64
  br label %28

28:                                               ; preds = %4, %26
  %29 = phi i64 [ %27, %26 ], [ 0, %4 ]
  %30 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %31 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 %29
  %32 = load i8, ptr %31, align 1, !tbaa !40
  %33 = zext i8 %32 to i32
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.2, i32 noundef %33) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dw2_asm_output_data(i32 noundef %0, i64 noundef %1, ptr noundef readonly %2, ...) local_unnamed_addr #0 !prof !35 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %5 = tail call ptr @integer_asm_op(i32 noundef %0, i32 noundef 0) #9
  call void @llvm.va_start(ptr nonnull %4)
  %6 = icmp slt i32 %0, 8
  %7 = shl nsw i32 %0, 3
  %8 = zext nneg i32 %7 to i64
  %9 = shl nsw i64 -1, %8
  %10 = xor i64 %9, -1
  %11 = select i1 %6, i64 %10, i64 -1
  %12 = and i64 %11, %1
  %13 = icmp eq ptr %5, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull %5, i64 noundef %12) #10
  br label %20

17:                                               ; preds = %3
  %18 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %12) #9
  %19 = call zeroext i8 @assemble_integer(ptr noundef %18, i32 noundef %0, i32 noundef 8, i32 noundef 1) #9
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, ptr @flag_debug_asm, align 4, !tbaa !44
  %22 = icmp ne i32 %21, 0
  %23 = icmp ne ptr %2, null
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  %28 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %29 = call i32 @vfprintf(ptr noundef %28, ptr noundef nonnull %2, ptr noundef nonnull %4) #10
  br label %30

30:                                               ; preds = %25, %20
  %31 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %32 = call i32 @fputc(i32 noundef 10, ptr noundef %31) #10
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dw2_asm_output_delta(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ...) local_unnamed_addr #0 !prof !35 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %1) #9
  %7 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %2) #9
  %8 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef %6, ptr noundef %7) #9
  call void @dw2_assemble_integer(i32 noundef %0, ptr noundef %8) #10
  %9 = load i32, ptr @flag_debug_asm, align 4, !tbaa !44
  %10 = icmp ne i32 %9, 0
  %11 = icmp ne ptr %3, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %17 = call i32 @vfprintf(ptr noundef %16, ptr noundef nonnull %3, ptr noundef nonnull %5) #10
  br label %18

18:                                               ; preds = %13, %4
  %19 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %20 = call i32 @fputc(i32 noundef 10, ptr noundef %19) #10
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_s00_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dw2_asm_output_offset(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef readonly %3, ...) local_unnamed_addr #0 !prof !35 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %1) #9
  call void @dw2_assemble_integer(i32 noundef %0, ptr noundef %6) #10
  %7 = load i32, ptr @flag_debug_asm, align 4, !tbaa !44
  %8 = icmp ne i32 %7, 0
  %9 = icmp ne ptr %3, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  %14 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %15 = call i32 @vfprintf(ptr noundef %14, ptr noundef nonnull %3, ptr noundef nonnull %5) #10
  br label %16

16:                                               ; preds = %11, %4
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %18 = call i32 @fputc(i32 noundef 10, ptr noundef %17) #10
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dw2_asm_output_addr(i32 noundef %0, ptr noundef %1, ptr noundef readonly %2, ...) local_unnamed_addr #0 !prof !35 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %1) #9
  call void @dw2_assemble_integer(i32 noundef %0, ptr noundef %5) #10
  %6 = load i32, ptr @flag_debug_asm, align 4, !tbaa !44
  %7 = icmp ne i32 %6, 0
  %8 = icmp ne ptr %2, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %14 = call i32 @vfprintf(ptr noundef %13, ptr noundef nonnull %2, ptr noundef nonnull %4) #10
  br label %15

15:                                               ; preds = %10, %3
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %17 = call i32 @fputc(i32 noundef 10, ptr noundef %16) #10
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dw2_asm_output_addr_rtx(i32 noundef %0, ptr noundef %1, ptr noundef readonly %2, ...) local_unnamed_addr #0 !prof !35 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.va_start(ptr nonnull %4)
  call void @dw2_assemble_integer(i32 noundef %0, ptr noundef %1) #10
  %5 = load i32, ptr @flag_debug_asm, align 4, !tbaa !44
  %6 = icmp ne i32 %5, 0
  %7 = icmp ne ptr %2, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %13 = call i32 @vfprintf(ptr noundef %12, ptr noundef nonnull %2, ptr noundef nonnull %4) #10
  br label %14

14:                                               ; preds = %9, %3
  %15 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %16 = call i32 @fputc(i32 noundef 10, ptr noundef %15) #10
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dw2_asm_output_nstring(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, ...) local_unnamed_addr #0 !prof !35 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.va_start(ptr nonnull %4)
  %5 = icmp eq i64 %1, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i64 [ %7, %6 ], [ %1, %3 ]
  %10 = load i32, ptr @flag_debug_asm, align 4, !tbaa !44
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %16 = call i32 @fputs(ptr noundef nonnull @.str.6, ptr noundef %15) #10
  %17 = icmp eq i64 %9, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %14, %38
  %19 = phi i64 [ %39, %38 ], [ 0, %14 ]
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !40
  %22 = sext i8 %21 to i32
  switch i8 %21, label %26 [
    i8 92, label %23
    i8 34, label %23
  ]

23:                                               ; preds = %18, %18
  %24 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %25 = call i32 @fputc(i32 noundef 92, ptr noundef %24) #10
  br label %26

26:                                               ; preds = %18, %23
  %27 = and i32 %22, 255
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !46
  %31 = and i16 %30, 16
  %32 = icmp eq i16 %31, 0
  %33 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  br i1 %32, label %36, label %34

34:                                               ; preds = %26
  %35 = call i32 @fputc(i32 noundef %22, ptr noundef %33) #10
  br label %38

36:                                               ; preds = %26
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.7, i32 noundef %22) #10
  br label %38

38:                                               ; preds = %36, %34
  %39 = add nuw i64 %19, 1
  %40 = icmp eq i64 %39, %9
  br i1 %40, label %41, label %18, !llvm.loop !48

41:                                               ; preds = %38, %14
  %42 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #10
  %44 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %45 = call i32 @vfprintf(ptr noundef %44, ptr noundef nonnull %2, ptr noundef nonnull %4) #10
  %46 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %47 = call i32 @fputc(i32 noundef 10, ptr noundef %46) #10
  br label %156

48:                                               ; preds = %8
  %49 = zext i1 %5 to i64
  %50 = getelementptr i8, ptr %0, i64 %9
  %51 = getelementptr i8, ptr %50, i64 %49
  %52 = icmp ugt ptr %51, %0
  br i1 %52, label %53, label %152

53:                                               ; preds = %48, %141
  %54 = phi ptr [ %142, %141 ], [ %0, %48 ]
  %55 = phi ptr [ %74, %141 ], [ null, %48 ]
  %56 = phi i32 [ %143, %141 ], [ 0, %48 ]
  %57 = icmp ugt i32 %56, 59
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %60 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i32 [ 0, %58 ], [ %56, %53 ]
  %63 = icmp ugt ptr %54, %55
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = icmp ult ptr %54, %51
  br i1 %65, label %66, label %73

66:                                               ; preds = %64, %70
  %67 = phi ptr [ %71, %70 ], [ %54, %64 ]
  %68 = load i8, ptr %67, align 1, !tbaa !40
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds i8, ptr %67, i64 1
  %72 = icmp ult ptr %71, %51
  br i1 %72, label %66, label %73, !llvm.loop !49

73:                                               ; preds = %70, %66, %64, %61
  %74 = phi ptr [ %55, %61 ], [ %54, %64 ], [ %71, %70 ], [ %67, %66 ]
  %75 = icmp ult ptr %74, %51
  %76 = ptrtoint ptr %74 to i64
  %77 = ptrtoint ptr %54 to i64
  %78 = sub i64 %76, %77
  %79 = icmp slt i64 %78, 257
  %80 = and i1 %75, %79
  %81 = icmp eq i32 %62, 0
  br i1 %80, label %82, label %114

82:                                               ; preds = %73
  br i1 %81, label %86, label %83

83:                                               ; preds = %82
  %84 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %85 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %84)
  br label %86

86:                                               ; preds = %82, %83
  %87 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  %89 = load i8, ptr %54, align 1, !tbaa !40
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %144, label %91

91:                                               ; preds = %86, %110
  %92 = phi i8 [ %112, %110 ], [ %89, %86 ]
  %93 = phi ptr [ %111, %110 ], [ %54, %86 ]
  %94 = zext i8 %92 to i32
  %95 = zext i8 %92 to i64
  %96 = getelementptr inbounds [257 x i8], ptr @.str.12, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !40
  switch i8 %97, label %104 [
    i8 0, label %98
    i8 1, label %101
  ]

98:                                               ; preds = %91
  %99 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %100 = call i32 @putc(i32 noundef %94, ptr noundef %99) #10
  br label %110

101:                                              ; preds = %91
  %102 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.13, i32 noundef %94) #10
  br label %110

104:                                              ; preds = %91
  %105 = sext i8 %97 to i32
  %106 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %107 = call i32 @putc(i32 noundef 92, ptr noundef %106) #10
  %108 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %109 = call i32 @putc(i32 noundef %105, ptr noundef %108) #10
  br label %110

110:                                              ; preds = %104, %101, %98
  %111 = getelementptr inbounds i8, ptr %93, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !40
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %144, label %91, !llvm.loop !50

114:                                              ; preds = %73
  br i1 %81, label %115, label %118

115:                                              ; preds = %114
  %116 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14) #10
  br label %118

118:                                              ; preds = %115, %114
  %119 = load i8, ptr %54, align 1, !tbaa !40
  %120 = zext i8 %119 to i32
  %121 = zext i8 %119 to i64
  %122 = getelementptr inbounds [257 x i8], ptr @.str.12, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !40
  switch i8 %123, label %130 [
    i8 0, label %124
    i8 1, label %127
  ]

124:                                              ; preds = %118
  %125 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %126 = call i32 @putc(i32 noundef %120, ptr noundef %125) #10
  br label %136

127:                                              ; preds = %118
  %128 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.13, i32 noundef %120) #10
  br label %136

130:                                              ; preds = %118
  %131 = sext i8 %123 to i32
  %132 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %133 = call i32 @putc(i32 noundef 92, ptr noundef %132) #10
  %134 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %135 = call i32 @putc(i32 noundef %131, ptr noundef %134) #10
  br label %136

136:                                              ; preds = %124, %127, %130
  %137 = phi i32 [ 1, %124 ], [ 4, %127 ], [ 2, %130 ]
  %138 = add nuw nsw i32 %62, %137
  %139 = getelementptr inbounds i8, ptr %54, i64 1
  %140 = icmp ult ptr %139, %51
  br i1 %140, label %141, label %149

141:                                              ; preds = %136, %144
  %142 = phi ptr [ %139, %136 ], [ %147, %144 ]
  %143 = phi i32 [ %138, %136 ], [ 0, %144 ]
  br label %53, !llvm.loop !51

144:                                              ; preds = %110, %86
  %145 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %146 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %145)
  %147 = getelementptr inbounds i8, ptr %74, i64 1
  %148 = icmp ult ptr %147, %51
  br i1 %148, label %141, label %152

149:                                              ; preds = %136
  %150 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %151 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %150)
  br label %152

152:                                              ; preds = %144, %48, %149
  br i1 %5, label %156, label %153

153:                                              ; preds = %152
  %154 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !36
  %155 = call zeroext i8 @assemble_integer(ptr noundef %154, i32 noundef 1, i32 noundef 8, i32 noundef 1) #9
  br label %156

156:                                              ; preds = %152, %153, %41
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i32 @size_of_uleb128(i64 noundef %0) local_unnamed_addr #7 !prof !35 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ %0, %1 ], [ %5, %2 ]
  %4 = phi i32 [ 0, %1 ], [ %6, %2 ]
  %5 = lshr i64 %3, 7
  %6 = add nuw nsw i32 %4, 1
  %7 = icmp ult i64 %3, 128
  br i1 %7, label %8, label %2, !llvm.loop !52

8:                                                ; preds = %2
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i32 @size_of_sleb128(i64 noundef %0) local_unnamed_addr #7 !prof !35 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi i32 [ 0, %1 ], [ %5, %7 ]
  %4 = phi i64 [ %0, %1 ], [ %8, %7 ]
  %5 = add nuw nsw i32 %3, 1
  %6 = icmp ult i64 %4, 64
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = ashr i64 %4, 7
  %9 = icmp eq i64 %8, -1
  %10 = and i64 %4, 64
  %11 = icmp ne i64 %10, 0
  %12 = and i1 %9, %11
  br i1 %12, label %13, label %2, !llvm.loop !53

13:                                               ; preds = %2, %7
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @size_of_encoded_value(i32 noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp eq i32 %0, 255
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = and i32 %0, 7
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %7, label %6

6:                                                ; preds = %7, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 375, ptr noundef nonnull @.str.16) #9
  br label %16

7:                                                ; preds = %3
  %8 = trunc i32 %4 to i8
  %9 = lshr i8 29, %8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %6, label %12

12:                                               ; preds = %7
  %13 = zext nneg i32 %4 to i64
  %14 = getelementptr inbounds [5 x i32], ptr @switch.table.size_of_encoded_value, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %12, %1, %6
  %17 = phi i32 [ 0, %6 ], [ 0, %1 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @eh_data_format_name(i32 noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult i32 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [256 x ptr], ptr @eh_data_format_name.format_names, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 533, ptr noundef nonnull @.str.16) #9
  br label %9

9:                                                ; preds = %3, %8
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [256 x ptr], ptr @eh_data_format_name.format_names, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  ret ptr %12
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dw2_asm_output_data_uleb128_raw(i64 noundef %0) local_unnamed_addr #4 !prof !35 {
  %2 = trunc i64 %0 to i32
  %3 = and i32 %2, 127
  %4 = icmp ult i64 %0, 128
  %5 = or disjoint i32 %3, 128
  %6 = select i1 %4, i32 %3, i32 %5
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %6) #10
  br i1 %4, label %21, label %9

9:                                                ; preds = %1, %9
  %10 = phi i64 [ %11, %9 ], [ %0, %1 ]
  %11 = lshr i64 %10, 7
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %13 = tail call i32 @fputc(i32 noundef 44, ptr noundef %12) #10
  %14 = trunc i64 %11 to i32
  %15 = and i32 %14, 127
  %16 = icmp ult i64 %10, 16384
  %17 = or disjoint i32 %15, 128
  %18 = select i1 %16, i32 %15, i32 %17
  %19 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.2, i32 noundef %18) #10
  br i1 %16, label %21, label %9

21:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dw2_asm_output_data_uleb128(i64 noundef %0, ptr noundef readonly %1, ...) local_unnamed_addr #4 !prof !35 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.101, i64 noundef %0) #10
  %6 = load i32, ptr @flag_debug_asm, align 4, !tbaa !44
  %7 = icmp ne i32 %6, 0
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %14 = call i32 @vfprintf(ptr noundef %13, ptr noundef nonnull %1, ptr noundef nonnull %3) #10
  br label %15

15:                                               ; preds = %10, %2
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %17 = call i32 @fputc(i32 noundef 10, ptr noundef %16) #10
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dw2_asm_output_data_sleb128_raw(i64 noundef %0) local_unnamed_addr #4 !prof !35 {
  %2 = trunc i64 %0 to i32
  %3 = and i32 %2, 127
  %4 = icmp ult i64 %0, 64
  br i1 %4, label %24, label %5

5:                                                ; preds = %1, %18
  %6 = phi i64 [ %9, %18 ], [ %0, %1 ]
  %7 = phi i32 [ %22, %18 ], [ %3, %1 ]
  %8 = phi i32 [ %21, %18 ], [ %2, %1 ]
  %9 = ashr i64 %6, 7
  %10 = icmp eq i64 %9, -1
  %11 = and i32 %8, 64
  %12 = icmp ne i32 %11, 0
  %13 = and i1 %10, %12
  %14 = or disjoint i32 %7, 128
  %15 = select i1 %13, i32 %7, i32 %14
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef %15) #10
  br i1 %13, label %28, label %18

18:                                               ; preds = %5
  %19 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %20 = tail call i32 @fputc(i32 noundef 44, ptr noundef %19) #10
  %21 = trunc i64 %9 to i32
  %22 = and i32 %21, 127
  %23 = icmp ult i64 %9, 64
  br i1 %23, label %24, label %5

24:                                               ; preds = %18, %1
  %25 = phi i32 [ %3, %1 ], [ %22, %18 ]
  %26 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef %25) #10
  br label %28

28:                                               ; preds = %5, %24
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dw2_asm_output_data_sleb128(i64 noundef %0, ptr noundef readonly %1, ...) local_unnamed_addr #4 !prof !35 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.102, i64 noundef %0) #10
  %6 = load i32, ptr @flag_debug_asm, align 4, !tbaa !44
  %7 = icmp ne i32 %6, 0
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %14 = call i32 @vfprintf(ptr noundef %13, ptr noundef nonnull %1, ptr noundef nonnull %3) #10
  br label %15

15:                                               ; preds = %10, %2
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %17 = call i32 @fputc(i32 noundef 10, ptr noundef %16) #10
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dw2_asm_output_delta_uleb128(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ...) local_unnamed_addr #0 !prof !35 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %6 = call i32 @fputs(ptr noundef nonnull @.str.103, ptr noundef %5) #10
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  call void @assemble_name(ptr noundef %7, ptr noundef %0) #9
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %9 = call i32 @fputc(i32 noundef 45, ptr noundef %8) #10
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  call void @assemble_name(ptr noundef %10, ptr noundef %1) #9
  %11 = load i32, ptr @flag_debug_asm, align 4, !tbaa !44
  %12 = icmp ne i32 %11, 0
  %13 = icmp ne ptr %2, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  %18 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %19 = call i32 @vfprintf(ptr noundef %18, ptr noundef nonnull %2, ptr noundef nonnull %4) #10
  br label %20

20:                                               ; preds = %15, %3
  %21 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %22 = call i32 @fputc(i32 noundef 10, ptr noundef %21) #10
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare void @assemble_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @dw2_force_const_mem(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca [32 x i8], align 16
  %4 = load ptr, ptr @indirect_pool, align 8, !tbaa !36
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @splay_tree_compare_strings, ptr noundef null, ptr noundef null, ptr noundef nonnull @ggc_splay_alloc, ptr noundef nonnull @ggc_splay_dont_free, ptr noundef null) #9
  store ptr %7, ptr @indirect_pool, align 8, !tbaa !36
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 45
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 824, ptr noundef nonnull @.str.16) #9
  %14 = load ptr, ptr @indirect_pool, align 8, !tbaa !36
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi ptr [ %9, %8 ], [ %14, %13 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = ptrtoint ptr %18 to i64
  %20 = tail call ptr @splay_tree_lookup(ptr noundef %16, i64 noundef %19) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.splay_tree_node_s, ptr %20, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !54
  %25 = inttoptr i64 %24 to ptr
  br label %63

26:                                               ; preds = %15
  %27 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !57
  %28 = tail call ptr %27(ptr noundef %18) #9
  %29 = icmp eq i8 %1, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #10
  %32 = add i64 %31, 8
  %33 = alloca i8, i64 %32, align 16
  %34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) @.str.104, ptr noundef %28) #10
  %35 = call ptr @maybe_get_identifier(ptr noundef nonnull %33) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 840, ptr noundef nonnull @.str.16) #9
  br label %38

38:                                               ; preds = %30, %37
  %39 = call ptr @get_identifier(ptr noundef nonnull %33) #9
  %40 = load i64, ptr %39, align 8
  %41 = or i64 %40, 134217728
  store i64 %41, ptr %39, align 8
  br label %52

42:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %43 = load i32, ptr @dw2_const_labelno, align 4, !tbaa !44
  %44 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.105, ptr noundef nonnull @.str.106, i32 noundef %43) #10
  %45 = load i32, ptr @dw2_const_labelno, align 4, !tbaa !44
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr @dw2_const_labelno, align 4, !tbaa !44
  %47 = call ptr @maybe_get_identifier(ptr noundef nonnull %3) #9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 850, ptr noundef nonnull @.str.16) #9
  br label %50

50:                                               ; preds = %42, %49
  %51 = call ptr @get_identifier(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br label %52

52:                                               ; preds = %50, %38
  %53 = phi ptr [ %39, %38 ], [ %51, %50 ]
  %54 = call ptr @maybe_get_identifier(ptr noundef %28) #9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i64, ptr %54, align 8
  %58 = or i64 %57, 67108864
  store i64 %58, ptr %54, align 8
  br label %59

59:                                               ; preds = %56, %52
  %60 = load ptr, ptr @indirect_pool, align 8, !tbaa !36
  %61 = ptrtoint ptr %53 to i64
  %62 = call ptr @splay_tree_insert(ptr noundef %60, i64 noundef %19, i64 noundef %61) #9
  br label %63

63:                                               ; preds = %59, %22
  %64 = phi ptr [ %25, %22 ], [ %53, %59 ]
  %65 = getelementptr inbounds %struct.tree_identifier, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !40
  %67 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %66) #9
  ret ptr %67
}

; Function Attrs: optsize
declare ptr @splay_tree_new_with_allocator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @splay_tree_compare_strings(i64 noundef %0, i64 noundef %1) #0 !prof !35 !PGOFuncName !69 {
  %3 = inttoptr i64 %0 to ptr
  %4 = inttoptr i64 %1 to ptr
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 801, ptr noundef nonnull @.str.16) #9
  br label %10

10:                                               ; preds = %9, %6, %2
  %11 = phi i32 [ 0, %2 ], [ %7, %6 ], [ 0, %9 ]
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @ggc_splay_alloc(i32 noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @ggc_splay_dont_free(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @maybe_get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dw2_output_indirect_constants() local_unnamed_addr #0 !prof !70 {
  %1 = load ptr, ptr @indirect_pool, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !71

3:                                                ; preds = %0
  %4 = tail call i32 @splay_tree_foreach(ptr noundef nonnull %1, ptr noundef nonnull @dw2_output_indirect_constant_1, ptr noundef null) #9
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare i32 @splay_tree_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dw2_output_indirect_constant_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !35 !PGOFuncName !72 {
  %3 = load i64, ptr %0, align 8, !tbaa !73
  %4 = inttoptr i64 %3 to ptr
  %5 = getelementptr inbounds %struct.splay_tree_node_s, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !54
  %7 = inttoptr i64 %6 to ptr
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !36
  %9 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 32, ptr noundef %7, ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = or i64 %11, 5120
  store i64 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 5
  store ptr %9, ptr %13, align 8, !tbaa !40
  %14 = load i64, ptr %7, align 8
  %15 = and i64 %14, 134217728
  %16 = icmp eq i64 %15, 0
  %17 = load i64, ptr %9, align 8
  br i1 %16, label %21, label %18

18:                                               ; preds = %2
  %19 = or i64 %17, 134217728
  store i64 %19, ptr %9, align 8
  %20 = tail call ptr @decl_assembler_name(ptr noundef nonnull %9) #9
  tail call void @make_decl_one_only(ptr noundef nonnull %9, ptr noundef %20) #9
  br label %23

21:                                               ; preds = %2
  %22 = or i64 %17, 67108864
  store i64 %22, ptr %9, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %4) #9
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !57
  %26 = tail call ptr %25(ptr noundef %4) #9
  %27 = load i64, ptr %9, align 8
  %28 = and i64 %27, 134217728
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %32 = load ptr, ptr @user_label_prefix, align 8, !tbaa !36
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.107, ptr noundef %32, ptr noundef %26) #10
  br label %34

34:                                               ; preds = %30, %23
  tail call void @assemble_variable(ptr noundef nonnull %9, i32 noundef 1, i32 noundef 1, i32 noundef 1) #9
  %35 = tail call zeroext i8 @assemble_integer(ptr noundef %24, i32 noundef 4, i32 noundef 32, i32 noundef 1) #9
  ret i32 0
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @make_decl_one_only(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @assemble_variable(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dw2_asm_output_encoded_addr_rtx(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef readonly %3, ...) local_unnamed_addr #0 !prof !35 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i32 @size_of_encoded_value(i32 noundef %0) #10, !range !74
  %7 = icmp eq i32 %0, 80
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  call void @assemble_align(i32 noundef 32) #9
  %9 = call zeroext i8 @assemble_integer(ptr noundef %1, i32 noundef %6, i32 noundef 32, i32 noundef 1) #9
  br label %63

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !36
  %12 = icmp eq ptr %11, %1
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %14 = icmp eq ptr %13, %1
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = icmp eq i32 %6, 4
  %18 = and i32 %0, 112
  %19 = icmp eq i32 %18, 48
  %20 = and i1 %17, %19
  %21 = and i32 %0, 128
  br i1 %20, label %26, label %22

22:                                               ; preds = %16
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %38, label %36

24:                                               ; preds = %10
  %25 = call zeroext i8 @assemble_integer(ptr noundef %1, i32 noundef %6, i32 noundef 8, i32 noundef 1) #9
  br label %50

26:                                               ; preds = %16
  %27 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %28 = call i32 @fputs(ptr noundef nonnull @.str.108, ptr noundef %27) #10
  %29 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %30 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  call void @assemble_name(ptr noundef %29, ptr noundef %31) #9
  %32 = icmp eq i32 %21, 0
  %33 = select i1 %32, ptr @.str.110, ptr @.str.109
  %34 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %35 = call i32 @fputs(ptr noundef nonnull %33, ptr noundef %34) #10
  br label %50

36:                                               ; preds = %22
  %37 = call ptr @dw2_force_const_mem(ptr noundef %1, i8 noundef zeroext %2) #10
  br label %38

38:                                               ; preds = %36, %22
  %39 = phi ptr [ %37, %36 ], [ %1, %22 ]
  switch i32 %18, label %49 [
    i32 0, label %40
    i32 16, label %41
  ]

40:                                               ; preds = %38
  call void @dw2_assemble_integer(i32 noundef %6, ptr noundef %39) #10
  br label %50

41:                                               ; preds = %38
  %42 = load i32, ptr %39, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 969, ptr noundef nonnull @.str.16) #9
  br label %46

46:                                               ; preds = %41, %45
  %47 = load ptr, ptr @global_rtl, align 16, !tbaa !36
  %48 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef nonnull %39, ptr noundef %47) #9
  call void @dw2_assemble_integer(i32 noundef %6, ptr noundef %48) #10
  br label %50

49:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 980, ptr noundef nonnull @.str.16) #9
  br label %50

50:                                               ; preds = %26, %49, %46, %40, %24
  %51 = load i32, ptr @flag_debug_asm, align 4, !tbaa !44
  %52 = icmp ne i32 %51, 0
  %53 = icmp ne ptr %3, null
  %54 = and i1 %53, %52
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  %58 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %59 = call i32 @vfprintf(ptr noundef %58, ptr noundef nonnull %3, ptr noundef nonnull %5) #10
  br label %60

60:                                               ; preds = %55, %50
  %61 = load ptr, ptr @asm_out_file, align 8, !tbaa !36
  %62 = call i32 @fputc(i32 noundef 10, ptr noundef %61) #10
  call void @llvm.va_end(ptr nonnull %5)
  br label %63

63:                                               ; preds = %60, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare void @assemble_align(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_m_SP9tree_node12splay_tree_s(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_n_SP9tree_node12splay_tree_s(ptr noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!38, !38, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = distinct !{!43, !42}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !38, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"short", !38, i64 0}
!48 = distinct !{!48, !42}
!49 = distinct !{!49, !42}
!50 = distinct !{!50, !42}
!51 = distinct !{!51, !42}
!52 = distinct !{!52, !42}
!53 = distinct !{!53, !42}
!54 = !{!55, !56, i64 8}
!55 = !{!"splay_tree_node_s", !56, i64 0, !56, i64 8, !37, i64 16, !37, i64 24}
!56 = !{!"long", !38, i64 0}
!57 = !{!58, !37, i64 1136}
!58 = !{!"gcc_target", !59, i64 0, !61, i64 368, !62, i64 664, !45, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !37, i64 800, !37, i64 808, !37, i64 816, !37, i64 824, !37, i64 832, !37, i64 840, !37, i64 848, !37, i64 856, !37, i64 864, !37, i64 872, !37, i64 880, !37, i64 888, !37, i64 896, !37, i64 904, !37, i64 912, !37, i64 920, !37, i64 928, !37, i64 936, !37, i64 944, !37, i64 952, !37, i64 960, !37, i64 968, !37, i64 976, !37, i64 984, !37, i64 992, !37, i64 1000, !37, i64 1008, !37, i64 1016, !37, i64 1024, !37, i64 1032, !37, i64 1040, !37, i64 1048, !37, i64 1056, !56, i64 1064, !56, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !63, i64 1176, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !56, i64 1464, !64, i64 1472, !37, i64 1664, !37, i64 1672, !37, i64 1680, !37, i64 1688, !37, i64 1696, !37, i64 1704, !37, i64 1712, !37, i64 1720, !37, i64 1728, !37, i64 1736, !37, i64 1744, !37, i64 1752, !37, i64 1760, !37, i64 1768, !37, i64 1776, !65, i64 1784, !66, i64 1792, !67, i64 1896, !68, i64 1968, !37, i64 2016, !38, i64 2024, !38, i64 2025, !38, i64 2026, !38, i64 2027, !38, i64 2028, !38, i64 2029, !38, i64 2030, !38, i64 2031, !38, i64 2032, !38, i64 2033, !38, i64 2034, !38, i64 2035}
!59 = !{!"asm_out", !37, i64 0, !37, i64 8, !37, i64 16, !60, i64 24, !60, i64 56, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !37, i64 312, !37, i64 320, !37, i64 328, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360}
!60 = !{!"asm_int_op", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!61 = !{!"sched", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288}
!62 = !{!"vectorize", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72}
!63 = !{!"addr_space", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48}
!64 = !{!"calls", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184}
!65 = !{!"c", !37, i64 0}
!66 = !{!"cxx", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96}
!67 = !{!"emutls", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !38, i64 64, !38, i64 65}
!68 = !{!"target_option_hooks", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40}
!69 = !{!"dwarf2asm.c:splay_tree_compare_strings"}
!70 = !{!"function_entry_count", i64 1}
!71 = !{!"branch_weights", i32 2, i32 1}
!72 = !{!"dwarf2asm.c:dw2_output_indirect_constant_1"}
!73 = !{!55, !56, i64 0}
!74 = !{i32 0, i32 9}
