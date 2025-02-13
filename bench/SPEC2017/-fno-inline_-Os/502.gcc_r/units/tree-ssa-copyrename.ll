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

@.str = private unnamed_addr constant [11 x i8] c"copyrename\00", align 1
@pass_rename_ssa_copies = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_copyrename, ptr @rename_ssa_copies, ptr null, ptr null, i32 0, i32 106, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
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
define internal zeroext i8 @gate_copyrename() #0 !prof !82 !PGOFuncName !83 {
  %1 = load i32, ptr @flag_tree_copyrename, align 4, !tbaa !84
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rename_ssa_copies() #1 !prof !82 !PGOFuncName !88 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #10
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !91

4:                                                ; preds = %0
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !84
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %0
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ null, %8 ], [ %2, %4 ]
  %11 = load ptr, ptr @cfun, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = getelementptr inbounds %struct.gimple_df, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !94
  %16 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %15) #11
  %17 = tail call ptr @init_var_map(i32 noundef %16) #12
  %18 = load ptr, ptr @cfun, align 8, !tbaa !89
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  %21 = load ptr, ptr %20, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !101
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %110, label %37, !prof !105

27:                                               ; preds = %52, %37
  %28 = phi i8 [ %39, %37 ], [ %53, %52 ]
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = load ptr, ptr @cfun, align 8, !tbaa !89
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !98
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !104
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %56, label %37, !prof !106, !llvm.loop !107

37:                                               ; preds = %9, %27
  %38 = phi ptr [ %30, %27 ], [ %23, %9 ]
  %39 = phi i8 [ %28, %27 ], [ 0, %9 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %38) #11
  %40 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !109
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %27, !prof !110

42:                                               ; preds = %37, %52
  %43 = phi i8 [ %53, %52 ], [ %39, %37 ]
  %44 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11
  %45 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %44) #12
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %52, label %47, !prof !111

47:                                               ; preds = %42
  %48 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %44) #11
  %49 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %44) #11
  %50 = tail call fastcc zeroext i8 @copy_rename_partition_coalesce(ptr noundef %17, ptr noundef %48, ptr noundef %49, ptr noundef %10) #11, !range !109
  %51 = or i8 %50, %43
  br label %52

