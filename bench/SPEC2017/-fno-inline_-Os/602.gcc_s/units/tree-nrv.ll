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

@pass_nrv = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_pass_return_slot, ptr @tree_nrv, ptr null, ptr null, i32 0, i32 105, i32 40, i32 0, i32 0, i32 0, i32 3 } }, align 8
@.str = private unnamed_addr constant [4 x i8] c"nrv\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"tree-nrv.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"NRV Replaced: \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"  with: \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@pass_return_slot = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.7, ptr null, ptr @execute_return_slot_opt, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"retslot\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_pass_return_slot() #0 !prof !91 !PGOFuncName !92 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !93
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_nrv() #1 !prof !91 !PGOFuncName !97 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.nrv_data, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.tree_decl_non_common, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %10 = tail call i32 @aggregate_value_p(ptr noundef %7, ptr noundef %5) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %204, label %12, !prof !101

12:                                               ; preds = %0
  %13 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %9) #14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %204, !prof !102

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %204, !prof !102

19:                                               ; preds = %15
  %20 = load i64, ptr %7, align 8
  %21 = and i64 %20, 262144
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %204, !prof !103

23:                                               ; preds = %19
  %24 = load ptr, ptr @cfun, align 8, !tbaa !98
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !104
  %27 = load ptr, ptr %26, align 8, !tbaa !106
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !108
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !111
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %204, label %43, !prof !112

33:                                               ; preds = %104, %43
  %34 = phi ptr [ %45, %43 ], [ %105, %104 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !108
  %37 = load ptr, ptr @cfun, align 8, !tbaa !98
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !104
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !111
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %108, label %43, !prof !113, !llvm.loop !114

43:                                               ; preds = %23, %33
  %44 = phi ptr [ %36, %33 ], [ %29, %23 ]
  %45 = phi ptr [ %34, %33 ], [ null, %23 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %44) #15
  %46 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !116
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %33, !prof !117

48:                                               ; preds = %43, %104
  %49 = phi ptr [ %105, %104 ], [ %45, %43 ]
  %50 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15
  %51 = tail call fastcc i32 @gimple_code(ptr noundef %50) #15, !range !118
  %52 = icmp eq i32 %51, 9
  br i1 %52, label %53, label %59, !prof !119

53:                                               ; preds = %48
  %54 = tail call fastcc ptr @gimple_return_retval(ptr noundef %50) #15
  %55 = icmp eq ptr %54, null
  %56 = icmp eq ptr %54, %7
  %57 = or i1 %55, %56
  br i1 %57, label %104, label %58

58:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 153, ptr noundef nonnull @.str.2) #14
  br label %104

59:                                               ; preds = %48
  %60 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %50) #15, !range !116
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %92, label %62, !prof !120

62:                                               ; preds = %59
  %63 = tail call ptr @gimple_get_lhs(ptr noundef %50) #14
  %64 = icmp eq ptr %63, %7
  br i1 %64, label %65, label %92, !prof !121

65:                                               ; preds = %62
  %66 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %50) #14
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %204, label %68, !prof !122

68:                                               ; preds = %65
  %69 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %50) #15
  %70 = icmp eq ptr %49, null
  br i1 %70, label %73, label %71, !prof !123

71:                                               ; preds = %68
  %72 = icmp eq ptr %49, %69
  br i1 %72, label %73, label %204

73:                                               ; preds = %68, %71
  %74 = phi ptr [ %49, %71 ], [ %69, %68 ]
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 589823
  %77 = icmp eq i64 %76, 32
  br i1 %77, label %78, label %204, !prof !124

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.tree_decl_minimal, ptr %74, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !100
  %81 = load ptr, ptr @current_function_decl, align 8, !tbaa !98
  %82 = icmp eq ptr %80, %81
  %83 = and i64 %75, 67371008
  %84 = icmp eq i64 %83, 0
  %85 = and i1 %84, %82
  br i1 %85, label %86, label %204, !prof !125

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 3
  %88 = getelementptr inbounds %struct.tree_decl_common, ptr %74, i64 0, i32 3
  %89 = load i32, ptr %88, align 8, !tbaa !100
  %90 = load i32, ptr %87, align 8, !tbaa !100
  %91 = icmp ugt i32 %89, %90
  br i1 %91, label %204, label %99, !prof !126

