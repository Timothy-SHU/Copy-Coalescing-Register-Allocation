; ModuleID = 'tree-nrv.c'
source_filename = "tree-nrv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.nrv_data = type { ptr, ptr, i32 }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }

@.str = private unnamed_addr constant [4 x i8] c"nrv\00", align 1
@pass_nrv = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_pass_return_slot, ptr @tree_nrv, ptr null, ptr null, i32 0, i32 105, i32 40, i32 0, i32 0, i32 0, i32 3 } }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"retslot\00", align 1
@pass_return_slot = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr null, ptr @execute_return_slot_opt, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"tree-nrv.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"NRV Replaced: \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"  with: \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_pass_return_slot() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_nrv() #1 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.nrv_data, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.tree_decl_non_common, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %10 = tail call i32 @aggregate_value_p(ptr noundef %7, ptr noundef %5) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %205, label %12

12:                                               ; preds = %0
  %13 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %9) #14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %205

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %205

19:                                               ; preds = %15
  %20 = load i64, ptr %7, align 8
  %21 = and i64 %20, 262144
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %205

23:                                               ; preds = %19
  %24 = load ptr, ptr @cfun, align 8, !tbaa !9
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %205, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 3
  br label %45

35:                                               ; preds = %105, %45
  %36 = phi ptr [ %47, %45 ], [ %106, %105 ]
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  %39 = load ptr, ptr @cfun, align 8, !tbaa !9
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !12
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !19
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %109, label %45, !llvm.loop !20

45:                                               ; preds = %33, %35
  %46 = phi ptr [ %29, %33 ], [ %38, %35 ]
  %47 = phi ptr [ null, %33 ], [ %36, %35 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %46) #15
  %48 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !22
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %35

50:                                               ; preds = %45, %105
  %51 = phi ptr [ %106, %105 ], [ %47, %45 ]
  %52 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15
  %53 = tail call fastcc i32 @gimple_code(ptr noundef %52) #15, !range !23
  %54 = icmp eq i32 %53, 9
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = tail call fastcc ptr @gimple_return_retval(ptr noundef %52) #15
  %57 = icmp eq ptr %56, null
  %58 = icmp eq ptr %56, %7
  %59 = or i1 %57, %58
  br i1 %59, label %105, label %60

60:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 153, ptr noundef nonnull @.str.3) #14
  br label %105

61:                                               ; preds = %50
  %62 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %52) #15, !range !22
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %93, label %64

64:                                               ; preds = %61
  %65 = tail call ptr @gimple_get_lhs(ptr noundef %52) #14
  %66 = icmp eq ptr %65, %7
  br i1 %66, label %67, label %93

67:                                               ; preds = %64
  %68 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %52) #14
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %205, label %70

70:                                               ; preds = %67
  %71 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %52) #15
  %72 = icmp eq ptr %51, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = icmp eq ptr %51, %71
  br i1 %74, label %75, label %205

75:                                               ; preds = %70, %73
  %76 = phi ptr [ %51, %73 ], [ %71, %70 ]
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 589823
  %79 = icmp eq i64 %78, 32
  br i1 %79, label %80, label %205

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.tree_decl_minimal, ptr %76, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !11
  %83 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %84 = icmp eq ptr %82, %83
  %85 = and i64 %77, 67371008
  %86 = icmp eq i64 %85, 0
  %87 = and i1 %86, %84
  br i1 %87, label %88, label %205

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.tree_decl_common, ptr %76, i64 0, i32 3
  %90 = load i32, ptr %89, align 8, !tbaa !11
  %91 = load i32, ptr %34, align 8, !tbaa !11
  %92 = icmp ugt i32 %90, %91
  br i1 %92, label %205, label %100

93:                                               ; preds = %64, %61
  %94 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %52) #15, !range !22
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %93
  %97 = tail call ptr @gimple_get_lhs(ptr noundef %52) #14
  %98 = tail call ptr @get_base_address(ptr noundef %97) #14
  %99 = icmp eq ptr %98, %7
  br i1 %99, label %205, label %105

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !11
  %103 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %9, ptr noundef %102) #14
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %205, label %105

