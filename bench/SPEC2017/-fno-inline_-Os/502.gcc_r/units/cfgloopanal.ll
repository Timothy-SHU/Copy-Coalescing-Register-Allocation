; ModuleID = 'cfgloopanal.c'
source_filename = "cfgloopanal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.graph_edge = type { i32, i32, ptr, ptr, ptr }
%struct.graph = type { i32, ptr, ptr }
%struct.vertex = type { ptr, ptr, i32, i32, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"cfgloopanal.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@target_avail_regs = dso_local local_unnamed_addr global i32 0, align 4
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@target_res_regs = dso_local local_unnamed_addr global i32 0, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@target_reg_cost = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@target_spill_cost = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@optimize = external local_unnamed_addr global i32, align 4
@flag_ira_region = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @just_once_each_iteration_p(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !77 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %4, ptr noundef %1) #10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !89
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %11, %7, %2
  %18 = phi i8 [ 0, %2 ], [ 0, %7 ], [ %16, %11 ]
  ret i8 %18
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @mark_irreducible_loops() local_unnamed_addr #0 !prof !90 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %3 = tail call fastcc i32 @number_of_loops() #12
  %4 = load ptr, ptr @cfun, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !94

8:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @.str.1) #10
  %9 = load ptr, ptr @cfun, align 8, !tbaa !91
  br label %10

10:                                               ; preds = %0, %8
  %11 = phi ptr [ %4, %0 ], [ %9, %8 ]
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %47, label %18, !prof !98

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %2, i64 8
  br label %20

20:                                               ; preds = %18, %38
  %21 = phi ptr [ %14, %18 ], [ %40, %38 ]
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !89
  %24 = and i32 %23, -5
  store i32 %24, ptr %22, align 8, !tbaa !89
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 1
  %26 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %25) #12
  store i32 0, ptr %2, align 8, !tbaa.struct !99
  store ptr %26, ptr %19, align 8, !tbaa.struct !101
  %27 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %26, ptr noundef nonnull %1) #12, !range !102
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29, !prof !103

29:                                               ; preds = %20, %29
  %30 = load ptr, ptr %1, align 8, !tbaa !91
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !104
  %33 = and i32 %32, -129
  store i32 %33, ptr %31, align 8, !tbaa !104
  call fastcc void @ei_next(ptr noundef nonnull %2) #12
  %34 = load i32, ptr %2, align 8
  %35 = load ptr, ptr %19, align 8
  %36 = call fastcc zeroext i8 @ei_cond(i32 %34, ptr %35, ptr noundef nonnull %1) #12, !range !102
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %29, !prof !106, !llvm.loop !107

38:                                               ; preds = %29, %20
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !91
  %41 = load ptr, ptr @cfun, align 8, !tbaa !91
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !95
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !96
  %46 = icmp eq ptr %40, %45
  br i1 %46, label %47, label %20, !prof !109, !llvm.loop !110

47:                                               ; preds = %38, %10
  %48 = phi ptr [ %13, %10 ], [ %43, %38 ]
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !111
  %51 = add nsw i32 %50, %3
  %52 = tail call ptr @new_graph(i32 noundef %51) #10
  %53 = load ptr, ptr @cfun, align 8, !tbaa !91
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !95
  %56 = load ptr, ptr %55, align 8, !tbaa !91
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !96
  %59 = icmp eq ptr %56, %58
  br i1 %59, label %148, label %60, !prof !98

60:                                               ; preds = %47
  %61 = getelementptr inbounds i8, ptr %2, i64 8
  br label %62

62:                                               ; preds = %60, %139
  %63 = phi ptr [ %56, %60 ], [ %141, %139 ]
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 1
  %65 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %64) #12
  store i32 0, ptr %2, align 8, !tbaa.struct !99
  store ptr %65, ptr %61, align 8, !tbaa.struct !101
  %66 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %65, ptr noundef nonnull %1) #12, !range !102
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %139, label %68, !prof !103

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 3
  br label %71

71:                                               ; preds = %68, %134
  %72 = load ptr, ptr %1, align 8, !tbaa !91
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !112
  %75 = load ptr, ptr @cfun, align 8, !tbaa !91
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !95
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !96
  %80 = icmp eq ptr %74, %79
  br i1 %80, label %134, label %81, !prof !113

81:                                               ; preds = %71
  %82 = load i32, ptr %69, align 8, !tbaa !114
  %83 = add nsw i32 %82, 1
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %85 = load i32, ptr %84, align 8, !tbaa !114
  %86 = add nsw i32 %85, 1
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !87
  %89 = getelementptr inbounds %struct.loop, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !115
  %91 = icmp eq ptr %90, %74
  br i1 %91, label %92, label %101, !prof !116

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.loop, ptr %88, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !78
  %95 = icmp eq ptr %94, %63
  br i1 %95, label %134, label %96

96:                                               ; preds = %92
  %97 = load i32, ptr %88, align 8, !tbaa !117
  %98 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 5
  %99 = load i32, ptr %98, align 8, !tbaa !111
  %100 = add nsw i32 %99, %97
  br label %101

101:                                              ; preds = %81, %96
  %102 = phi i32 [ %100, %96 ], [ %86, %81 ]
  %103 = load ptr, ptr %70, align 8, !tbaa !87
  %104 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %103, ptr noundef nonnull %74) #10
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %130, !prof !116

