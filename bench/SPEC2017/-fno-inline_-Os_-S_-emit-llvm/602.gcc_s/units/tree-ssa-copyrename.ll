; ModuleID = 'tree-ssa-copyrename.c'
source_filename = "tree-ssa-copyrename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }

@pass_rename_ssa_copies = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_copyrename, ptr @rename_ssa_copies, ptr null, ptr null, i32 0, i32 106, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@.str = private unnamed_addr constant [11 x i8] c"copyrename\00", align 1
@flag_tree_copyrename = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Coalesced \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"tree-ssa-copyrename.c\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Try : \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"(P%d) & \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"(P%d)\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c" : Already coalesced.\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c" : Abnormal PHI barrier.  No coalesce.\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c" : Same root, coalesced --> P%d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c" : 2 different PARM_DECLS. No coalesce.\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c" : One root a RESULT_DECL. No coalesce.\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c" : 2 different USER vars. No coalesce.\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c" : 2 default defs. No coalesce.\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c" : Incompatible types.  No coalesce.\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c" --> P%d \00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_copyrename() #0 {
  %1 = load i32, ptr @flag_tree_copyrename, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rename_ssa_copies() #1 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #10
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %0
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ null, %8 ], [ %2, %4 ]
  %11 = load ptr, ptr @cfun, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.gimple_df, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %15) #11
  %17 = tail call ptr @init_var_map(i32 noundef %16) #12
  %18 = load ptr, ptr @cfun, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = load ptr, ptr %20, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %110, label %37

27:                                               ; preds = %52, %37
  %28 = phi i8 [ %39, %37 ], [ %53, %52 ]
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  %31 = load ptr, ptr @cfun, align 8, !tbaa !10
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !24
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %56, label %37, !llvm.loop !25

37:                                               ; preds = %9, %27
  %38 = phi ptr [ %30, %27 ], [ %23, %9 ]
  %39 = phi i8 [ %28, %27 ], [ 0, %9 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %38) #11
  %40 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !27
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %27

42:                                               ; preds = %37, %52
  %43 = phi i8 [ %53, %52 ], [ %39, %37 ]
  %44 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11
  %45 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %44) #12
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %44) #11
  %49 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %44) #11
  %50 = tail call fastcc zeroext i8 @copy_rename_partition_coalesce(ptr noundef %17, ptr noundef %48, ptr noundef %49, ptr noundef %10) #11, !range !27
  %51 = or i8 %50, %43
  br label %52