105:                                              ; preds = %55, %93, %60, %96, %100
  %106 = phi ptr [ %76, %100 ], [ %51, %96 ], [ %51, %60 ], [ %51, %93 ], [ %51, %55 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #15
  %107 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !22
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %50, label %35, !llvm.loop !24

109:                                              ; preds = %35
  %110 = icmp eq ptr %36, null
  br i1 %110, label %205, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %113 = icmp eq ptr %112, null
  br i1 %113, label %128, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %116 = and i32 %115, 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %114
  %119 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr nonnull %112)
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %121 = load i32, ptr @dump_flags, align 4, !tbaa !5
  tail call void @print_generic_expr(ptr noundef %120, ptr noundef nonnull %36, i32 noundef %121) #14
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %123 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 8, i64 1, ptr %122)
  %124 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %125 = load i32, ptr @dump_flags, align 4, !tbaa !5
  tail call void @print_generic_expr(ptr noundef %124, ptr noundef nonnull %7, i32 noundef %125) #14
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %127 = tail call i32 @fputc(i32 10, ptr %126)
  br label %128

128:                                              ; preds = %118, %114, %111
  %129 = getelementptr inbounds %struct.tree_decl_common, ptr %36, i64 0, i32 2
  %130 = load i64, ptr %129, align 8
  %131 = and i64 %130, 1024
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.tree_decl_common, ptr %36, i64 0, i32 7
  %135 = load ptr, ptr %134, align 8, !tbaa !11
  %136 = icmp eq ptr %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.tree_decl_minimal, ptr %135, i64 0, i32 4
  %139 = load ptr, ptr %138, align 8, !tbaa !11
  %140 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %137, %133
  %143 = getelementptr inbounds %struct.tree_decl_minimal, ptr %36, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !11
  store ptr %144, ptr %16, align 8, !tbaa !11
  %145 = getelementptr inbounds %struct.tree_decl_minimal, ptr %36, i64 0, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !11
  %147 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 1
  store i32 %146, ptr %147, align 8, !tbaa !11
  %148 = load ptr, ptr %134, align 8, !tbaa !11
  %149 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 7
  store ptr %148, ptr %149, align 8, !tbaa !11
  br label %150

150:                                              ; preds = %142, %137, %128
  %151 = load i64, ptr %36, align 8
  %152 = load i64, ptr %7, align 8
  %153 = and i64 %151, 262144
  %154 = or i64 %153, %152
  store i64 %154, ptr %7, align 8
  store ptr %36, ptr %2, align 8, !tbaa !25
  %155 = getelementptr inbounds %struct.nrv_data, ptr %2, i64 0, i32 1
  store ptr %7, ptr %155, align 8, !tbaa !27
  %156 = load ptr, ptr @cfun, align 8, !tbaa !9
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !12
  %159 = load ptr, ptr %158, align 8, !tbaa !14
  %160 = getelementptr inbounds %struct.basic_block_def, ptr %159, i64 0, i32 6
  %161 = load ptr, ptr %160, align 8, !tbaa !16
  %162 = getelementptr inbounds %struct.control_flow_graph, ptr %158, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !19
  %164 = icmp eq ptr %161, %163
  br i1 %164, label %201, label %165

165:                                              ; preds = %150
  %166 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  %167 = getelementptr inbounds %struct.nrv_data, ptr %2, i64 0, i32 2
  br label %177

168:                                              ; preds = %198, %177
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 6
  %170 = load ptr, ptr %169, align 8, !tbaa !16
  %171 = load ptr, ptr @cfun, align 8, !tbaa !9
  %172 = getelementptr inbounds %struct.function, ptr %171, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !12
  %174 = getelementptr inbounds %struct.control_flow_graph, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !19
  %176 = icmp eq ptr %170, %175
  br i1 %176, label %201, label %177, !llvm.loop !28