106:                                              ; preds = %101
  %107 = load ptr, ptr %70, align 8, !tbaa !87
  %108 = load ptr, ptr %73, align 8, !tbaa !112
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !87
  %111 = tail call ptr @find_common_loop(ptr noundef %107, ptr noundef %110) #10
  %112 = tail call fastcc i32 @loop_depth(ptr noundef %111) #12
  %113 = add i32 %112, 1
  %114 = load ptr, ptr %70, align 8, !tbaa !87
  %115 = tail call fastcc i32 @loop_depth(ptr noundef %114) #12
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.loop, ptr %114, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !118
  %120 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %119, i32 noundef %113) #12
  br label %121

121:                                              ; preds = %106, %117
  %122 = phi ptr [ %120, %117 ], [ %114, %106 ]
  %123 = load i32, ptr %122, align 8, !tbaa !117
  %124 = load ptr, ptr @cfun, align 8, !tbaa !91
  %125 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !95
  %127 = getelementptr inbounds %struct.control_flow_graph, ptr %126, i64 0, i32 5
  %128 = load i32, ptr %127, align 8, !tbaa !111
  %129 = add nsw i32 %128, %123
  br label %130

130:                                              ; preds = %121, %101
  %131 = phi i32 [ %83, %101 ], [ %129, %121 ]
  %132 = tail call ptr @add_edge(ptr noundef %52, i32 noundef %131, i32 noundef %102) #10
  %133 = getelementptr inbounds %struct.graph_edge, ptr %132, i64 0, i32 4
  store ptr %72, ptr %133, align 8, !tbaa !119
  br label %134

134:                                              ; preds = %92, %71, %130
  call fastcc void @ei_next(ptr noundef nonnull %2) #12
  %135 = load i32, ptr %2, align 8
  %136 = load ptr, ptr %61, align 8
  %137 = call fastcc zeroext i8 @ei_cond(i32 %135, ptr %136, ptr noundef nonnull %1) #12, !range !102
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %71, !prof !106, !llvm.loop !121

139:                                              ; preds = %134, %62
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 6
  %141 = load ptr, ptr %140, align 8, !tbaa !91
  %142 = load ptr, ptr @cfun, align 8, !tbaa !91
  %143 = getelementptr inbounds %struct.function, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !95
  %145 = getelementptr inbounds %struct.control_flow_graph, ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !96
  %147 = icmp eq ptr %141, %146
  br i1 %147, label %148, label %62, !prof !109, !llvm.loop !122

148:                                              ; preds = %139, %47
  %149 = tail call i32 @graphds_scc(ptr noundef %52, ptr noundef null) #10
  %150 = load i32, ptr %52, align 8, !tbaa !123
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %221, !prof !125

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.graph, ptr %52, i64 0, i32 1
  br label %154

154:                                              ; preds = %152, %215
  %155 = phi i32 [ %150, %152 ], [ %216, %215 ]
  %156 = phi i64 [ 0, %152 ], [ %218, %215 ]
  %157 = phi i8 [ 0, %152 ], [ %217, %215 ]
  %158 = load ptr, ptr %153, align 8, !tbaa !126
  %159 = getelementptr inbounds %struct.vertex, ptr %158, i64 %156, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !91
  %161 = icmp eq ptr %160, null
  br i1 %161, label %215, label %162, !prof !127

162:                                              ; preds = %154, %208
  %163 = phi ptr [ %211, %208 ], [ %160, %154 ]
  %164 = phi i8 [ %209, %208 ], [ %157, %154 ]
  %165 = getelementptr inbounds %struct.graph_edge, ptr %163, i64 0, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !119
  %167 = load ptr, ptr %153, align 8, !tbaa !126
  %168 = load i32, ptr %163, align 8, !tbaa !128
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.vertex, ptr %167, i64 %169, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !129
  %172 = getelementptr inbounds %struct.graph_edge, ptr %163, i64 0, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !131
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.vertex, ptr %167, i64 %174, i32 2
  %176 = load i32, ptr %175, align 8, !tbaa !129
  %177 = icmp slt i32 %171, %176
  br i1 %177, label %178, label %188, !prof !116

178:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @.str.1) #10
  %179 = load ptr, ptr %153, align 8, !tbaa !126
  %180 = load i32, ptr %163, align 8, !tbaa !128
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.vertex, ptr %179, i64 %181, i32 2
  %183 = load i32, ptr %182, align 8, !tbaa !129
  %184 = load i32, ptr %172, align 4, !tbaa !131
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.vertex, ptr %179, i64 %185, i32 2
  %187 = load i32, ptr %186, align 8, !tbaa !129
  br label %188

188:                                              ; preds = %162, %178
  %189 = phi i32 [ %176, %162 ], [ %187, %178 ]
  %190 = phi i32 [ %171, %162 ], [ %183, %178 ]
  %191 = icmp eq i32 %190, %189
  br i1 %191, label %192, label %208, !prof !116

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.edge_def, ptr %166, i64 0, i32 7
  %194 = load i32, ptr %193, align 8, !tbaa !104
  %195 = or i32 %194, 128
  store i32 %195, ptr %193, align 8, !tbaa !104
  %196 = load ptr, ptr %166, align 8, !tbaa !132
  %197 = getelementptr inbounds %struct.basic_block_def, ptr %196, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !87
  %199 = getelementptr inbounds %struct.edge_def, ptr %166, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !112
  %201 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %198, ptr noundef %200) #10
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %192
  %204 = load ptr, ptr %166, align 8, !tbaa !132
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 13
  %206 = load i32, ptr %205, align 8, !tbaa !89
  %207 = or i32 %206, 4
  store i32 %207, ptr %205, align 8, !tbaa !89
  br label %208