52:                                               ; preds = %42, %47
  %53 = phi i8 [ %51, %47 ], [ %43, %42 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #11
  %54 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !27
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %42, label %27, !llvm.loop !28

56:                                               ; preds = %27
  %57 = load ptr, ptr %33, align 8, !tbaa !19
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !21
  %60 = icmp eq ptr %59, %30
  br i1 %60, label %110, label %71

61:                                               ; preds = %106, %71
  %62 = phi i8 [ %73, %71 ], [ %107, %106 ]
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !21
  %65 = load ptr, ptr @cfun, align 8, !tbaa !10
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !18
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !24
  %70 = icmp eq ptr %64, %69
  br i1 %70, label %110, label %71, !llvm.loop !29

71:                                               ; preds = %56, %61
  %72 = phi ptr [ %64, %61 ], [ %59, %56 ]
  %73 = phi i8 [ %62, %61 ], [ %28, %56 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %72) #12
  %74 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !27
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %61

76:                                               ; preds = %71, %106
  %77 = phi i8 [ %107, %106 ], [ %73, %71 ]
  %78 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11
  %79 = call fastcc ptr @gimple_phi_result(ptr noundef %78) #11
  %80 = getelementptr inbounds %struct.tree_ssa_name, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !30
  %82 = call zeroext i8 @is_gimple_reg(ptr noundef %81) #12
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %106, label %84

84:                                               ; preds = %76
  %85 = call fastcc i32 @gimple_phi_num_args(ptr noundef %78) #11
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %106, label %87

87:                                               ; preds = %84, %100
  %88 = phi i64 [ %102, %100 ], [ 0, %84 ]
  %89 = phi i8 [ %101, %100 ], [ %77, %84 ]
  %90 = trunc i64 %88 to i32
  %91 = call fastcc ptr @gimple_phi_arg(ptr noundef %78, i32 noundef %90) #11
  %92 = getelementptr inbounds %struct.phi_arg_d, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !31
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 141
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = call fastcc zeroext i8 @copy_rename_partition_coalesce(ptr noundef %17, ptr noundef %79, ptr noundef nonnull %93, ptr noundef %10) #11, !range !27
  %99 = or i8 %98, %89
  br label %100

100:                                              ; preds = %97, %87
  %101 = phi i8 [ %99, %97 ], [ %89, %87 ]
  %102 = add nuw nsw i64 %88, 1
  %103 = call fastcc i32 @gimple_phi_num_args(ptr noundef %78) #11
  %104 = zext i32 %103 to i64
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %87, label %106, !llvm.loop !34

106:                                              ; preds = %100, %84, %76
  %107 = phi i8 [ %77, %76 ], [ %77, %84 ], [ %101, %100 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #11
  %108 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !27
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %76, label %61, !llvm.loop !35

110:                                              ; preds = %61, %9, %56
  %111 = phi ptr [ %31, %56 ], [ %18, %9 ], [ %65, %61 ]
  %112 = phi i8 [ %28, %56 ], [ 0, %9 ], [ %62, %61 ]
  %113 = icmp eq ptr %10, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  call void @dump_var_map(ptr noundef nonnull %10, ptr noundef %17) #12
  %115 = load ptr, ptr @cfun, align 8, !tbaa !10
  br label %116

116:                                              ; preds = %114, %110
  %117 = phi ptr [ %115, %114 ], [ %111, %110 ]
  %118 = getelementptr inbounds %struct.function, ptr %117, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !12
  %120 = getelementptr inbounds %struct.gimple_df, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !14
  %122 = call fastcc i32 @VEC_tree_base_length(ptr noundef %121) #11
  %123 = icmp ugt i32 %122, 1
  br i1 %123, label %124, label %155

124:                                              ; preds = %116, %146
  %125 = phi ptr [ %147, %146 ], [ %117, %116 ]
  %126 = phi ptr [ %152, %146 ], [ %121, %116 ]
  %127 = phi i32 [ %148, %146 ], [ 1, %116 ]
  %128 = call fastcc ptr @partition_to_var(ptr noundef %17, i32 noundef %127) #11
  %129 = icmp eq ptr %128, null
  br i1 %129, label %146, label %130

130:                                              ; preds = %124
  %131 = call fastcc ptr @VEC_tree_base_index(ptr noundef %126, i32 noundef %127) #11
  br i1 %113, label %142, label %132

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.tree_ssa_name, ptr %131, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !30
  %135 = getelementptr inbounds %struct.tree_ssa_name, ptr %128, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !30
  %137 = icmp eq ptr %134, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %132
  %139 = call i64 @fwrite(ptr nonnull @.str.1, i64 10, i64 1, ptr nonnull %10)
  call void @print_generic_expr(ptr noundef nonnull %10, ptr noundef nonnull %131, i32 noundef 2) #12
  %140 = call i64 @fwrite(ptr nonnull @.str.2, i64 4, i64 1, ptr nonnull %10)
  call void @print_generic_expr(ptr noundef nonnull %10, ptr noundef nonnull %128, i32 noundef 2) #12
  %141 = call i32 @fputc(i32 10, ptr nonnull %10)
  br label %142

142:                                              ; preds = %132, %138, %130
  %143 = getelementptr inbounds %struct.tree_ssa_name, ptr %128, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !30
  call void @replace_ssa_name_symbol(ptr noundef %131, ptr noundef %144) #12
  %145 = load ptr, ptr @cfun, align 8, !tbaa !10
  br label %146

146:                                              ; preds = %124, %142
  %147 = phi ptr [ %125, %124 ], [ %145, %142 ]
  %148 = add nuw i32 %127, 1
  %149 = getelementptr inbounds %struct.function, ptr %147, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !12
  %151 = getelementptr inbounds %struct.gimple_df, ptr %150, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !14
  %153 = call fastcc i32 @VEC_tree_base_length(ptr noundef %152) #11
  %154 = icmp ult i32 %148, %153
  br i1 %154, label %124, label %155, !llvm.loop !36

155:                                              ; preds = %146, %116
  call void @delete_var_map(ptr noundef %17) #12
  %156 = icmp eq i8 %112, 0
  %157 = select i1 %156, i32 0, i32 32768
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #10
  ret i32 %157
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @init_var_map(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !37
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #11
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #11
  store ptr %4, ptr %0, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @copy_rename_partition_coalesce(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 120, ptr noundef nonnull @.str.5) #12
  br label %9

9:                                                ; preds = %4, %8
  %10 = load i64, ptr %2, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 121, ptr noundef nonnull @.str.5) #12
  br label %14

14:                                               ; preds = %9, %13
  %15 = load ptr, ptr %0, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !30
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.partition_def, ptr %15, i64 0, i32 1, i64 %18
  %20 = load i32, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !30
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.partition_def, ptr %15, i64 0, i32 1, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !47
  %26 = icmp eq ptr %3, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %14
  %28 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 6, i64 1, ptr nonnull %3)
  tail call void @print_generic_expr(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 2) #12
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef %20) #11
  tail call void @print_generic_expr(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 2) #12
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, i32 noundef %25) #11
  br label %31