177:                                              ; preds = %165, %168
  %178 = phi ptr [ %161, %165 ], [ %170, %168 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %178) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  %179 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !22
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %168

181:                                              ; preds = %177, %198
  %182 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15
  %183 = call zeroext i8 @gimple_assign_copy_p(ptr noundef %182) #14
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %181
  %186 = call fastcc ptr @gimple_assign_lhs(ptr noundef %182) #15
  %187 = icmp eq ptr %186, %7
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %182) #15
  %190 = icmp eq ptr %189, %36
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  call void @unlink_stmt_vdef(ptr noundef %182) #14
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #14
  br label %198

192:                                              ; preds = %188, %185, %181
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr %2, ptr %166, align 8, !tbaa !30
  store i32 0, ptr %167, align 8, !tbaa !33
  %193 = call ptr @walk_gimple_op(ptr noundef %182, ptr noundef nonnull @finalize_nrv_r, ptr noundef nonnull %4) #14
  %194 = load i32, ptr %167, align 8, !tbaa !33
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %192
  call fastcc void @update_stmt(ptr noundef %182) #15
  br label %197

197:                                              ; preds = %196, %192
  call fastcc void @gsi_next(ptr noundef nonnull %1) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #13
  br label %198

198:                                              ; preds = %197, %191
  %199 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !22
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %181, label %168, !llvm.loop !34

201:                                              ; preds = %168, %150
  %202 = call fastcc ptr @var_ann(ptr noundef nonnull %36) #15
  %203 = load i8, ptr %202, align 8
  %204 = and i8 %203, -3
  store i8 %204, ptr %202, align 8
  br label %205

205:                                              ; preds = %75, %80, %88, %73, %67, %96, %100, %23, %109, %19, %15, %12, %0, %201
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #13
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_return_slot_opt() #1 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %47, label %11

11:                                               ; preds = %0, %38
  %12 = phi ptr [ %40, %38 ], [ %7, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #13
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %12) #15
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11, %35
  %16 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15
  %17 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %16) #15, !range !22
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %16) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr noundef %16) #15, !range !22
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %16) #15
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %16) #15
  %30 = tail call i32 @aggregate_value_p(ptr noundef %28, ptr noundef %29) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %16) #15
  %34 = tail call fastcc zeroext i8 @dest_safe_for_nrv_p(ptr noundef %33) #15, !range !22
  tail call fastcc void @gimple_call_set_return_slot_opt(ptr noundef %16, i8 noundef zeroext %34) #15
  br label %35

35:                                               ; preds = %32, %25, %22, %19, %15
  call fastcc void @gsi_next(ptr noundef nonnull %1) #15
  %36 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !22
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %15, label %38, !llvm.loop !35

38:                                               ; preds = %35, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #13
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !16
  %41 = load ptr, ptr @cfun, align 8, !tbaa !9
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !12
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !19
  %46 = icmp eq ptr %40, %45
  br i1 %46, label %47, label %11, !llvm.loop !36

47:                                               ; preds = %38, %0
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !37
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !37
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #15, !range !22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #15, !range !22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #15
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %4, %7, %1
  %12 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !37
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  store ptr %4, ptr %0, align 8, !tbaa !37
  ret void
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: optsize
declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noalias noundef ptr @finalize_nrv_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = load ptr, ptr %0, align 8, !tbaa !9
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %20

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !tbaa !25
  %15 = icmp eq ptr %6, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nrv_data, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !27
  store ptr %18, ptr %0, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.nrv_data, ptr %5, i64 0, i32 2
  store i32 1, ptr %19, align 8, !tbaa !33
  br label %20

20:                                               ; preds = %13, %16, %12
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #14
  tail call void @update_stmt_operands(ptr noundef %0) #14
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %12

8:                                                ; preds = %1
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 36
  %11 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br i1 %10, label %12, label %15