92:                                               ; preds = %62, %59
  %93 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %50) #15, !range !116
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %104, label %95, !prof !127

95:                                               ; preds = %92
  %96 = tail call ptr @gimple_get_lhs(ptr noundef %50) #14
  %97 = tail call ptr @get_base_address(ptr noundef %96) #14
  %98 = icmp eq ptr %97, %7
  br i1 %98, label %204, label %104

99:                                               ; preds = %86
  %100 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !100
  %102 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %9, ptr noundef %101) #14
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %204, label %104

104:                                              ; preds = %53, %92, %58, %95, %99
  %105 = phi ptr [ %74, %99 ], [ %49, %95 ], [ %49, %58 ], [ %49, %92 ], [ %49, %53 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #15
  %106 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !116
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %48, label %33, !prof !128, !llvm.loop !129

108:                                              ; preds = %33
  %109 = icmp eq ptr %34, null
  br i1 %109, label %204, label %110

110:                                              ; preds = %108
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !98
  %112 = icmp eq ptr %111, null
  br i1 %112, label %127, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr @dump_flags, align 4, !tbaa !93
  %115 = and i32 %114, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %113
  %118 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 14, i64 1, ptr nonnull %111)
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !98
  %120 = load i32, ptr @dump_flags, align 4, !tbaa !93
  tail call void @print_generic_expr(ptr noundef %119, ptr noundef nonnull %34, i32 noundef %120) #14
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !98
  %122 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 8, i64 1, ptr %121)
  %123 = load ptr, ptr @dump_file, align 8, !tbaa !98
  %124 = load i32, ptr @dump_flags, align 4, !tbaa !93
  tail call void @print_generic_expr(ptr noundef %123, ptr noundef nonnull %7, i32 noundef %124) #14
  %125 = load ptr, ptr @dump_file, align 8, !tbaa !98
  %126 = tail call i32 @fputc(i32 10, ptr %125)
  br label %127

127:                                              ; preds = %117, %113, %110
  %128 = getelementptr inbounds %struct.tree_decl_common, ptr %34, i64 0, i32 2
  %129 = load i64, ptr %128, align 8
  %130 = and i64 %129, 1024
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.tree_decl_common, ptr %34, i64 0, i32 7
  %134 = load ptr, ptr %133, align 8, !tbaa !100
  %135 = icmp eq ptr %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.tree_decl_minimal, ptr %134, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !100
  %139 = load ptr, ptr @current_function_decl, align 8, !tbaa !98
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %136, %132
  %142 = getelementptr inbounds %struct.tree_decl_minimal, ptr %34, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !100
  store ptr %143, ptr %16, align 8, !tbaa !100
  %144 = getelementptr inbounds %struct.tree_decl_minimal, ptr %34, i64 0, i32 1
  %145 = load i32, ptr %144, align 8, !tbaa !100
  %146 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 1
  store i32 %145, ptr %146, align 8, !tbaa !100
  %147 = load ptr, ptr %133, align 8, !tbaa !100
  %148 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 7
  store ptr %147, ptr %148, align 8, !tbaa !100
  br label %149