208:                                              ; preds = %192, %203, %188
  %209 = phi i8 [ %164, %188 ], [ 1, %203 ], [ 1, %192 ]
  %210 = getelementptr inbounds %struct.graph_edge, ptr %163, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !91
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %162, !prof !133, !llvm.loop !134

213:                                              ; preds = %208
  %214 = load i32, ptr %52, align 8, !tbaa !123
  br label %215

215:                                              ; preds = %213, %154
  %216 = phi i32 [ %155, %154 ], [ %214, %213 ]
  %217 = phi i8 [ %157, %154 ], [ %209, %213 ]
  %218 = add nuw nsw i64 %156, 1
  %219 = sext i32 %216 to i64
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %154, label %221, !prof !135, !llvm.loop !136

221:                                              ; preds = %215, %148
  %222 = phi i8 [ 0, %148 ], [ %217, %215 ]
  tail call void @free_graph(ptr noundef nonnull %52) #10
  tail call fastcc void @loops_state_set() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  ret i8 %222
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #3 !prof !137 !PGOFuncName !138 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !139

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #12
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 !prof !142 !PGOFuncName !143 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !144 !PGOFuncName !145 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #12, !range !102
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !146

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #12
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !91
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !147 !PGOFuncName !148 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !149

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #12
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #12
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !150

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #10
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !151
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !151
  ret void
}

; Function Attrs: optsize
declare ptr @new_graph(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !77 !PGOFuncName !153 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #12
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !77 !PGOFuncName !154 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @add_edge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @graphds_scc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_graph(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set() unnamed_addr #6 !prof !90 !PGOFuncName !155 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = load i32, ptr %3, align 8, !tbaa !156
  %5 = or i32 %4, 4
  store i32 %5, ptr %3, align 8, !tbaa !156
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @num_loop_insns(ptr noundef %0) local_unnamed_addr #0 !prof !77 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !157
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %1
  %7 = zext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %36
  %9 = phi i64 [ 0, %6 ], [ %38, %36 ]
  %10 = phi i32 [ 0, %6 ], [ %37, %36 ]
  %11 = getelementptr inbounds ptr, ptr %2, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !158
  %15 = load ptr, ptr %14, align 8, !tbaa !158
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !158
  br label %22

22:                                               ; preds = %17, %26
  %23 = phi ptr [ %15, %17 ], [ %34, %26 ]
  %24 = phi i32 [ %10, %17 ], [ %32, %26 ]
  %25 = icmp eq ptr %23, %21
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %23, align 8
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -8
  %30 = icmp ult i32 %29, 3
  %31 = zext i1 %30 to i32
  %32 = add i32 %24, %31
  %33 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !158
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %22, !llvm.loop !161

36:                                               ; preds = %26, %22, %8
  %37 = phi i32 [ %10, %8 ], [ %24, %22 ], [ %32, %26 ]
  %38 = add nuw nsw i64 %9, 1
  %39 = icmp eq i64 %38, %7
  br i1 %39, label %40, label %8, !llvm.loop !162

40:                                               ; preds = %36, %1
  %41 = phi i32 [ 0, %1 ], [ %37, %36 ]
  tail call void @free(ptr noundef %2) #12
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 1)
  ret i32 %42
}

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @average_num_loop_insns(ptr noundef %0) local_unnamed_addr #0 !prof !77 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !157
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @free(ptr noundef %2) #12
  br label %59

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !163
  %12 = icmp eq i32 %11, 0
  %13 = zext i32 %4 to i64
  br label %14

14:                                               ; preds = %7, %49
  %15 = phi i64 [ 0, %7 ], [ %54, %49 ]
  %16 = phi i32 [ 0, %7 ], [ %53, %49 ]
  %17 = getelementptr inbounds ptr, ptr %2, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !158
  %21 = load ptr, ptr %20, align 8, !tbaa !158
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !159
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !158
  br label %28

28:                                               ; preds = %23, %32
  %29 = phi ptr [ %21, %23 ], [ %40, %32 ]
  %30 = phi i32 [ 0, %23 ], [ %38, %32 ]
  %31 = icmp eq ptr %29, %27
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %29, align 8
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -8
  %36 = icmp ult i32 %35, 3
  %37 = zext i1 %36 to i32
  %38 = add i32 %30, %37
  %39 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !158
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %28, !llvm.loop !164

42:                                               ; preds = %28, %32, %14
  %43 = phi i32 [ 0, %14 ], [ %38, %32 ], [ %30, %28 ]
  br i1 %12, label %49, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 11
  %46 = load i32, ptr %45, align 8, !tbaa !163
  %47 = mul nsw i32 %46, 10000
  %48 = sdiv i32 %47, %11
  br label %49

49:                                               ; preds = %42, %44
  %50 = phi i32 [ %48, %44 ], [ 10000, %42 ]
  %51 = mul i32 %50, %43
  %52 = freeze i32 %51
  %53 = add i32 %52, %16
  %54 = add nuw nsw i64 %15, 1
  %55 = icmp eq i64 %54, %13
  br i1 %55, label %56, label %14, !llvm.loop !165

56:                                               ; preds = %49
  tail call void @free(ptr noundef %2) #12
  %57 = udiv i32 %53, 10000
  %58 = icmp ult i32 %53, 10000
  br i1 %58, label %59, label %60