52:                                               ; preds = %42, %47
  %53 = phi i8 [ %51, %47 ], [ %43, %42 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #11
  %54 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !109
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %42, label %27, !prof !112, !llvm.loop !113

56:                                               ; preds = %27
  %57 = load ptr, ptr %33, align 8, !tbaa !99
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !101
  %60 = icmp eq ptr %59, %30
  br i1 %60, label %110, label %71, !prof !114

61:                                               ; preds = %106, %71
  %62 = phi i8 [ %73, %71 ], [ %107, %106 ]
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !101
  %65 = load ptr, ptr @cfun, align 8, !tbaa !89
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !98
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !104
  %70 = icmp eq ptr %64, %69
  br i1 %70, label %110, label %71, !prof !106, !llvm.loop !115

71:                                               ; preds = %56, %61
  %72 = phi ptr [ %64, %61 ], [ %59, %56 ]
  %73 = phi i8 [ %62, %61 ], [ %28, %56 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %72) #12
  %74 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !109
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %61, !prof !116

76:                                               ; preds = %71, %106
  %77 = phi i8 [ %107, %106 ], [ %73, %71 ]
  %78 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11
  %79 = call fastcc ptr @gimple_phi_result(ptr noundef %78) #11
  %80 = getelementptr inbounds %struct.tree_ssa_name, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !117
  %82 = call zeroext i8 @is_gimple_reg(ptr noundef %81) #12
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %106, label %84, !prof !118

84:                                               ; preds = %76
  %85 = call fastcc i32 @gimple_phi_num_args(ptr noundef %78) #11
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %106, label %87, !prof !119

87:                                               ; preds = %84, %100
  %88 = phi i64 [ %102, %100 ], [ 0, %84 ]
  %89 = phi i8 [ %101, %100 ], [ %77, %84 ]
  %90 = trunc i64 %88 to i32
  %91 = call fastcc ptr @gimple_phi_arg(ptr noundef %78, i32 noundef %90) #11
  %92 = getelementptr inbounds %struct.phi_arg_d, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !120
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 141
  br i1 %96, label %97, label %100, !prof !123

97:                                               ; preds = %87
  %98 = call fastcc zeroext i8 @copy_rename_partition_coalesce(ptr noundef %17, ptr noundef %79, ptr noundef nonnull %93, ptr noundef %10) #11, !range !109
  %99 = or i8 %98, %89
  br label %100

100:                                              ; preds = %97, %87
  %101 = phi i8 [ %99, %97 ], [ %89, %87 ]
  %102 = add nuw nsw i64 %88, 1
  %103 = call fastcc i32 @gimple_phi_num_args(ptr noundef %78) #11
  %104 = zext i32 %103 to i64
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %87, label %106, !prof !124, !llvm.loop !125

106:                                              ; preds = %100, %84, %76
  %107 = phi i8 [ %77, %76 ], [ %77, %84 ], [ %101, %100 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #11
  %108 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !109
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %76, label %61, !prof !126, !llvm.loop !127

110:                                              ; preds = %61, %9, %56
  %111 = phi ptr [ %31, %56 ], [ %18, %9 ], [ %65, %61 ]
  %112 = phi i8 [ %28, %56 ], [ 0, %9 ], [ %62, %61 ]
  %113 = icmp eq ptr %10, null
  br i1 %113, label %116, label %114, !prof !91

114:                                              ; preds = %110
  call void @dump_var_map(ptr noundef nonnull %10, ptr noundef %17) #12
  %115 = load ptr, ptr @cfun, align 8, !tbaa !89
  br label %116

116:                                              ; preds = %114, %110
  %117 = phi ptr [ %115, %114 ], [ %111, %110 ]
  %118 = getelementptr inbounds %struct.function, ptr %117, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !92
  %120 = getelementptr inbounds %struct.gimple_df, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !94
  %122 = call fastcc i32 @VEC_tree_base_length(ptr noundef %121) #11
  %123 = icmp ugt i32 %122, 1
  br i1 %123, label %124, label %155, !prof !128

124:                                              ; preds = %116, %146
  %125 = phi ptr [ %147, %146 ], [ %117, %116 ]
  %126 = phi ptr [ %152, %146 ], [ %121, %116 ]
  %127 = phi i32 [ %148, %146 ], [ 1, %116 ]
  %128 = call fastcc ptr @partition_to_var(ptr noundef %17, i32 noundef %127) #11
  %129 = icmp eq ptr %128, null
  br i1 %129, label %146, label %130, !prof !129

130:                                              ; preds = %124
  %131 = call fastcc ptr @VEC_tree_base_index(ptr noundef %126, i32 noundef %127) #11
  br i1 %113, label %142, label %132, !prof !130

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.tree_ssa_name, ptr %131, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !117
  %135 = getelementptr inbounds %struct.tree_ssa_name, ptr %128, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !117
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
  %144 = load ptr, ptr %143, align 8, !tbaa !117
  call void @replace_ssa_name_symbol(ptr noundef %131, ptr noundef %144) #12
  %145 = load ptr, ptr @cfun, align 8, !tbaa !89
  br label %146

146:                                              ; preds = %124, %142
  %147 = phi ptr [ %125, %124 ], [ %145, %142 ]
  %148 = add nuw i32 %127, 1
  %149 = getelementptr inbounds %struct.function, ptr %147, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !92
  %151 = getelementptr inbounds %struct.gimple_df, ptr %150, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !94
  %153 = call fastcc i32 @VEC_tree_base_length(ptr noundef %152) #11
  %154 = icmp ult i32 %148, %153
  br i1 %154, label %124, label %155, !prof !131, !llvm.loop !132

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
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !133 !PGOFuncName !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !135

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !136
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !138 !PGOFuncName !139 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #11
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #11
  store ptr %4, ptr %0, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !142
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !144 !PGOFuncName !145 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !146 !PGOFuncName !147 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !150 !PGOFuncName !151 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !150 !PGOFuncName !152 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @copy_rename_partition_coalesce(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 !prof !153 !PGOFuncName !154 {
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !155

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 120, ptr noundef nonnull @.str.5) #12
  br label %9

9:                                                ; preds = %4, %8
  %10 = load i64, ptr %2, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %14, label %13, !prof !155

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 121, ptr noundef nonnull @.str.5) #12
  br label %14

14:                                               ; preds = %9, %13
  %15 = load ptr, ptr %0, align 8, !tbaa !156
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !117
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.partition_def, ptr %15, i64 0, i32 1, i64 %18
  %20 = load i32, ptr %19, align 8, !tbaa !158
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !117
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.partition_def, ptr %15, i64 0, i32 1, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !158
  %26 = icmp eq ptr %3, null
  br i1 %26, label %31, label %27, !prof !155

27:                                               ; preds = %14
  %28 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 6, i64 1, ptr nonnull %3)
  tail call void @print_generic_expr(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 2) #12
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef %20) #11
  tail call void @print_generic_expr(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 2) #12
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, i32 noundef %25) #11
  br label %31