149:                                              ; preds = %141, %136, %127
  %150 = load i64, ptr %34, align 8
  %151 = load i64, ptr %7, align 8
  %152 = and i64 %150, 262144
  %153 = or i64 %152, %151
  store i64 %153, ptr %7, align 8
  store ptr %34, ptr %2, align 8, !tbaa !130
  %154 = getelementptr inbounds %struct.nrv_data, ptr %2, i64 0, i32 1
  store ptr %7, ptr %154, align 8, !tbaa !132
  %155 = load ptr, ptr @cfun, align 8, !tbaa !98
  %156 = getelementptr inbounds %struct.function, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !104
  %158 = load ptr, ptr %157, align 8, !tbaa !106
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %158, i64 0, i32 6
  %160 = load ptr, ptr %159, align 8, !tbaa !108
  %161 = getelementptr inbounds %struct.control_flow_graph, ptr %157, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !111
  %163 = icmp eq ptr %160, %162
  br i1 %163, label %200, label %164

164:                                              ; preds = %149
  %165 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  %166 = getelementptr inbounds %struct.nrv_data, ptr %2, i64 0, i32 2
  br label %176

167:                                              ; preds = %197, %176
  %168 = getelementptr inbounds %struct.basic_block_def, ptr %177, i64 0, i32 6
  %169 = load ptr, ptr %168, align 8, !tbaa !108
  %170 = load ptr, ptr @cfun, align 8, !tbaa !98
  %171 = getelementptr inbounds %struct.function, ptr %170, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !104
  %173 = getelementptr inbounds %struct.control_flow_graph, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !111
  %175 = icmp eq ptr %169, %174
  br i1 %175, label %200, label %176, !llvm.loop !133

176:                                              ; preds = %164, %167
  %177 = phi ptr [ %160, %164 ], [ %169, %167 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %177) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !134
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  %178 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !116
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %167

180:                                              ; preds = %176, %197
  %181 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15
  %182 = call zeroext i8 @gimple_assign_copy_p(ptr noundef %181) #14
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %180
  %185 = call fastcc ptr @gimple_assign_lhs(ptr noundef %181) #15
  %186 = icmp eq ptr %185, %7
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %181) #15
  %189 = icmp eq ptr %188, %34
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  call void @unlink_stmt_vdef(ptr noundef %181) #14
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #14
  br label %197

191:                                              ; preds = %187, %184, %180
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr %2, ptr %165, align 8, !tbaa !135
  store i32 0, ptr %166, align 8, !tbaa !138
  %192 = call ptr @walk_gimple_op(ptr noundef %181, ptr noundef nonnull @finalize_nrv_r, ptr noundef nonnull %4) #14
  %193 = load i32, ptr %166, align 8, !tbaa !138
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  call fastcc void @update_stmt(ptr noundef %181) #15
  br label %196

196:                                              ; preds = %195, %191
  call fastcc void @gsi_next(ptr noundef nonnull %1) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #13
  br label %197

197:                                              ; preds = %196, %190
  %198 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !116
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %180, label %167, !llvm.loop !139

200:                                              ; preds = %167, %149
  %201 = call fastcc ptr @var_ann(ptr noundef nonnull %34) #15
  %202 = load i8, ptr %201, align 8
  %203 = and i8 %202, -3
  store i8 %203, ptr %201, align 8
  br label %204