31:                                               ; preds = %27, %14
  %32 = icmp eq i32 %20, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 138, ptr noundef nonnull @.str.5) #12
  br label %34

34:                                               ; preds = %31, %33
  %35 = icmp eq i32 %25, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 139, ptr noundef nonnull @.str.5) #12
  br label %37

37:                                               ; preds = %34, %36
  %38 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %0, i32 noundef %20) #11
  %39 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %0, i32 noundef %25) #11
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !30
  %44 = icmp eq i32 %20, %25
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  br i1 %26, label %168, label %46

46:                                               ; preds = %45
  %47 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 22, i64 1, ptr nonnull %3)
  br label %168

48:                                               ; preds = %37
  %49 = load i64, ptr %38, align 8
  %50 = and i64 %49, 4194304
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i64, ptr %39, align 8
  %54 = and i64 %53, 4194304
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48, %52
  br i1 %26, label %168, label %57

57:                                               ; preds = %56
  %58 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 39, i64 1, ptr nonnull %3)
  br label %168

59:                                               ; preds = %52
  %60 = icmp eq ptr %41, %43
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = load ptr, ptr %0, align 8, !tbaa !45
  %63 = tail call i32 @partition_union(ptr noundef %62, i32 noundef %20, i32 noundef %25) #12
  br i1 %26, label %168, label %64

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.12, i32 noundef %63) #11
  br label %168

66:                                               ; preds = %59
  %67 = load i64, ptr %41, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 34
  %70 = load i64, ptr %43, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 34
  %73 = select i1 %69, i1 %72, i1 false
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  br i1 %26, label %168, label %75

75:                                               ; preds = %74
  %76 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 40, i64 1, ptr nonnull %3)
  br label %168

77:                                               ; preds = %66
  %78 = trunc i64 %67 to i32
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 36
  %81 = icmp ne i64 %71, 36
  %82 = xor i1 %80, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  br i1 %26, label %168, label %84

84:                                               ; preds = %83
  %85 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 40, i64 1, ptr nonnull %3)
  br label %168