59:                                               ; preds = %6, %56
  br label %60

60:                                               ; preds = %56, %59
  %61 = phi i32 [ 1, %59 ], [ %57, %56 ]
  ret i32 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @expected_loop_iterations_unbounded(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !77 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 8
  %7 = load i64, ptr %6, align 8, !tbaa !166
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  br i1 %8, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !166
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %1, %11
  %16 = tail call fastcc ptr @ei_start_1(ptr noundef %10) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !99
  %17 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %16, ptr %17, align 8, !tbaa.struct !101
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %16, ptr noundef nonnull %2) #12, !range !102
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %15, %20
  %21 = phi i64 [ %31, %20 ], [ 0, %15 ]
  %22 = phi i64 [ %29, %20 ], [ 0, %15 ]
  %23 = load ptr, ptr %2, align 8, !tbaa !91
  %24 = load ptr, ptr %23, align 8, !tbaa !132
  %25 = load ptr, ptr %4, align 8, !tbaa !78
  %26 = icmp eq ptr %24, %25
  %27 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 9
  %28 = load i64, ptr %27, align 8, !tbaa !167
  %29 = select i1 %26, i64 %28, i64 %22
  %30 = select i1 %26, i64 0, i64 %28
  %31 = add nsw i64 %21, %30
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %32 = load i32, ptr %3, align 8
  %33 = load ptr, ptr %17, align 8
  %34 = call fastcc zeroext i8 @ei_cond(i32 %32, ptr %33, ptr noundef nonnull %2) #12, !range !102
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %20, !llvm.loop !168

36:                                               ; preds = %20
  %37 = icmp eq i64 %31, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %15, %36
  %39 = phi i64 [ %29, %36 ], [ 0, %15 ]
  %40 = shl nsw i64 %39, 1
  br label %83

41:                                               ; preds = %36
  %42 = add i64 %29, -1
  %43 = add i64 %42, %31
  %44 = sdiv i64 %43, %31
  br label %83

45:                                               ; preds = %11
  %46 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %10) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !99
  %47 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %46, ptr %47, align 8, !tbaa.struct !101
  %48 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %2) #12, !range !102
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %45, %50
  %51 = phi i32 [ %66, %50 ], [ 0, %45 ]
  %52 = phi i32 [ %65, %50 ], [ 0, %45 ]
  %53 = load ptr, ptr %2, align 8, !tbaa !91
  %54 = load ptr, ptr %53, align 8, !tbaa !132
  %55 = load ptr, ptr %4, align 8, !tbaa !78
  %56 = icmp eq ptr %54, %55
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 11
  %58 = load i32, ptr %57, align 8, !tbaa !163
  %59 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 8
  %60 = load i32, ptr %59, align 4, !tbaa !169
  %61 = mul nsw i32 %60, %58
  %62 = add nsw i32 %61, 5000
  %63 = sdiv i32 %62, 10000
  %64 = select i1 %56, i32 0, i32 %63
  %65 = add nsw i32 %52, %64
  %66 = select i1 %56, i32 %63, i32 %51
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %67 = load i32, ptr %3, align 8
  %68 = load ptr, ptr %47, align 8
  %69 = call fastcc zeroext i8 @ei_cond(i32 %67, ptr %68, ptr noundef nonnull %2) #12, !range !102
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %50, !llvm.loop !170

71:                                               ; preds = %50
  %72 = icmp eq i32 %65, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %45, %71
  %74 = phi i32 [ %66, %71 ], [ 0, %45 ]
  %75 = shl nsw i32 %74, 1
  br label %80

76:                                               ; preds = %71
  %77 = add i32 %65, -1
  %78 = add i32 %77, %66
  %79 = sdiv i32 %78, %65
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i32 [ %75, %73 ], [ %79, %76 ]
  %82 = sext i32 %81 to i64
  br label %83

83:                                               ; preds = %38, %41, %80
  %84 = phi i64 [ %82, %80 ], [ %40, %38 ], [ %44, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i64 %84
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @expected_loop_iterations(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !77 {
  %2 = tail call i64 @expected_loop_iterations_unbounded(ptr noundef %0) #12
  %3 = tail call i64 @llvm.smin.i64(i64 %2, i64 10000)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_loop_level(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !77 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %11, %5 ], [ 0, %1 ]
  %8 = tail call i32 @get_loop_level(ptr noundef nonnull %6) #12
  %9 = icmp ult i32 %8, %7
  %10 = add i32 %8, 1
  %11 = select i1 %9, i32 %7, i32 %10
  %12 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !171

15:                                               ; preds = %5, %1
  %16 = phi i32 [ 0, %1 ], [ %11, %5 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_set_costs() local_unnamed_addr #0 !prof !172 {
  %1 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 53) #10
  %2 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 54) #10
  %3 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 55) #10
  %4 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %3) #10
  %5 = tail call ptr @validize_mem(ptr noundef %4) #10
  store i32 0, ptr @target_avail_regs, align 4, !tbaa !100
  %6 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 13), align 8, !tbaa !173
  br label %7

7:                                                ; preds = %0, %19
  %8 = phi i64 [ 0, %0 ], [ %21, %19 ]
  %9 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %10 = shl nuw nsw i64 1, %8
  %11 = and i64 %6, %10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13, !prof !174

13:                                               ; preds = %7
  %14 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %8
  %15 = load i8, ptr %14, align 1, !tbaa !158
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19, !prof !175