31:                                               ; preds = %27, %14
  %32 = icmp eq i32 %20, -1
  br i1 %32, label %33, label %34, !prof !160

33:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 138, ptr noundef nonnull @.str.5) #12
  br label %34

34:                                               ; preds = %31, %33
  %35 = icmp eq i32 %25, -1
  br i1 %35, label %36, label %37, !prof !160

36:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 139, ptr noundef nonnull @.str.5) #12
  br label %37

37:                                               ; preds = %34, %36
  %38 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %0, i32 noundef %20) #11
  %39 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %0, i32 noundef %25) #11
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !117
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !117
  %44 = icmp eq i32 %20, %25
  br i1 %44, label %45, label %48, !prof !161

45:                                               ; preds = %37
  br i1 %26, label %170, label %46, !prof !162

46:                                               ; preds = %45
  %47 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 22, i64 1, ptr nonnull %3)
  br label %170

48:                                               ; preds = %37
  %49 = load i64, ptr %38, align 8
  %50 = and i64 %49, 4194304
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56, !prof !163

52:                                               ; preds = %48
  %53 = load i64, ptr %39, align 8
  %54 = and i64 %53, 4194304
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %59, label %56, !prof !163

56:                                               ; preds = %48, %52
  br i1 %26, label %170, label %57

57:                                               ; preds = %56
  %58 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 39, i64 1, ptr nonnull %3)
  br label %170

59:                                               ; preds = %52
  %60 = icmp eq ptr %41, %43
  br i1 %60, label %61, label %66, !prof !164

61:                                               ; preds = %59
  %62 = load ptr, ptr %0, align 8, !tbaa !156
  %63 = tail call i32 @partition_union(ptr noundef %62, i32 noundef %20, i32 noundef %25) #12
  br i1 %26, label %170, label %64, !prof !165

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.12, i32 noundef %63) #11
  br label %170

66:                                               ; preds = %59
  %67 = load i64, ptr %41, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 34
  %70 = load i64, ptr %43, align 8
  %71 = and i64 %70, 65535
  br i1 %69, label %72, label %77, !prof !166

72:                                               ; preds = %66
  %73 = icmp eq i64 %71, 34
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  br i1 %26, label %170, label %75

75:                                               ; preds = %74
  %76 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 40, i64 1, ptr nonnull %3)
  br label %170

77:                                               ; preds = %66, %72
  %78 = trunc i64 %67 to i32
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 36
  %81 = icmp ne i64 %71, 36
  %82 = xor i1 %80, %81
  br i1 %82, label %86, label %83, !prof !167

83:                                               ; preds = %77
  br i1 %26, label %170, label %84

84:                                               ; preds = %83
  %85 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 40, i64 1, ptr nonnull %3)
  br label %170