86:                                               ; preds = %77
  %87 = icmp eq i32 %79, 32
  br i1 %87, label %88, label %93

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.tree_decl_common, ptr %41, i64 0, i32 2
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, 1024
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %88, %86
  %94 = phi i1 [ false, %86 ], [ %92, %88 ]
  %95 = zext i1 %94 to i8
  %96 = icmp eq i64 %71, 32
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.tree_decl_common, ptr %43, i64 0, i32 2
  %99 = load i64, ptr %98, align 8
  %100 = lshr i64 %99, 10
  %101 = trunc i64 %100 to i8
  %102 = and i8 %101, 1
  br label %103

103:                                              ; preds = %97, %93
  %104 = phi i8 [ 0, %93 ], [ %102, %97 ]
  %105 = icmp ne i8 %104, 0
  %106 = select i1 %94, i1 true, i1 %105
  br i1 %106, label %122, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.tree_decl_common, ptr %43, i64 0, i32 7
  %109 = load ptr, ptr %108, align 8, !tbaa !30
  %110 = icmp eq ptr %109, null
  %111 = icmp eq ptr %109, %43
  %112 = select i1 %110, i1 true, i1 %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.tree_decl_common, ptr %41, i64 0, i32 7
  %115 = load ptr, ptr %114, align 8, !tbaa !30
  %116 = icmp eq ptr %115, null
  %117 = icmp eq ptr %115, %41
  %118 = select i1 %116, i1 true, i1 %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  br i1 %26, label %168, label %120

120:                                              ; preds = %119
  %121 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 39, i64 1, ptr nonnull %3)
  br label %168

122:                                              ; preds = %113, %107, %103
  %123 = phi i8 [ %95, %103 ], [ 0, %107 ], [ 1, %113 ]
  %124 = phi i8 [ %104, %103 ], [ 1, %107 ], [ 0, %113 ]
  %125 = load ptr, ptr @cfun, align 8, !tbaa !10
  %126 = tail call ptr @gimple_default_def(ptr noundef %125, ptr noundef nonnull %41) #12
  %127 = icmp eq ptr %126, null
  %128 = load ptr, ptr @cfun, align 8, !tbaa !10
  %129 = tail call ptr @gimple_default_def(ptr noundef %128, ptr noundef nonnull %43) #12
  br i1 %127, label %135, label %130

130:                                              ; preds = %122
  %131 = icmp eq ptr %129, null
  br i1 %131, label %142, label %132

132:                                              ; preds = %130
  br i1 %26, label %168, label %133

133:                                              ; preds = %132
  %134 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 32, i64 1, ptr nonnull %3)
  br label %168

135:                                              ; preds = %122
  %136 = icmp ne ptr %129, null
  %137 = icmp eq i8 %124, 0
  %138 = select i1 %136, i1 true, i1 %137
  %139 = icmp eq i8 %123, 0
  %140 = xor i1 %136, true
  %141 = select i1 %140, i1 %139, i1 false
  br label %142

142:                                              ; preds = %135, %130
  %143 = phi i1 [ true, %130 ], [ %141, %135 ]
  %144 = phi i1 [ false, %130 ], [ %138, %135 ]
  %145 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !30
  %147 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !30
  %149 = tail call zeroext i8 @types_compatible_p(ptr noundef %146, ptr noundef %148) #12
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  br i1 %26, label %168, label %152

152:                                              ; preds = %151
  %153 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 37, i64 1, ptr nonnull %3)
  br label %168

154:                                              ; preds = %142
  %155 = load ptr, ptr %0, align 8, !tbaa !45
  %156 = tail call i32 @partition_union(ptr noundef %155, i32 noundef %20, i32 noundef %25) #12
  %157 = select i1 %144, i1 true, i1 %143
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = select i1 %144, ptr %43, ptr %41
  %160 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %0, i32 noundef %156) #11
  tail call void @replace_ssa_name_symbol(ptr noundef %160, ptr noundef nonnull %159) #12
  br label %161