204:                                              ; preds = %73, %78, %86, %71, %65, %95, %99, %23, %108, %19, %15, %12, %0, %200
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #13
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !140 !PGOFuncName !141 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !142
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !143
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !144
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !145 !PGOFuncName !146 {
  %2 = load ptr, ptr %0, align 8, !tbaa !142
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !147 !PGOFuncName !148 {
  %2 = load ptr, ptr %0, align 8, !tbaa !142
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !151 !PGOFuncName !152 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #1 !prof !153 !PGOFuncName !154 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #1 !prof !155 !PGOFuncName !156 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #15, !range !116
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11, !prof !157

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #15, !range !116
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !158

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
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !159 !PGOFuncName !160 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 !prof !161 !PGOFuncName !162 {
  %2 = load ptr, ptr %0, align 8, !tbaa !142
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  store ptr %4, ptr %0, align 8, !tbaa !142
  ret void
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !153 !PGOFuncName !164 {
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
define internal noalias noundef ptr @finalize_nrv_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 !prof !153 !PGOFuncName !165 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = load ptr, ptr %0, align 8, !tbaa !98
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !93
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !93
  br label %20

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !tbaa !130
  %15 = icmp eq ptr %6, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nrv_data, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !132
  store ptr %18, ptr %0, align 8, !tbaa !98
  %19 = getelementptr inbounds %struct.nrv_data, ptr %5, i64 0, i32 2
  store i32 1, ptr %19, align 8, !tbaa !138
  br label %20

20:                                               ; preds = %13, %16, %12
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 !prof !153 !PGOFuncName !166 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !116
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
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !153 !PGOFuncName !167 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !140 !PGOFuncName !168 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !169
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !170

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !171

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !172
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !140 !PGOFuncName !174 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !171

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !175
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !177 !PGOFuncName !178 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !116
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !179

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !177 !PGOFuncName !180 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !118
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !177 !PGOFuncName !181 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #15
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !182
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !179

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !177 !PGOFuncName !183 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !118
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #15
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 !prof !177 !PGOFuncName !184 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !93
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !155 !PGOFuncName !185 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !118
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !186 !PGOFuncName !187 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !118
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #1 !prof !188 !PGOFuncName !189 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_return_slot_opt() #1 !prof !91 !PGOFuncName !190 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !98
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %47, label %11, !prof !191

11:                                               ; preds = %0, %38
  %12 = phi ptr [ %40, %38 ], [ %7, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #13
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %12) #15
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !116
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %38, !prof !192

15:                                               ; preds = %11, %35
  %16 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15
  %17 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %16) #15, !range !116
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %35, label %19, !prof !193

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %16) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22, !prof !194

22:                                               ; preds = %19
  %23 = tail call fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr noundef %16) #15, !range !116
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %35, !prof !195

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %16) #15
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !100
  %29 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %16) #15
  %30 = tail call i32 @aggregate_value_p(ptr noundef %28, ptr noundef %29) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32, !prof !196

32:                                               ; preds = %25
  %33 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %16) #15
  %34 = tail call fastcc zeroext i8 @dest_safe_for_nrv_p(ptr noundef %33) #15, !range !116
  tail call fastcc void @gimple_call_set_return_slot_opt(ptr noundef %16, i8 noundef zeroext %34) #15
  br label %35

35:                                               ; preds = %32, %25, %22, %19, %15
  call fastcc void @gsi_next(ptr noundef nonnull %1) #15
  %36 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !116
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %15, label %38, !prof !197, !llvm.loop !198

38:                                               ; preds = %35, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #13
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !108
  %41 = load ptr, ptr @cfun, align 8, !tbaa !98
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !104
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !111
  %46 = icmp eq ptr %40, %45
  br i1 %46, label %47, label %11, !prof !199, !llvm.loop !200

47:                                               ; preds = %38, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !201 !PGOFuncName !202 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 18
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !203 !PGOFuncName !204 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #15
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !205

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @dest_safe_for_nrv_p(ptr noundef %0) unnamed_addr #1 !prof !206 !PGOFuncName !207 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #15, !range !116
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4, !prof !208

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %7) #15, !range !116
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !prof !209, !llvm.loop !210

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %29 [
    i16 32, label %19
    i16 34, label %19
    i16 36, label %19
    i16 141, label %14
  ], !prof !211

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !100
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
  br i1 %21, label %22, label %25, !prof !212

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !100
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi ptr [ %24, %22 ], [ %11, %19 ]
  %27 = tail call fastcc zeroext i8 @is_call_used(ptr noundef %26) #15, !range !116
  %28 = xor i8 %27, 1
  br label %29