86:                                               ; preds = %77
  %87 = icmp eq i32 %79, 32
  br i1 %87, label %88, label %94, !prof !167

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.tree_decl_common, ptr %41, i64 0, i32 2
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, 1024
  %92 = icmp eq i64 %91, 0
  %93 = icmp eq i64 %71, 32
  br i1 %93, label %102, label %108, !prof !167

94:                                               ; preds = %86
  %95 = icmp eq i64 %71, 32
  br i1 %95, label %96, label %112, !prof !167

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.tree_decl_common, ptr %43, i64 0, i32 2
  %98 = load i64, ptr %97, align 8
  %99 = lshr i64 %98, 10
  %100 = trunc i64 %99 to i8
  %101 = and i8 %100, 1
  br label %109

102:                                              ; preds = %88
  %103 = getelementptr inbounds %struct.tree_decl_common, ptr %43, i64 0, i32 2
  %104 = load i64, ptr %103, align 8
  %105 = lshr i64 %104, 10
  %106 = trunc i64 %105 to i8
  %107 = and i8 %106, 1
  br i1 %92, label %109, label %127, !prof !114

108:                                              ; preds = %88
  br i1 %92, label %112, label %127, !prof !114

109:                                              ; preds = %96, %102
  %110 = phi i8 [ %107, %102 ], [ %101, %96 ]
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %94, %108, %109
  %113 = getelementptr inbounds %struct.tree_decl_common, ptr %43, i64 0, i32 7
  %114 = load ptr, ptr %113, align 8, !tbaa !117
  %115 = icmp eq ptr %114, null
  %116 = icmp eq ptr %114, %43
  %117 = select i1 %115, i1 true, i1 %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.tree_decl_common, ptr %41, i64 0, i32 7
  %120 = load ptr, ptr %119, align 8, !tbaa !117
  %121 = icmp eq ptr %120, null
  %122 = icmp eq ptr %120, %41
  %123 = select i1 %121, i1 true, i1 %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  br i1 %26, label %170, label %125

125:                                              ; preds = %124
  %126 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 39, i64 1, ptr nonnull %3)
  br label %170

127:                                              ; preds = %108, %118, %112, %109, %102
  %128 = phi i8 [ 1, %102 ], [ 0, %109 ], [ 0, %112 ], [ 1, %118 ], [ 1, %108 ]
  %129 = phi i8 [ %107, %102 ], [ 1, %109 ], [ 1, %112 ], [ 0, %118 ], [ 0, %108 ]
  %130 = load ptr, ptr @cfun, align 8, !tbaa !89
  %131 = tail call ptr @gimple_default_def(ptr noundef %130, ptr noundef nonnull %41) #12
  %132 = icmp eq ptr %131, null
  %133 = load ptr, ptr @cfun, align 8, !tbaa !89
  %134 = tail call ptr @gimple_default_def(ptr noundef %133, ptr noundef nonnull %43) #12
  %135 = icmp eq ptr %134, null
  br i1 %132, label %140, label %136, !prof !167

136:                                              ; preds = %127
  br i1 %135, label %142, label %137

137:                                              ; preds = %136
  br i1 %26, label %170, label %138

138:                                              ; preds = %137
  %139 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 32, i64 1, ptr nonnull %3)
  br label %170

140:                                              ; preds = %127
  br i1 %135, label %142, label %141, !prof !167

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %136, %140, %141
  %143 = phi i8 [ 1, %141 ], [ %128, %140 ], [ 0, %136 ]
  %144 = phi i8 [ 0, %141 ], [ %129, %140 ], [ 1, %136 ]
  %145 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !117
  %147 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !117
  %149 = tail call zeroext i8 @types_compatible_p(ptr noundef %146, ptr noundef %148) #12
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %154, !prof !166

151:                                              ; preds = %142
  br i1 %26, label %170, label %152

152:                                              ; preds = %151
  %153 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 37, i64 1, ptr nonnull %3)
  br label %170