161:                                              ; preds = %154, %158
  br i1 %26, label %168, label %162

162:                                              ; preds = %161
  %163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.18, i32 noundef %156) #11
  %164 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %0, i32 noundef %156) #11
  %165 = getelementptr inbounds %struct.tree_ssa_name, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !30
  tail call void @print_generic_expr(ptr noundef nonnull %3, ptr noundef %166, i32 noundef 2) #12
  %167 = tail call i32 @fputc(i32 10, ptr nonnull %3)
  br label %168

168:                                              ; preds = %161, %162, %151, %152, %132, %133, %119, %120, %83, %84, %74, %75, %61, %64, %56, %57, %45, %46
  %169 = phi i8 [ 0, %46 ], [ 0, %45 ], [ 0, %57 ], [ 0, %56 ], [ 0, %64 ], [ 0, %61 ], [ 0, %75 ], [ 0, %74 ], [ 0, %84 ], [ 0, %83 ], [ 0, %120 ], [ 0, %119 ], [ 0, %133 ], [ 0, %132 ], [ 0, %152 ], [ 0, %151 ], [ 1, %162 ], [ 1, %161 ]
  ret i8 %169
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  store ptr %4, ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !30
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !30
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.5) #12
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare void @dump_var_map(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @partition_to_var(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !6
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ %1, %2 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !45
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.partition_def, ptr %12, i64 0, i32 1, i64 %13
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = load ptr, ptr @cfun, align 8, !tbaa !10
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %20, i32 noundef %15) #11
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @replace_ssa_name_symbol(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @delete_var_map(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !51
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !52
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !54
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #11, !range !27
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #11
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !56
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #11
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.5) #12
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !56
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #11
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @partition_union(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !11, i64 24}
!13 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!14 = !{!15, !11, i64 16}
!15 = !{!"gimple_df", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !16, i64 32, !16, i64 48, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !7, i64 96, !17, i64 104}
!16 = !{!"pt_solution", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !11, i64 8}
!17 = !{!"ssa_operands", !11, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !11, i64 24, !11, i64 32}
!18 = !{!13, !11, i64 8}
!19 = !{!20, !11, i64 0}
!20 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!21 = !{!22, !11, i64 56}
!22 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !11, i64 48, !11, i64 56, !8, i64 64, !23, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!23 = !{!"long", !8, i64 0}
!24 = !{!20, !11, i64 8}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{i8 0, i8 2}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !26}
!30 = !{!8, !8, i64 0}
!31 = !{!32, !11, i64 32}
!32 = !{!"phi_arg_d", !33, i64 0, !11, i64 32, !7, i64 40}
!33 = !{!"ssa_use_operand_d", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 24}
!34 = distinct !{!34, !26}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26}
!37 = !{!38, !7, i64 0}
!38 = !{!"VEC_tree_base", !7, i64 0, !7, i64 4, !8, i64 8}
!39 = !{!40, !11, i64 0}
!40 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!41 = !{!40, !11, i64 8}
!42 = !{!40, !11, i64 16}
!43 = !{!44, !11, i64 0}
!44 = !{!"gimple_seq_node_d", !11, i64 0, !11, i64 8, !11, i64 16}
!45 = !{!46, !11, i64 0}
!46 = !{!"_var_map", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40, !11, i64 48}
!47 = !{!48, !7, i64 0}
!48 = !{!"partition_elem", !7, i64 0, !11, i64 8, !7, i64 16}
!49 = !{!44, !11, i64 16}
!50 = !{!46, !11, i64 16}
!51 = !{!22, !7, i64 96}
!52 = !{!53, !11, i64 0}
!53 = !{!"gimple_bb_info", !11, i64 0, !11, i64 8}
!54 = !{!55, !11, i64 0}
!55 = !{!"gimple_seq_d", !11, i64 0, !11, i64 8, !11, i64 16}
!56 = !{i32 0, i32 256}
!57 = !{!23, !23, i64 0}