29:                                               ; preds = %25, %10, %14
  %30 = phi i8 [ 0, %14 ], [ 0, %10 ], [ %28, %25 ]
  ret i8 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_return_slot_opt(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #11 !prof !206 !PGOFuncName !213 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -262145
  %6 = select i1 %3, i32 0, i32 262144, !prof !214
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !203 !PGOFuncName !215 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !216 !PGOFuncName !217 {
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
  ], !prof !218

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_used(ptr noundef %0) unnamed_addr #1 !prof !219 !PGOFuncName !220 {
  %2 = tail call fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) #15, !range !116
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15, !prof !221

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #15, !range !116
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7, !prof !222

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !223
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
define internal fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) unnamed_addr #1 !prof !219 !PGOFuncName !224 {
  %2 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %0) #15, !range !116
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15, !prof !225

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #15, !range !116
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7, !prof !221

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !223
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
define internal fastcc zeroext i8 @may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !226 !PGOFuncName !227 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 33
  br i1 %4, label %38, label %5, !prof !228

5:                                                ; preds = %1
  %6 = and i64 %2, 134217728
  %7 = icmp ne i64 %6, 0
  %8 = and i64 %2, 201326592
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15, !prof !229

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %29, label %15, !prof !230

15:                                               ; preds = %10, %5
  %16 = and i64 %2, 1048576
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !100
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %7, %24
  %26 = xor i1 %24, true
  %27 = zext i1 %26 to i8
  br i1 %25, label %38, label %29, !prof !231

28:                                               ; preds = %15
  br i1 %7, label %38, label %29, !prof !232