17:                                               ; preds = %13
  %18 = add i32 %9, 1
  store i32 %18, ptr @target_avail_regs, align 4, !tbaa !100
  br label %19

19:                                               ; preds = %7, %13, %17
  %20 = phi i32 [ %9, %7 ], [ %9, %13 ], [ %18, %17 ]
  %21 = add nuw nsw i64 %8, 1
  %22 = icmp eq i64 %21, 53
  br i1 %22, label %23, label %7, !prof !176, !llvm.loop !177

23:                                               ; preds = %19
  store i32 3, ptr @target_res_regs, align 4, !tbaa !100
  br label %24

24:                                               ; preds = %23, %24
  %25 = phi i1 [ true, %23 ], [ false, %24 ]
  %26 = phi i64 [ 0, %23 ], [ 1, %24 ]
  %27 = trunc i64 %26 to i8
  store i8 %27, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !178
  tail call void @start_sequence() #10
  %28 = tail call ptr @emit_move_insn(ptr noundef %1, ptr noundef %2) #10
  %29 = tail call ptr @get_insns() #10
  tail call void @end_sequence() #10
  %30 = tail call fastcc i32 @seq_cost(ptr noundef %29, i8 noundef zeroext %27) #12
  %31 = getelementptr inbounds [2 x i32], ptr @target_reg_cost, i64 0, i64 %26
  store i32 %30, ptr %31, align 4, !tbaa !100
  tail call void @start_sequence() #10
  %32 = tail call ptr @emit_move_insn(ptr noundef %5, ptr noundef %1) #10
  %33 = tail call ptr @emit_move_insn(ptr noundef %2, ptr noundef %5) #10
  %34 = tail call ptr @get_insns() #10
  tail call void @end_sequence() #10
  %35 = tail call fastcc i32 @seq_cost(ptr noundef %34, i8 noundef zeroext %27) #12
  %36 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %26
  store i32 %35, ptr %36, align 4, !tbaa !100
  br i1 %25, label %24, label %37, !prof !187, !llvm.loop !188

37:                                               ; preds = %24
  tail call void @default_rtl_profile() #10
  ret void
}

; Function Attrs: optsize
declare ptr @gen_raw_REG(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @validize_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #1

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @seq_cost(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !189 !PGOFuncName !190 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %29, label %4, !prof !191

4:                                                ; preds = %2, %23
  %5 = phi ptr [ %27, %23 ], [ %0, %2 ]
  %6 = phi i32 [ %25, %23 ], [ 0, %2 ]
  %7 = load i32, ptr %5, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %23, !prof !192

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !158
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %20, label %17, !prof !193

17:                                               ; preds = %11
  %18 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %13) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20, !prof !194

20:                                               ; preds = %11, %17
  %21 = phi ptr [ %18, %17 ], [ %13, %11 ]
  %22 = tail call i32 @rtx_cost(ptr noundef nonnull %21, i32 noundef 23, i8 noundef zeroext %1) #10
  br label %23

23:                                               ; preds = %4, %17, %20
  %24 = phi i32 [ %22, %20 ], [ 1, %17 ], [ 1, %4 ]
  %25 = add i32 %24, %6
  %26 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !158
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %4, !prof !195, !llvm.loop !196

29:                                               ; preds = %23, %2
  %30 = phi i32 [ 0, %2 ], [ %25, %23 ]
  ret i32 %30
}