154:                                              ; preds = %142
  %155 = load ptr, ptr %0, align 8, !tbaa !156
  %156 = tail call i32 @partition_union(ptr noundef %155, i32 noundef %20, i32 noundef %25) #12
  %157 = icmp eq i8 %144, 0
  br i1 %157, label %160, label %158, !prof !166

158:                                              ; preds = %154
  %159 = icmp eq i8 %143, 0
  br i1 %159, label %160, label %163, !prof !166

160:                                              ; preds = %158, %154
  %161 = phi ptr [ %43, %154 ], [ %41, %158 ]
  %162 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %0, i32 noundef %156) #11
  tail call void @replace_ssa_name_symbol(ptr noundef %162, ptr noundef nonnull %161) #12
  br label %163

163:                                              ; preds = %160, %158
  br i1 %26, label %170, label %164, !prof !167

164:                                              ; preds = %163
  %165 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.18, i32 noundef %156) #11
  %166 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %0, i32 noundef %156) #11
  %167 = getelementptr inbounds %struct.tree_ssa_name, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !117
  tail call void @print_generic_expr(ptr noundef nonnull %3, ptr noundef %168, i32 noundef 2) #12
  %169 = tail call i32 @fputc(i32 10, ptr nonnull %3)
  br label %170

170:                                              ; preds = %163, %164, %151, %152, %137, %138, %124, %125, %83, %84, %74, %75, %61, %64, %56, %57, %45, %46
  %171 = phi i8 [ 0, %46 ], [ 0, %45 ], [ 0, %57 ], [ 0, %56 ], [ 0, %64 ], [ 0, %61 ], [ 0, %75 ], [ 0, %74 ], [ 0, %84 ], [ 0, %83 ], [ 0, %125 ], [ 0, %124 ], [ 0, %138 ], [ 0, %137 ], [ 0, %152 ], [ 0, %151 ], [ 1, %164 ], [ 1, %163 ]
  ret i8 %171
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !146 !PGOFuncName !168 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  store ptr %4, ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !170 !PGOFuncName !171 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !172 !PGOFuncName !173 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !117
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !174 !PGOFuncName !175 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !117
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !176

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
define internal fastcc ptr @partition_to_var(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !177 !PGOFuncName !178 {
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !179
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !180

6:                                                ; preds = %2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !84
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ %1, %2 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !156
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.partition_def, ptr %12, i64 0, i32 1, i64 %13
  %15 = load i32, ptr %14, align 8, !tbaa !158
  %16 = load ptr, ptr @cfun, align 8, !tbaa !89
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !94
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %20, i32 noundef %15) #11
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !181 !PGOFuncName !182 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !89
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
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !138 !PGOFuncName !183 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !184
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !185

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !186

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !187
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !138 !PGOFuncName !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !186

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !190
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !192 !PGOFuncName !193 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #11, !range !109
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !194

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #11
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !192 !PGOFuncName !195 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !196
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !192 !PGOFuncName !197 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #11
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !198
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !194

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.5) #12
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !199 !PGOFuncName !200 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !192 !PGOFuncName !201 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !196
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #11
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 !prof !192 !PGOFuncName !202 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !84
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!81}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!35 = !{ptr @rename_ssa_copies, ptr @VEC_tree_base_length, i64 1517993}
!36 = !{ptr @rename_ssa_copies, ptr @init_var_map, i64 154}
!37 = !{ptr @rename_ssa_copies, ptr @gsi_start_bb, i64 628876}
!38 = !{ptr @rename_ssa_copies, ptr @gsi_end_p, i64 2855109}
!39 = !{ptr @rename_ssa_copies, ptr @gsi_stmt, i64 1597357}
!40 = !{ptr @rename_ssa_copies, ptr @gimple_assign_ssa_name_copy_p, i64 1428208}
!41 = !{ptr @rename_ssa_copies, ptr @gimple_assign_lhs, i64 95}
!42 = !{ptr @rename_ssa_copies, ptr @gimple_assign_rhs1, i64 95}
!43 = !{ptr @rename_ssa_copies, ptr @copy_rename_partition_coalesce, i64 49716}
!44 = !{ptr @rename_ssa_copies, ptr @gsi_next, i64 1597357}
!45 = !{ptr @rename_ssa_copies, ptr @gsi_start_phis, i64 628876}
!46 = !{ptr @rename_ssa_copies, ptr @gimple_phi_result, i64 169149}
!47 = !{ptr @rename_ssa_copies, ptr @is_gimple_reg, i64 169149}
!48 = !{ptr @rename_ssa_copies, ptr @gimple_phi_num_args, i64 238148}
!49 = !{ptr @rename_ssa_copies, ptr @gimple_phi_arg, i64 235515}
!50 = !{ptr @rename_ssa_copies, ptr @dump_var_map, i64 1}
!51 = !{ptr @rename_ssa_copies, ptr @partition_to_var, i64 1517685}
!52 = !{ptr @rename_ssa_copies, ptr @VEC_tree_base_index, i64 1286318}
!53 = !{ptr @rename_ssa_copies, ptr @fwrite, i64 2}
!54 = !{ptr @rename_ssa_copies, ptr @print_generic_expr, i64 2}
!55 = !{ptr @rename_ssa_copies, ptr @fputc, i64 1}
!56 = !{ptr @rename_ssa_copies, ptr @replace_ssa_name_symbol, i64 1286318}
!57 = !{ptr @rename_ssa_copies, ptr @delete_var_map, i64 154}
!58 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 632959}
!59 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 632959}
!60 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 95}
!61 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 95}
!62 = !{ptr @copy_rename_partition_coalesce, ptr @fancy_abort, i64 4}
!63 = !{ptr @copy_rename_partition_coalesce, ptr @fwrite, i64 5}
!64 = !{ptr @copy_rename_partition_coalesce, ptr @print_generic_expr, i64 3}
!65 = !{ptr @copy_rename_partition_coalesce, ptr @fprintf, i64 4}
!66 = !{ptr @copy_rename_partition_coalesce, ptr @partition_to_var, i64 100079}
!67 = !{ptr @copy_rename_partition_coalesce, ptr @partition_union, i64 49515}
!68 = !{ptr @copy_rename_partition_coalesce, ptr @gimple_default_def, i64 2034}
!69 = !{ptr @copy_rename_partition_coalesce, ptr @types_compatible_p, i64 1017}
!70 = !{ptr @copy_rename_partition_coalesce, ptr @replace_ssa_name_symbol, i64 2}
!71 = !{ptr @copy_rename_partition_coalesce, ptr @fputc, i64 1}
!72 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!73 = !{ptr @partition_to_var, ptr @VEC_tree_base_index, i64 1627618}
!74 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 190}
!75 = !{ptr @gimple_op, ptr @gimple_ops, i64 189}
!76 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 190}
!77 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 190}
!78 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!79 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 190}
!80 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 190}
!81 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!82 = !{!"function_entry_count", i64 154}
!83 = !{!"tree-ssa-copyrename.c:gate_copyrename"}
!84 = !{!85, !85, i64 0}
!85 = !{!"int", !86, i64 0}
!86 = !{!"omnipotent char", !87, i64 0}
!87 = !{!"Simple C/C++ TBAA"}
!88 = !{!"tree-ssa-copyrename.c:rename_ssa_copies"}
!89 = !{!90, !90, i64 0}
!90 = !{!"any pointer", !86, i64 0}
!91 = !{!"branch_weights", i32 155, i32 1}
!92 = !{!93, !90, i64 24}
!93 = !{!"function", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !90, i64 72, !90, i64 80, !90, i64 88, !90, i64 96, !85, i64 104, !85, i64 108, !85, i64 112, !85, i64 116, !85, i64 120, !85, i64 124, !90, i64 128, !85, i64 136, !85, i64 137, !85, i64 138, !85, i64 138, !85, i64 138, !85, i64 138, !85, i64 138, !85, i64 138, !85, i64 138, !85, i64 139, !85, i64 139, !85, i64 139, !85, i64 139, !85, i64 139, !85, i64 139, !85, i64 139}
!94 = !{!95, !90, i64 16}
!95 = !{!"gimple_df", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !96, i64 32, !96, i64 48, !90, i64 64, !90, i64 72, !90, i64 80, !90, i64 88, !85, i64 96, !97, i64 104}
!96 = !{!"pt_solution", !85, i64 0, !85, i64 0, !85, i64 0, !85, i64 0, !85, i64 0, !85, i64 0, !90, i64 8}
!97 = !{!"ssa_operands", !90, i64 0, !85, i64 8, !85, i64 12, !86, i64 16, !90, i64 24, !90, i64 32}
!98 = !{!93, !90, i64 8}
!99 = !{!100, !90, i64 0}
!100 = !{!"control_flow_graph", !90, i64 0, !90, i64 8, !90, i64 16, !85, i64 24, !85, i64 28, !85, i64 32, !90, i64 40, !85, i64 48, !86, i64 52, !86, i64 60, !85, i64 68, !85, i64 72}
!101 = !{!102, !90, i64 56}
!102 = !{!"basic_block_def", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !86, i64 32, !90, i64 48, !90, i64 56, !86, i64 64, !103, i64 72, !85, i64 80, !85, i64 84, !85, i64 88, !85, i64 92, !85, i64 96}
!103 = !{!"long", !86, i64 0}
!104 = !{!100, !90, i64 8}
!105 = !{!"branch_weights", i32 1, i32 154}
!106 = !{!"branch_weights", i32 154, i32 632806}
!107 = distinct !{!107, !108}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{i8 0, i8 2}
!110 = !{!"branch_weights", i32 632959, i32 1}
!111 = !{!"branch_weights", i32 1437388, i32 96}
!112 = !{!"branch_weights", i32 804524, i32 632959}
!113 = distinct !{!113, !108}
!114 = !{!"branch_weights", i32 0, i32 -2147483648}
!115 = distinct !{!115, !108}
!116 = !{!"branch_weights", i32 170248, i32 462712}
!117 = !{!86, !86, i64 0}
!118 = !{!"branch_weights", i32 167599, i32 2650}
!119 = !{!"branch_weights", i32 1, i32 2649}
!120 = !{!121, !90, i64 32}
!121 = !{!"phi_arg_d", !122, i64 0, !90, i64 32, !85, i64 40}
!122 = !{!"ssa_use_operand_d", !90, i64 0, !90, i64 8, !86, i64 16, !90, i64 24}
!123 = !{!"branch_weights", i32 49944, i32 187103}
!124 = !{!"branch_weights", i32 234397, i32 2649}
!125 = distinct !{!125, !108}
!126 = !{!"branch_weights", i32 0, i32 170248}
!127 = distinct !{!127, !108}
!128 = !{!"branch_weights", i32 154, i32 1}
!129 = !{!"branch_weights", i32 232870, i32 1294674}
!130 = !{!"branch_weights", i32 1294674, i32 1}
!131 = !{!"branch_weights", i32 1527389, i32 154}
!132 = distinct !{!132, !108}
!133 = !{!"function_entry_count", i64 1527850}
!134 = !{!"tree-ssa-copyrename.c:VEC_tree_base_length"}
!135 = !{!"branch_weights", i32 1, i32 1527851}
!136 = !{!137, !85, i64 0}
!137 = !{!"VEC_tree_base", !85, i64 0, !85, i64 4, !86, i64 8}
!138 = !{!"function_entry_count", i64 632959}
!139 = !{!"tree-ssa-copyrename.c:gsi_start_bb"}
!140 = !{!141, !90, i64 0}
!141 = !{!"", !90, i64 0, !90, i64 8, !90, i64 16}
!142 = !{!141, !90, i64 8}
!143 = !{!141, !90, i64 16}
!144 = !{!"function_entry_count", i64 2873647}
!145 = !{!"tree-ssa-copyrename.c:gsi_end_p"}
!146 = !{!"function_entry_count", i64 1607729}
!147 = !{!"tree-ssa-copyrename.c:gsi_stmt"}
!148 = !{!149, !90, i64 0}
!149 = !{!"gimple_seq_node_d", !90, i64 0, !90, i64 8, !90, i64 16}
!150 = !{!"function_entry_count", i64 95}
!151 = !{!"tree-ssa-copyrename.c:gimple_assign_lhs"}
!152 = !{!"tree-ssa-copyrename.c:gimple_assign_rhs1"}
!153 = !{!"function_entry_count", i64 50038}
!154 = !{!"tree-ssa-copyrename.c:copy_rename_partition_coalesce"}
!155 = !{!"branch_weights", i32 50039, i32 1}
!156 = !{!157, !90, i64 0}
!157 = !{!"_var_map", !90, i64 0, !90, i64 8, !90, i64 16, !85, i64 24, !85, i64 28, !85, i64 32, !90, i64 40, !90, i64 48}
!158 = !{!159, !85, i64 0}
!159 = !{!"partition_elem", !85, i64 0, !90, i64 8, !85, i64 16}
!160 = !{!"branch_weights", i32 1, i32 50039}
!161 = !{!"branch_weights", i32 518, i32 49522}
!162 = !{!"branch_weights", i32 518, i32 1}
!163 = !{!"branch_weights", i32 49522, i32 1}
!164 = !{!"branch_weights", i32 48504, i32 1019}
!165 = !{!"branch_weights", i32 48504, i32 1}
!166 = !{!"branch_weights", i32 1, i32 1019}
!167 = !{!"branch_weights", i32 1019, i32 1}
!168 = !{!"tree-ssa-copyrename.c:gsi_next"}
!169 = !{!149, !90, i64 16}
!170 = !{!"function_entry_count", i64 170247}
!171 = !{!"tree-ssa-copyrename.c:gimple_phi_result"}
!172 = !{!"function_entry_count", i64 239694}
!173 = !{!"tree-ssa-copyrename.c:gimple_phi_num_args"}
!174 = !{!"function_entry_count", i64 237045}
!175 = !{!"tree-ssa-copyrename.c:gimple_phi_arg"}
!176 = !{!"branch_weights", i32 1, i32 237046}
!177 = !{!"function_entry_count", i64 1627618}
!178 = !{!"tree-ssa-copyrename.c:partition_to_var"}
!179 = !{!157, !90, i64 16}
!180 = !{!"branch_weights", i32 1627619, i32 1}
!181 = !{!"function_entry_count", i64 2922291}
!182 = !{!"tree-ssa-copyrename.c:VEC_tree_base_index"}
!183 = !{!"tree-ssa-copyrename.c:bb_seq"}
!184 = !{!102, !85, i64 96}
!185 = !{!"branch_weights", i32 632960, i32 1}
!186 = !{!"branch_weights", i32 1, i32 632960}
!187 = !{!188, !90, i64 0}
!188 = !{!"gimple_bb_info", !90, i64 0, !90, i64 8}
!189 = !{!"tree-ssa-copyrename.c:gimple_seq_first"}
!190 = !{!191, !90, i64 0}
!191 = !{!"gimple_seq_d", !90, i64 0, !90, i64 8, !90, i64 16}
!192 = !{!"function_entry_count", i64 190}
!193 = !{!"tree-ssa-copyrename.c:gimple_op"}
!194 = !{!"branch_weights", i32 1, i32 191}
!195 = !{!"tree-ssa-copyrename.c:gimple_has_ops"}
!196 = !{i32 0, i32 256}
!197 = !{!"tree-ssa-copyrename.c:gimple_ops"}
!198 = !{!103, !103, i64 0}
!199 = !{!"function_entry_count", i64 570}
!200 = !{!"tree-ssa-copyrename.c:gimple_code"}
!201 = !{!"tree-ssa-copyrename.c:gimple_statement_structure"}
!202 = !{!"tree-ssa-copyrename.c:gss_for_code"}