29:                                               ; preds = %18, %10, %28
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 33554432
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38, !prof !230

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
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !219 !PGOFuncName !233 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !225

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!90}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!36 = !{ptr @tree_nrv, ptr @aggregate_value_p, i64 6652}
!37 = !{ptr @tree_nrv, ptr @is_gimple_reg_type, i64 13}
!38 = !{ptr @tree_nrv, ptr @gsi_start_bb, i64 116}
!39 = !{ptr @tree_nrv, ptr @gsi_end_p, i64 428}
!40 = !{ptr @tree_nrv, ptr @gsi_stmt, i64 322}
!41 = !{ptr @tree_nrv, ptr @gimple_code, i64 271}
!42 = !{ptr @tree_nrv, ptr @gimple_has_lhs, i64 537}
!43 = !{ptr @tree_nrv, ptr @gimple_get_lhs, i64 386}
!44 = !{ptr @tree_nrv, ptr @gimple_assign_copy_p, i64 55}
!45 = !{ptr @tree_nrv, ptr @gimple_assign_rhs1, i64 15}
!46 = !{ptr @tree_nrv, ptr @get_base_address, i64 191}
!47 = !{ptr @tree_nrv, ptr @gsi_next, i64 307}
!48 = !{ptr @tree_nrv, ptr @gimple_assign_lhs, i64 32}
!49 = !{ptr @tree_nrv, ptr @unlink_stmt_vdef, i64 4}
!50 = !{ptr @tree_nrv, ptr @gsi_remove, i64 4}
!51 = !{ptr @tree_nrv, ptr @walk_gimple_op, i64 46}
!52 = !{ptr @tree_nrv, ptr @update_stmt, i64 29}
!53 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 254319}
!54 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 254319}
!55 = !{ptr @gimple_has_lhs, ptr @is_gimple_assign, i64 1473}
!56 = !{ptr @gimple_has_lhs, ptr @is_gimple_call, i64 448}
!57 = !{ptr @gimple_has_lhs, ptr @gimple_call_lhs, i64 67}
!58 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 9}
!59 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 198241}
!60 = !{ptr @gimple_op, ptr @gimple_ops, i64 198240}
!61 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 198241}
!62 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 198241}
!63 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!64 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 198241}
!65 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 198241}
!66 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 1473}
!67 = !{ptr @is_gimple_call, ptr @gimple_code, i64 779709}
!68 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 145550}
!69 = !{ptr @execute_return_slot_opt, ptr @gsi_start_bb, i64 253979}
!70 = !{ptr @execute_return_slot_opt, ptr @gsi_end_p, i64 1033124}
!71 = !{ptr @execute_return_slot_opt, ptr @gsi_stmt, i64 779145}
!72 = !{ptr @execute_return_slot_opt, ptr @is_gimple_call, i64 779145}
!73 = !{ptr @execute_return_slot_opt, ptr @gimple_call_lhs, i64 145463}
!74 = !{ptr @execute_return_slot_opt, ptr @gimple_call_return_slot_opt_p, i64 52706}
!75 = !{ptr @execute_return_slot_opt, ptr @gimple_call_fndecl, i64 52673}
!76 = !{ptr @execute_return_slot_opt, ptr @aggregate_value_p, i64 52673}
!77 = !{ptr @execute_return_slot_opt, ptr @dest_safe_for_nrv_p, i64 19}
!78 = !{ptr @execute_return_slot_opt, ptr @gimple_call_set_return_slot_opt, i64 19}
!79 = !{ptr @execute_return_slot_opt, ptr @gsi_next, i64 779145}
!80 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 52682}
!81 = !{ptr @dest_safe_for_nrv_p, ptr @handled_component_p, i64 26}
!82 = !{ptr @dest_safe_for_nrv_p, ptr @is_call_used, i64 13}
!83 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 52682}
!84 = !{ptr @is_call_used, ptr @is_call_clobbered, i64 11}
!85 = !{ptr @is_call_used, ptr @may_be_aliased, i64 6}
!86 = !{ptr @is_call_used, ptr @pt_solution_includes, i64 1}
!87 = !{ptr @is_call_clobbered, ptr @is_global_var, i64 11}
!88 = !{ptr @is_call_clobbered, ptr @may_be_aliased, i64 10}
!89 = !{ptr @is_call_clobbered, ptr @pt_solution_includes, i64 5}
!90 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!91 = !{!"function_entry_count", i64 6652}
!92 = !{!"tree-nrv.c:gate_pass_return_slot"}
!93 = !{!94, !94, i64 0}
!94 = !{!"int", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !{!"tree-nrv.c:tree_nrv"}
!98 = !{!99, !99, i64 0}
!99 = !{!"any pointer", !95, i64 0}
!100 = !{!95, !95, i64 0}
!101 = !{!"branch_weights", i32 6641, i32 13}
!102 = !{!"branch_weights", i32 13, i32 1}
!103 = !{!"branch_weights", i32 12, i32 2}
!104 = !{!105, !99, i64 8}
!105 = !{!"function", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !99, i64 72, !99, i64 80, !99, i64 88, !99, i64 96, !94, i64 104, !94, i64 108, !94, i64 112, !94, i64 116, !94, i64 120, !94, i64 124, !99, i64 128, !94, i64 136, !94, i64 137, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 139, !94, i64 139, !94, i64 139, !94, i64 139, !94, i64 139, !94, i64 139, !94, i64 139}
!106 = !{!107, !99, i64 0}
!107 = !{!"control_flow_graph", !99, i64 0, !99, i64 8, !99, i64 16, !94, i64 24, !94, i64 28, !94, i64 32, !99, i64 40, !94, i64 48, !95, i64 52, !95, i64 60, !94, i64 68, !94, i64 72}
!108 = !{!109, !99, i64 56}
!109 = !{!"basic_block_def", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !95, i64 32, !99, i64 48, !99, i64 56, !95, i64 64, !110, i64 72, !94, i64 80, !94, i64 84, !94, i64 88, !94, i64 92, !94, i64 96}
!110 = !{!"long", !95, i64 0}
!111 = !{!107, !99, i64 8}
!112 = !{!"branch_weights", i32 1, i32 127}
!113 = !{!"branch_weights", i32 127, i32 38785}
!114 = distinct !{!114, !115}
!115 = !{!"llvm.loop.mustprogress"}
!116 = !{i8 0, i8 2}
!117 = !{!"branch_weights", i32 292, i32 1}
!118 = !{i32 0, i32 256}
!119 = !{!"branch_weights", i32 1, i32 742}
!120 = !{!"branch_weights", i32 208, i32 535}
!121 = !{!"branch_weights", i32 10, i32 526}
!122 = !{!"branch_weights", i32 1, i32 10}
!123 = !{!"branch_weights", i32 10, i32 1}
!124 = !{!"branch_weights", i32 64, i32 35}
!125 = !{!"branch_weights", i32 192, i32 537}
!126 = !{!"branch_weights", i32 1, i32 3}
!127 = !{!"branch_weights", i32 208, i32 526}
!128 = !{!"branch_weights", i32 450, i32 292}
!129 = distinct !{!129, !115}
!130 = !{!131, !99, i64 0}
!131 = !{!"nrv_data", !99, i64 0, !99, i64 8, !94, i64 16}
!132 = !{!131, !99, i64 8}
!133 = distinct !{!133, !115}
!134 = !{i64 0, i64 8, !98, i64 8, i64 8, !98, i64 16, i64 8, !98}
!135 = !{!136, !99, i64 24}
!136 = !{!"walk_stmt_info", !137, i64 0, !99, i64 24, !99, i64 32, !95, i64 40, !95, i64 41, !95, i64 42, !95, i64 43, !99, i64 48}
!137 = !{!"", !99, i64 0, !99, i64 8, !99, i64 16}
!138 = !{!131, !94, i64 16}
!139 = distinct !{!139, !115}
!140 = !{!"function_entry_count", i64 254319}
!141 = !{!"tree-nrv.c:gsi_start_bb"}
!142 = !{!137, !99, i64 0}
!143 = !{!137, !99, i64 8}
!144 = !{!137, !99, i64 16}
!145 = !{!"function_entry_count", i64 1034310}
!146 = !{!"tree-nrv.c:gsi_end_p"}
!147 = !{!"function_entry_count", i64 780002}
!148 = !{!"tree-nrv.c:gsi_stmt"}
!149 = !{!150, !99, i64 0}
!150 = !{!"gimple_seq_node_d", !99, i64 0, !99, i64 8, !99, i64 16}
!151 = !{!"function_entry_count", i64 1376646}
!152 = !{!"tree-nrv.c:gimple_code"}
!153 = !{!"function_entry_count", i64 0}
!154 = !{!"tree-nrv.c:gimple_return_retval"}
!155 = !{!"function_entry_count", i64 1473}
!156 = !{!"tree-nrv.c:gimple_has_lhs"}
!157 = !{!"branch_weights", i32 449, i32 1026}
!158 = !{!"branch_weights", i32 383, i32 67}
!159 = !{!"function_entry_count", i64 9}
!160 = !{!"tree-nrv.c:gimple_assign_rhs1"}
!161 = !{!"function_entry_count", i64 779991}
!162 = !{!"tree-nrv.c:gsi_next"}
!163 = !{!150, !99, i64 16}
!164 = !{!"tree-nrv.c:gimple_assign_lhs"}
!165 = !{!"tree-nrv.c:finalize_nrv_r"}
!166 = !{!"tree-nrv.c:update_stmt"}
!167 = !{!"tree-nrv.c:var_ann"}
!168 = !{!"tree-nrv.c:bb_seq"}
!169 = !{!109, !94, i64 96}
!170 = !{!"branch_weights", i32 254320, i32 1}
!171 = !{!"branch_weights", i32 1, i32 254320}
!172 = !{!173, !99, i64 0}
!173 = !{!"gimple_bb_info", !99, i64 0, !99, i64 8}
!174 = !{!"tree-nrv.c:gimple_seq_first"}
!175 = !{!176, !99, i64 0}
!176 = !{!"gimple_seq_d", !99, i64 0, !99, i64 8, !99, i64 16}
!177 = !{!"function_entry_count", i64 198241}
!178 = !{!"tree-nrv.c:gimple_op"}
!179 = !{!"branch_weights", i32 1, i32 198242}
!180 = !{!"tree-nrv.c:gimple_has_ops"}
!181 = !{!"tree-nrv.c:gimple_ops"}
!182 = !{!110, !110, i64 0}
!183 = !{!"tree-nrv.c:gimple_statement_structure"}
!184 = !{!"tree-nrv.c:gss_for_code"}
!185 = !{!"tree-nrv.c:is_gimple_assign"}
!186 = !{!"function_entry_count", i64 779709}
!187 = !{!"tree-nrv.c:is_gimple_call"}
!188 = !{!"function_entry_count", i64 145550}
!189 = !{!"tree-nrv.c:gimple_call_lhs"}
!190 = !{!"tree-nrv.c:execute_return_slot_opt"}
!191 = !{!"branch_weights", i32 1, i32 6652}
!192 = !{!"branch_weights", i32 254016, i32 1}
!193 = !{!"branch_weights", i32 686478, i32 92785}
!194 = !{!"branch_weights", i32 40071, i32 52715}
!195 = !{!"branch_weights", i32 52683, i32 33}
!196 = !{!"branch_weights", i32 52665, i32 19}
!197 = !{!"branch_weights", i32 525246, i32 254016}
!198 = distinct !{!198, !115}
!199 = !{!"branch_weights", i32 6652, i32 247365}
!200 = distinct !{!200, !115}
!201 = !{!"function_entry_count", i64 52714}
!202 = !{!"tree-nrv.c:gimple_call_return_slot_opt_p"}
!203 = !{!"function_entry_count", i64 52682}
!204 = !{!"tree-nrv.c:gimple_call_fndecl"}
!205 = !{!"branch_weights", i32 51443, i32 1241}
!206 = !{!"function_entry_count", i64 18}
!207 = !{!"tree-nrv.c:dest_safe_for_nrv_p"}
!208 = !{!"branch_weights", i32 11, i32 8}
!209 = !{!"branch_weights", i32 8, i32 0}
!210 = distinct !{!210, !115}
!211 = !{!"branch_weights", i32 4608, i32 8910, i32 1458, i32 648, i32 576}
!212 = !{!"branch_weights", i32 1, i32 12}
!213 = !{!"tree-nrv.c:gimple_call_set_return_slot_opt"}
!214 = !{!"branch_weights", i32 13, i32 7}
!215 = !{!"tree-nrv.c:gimple_call_fn"}
!216 = !{!"function_entry_count", i64 25}
!217 = !{!"tree-nrv.c:handled_component_p"}
!218 = !{!"branch_weights", i32 19, i32 1, i32 8, i32 1, i32 1, i32 1, i32 1, i32 1}
!219 = !{!"function_entry_count", i64 11}
!220 = !{!"tree-nrv.c:is_call_used"}
!221 = !{!"branch_weights", i32 7, i32 6}
!222 = !{!"branch_weights", i32 7, i32 1}
!223 = !{!105, !99, i64 24}
!224 = !{!"tree-nrv.c:is_call_clobbered"}
!225 = !{!"branch_weights", i32 12, i32 1}
!226 = !{!"function_entry_count", i64 17}
!227 = !{!"tree-nrv.c:may_be_aliased"}
!228 = !{!"branch_weights", i32 1, i32 18}
!229 = !{!"branch_weights", i32 324, i32 37}
!230 = !{!"branch_weights", i32 18, i32 1}
!231 = !{!"branch_weights", i32 -1178678311, i32 1178678311}
!232 = !{!"branch_weights", i32 968805337, i32 1178678311}
!233 = !{!"tree-nrv.c:is_global_var"}