12:                                               ; preds = %8, %4, %6
  %13 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !44
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !22
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !23
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #15
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !48
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.3) #14
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !23
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #15
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !5
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !23
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !23
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 18
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #15
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @dest_safe_for_nrv_p(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #15, !range !22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %7) #15, !range !22
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !49

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %29 [
    i16 32, label %19
    i16 34, label %19
    i16 36, label %19
    i16 141, label %14
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %29 [
    i16 32, label %19
    i16 34, label %19
    i16 36, label %19
  ]

19:                                               ; preds = %14, %14, %14, %10, %10, %10
  %20 = and i64 %12, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi ptr [ %24, %22 ], [ %11, %19 ]
  %27 = tail call fastcc zeroext i8 @is_call_used(ptr noundef %26) #15, !range !22
  %28 = xor i8 %27, 1
  br label %29

29:                                               ; preds = %25, %10, %14
  %30 = phi i8 [ 0, %14 ], [ 0, %10 ], [ %28, %25 ]
  ret i8 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_return_slot_opt(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #11 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -262145
  %6 = select i1 %3, i32 0, i32 262144
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_used(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) #15, !range !22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #15, !range !22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 5
  %12 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %11, ptr noundef %0) #14
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %7, %1
  %16 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %14, %7 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %0) #15, !range !22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #15, !range !22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 4
  %12 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %11, ptr noundef %0) #14
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %7, %1
  %16 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %14, %7 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 33
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = and i64 %2, 134217728
  %7 = icmp ne i64 %6, 0
  %8 = and i64 %2, 201326592
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %10, %5
  %16 = and i64 %2, 1048576
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %7, %24
  %26 = xor i1 %24, true
  %27 = zext i1 %26 to i8
  br i1 %25, label %38, label %29

28:                                               ; preds = %15
  br i1 %7, label %38, label %29

29:                                               ; preds = %18, %10, %28
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 33554432
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = lshr i64 %2, 18
  %36 = trunc i64 %35 to i8
  %37 = and i8 %36, 1
  br label %38

38:                                               ; preds = %18, %28, %29, %34, %1
  %39 = phi i8 [ %27, %18 ], [ 0, %1 ], [ 1, %29 ], [ 1, %28 ], [ %37, %34 ]
  ret i8 %39
}

; Function Attrs: optsize
declare zeroext i8 @pt_solution_includes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = lshr i64 %7, 25
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 1, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !10, i64 8}
!13 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !10, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!14 = !{!15, !10, i64 0}
!15 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!16 = !{!17, !10, i64 56}
!17 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !10, i64 48, !10, i64 56, !7, i64 64, !18, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!18 = !{!"long", !7, i64 0}
!19 = !{!15, !10, i64 8}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{i8 0, i8 2}
!23 = !{i32 0, i32 256}
!24 = distinct !{!24, !21}
!25 = !{!26, !10, i64 0}
!26 = !{!"nrv_data", !10, i64 0, !10, i64 8, !6, i64 16}
!27 = !{!26, !10, i64 8}
!28 = distinct !{!28, !21}
!29 = !{i64 0, i64 8, !9, i64 8, i64 8, !9, i64 16, i64 8, !9}
!30 = !{!31, !10, i64 24}
!31 = !{!"walk_stmt_info", !32, i64 0, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !10, i64 48}
!32 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!33 = !{!26, !6, i64 16}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = !{!32, !10, i64 0}
!38 = !{!32, !10, i64 8}
!39 = !{!32, !10, i64 16}
!40 = !{!41, !10, i64 0}
!41 = !{!"gimple_seq_node_d", !10, i64 0, !10, i64 8, !10, i64 16}
!42 = !{!41, !10, i64 16}
!43 = !{!17, !6, i64 96}
!44 = !{!45, !10, i64 0}
!45 = !{!"gimple_bb_info", !10, i64 0, !10, i64 8}
!46 = !{!47, !10, i64 0}
!47 = !{!"gimple_seq_d", !10, i64 0, !10, i64 8, !10, i64 16}
!48 = !{!18, !18, i64 0}
!49 = distinct !{!49, !21}
!50 = !{!13, !10, i64 24}