; Function Attrs: optsize
declare void @default_rtl_profile() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @estimate_reg_pressure_cost(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 !prof !77 {
  %4 = add i32 %1, %0
  %5 = load i32, ptr @target_res_regs, align 4, !tbaa !100
  %6 = add i32 %5, %4
  %7 = load i32, ptr @target_avail_regs, align 4, !tbaa !100
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = icmp ugt i32 %4, %7
  %11 = zext i8 %2 to i64
  %12 = getelementptr inbounds [2 x i32], ptr @target_reg_cost, i64 0, i64 %11
  %13 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %11
  %14 = select i1 %10, ptr %13, ptr %12
  %15 = load i32, ptr %14, align 4, !tbaa !100
  %16 = mul i32 %15, %0
  %17 = load i32, ptr @optimize, align 4, !tbaa !100
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %9
  %20 = load i32, ptr @flag_ira_region, align 4
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @number_of_loops() #12
  %25 = load ptr, ptr @compiler_params, align 8, !tbaa !91
  %26 = getelementptr inbounds %struct.param_info, ptr %25, i64 105, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !197
  %28 = icmp ule i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = lshr i32 %16, %29
  br label %31

31:                                               ; preds = %23, %9, %19, %3
  %32 = phi i32 [ 0, %3 ], [ %16, %19 ], [ %16, %9 ], [ %30, %23 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_loop_exit_edges() local_unnamed_addr #0 !prof !199 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  %3 = tail call fastcc i32 @number_of_loops() #12
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %55, label %5, !prof !200

5:                                                ; preds = %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = load ptr, ptr %8, align 8, !tbaa !201
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !202
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %55, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, ptr %2, i64 8
  br label %17

17:                                               ; preds = %15, %46
  %18 = phi ptr [ %11, %15 ], [ %48, %46 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %20 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %19) #12
  store i32 0, ptr %2, align 8, !tbaa.struct !99
  store ptr %20, ptr %16, align 8, !tbaa.struct !101
  %21 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %20, ptr noundef nonnull %1) #12, !range !102
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 3
  br label %25

25:                                               ; preds = %23, %41
  %26 = load ptr, ptr %24, align 8, !tbaa !87
  %27 = tail call fastcc ptr @loop_outer(ptr noundef %26) #12
  %28 = icmp eq ptr %27, null
  %29 = load ptr, ptr %1, align 8, !tbaa !91
  br i1 %28, label %37, label %30

30:                                               ; preds = %25
  %31 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %26, ptr noundef %29) #10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !104
  %36 = or i32 %35, 512
  store i32 %36, ptr %34, align 8, !tbaa !104
  br label %41

37:                                               ; preds = %30, %25
  %38 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !104
  %40 = and i32 %39, -513
  store i32 %40, ptr %38, align 8, !tbaa !104
  br label %41

41:                                               ; preds = %33, %37
  call fastcc void @ei_next(ptr noundef nonnull %2) #12
  %42 = load i32, ptr %2, align 8
  %43 = load ptr, ptr %16, align 8
  %44 = call fastcc zeroext i8 @ei_cond(i32 %42, ptr %43, ptr noundef nonnull %1) #12, !range !102
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %25, !llvm.loop !203

46:                                               ; preds = %41, %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !202
  %49 = load ptr, ptr @cfun, align 8, !tbaa !91
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !96
  %54 = icmp eq ptr %48, %53
  br i1 %54, label %55, label %17, !llvm.loop !204

55:                                               ; preds = %46, %5, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !77 !PGOFuncName !205 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #12
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @loop_exit_edge_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !137 !PGOFuncName !206 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !139

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !207
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !144 !PGOFuncName !209 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !210

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #12
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #12
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !147 !PGOFuncName !211 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !149

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #12
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #12
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !212 !PGOFuncName !213 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !214

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !215
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !217 !PGOFuncName !218 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !219

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #10
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !91
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !147 !PGOFuncName !220 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!76}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!35 = !{ptr @mark_irreducible_loops, ptr @number_of_loops, i64 538}
!36 = !{ptr @mark_irreducible_loops, ptr @fancy_abort, i64 2}
!37 = !{ptr @mark_irreducible_loops, ptr @ei_start_1, i64 5372292}
!38 = !{ptr @mark_irreducible_loops, ptr @ei_cond, i64 14804598}
!39 = !{ptr @mark_irreducible_loops, ptr @ei_next, i64 9432306}
!40 = !{ptr @mark_irreducible_loops, ptr @new_graph, i64 538}
!41 = !{ptr @mark_irreducible_loops, ptr @flow_bb_inside_loop_p, i64 4715534}
!42 = !{ptr @mark_irreducible_loops, ptr @find_common_loop, i64 1}
!43 = !{ptr @mark_irreducible_loops, ptr @loop_depth, i64 2}
!44 = !{ptr @mark_irreducible_loops, ptr @add_edge, i64 4715533}
!45 = !{ptr @mark_irreducible_loops, ptr @graphds_scc, i64 538}
!46 = !{ptr @mark_irreducible_loops, ptr @free_graph, i64 538}
!47 = !{ptr @mark_irreducible_loops, ptr @loops_state_set, i64 538}
!48 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 651}
!49 = !{ptr @ei_cond, ptr @ei_end_p, i64 14832108}
!50 = !{ptr @ei_cond, ptr @ei_edge, i64 9449834}
!51 = !{ptr @ei_next, ptr @ei_container, i64 18899667}
!52 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 9449834}
!53 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!54 = !{ptr @init_set_costs, ptr @gen_raw_REG, i64 3}
!55 = !{ptr @init_set_costs, ptr @gen_rtx_MEM, i64 1}
!56 = !{ptr @init_set_costs, ptr @validize_mem, i64 1}
!57 = !{ptr @init_set_costs, ptr @start_sequence, i64 4}
!58 = !{ptr @init_set_costs, ptr @emit_move_insn, i64 6}
!59 = !{ptr @init_set_costs, ptr @get_insns, i64 4}
!60 = !{ptr @init_set_costs, ptr @end_sequence, i64 4}
!61 = !{ptr @init_set_costs, ptr @seq_cost, i64 4}
!62 = !{ptr @init_set_costs, ptr @default_rtl_profile, i64 1}
!63 = !{ptr @seq_cost, ptr @single_set_2, i64 1}
!64 = !{ptr @seq_cost, ptr @rtx_cost, i64 5}
!65 = !{ptr @mark_loop_exit_edges, ptr @number_of_loops, i64 114}
!66 = !{ptr @mark_loop_exit_edges, ptr @ei_start_1, i64 20}
!67 = !{ptr @mark_loop_exit_edges, ptr @ei_cond, i64 413}
!68 = !{ptr @mark_loop_exit_edges, ptr @loop_outer, i64 393}
!69 = !{ptr @mark_loop_exit_edges, ptr @loop_exit_edge_p, i64 246}
!70 = !{ptr @mark_loop_exit_edges, ptr @ei_next, i64 393}
!71 = !{ptr @ei_end_p, ptr @ei_container, i64 29663849}
!72 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 14832108}
!73 = !{ptr @ei_edge, ptr @ei_container, i64 18899667}
!74 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 9449834}
!75 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!76 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!77 = !{!"function_entry_count", i64 0}
!78 = !{!79, !83, i64 16}
!79 = !{!"loop", !80, i64 0, !80, i64 4, !83, i64 8, !83, i64 16, !84, i64 24, !80, i64 32, !80, i64 36, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !85, i64 80, !85, i64 96, !81, i64 112, !81, i64 113, !80, i64 116, !83, i64 120, !83, i64 128, !81, i64 136, !83, i64 144}
!80 = !{!"int", !81, i64 0}
!81 = !{!"omnipotent char", !82, i64 0}
!82 = !{!"Simple C/C++ TBAA"}
!83 = !{!"any pointer", !81, i64 0}
!84 = !{!"lpt_decision", !80, i64 0, !80, i64 4}
!85 = !{!"", !86, i64 0, !86, i64 8}
!86 = !{!"long", !81, i64 0}
!87 = !{!88, !83, i64 24}
!88 = !{!"basic_block_def", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !81, i64 32, !83, i64 48, !83, i64 56, !81, i64 64, !86, i64 72, !80, i64 80, !80, i64 84, !80, i64 88, !80, i64 92, !80, i64 96}
!89 = !{!88, !80, i64 96}
!90 = !{!"function_entry_count", i64 538}
!91 = !{!83, !83, i64 0}
!92 = !{!93, !83, i64 32}
!93 = !{!"function", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !80, i64 104, !80, i64 108, !80, i64 112, !80, i64 116, !80, i64 120, !80, i64 124, !83, i64 128, !80, i64 136, !80, i64 137, !80, i64 138, !80, i64 138, !80, i64 138, !80, i64 138, !80, i64 138, !80, i64 138, !80, i64 138, !80, i64 139, !80, i64 139, !80, i64 139, !80, i64 139, !80, i64 139, !80, i64 139, !80, i64 139}
!94 = !{!"branch_weights", i32 1, i32 539}
!95 = !{!93, !83, i64 8}
!96 = !{!97, !83, i64 8}
!97 = !{!"control_flow_graph", !83, i64 0, !83, i64 8, !83, i64 16, !80, i64 24, !80, i64 28, !80, i64 32, !83, i64 40, !80, i64 48, !81, i64 52, !81, i64 60, !80, i64 68, !80, i64 72}
!98 = !{!"branch_weights", i32 1, i32 538}
!99 = !{i64 0, i64 4, !100, i64 8, i64 8, !91}
!100 = !{!80, !80, i64 0}
!101 = !{i64 0, i64 8, !91}
!102 = !{i8 0, i8 2}
!103 = !{!"branch_weights", i32 1, i32 2691137}
!104 = !{!105, !80, i64 48}
!105 = !{!"edge_def", !83, i64 0, !83, i64 8, !81, i64 16, !83, i64 24, !83, i64 32, !80, i64 40, !80, i64 44, !80, i64 48, !80, i64 52, !86, i64 56}
!106 = !{!"branch_weights", i32 2691137, i32 2033781}
!107 = distinct !{!107, !108}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"branch_weights", i32 538, i32 2690600}
!110 = distinct !{!110, !108}
!111 = !{!97, !80, i64 32}
!112 = !{!105, !83, i64 8}
!113 = !{!"branch_weights", i32 621, i32 4724298}
!114 = !{!88, !80, i64 80}
!115 = !{!79, !83, i64 8}
!116 = !{!"branch_weights", i32 1, i32 4724298}
!117 = !{!79, !80, i64 0}
!118 = !{!79, !83, i64 40}
!119 = !{!120, !83, i64 24}
!120 = !{!"graph_edge", !80, i64 0, !80, i64 4, !83, i64 8, !83, i64 16, !83, i64 24}
!121 = distinct !{!121, !108}
!122 = distinct !{!122, !108}
!123 = !{!124, !80, i64 0}
!124 = !{!"graph", !80, i64 0, !83, i64 8, !83, i64 16}
!125 = !{!"branch_weights", i32 538, i32 1}
!126 = !{!124, !83, i64 8}
!127 = !{!"branch_weights", i32 1, i32 2692246}
!128 = !{!120, !80, i64 0}
!129 = !{!130, !80, i64 16}
!130 = !{!"vertex", !83, i64 0, !83, i64 8, !80, i64 16, !80, i64 20, !83, i64 24}
!131 = !{!120, !80, i64 4}
!132 = !{!105, !83, i64 0}
!133 = !{!"branch_weights", i32 2692246, i32 2032052}
!134 = distinct !{!134, !108}
!135 = !{!"branch_weights", i32 2691709, i32 538}
!136 = distinct !{!136, !108}
!137 = !{!"function_entry_count", i64 652}
!138 = !{!"cfgloopanal.c:number_of_loops"}
!139 = !{!"branch_weights", i32 1, i32 653}
!140 = !{!141, !83, i64 8}
!141 = !{!"loops", !80, i64 0, !83, i64 8, !83, i64 16, !83, i64 24}
!142 = !{!"function_entry_count", i64 5382274}
!143 = !{!"cfgloopanal.c:ei_start_1"}
!144 = !{!"function_entry_count", i64 14832108}
!145 = !{!"cfgloopanal.c:ei_cond"}
!146 = !{!"branch_weights", i32 9449835, i32 5382275}
!147 = !{!"function_entry_count", i64 9449834}
!148 = !{!"cfgloopanal.c:ei_next"}
!149 = !{!"branch_weights", i32 1, i32 9449835}
!150 = !{!"branch_weights", i32 9449835, i32 1}
!151 = !{!152, !80, i64 0}
!152 = !{!"", !80, i64 0, !83, i64 8}
!153 = !{!"cfgloopanal.c:loop_depth"}
!154 = !{!"cfgloopanal.c:VEC_loop_p_base_index"}
!155 = !{!"cfgloopanal.c:loops_state_set"}
!156 = !{!141, !80, i64 0}
!157 = !{!79, !80, i64 36}
!158 = !{!81, !81, i64 0}
!159 = !{!160, !83, i64 8}
!160 = !{!"rtl_bb_info", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !80, i64 32}
!161 = distinct !{!161, !108}
!162 = distinct !{!162, !108}
!163 = !{!88, !80, i64 88}
!164 = distinct !{!164, !108}
!165 = distinct !{!165, !108}
!166 = !{!88, !86, i64 72}
!167 = !{!105, !86, i64 56}
!168 = distinct !{!168, !108}
!169 = !{!105, !80, i64 52}
!170 = distinct !{!170, !108}
!171 = distinct !{!171, !108}
!172 = !{!"function_entry_count", i64 1}
!173 = !{!86, !86, i64 0}
!174 = !{!"branch_weights", i32 36, i32 19}
!175 = !{!"branch_weights", i32 8, i32 12}
!176 = !{!"branch_weights", i32 2, i32 52}
!177 = distinct !{!177, !108}
!178 = !{!179, !81, i64 478}
!179 = !{!"rtl_data", !180, i64 0, !181, i64 40, !182, i64 96, !183, i64 112, !185, i64 208, !186, i64 248, !80, i64 312, !83, i64 320, !83, i64 328, !83, i64 336, !83, i64 344, !83, i64 352, !83, i64 360, !83, i64 368, !83, i64 376, !83, i64 384, !83, i64 392, !86, i64 400, !83, i64 408, !83, i64 416, !83, i64 424, !80, i64 432, !80, i64 436, !80, i64 440, !80, i64 444, !80, i64 448, !80, i64 452, !83, i64 456, !81, i64 464, !81, i64 465, !81, i64 466, !81, i64 467, !81, i64 468, !81, i64 469, !81, i64 470, !81, i64 471, !81, i64 472, !81, i64 473, !81, i64 474, !81, i64 475, !81, i64 476, !81, i64 477, !81, i64 478, !81, i64 479, !81, i64 480, !81, i64 481, !81, i64 482, !81, i64 483, !81, i64 484, !81, i64 485}
!180 = !{!"expr_status", !80, i64 0, !80, i64 4, !80, i64 8, !83, i64 16, !83, i64 24, !83, i64 32}
!181 = !{!"emit_status", !80, i64 0, !80, i64 4, !83, i64 8, !83, i64 16, !83, i64 24, !80, i64 32, !80, i64 36, !80, i64 40, !80, i64 44, !83, i64 48}
!182 = !{!"varasm_status", !83, i64 0, !80, i64 8}
!183 = !{!"incoming_args", !80, i64 0, !80, i64 4, !80, i64 8, !83, i64 16, !184, i64 24, !83, i64 88}
!184 = !{!"ix86_args", !80, i64 0, !80, i64 4, !80, i64 8, !80, i64 12, !80, i64 16, !80, i64 20, !80, i64 24, !80, i64 28, !80, i64 32, !80, i64 36, !80, i64 40, !80, i64 44, !80, i64 48, !80, i64 52, !80, i64 56, !80, i64 60}
!185 = !{!"function_subsections", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32}
!186 = !{!"rtl_eh", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !81, i64 48}
!187 = !{!"branch_weights", i32 1, i32 2}
!188 = distinct !{!188, !108}
!189 = !{!"function_entry_count", i64 4}
!190 = !{!"cfgloopanal.c:seq_cost"}
!191 = !{!"branch_weights", i32 1, i32 159}
!192 = !{!"branch_weights", i32 63, i32 1}
!193 = !{!"branch_weights", i32 7, i32 1}
!194 = !{!"branch_weights", i32 1908874352, i32 238609296}
!195 = !{!"branch_weights", i32 159, i32 65}
!196 = distinct !{!196, !108}
!197 = !{!198, !80, i64 8}
!198 = !{!"param_info", !83, i64 0, !80, i64 8, !81, i64 12, !80, i64 16, !80, i64 20, !83, i64 24}
!199 = !{!"function_entry_count", i64 114}
!200 = !{!"branch_weights", i32 115, i32 1}
!201 = !{!97, !83, i64 0}
!202 = !{!88, !83, i64 56}
!203 = distinct !{!203, !108}
!204 = distinct !{!204, !108}
!205 = !{!"cfgloopanal.c:loop_outer"}
!206 = !{!"cfgloopanal.c:VEC_loop_p_base_length"}
!207 = !{!208, !80, i64 0}
!208 = !{!"VEC_loop_p_base", !80, i64 0, !80, i64 4, !81, i64 8}
!209 = !{!"cfgloopanal.c:ei_end_p"}
!210 = !{!"branch_weights", i32 367, i32 14831743}
!211 = !{!"cfgloopanal.c:ei_edge"}
!212 = !{!"function_entry_count", i64 24281942}
!213 = !{!"cfgloopanal.c:VEC_edge_base_length"}
!214 = !{!"branch_weights", i32 367, i32 24281577}
!215 = !{!216, !80, i64 0}
!216 = !{!"VEC_edge_base", !80, i64 0, !80, i64 4, !81, i64 8}
!217 = !{!"function_entry_count", i64 67463186}
!218 = !{!"cfgloopanal.c:ei_container"}
!219 = !{!"branch_weights", i32 1, i32 67463187}
!220 = !{!"cfgloopanal.c:VEC_edge_base_index"}
