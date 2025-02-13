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
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }

@target_avail_regs = dso_local local_unnamed_addr global i32 0, align 4
@target_res_regs = dso_local local_unnamed_addr global i32 0, align 4
@target_reg_cost = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@target_spill_cost = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"cfgloopanal.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_ira_region = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @just_once_each_iteration_p(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !90 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %4, ptr noundef %1) #10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7, !prof !100

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %17, !prof !103

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !104
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
define dso_local zeroext i8 @mark_irreducible_loops() local_unnamed_addr #0 !prof !105 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %3 = tail call fastcc i32 @number_of_loops() #12
  %4 = load ptr, ptr @cfun, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !109

8:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @.str.1) #10
  %9 = load ptr, ptr @cfun, align 8, !tbaa !106
  br label %10

10:                                               ; preds = %0, %8
  %11 = phi ptr [ %4, %0 ], [ %9, %8 ]
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %47, label %18, !prof !113

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %2, i64 8
  br label %20

20:                                               ; preds = %18, %38
  %21 = phi ptr [ %14, %18 ], [ %40, %38 ]
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !104
  %24 = and i32 %23, -5
  store i32 %24, ptr %22, align 8, !tbaa !104
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 1
  %26 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %25) #12
  store i32 0, ptr %2, align 8, !tbaa.struct !114
  store ptr %26, ptr %19, align 8, !tbaa.struct !116
  %27 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %26, ptr noundef nonnull %1) #12, !range !117
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29, !prof !118

29:                                               ; preds = %20, %29
  %30 = load ptr, ptr %1, align 8, !tbaa !106
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !119
  %33 = and i32 %32, -129
  store i32 %33, ptr %31, align 8, !tbaa !119
  call fastcc void @ei_next(ptr noundef nonnull %2) #12
  %34 = load i32, ptr %2, align 8
  %35 = load ptr, ptr %19, align 8
  %36 = call fastcc zeroext i8 @ei_cond(i32 %34, ptr %35, ptr noundef nonnull %1) #12, !range !117
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %29, !prof !121, !llvm.loop !122

38:                                               ; preds = %29, %20
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !106
  %41 = load ptr, ptr @cfun, align 8, !tbaa !106
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !110
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !111
  %46 = icmp eq ptr %40, %45
  br i1 %46, label %47, label %20, !prof !124, !llvm.loop !125

47:                                               ; preds = %38, %10
  %48 = phi ptr [ %13, %10 ], [ %43, %38 ]
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !126
  %51 = add nsw i32 %50, %3
  %52 = tail call ptr @new_graph(i32 noundef %51) #10
  %53 = load ptr, ptr @cfun, align 8, !tbaa !106
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !110
  %56 = load ptr, ptr %55, align 8, !tbaa !106
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !111
  %59 = icmp eq ptr %56, %58
  br i1 %59, label %148, label %60, !prof !113

60:                                               ; preds = %47
  %61 = getelementptr inbounds i8, ptr %2, i64 8
  br label %62

62:                                               ; preds = %60, %139
  %63 = phi ptr [ %56, %60 ], [ %141, %139 ]
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 1
  %65 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %64) #12
  store i32 0, ptr %2, align 8, !tbaa.struct !114
  store ptr %65, ptr %61, align 8, !tbaa.struct !116
  %66 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %65, ptr noundef nonnull %1) #12, !range !117
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %139, label %68, !prof !118

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 3
  br label %71

71:                                               ; preds = %68, %134
  %72 = load ptr, ptr %1, align 8, !tbaa !106
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !127
  %75 = load ptr, ptr @cfun, align 8, !tbaa !106
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !110
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !111
  %80 = icmp eq ptr %74, %79
  br i1 %80, label %134, label %81, !prof !128

81:                                               ; preds = %71
  %82 = load i32, ptr %69, align 8, !tbaa !129
  %83 = add nsw i32 %82, 1
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %85 = load i32, ptr %84, align 8, !tbaa !129
  %86 = add nsw i32 %85, 1
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !101
  %89 = getelementptr inbounds %struct.loop, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !130
  %91 = icmp eq ptr %90, %74
  br i1 %91, label %92, label %101, !prof !131

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.loop, ptr %88, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !91
  %95 = icmp eq ptr %94, %63
  br i1 %95, label %134, label %96, !prof !132

96:                                               ; preds = %92
  %97 = load i32, ptr %88, align 8, !tbaa !133
  %98 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 5
  %99 = load i32, ptr %98, align 8, !tbaa !126
  %100 = add nsw i32 %99, %97
  br label %101

101:                                              ; preds = %81, %96
  %102 = phi i32 [ %100, %96 ], [ %86, %81 ]
  %103 = load ptr, ptr %70, align 8, !tbaa !101
  %104 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %103, ptr noundef nonnull %74) #10
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %130, !prof !134

106:                                              ; preds = %101
  %107 = load ptr, ptr %70, align 8, !tbaa !101
  %108 = load ptr, ptr %73, align 8, !tbaa !127
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !101
  %111 = tail call ptr @find_common_loop(ptr noundef %107, ptr noundef %110) #10
  %112 = tail call fastcc i32 @loop_depth(ptr noundef %111) #12
  %113 = add i32 %112, 1
  %114 = load ptr, ptr %70, align 8, !tbaa !101
  %115 = tail call fastcc i32 @loop_depth(ptr noundef %114) #12
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %121, label %117, !prof !135

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.loop, ptr %114, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !136
  %120 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %119, i32 noundef %113) #12
  br label %121

121:                                              ; preds = %106, %117
  %122 = phi ptr [ %120, %117 ], [ %114, %106 ]
  %123 = load i32, ptr %122, align 8, !tbaa !133
  %124 = load ptr, ptr @cfun, align 8, !tbaa !106
  %125 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !110
  %127 = getelementptr inbounds %struct.control_flow_graph, ptr %126, i64 0, i32 5
  %128 = load i32, ptr %127, align 8, !tbaa !126
  %129 = add nsw i32 %128, %123
  br label %130

130:                                              ; preds = %121, %101
  %131 = phi i32 [ %83, %101 ], [ %129, %121 ]
  %132 = tail call ptr @add_edge(ptr noundef %52, i32 noundef %131, i32 noundef %102) #10
  %133 = getelementptr inbounds %struct.graph_edge, ptr %132, i64 0, i32 4
  store ptr %72, ptr %133, align 8, !tbaa !137
  br label %134

134:                                              ; preds = %92, %71, %130
  call fastcc void @ei_next(ptr noundef nonnull %2) #12
  %135 = load i32, ptr %2, align 8
  %136 = load ptr, ptr %61, align 8
  %137 = call fastcc zeroext i8 @ei_cond(i32 %135, ptr %136, ptr noundef nonnull %1) #12, !range !117
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %71, !prof !121, !llvm.loop !139

139:                                              ; preds = %134, %62
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 6
  %141 = load ptr, ptr %140, align 8, !tbaa !106
  %142 = load ptr, ptr @cfun, align 8, !tbaa !106
  %143 = getelementptr inbounds %struct.function, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !110
  %145 = getelementptr inbounds %struct.control_flow_graph, ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !111
  %147 = icmp eq ptr %141, %146
  br i1 %147, label %148, label %62, !prof !124, !llvm.loop !140

148:                                              ; preds = %139, %47
  %149 = tail call i32 @graphds_scc(ptr noundef %52, ptr noundef null) #10
  %150 = load i32, ptr %52, align 8, !tbaa !141
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %221, !prof !143

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.graph, ptr %52, i64 0, i32 1
  br label %154

154:                                              ; preds = %152, %215
  %155 = phi i32 [ %150, %152 ], [ %216, %215 ]
  %156 = phi i64 [ 0, %152 ], [ %218, %215 ]
  %157 = phi i8 [ 0, %152 ], [ %217, %215 ]
  %158 = load ptr, ptr %153, align 8, !tbaa !144
  %159 = getelementptr inbounds %struct.vertex, ptr %158, i64 %156, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !106
  %161 = icmp eq ptr %160, null
  br i1 %161, label %215, label %162, !prof !145

162:                                              ; preds = %154, %208
  %163 = phi ptr [ %211, %208 ], [ %160, %154 ]
  %164 = phi i8 [ %209, %208 ], [ %157, %154 ]
  %165 = getelementptr inbounds %struct.graph_edge, ptr %163, i64 0, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !137
  %167 = load ptr, ptr %153, align 8, !tbaa !144
  %168 = load i32, ptr %163, align 8, !tbaa !146
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.vertex, ptr %167, i64 %169, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !147
  %172 = getelementptr inbounds %struct.graph_edge, ptr %163, i64 0, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !149
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.vertex, ptr %167, i64 %174, i32 2
  %176 = load i32, ptr %175, align 8, !tbaa !147
  %177 = icmp slt i32 %171, %176
  br i1 %177, label %178, label %188, !prof !150

178:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @.str.1) #10
  %179 = load ptr, ptr %153, align 8, !tbaa !144
  %180 = load i32, ptr %163, align 8, !tbaa !146
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.vertex, ptr %179, i64 %181, i32 2
  %183 = load i32, ptr %182, align 8, !tbaa !147
  %184 = load i32, ptr %172, align 4, !tbaa !149
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.vertex, ptr %179, i64 %185, i32 2
  %187 = load i32, ptr %186, align 8, !tbaa !147
  br label %188

188:                                              ; preds = %162, %178
  %189 = phi i32 [ %176, %162 ], [ %187, %178 ]
  %190 = phi i32 [ %171, %162 ], [ %183, %178 ]
  %191 = icmp eq i32 %190, %189
  br i1 %191, label %192, label %208, !prof !151

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.edge_def, ptr %166, i64 0, i32 7
  %194 = load i32, ptr %193, align 8, !tbaa !119
  %195 = or i32 %194, 128
  store i32 %195, ptr %193, align 8, !tbaa !119
  %196 = load ptr, ptr %166, align 8, !tbaa !152
  %197 = getelementptr inbounds %struct.basic_block_def, ptr %196, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !101
  %199 = getelementptr inbounds %struct.edge_def, ptr %166, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !127
  %201 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %198, ptr noundef %200) #10
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %208, label %203, !prof !153

203:                                              ; preds = %192
  %204 = load ptr, ptr %166, align 8, !tbaa !152
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 13
  %206 = load i32, ptr %205, align 8, !tbaa !104
  %207 = or i32 %206, 4
  store i32 %207, ptr %205, align 8, !tbaa !104
  br label %208

208:                                              ; preds = %192, %203, %188
  %209 = phi i8 [ %164, %188 ], [ 1, %203 ], [ 1, %192 ]
  %210 = getelementptr inbounds %struct.graph_edge, ptr %163, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !106
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %162, !prof !154, !llvm.loop !155

213:                                              ; preds = %208
  %214 = load i32, ptr %52, align 8, !tbaa !141
  br label %215

215:                                              ; preds = %213, %154
  %216 = phi i32 [ %155, %154 ], [ %214, %213 ]
  %217 = phi i8 [ %157, %154 ], [ %209, %213 ]
  %218 = add nuw nsw i64 %156, 1
  %219 = sext i32 %216 to i64
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %154, label %221, !prof !156, !llvm.loop !157

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
define internal fastcc i32 @number_of_loops() unnamed_addr #3 !prof !158 !PGOFuncName !159 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !106
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !160

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #12
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 !prof !163 !PGOFuncName !164 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !165 !PGOFuncName !166 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #12, !range !117
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !167

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #12
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !106
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !168 !PGOFuncName !169 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !170

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #12
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #12
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !171

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #10
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !172
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !172
  ret void
}

; Function Attrs: optsize
declare ptr @new_graph(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !174 !PGOFuncName !175 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #12
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !176 !PGOFuncName !177 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @add_edge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @graphds_scc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_graph(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set() unnamed_addr #6 !prof !105 !PGOFuncName !178 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !106
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = load i32, ptr %3, align 8, !tbaa !179
  %5 = or i32 %4, 4
  store i32 %5, ptr %3, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !180 !PGOFuncName !181 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !182

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !183
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !165 !PGOFuncName !185 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !186

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !168 !PGOFuncName !187 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !170

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #12
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #12
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !188 !PGOFuncName !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !190

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !191
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !193 !PGOFuncName !194 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !195

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #10
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !106
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !168 !PGOFuncName !196 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @num_loop_insns(ptr noundef %0) local_unnamed_addr #0 !prof !197 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !198
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !199

6:                                                ; preds = %1
  tail call void @free(ptr noundef %2) #12
  br label %43

7:                                                ; preds = %1
  %8 = zext i32 %4 to i64
  br label %9

9:                                                ; preds = %7, %37
  %10 = phi i64 [ 0, %7 ], [ %39, %37 ]
  %11 = phi i32 [ 0, %7 ], [ %38, %37 ]
  %12 = getelementptr inbounds ptr, ptr %2, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !200
  %16 = load ptr, ptr %15, align 8, !tbaa !200
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18, !prof !201

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !202
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !200
  br label %23

23:                                               ; preds = %18, %27
  %24 = phi ptr [ %16, %18 ], [ %35, %27 ]
  %25 = phi i32 [ %11, %18 ], [ %33, %27 ]
  %26 = icmp eq ptr %24, %22
  br i1 %26, label %37, label %27, !prof !204

27:                                               ; preds = %23
  %28 = load i32, ptr %24, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -8
  %31 = icmp ult i32 %30, 3
  %32 = zext i1 %31 to i32
  %33 = add i32 %25, %32
  %34 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !200
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %23, !prof !205, !llvm.loop !206

37:                                               ; preds = %27, %23, %9
  %38 = phi i32 [ %11, %9 ], [ %25, %23 ], [ %33, %27 ]
  %39 = add nuw nsw i64 %10, 1
  %40 = icmp eq i64 %39, %8
  br i1 %40, label %41, label %9, !prof !207, !llvm.loop !208

41:                                               ; preds = %37
  tail call void @free(ptr noundef %2) #12
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %43, label %44, !prof !209

43:                                               ; preds = %6, %41
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %38, %41 ], [ 1, %43 ]
  ret i32 %45
}

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @average_num_loop_insns(ptr noundef %0) local_unnamed_addr #0 !prof !210 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !198
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @free(ptr noundef %2) #12
  br label %59

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !130
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !211
  %12 = icmp eq i32 %11, 0
  %13 = zext i32 %4 to i64
  br label %14

14:                                               ; preds = %7, %49
  %15 = phi i64 [ 0, %7 ], [ %54, %49 ]
  %16 = phi i32 [ 0, %7 ], [ %53, %49 ]
  %17 = getelementptr inbounds ptr, ptr %2, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !200
  %21 = load ptr, ptr %20, align 8, !tbaa !200
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !202
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !200
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
  %40 = load ptr, ptr %39, align 8, !tbaa !200
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %28, !llvm.loop !212

42:                                               ; preds = %28, %32, %14
  %43 = phi i32 [ 0, %14 ], [ %38, %32 ], [ %30, %28 ]
  br i1 %12, label %49, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 11
  %46 = load i32, ptr %45, align 8, !tbaa !211
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
  br i1 %55, label %56, label %14, !llvm.loop !213

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
define dso_local i64 @expected_loop_iterations_unbounded(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !214 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 8
  %7 = load i64, ptr %6, align 8, !tbaa !215
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  br i1 %8, label %11, label %15, !prof !216

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !215
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %45, label %15, !prof !216

15:                                               ; preds = %1, %11
  %16 = tail call fastcc ptr @ei_start_1(ptr noundef %10) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !114
  %17 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %16, ptr %17, align 8, !tbaa.struct !116
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %16, ptr noundef nonnull %2) #12, !range !117
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %15, %20
  %21 = phi i64 [ %31, %20 ], [ 0, %15 ]
  %22 = phi i64 [ %29, %20 ], [ 0, %15 ]
  %23 = load ptr, ptr %2, align 8, !tbaa !106
  %24 = load ptr, ptr %23, align 8, !tbaa !152
  %25 = load ptr, ptr %4, align 8, !tbaa !91
  %26 = icmp eq ptr %24, %25
  %27 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 9
  %28 = load i64, ptr %27, align 8, !tbaa !217
  %29 = select i1 %26, i64 %28, i64 %22
  %30 = select i1 %26, i64 0, i64 %28
  %31 = add nsw i64 %21, %30
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %32 = load i32, ptr %3, align 8
  %33 = load ptr, ptr %17, align 8
  %34 = call fastcc zeroext i8 @ei_cond(i32 %32, ptr %33, ptr noundef nonnull %2) #12, !range !117
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %20, !llvm.loop !218

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
  store i32 0, ptr %3, align 8, !tbaa.struct !114
  %47 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %46, ptr %47, align 8, !tbaa.struct !116
  %48 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %2) #12, !range !117
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %73, label %50, !prof !219

50:                                               ; preds = %45, %50
  %51 = phi i32 [ %66, %50 ], [ 0, %45 ]
  %52 = phi i32 [ %65, %50 ], [ 0, %45 ]
  %53 = load ptr, ptr %2, align 8, !tbaa !106
  %54 = load ptr, ptr %53, align 8, !tbaa !152
  %55 = load ptr, ptr %4, align 8, !tbaa !91
  %56 = icmp eq ptr %54, %55
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 11
  %58 = load i32, ptr %57, align 8, !tbaa !211
  %59 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 8
  %60 = load i32, ptr %59, align 4, !tbaa !220
  %61 = mul nsw i32 %60, %58
  %62 = add nsw i32 %61, 5000
  %63 = sdiv i32 %62, 10000
  %64 = select i1 %56, i32 0, i32 %63, !prof !221
  %65 = add nsw i32 %52, %64
  %66 = select i1 %56, i32 %63, i32 %51, !prof !221
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %67 = load i32, ptr %3, align 8
  %68 = load ptr, ptr %47, align 8
  %69 = call fastcc zeroext i8 @ei_cond(i32 %67, ptr %68, ptr noundef nonnull %2) #12, !range !117
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %50, !prof !222, !llvm.loop !223

71:                                               ; preds = %50
  %72 = icmp eq i32 %65, 0
  br i1 %72, label %73, label %76, !prof !224

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
define dso_local i32 @expected_loop_iterations(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !214 {
  %2 = tail call i64 @expected_loop_iterations_unbounded(ptr noundef %0) #12
  %3 = tail call i64 @llvm.smin.i64(i64 %2, i64 10000)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_loop_level(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !210 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !106
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
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !225

15:                                               ; preds = %5, %1
  %16 = phi i32 [ 0, %1 ], [ %11, %5 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_set_costs() local_unnamed_addr #0 !prof !226 {
  %1 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 53) #10
  %2 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 54) #10
  %3 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 55) #10
  %4 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %3) #10
  %5 = tail call ptr @validize_mem(ptr noundef %4) #10
  store i32 0, ptr @target_avail_regs, align 4, !tbaa !115
  %6 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 13), align 8, !tbaa !227
  br label %7

7:                                                ; preds = %0, %19
  %8 = phi i64 [ 0, %0 ], [ %21, %19 ]
  %9 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %10 = shl nuw nsw i64 1, %8
  %11 = and i64 %6, %10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13, !prof !228

13:                                               ; preds = %7
  %14 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %8
  %15 = load i8, ptr %14, align 1, !tbaa !200
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19, !prof !229

17:                                               ; preds = %13
  %18 = add i32 %9, 1
  store i32 %18, ptr @target_avail_regs, align 4, !tbaa !115
  br label %19

19:                                               ; preds = %7, %13, %17
  %20 = phi i32 [ %9, %7 ], [ %9, %13 ], [ %18, %17 ]
  %21 = add nuw nsw i64 %8, 1
  %22 = icmp eq i64 %21, 53
  br i1 %22, label %23, label %7, !prof !230, !llvm.loop !231

23:                                               ; preds = %19
  store i32 3, ptr @target_res_regs, align 4, !tbaa !115
  br label %24

24:                                               ; preds = %23, %24
  %25 = phi i1 [ true, %23 ], [ false, %24 ]
  %26 = phi i64 [ 0, %23 ], [ 1, %24 ]
  %27 = trunc i64 %26 to i8
  store i8 %27, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !232
  tail call void @start_sequence() #10
  %28 = tail call ptr @emit_move_insn(ptr noundef %1, ptr noundef %2) #10
  %29 = tail call ptr @get_insns() #10
  tail call void @end_sequence() #10
  %30 = tail call fastcc i32 @seq_cost(ptr noundef %29, i8 noundef zeroext %27) #12
  %31 = getelementptr inbounds [2 x i32], ptr @target_reg_cost, i64 0, i64 %26
  store i32 %30, ptr %31, align 4, !tbaa !115
  tail call void @start_sequence() #10
  %32 = tail call ptr @emit_move_insn(ptr noundef %5, ptr noundef %1) #10
  %33 = tail call ptr @emit_move_insn(ptr noundef %2, ptr noundef %5) #10
  %34 = tail call ptr @get_insns() #10
  tail call void @end_sequence() #10
  %35 = tail call fastcc i32 @seq_cost(ptr noundef %34, i8 noundef zeroext %27) #12
  %36 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %26
  store i32 %35, ptr %36, align 4, !tbaa !115
  br i1 %25, label %24, label %37, !prof !241, !llvm.loop !242

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
define internal fastcc i32 @seq_cost(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !243 !PGOFuncName !244 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %29, label %4, !prof !245

4:                                                ; preds = %2, %23
  %5 = phi ptr [ %27, %23 ], [ %0, %2 ]
  %6 = phi i32 [ %25, %23 ], [ 0, %2 ]
  %7 = load i32, ptr %5, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %23, !prof !246

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !200
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %20, label %17, !prof !247

17:                                               ; preds = %11
  %18 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %13) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20, !prof !248

20:                                               ; preds = %11, %17
  %21 = phi ptr [ %18, %17 ], [ %13, %11 ]
  %22 = tail call i32 @rtx_cost(ptr noundef nonnull %21, i32 noundef 23, i8 noundef zeroext %1) #10
  br label %23

23:                                               ; preds = %4, %17, %20
  %24 = phi i32 [ %22, %20 ], [ 1, %17 ], [ 1, %4 ]
  %25 = add i32 %24, %6
  %26 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !200
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %4, !prof !249, !llvm.loop !250

29:                                               ; preds = %23, %2
  %30 = phi i32 [ 0, %2 ], [ %25, %23 ]
  ret i32 %30
}

; Function Attrs: optsize
declare void @default_rtl_profile() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @estimate_reg_pressure_cost(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 !prof !251 {
  %4 = add i32 %1, %0
  %5 = load i32, ptr @target_res_regs, align 4, !tbaa !115
  %6 = add i32 %5, %4
  %7 = load i32, ptr @target_avail_regs, align 4, !tbaa !115
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %31, !prof !252

9:                                                ; preds = %3
  %10 = icmp ugt i32 %4, %7
  %11 = zext i8 %2 to i64
  %12 = getelementptr inbounds [2 x i32], ptr @target_reg_cost, i64 0, i64 %11
  %13 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %11
  %14 = select i1 %10, ptr %13, ptr %12, !prof !253
  %15 = load i32, ptr %14, align 4, !tbaa !115
  %16 = mul i32 %15, %0
  %17 = load i32, ptr @optimize, align 4, !tbaa !115
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19, !prof !254

19:                                               ; preds = %9
  %20 = load i32, ptr @flag_ira_region, align 4
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %31, !prof !255

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @number_of_loops() #12
  %25 = load ptr, ptr @compiler_params, align 8, !tbaa !106
  %26 = getelementptr inbounds %struct.param_info, ptr %25, i64 105, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !256
  %28 = icmp ule i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = lshr i32 %16, %29
  br label %31

31:                                               ; preds = %23, %9, %19, %3
  %32 = phi i32 [ 0, %3 ], [ %16, %19 ], [ %16, %9 ], [ %30, %23 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_loop_exit_edges() local_unnamed_addr #0 !prof !258 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  %3 = tail call fastcc i32 @number_of_loops() #12
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %55, label %5, !prof !259

5:                                                ; preds = %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = load ptr, ptr %8, align 8, !tbaa !260
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !261
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %55, label %15, !prof !262

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, ptr %2, i64 8
  br label %17

17:                                               ; preds = %15, %46
  %18 = phi ptr [ %11, %15 ], [ %48, %46 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %20 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %19) #12
  store i32 0, ptr %2, align 8, !tbaa.struct !114
  store ptr %20, ptr %16, align 8, !tbaa.struct !116
  %21 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %20, ptr noundef nonnull %1) #12, !range !117
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %46, label %23, !prof !263

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 3
  br label %25

25:                                               ; preds = %23, %41
  %26 = load ptr, ptr %24, align 8, !tbaa !101
  %27 = tail call fastcc ptr @loop_outer(ptr noundef %26) #12
  %28 = icmp eq ptr %27, null
  %29 = load ptr, ptr %1, align 8, !tbaa !106
  br i1 %28, label %37, label %30, !prof !264

30:                                               ; preds = %25
  %31 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %26, ptr noundef %29) #10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33, !prof !265

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !119
  %36 = or i32 %35, 512
  store i32 %36, ptr %34, align 8, !tbaa !119
  br label %41

37:                                               ; preds = %30, %25
  %38 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !119
  %40 = and i32 %39, -513
  store i32 %40, ptr %38, align 8, !tbaa !119
  br label %41

41:                                               ; preds = %33, %37
  call fastcc void @ei_next(ptr noundef nonnull %2) #12
  %42 = load i32, ptr %2, align 8
  %43 = load ptr, ptr %16, align 8
  %44 = call fastcc zeroext i8 @ei_cond(i32 %42, ptr %43, ptr noundef nonnull %1) #12, !range !117
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %25, !prof !266, !llvm.loop !267

46:                                               ; preds = %41, %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !261
  %49 = load ptr, ptr @cfun, align 8, !tbaa !106
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !110
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !111
  %54 = icmp eq ptr %48, %53
  br i1 %54, label %55, label %17, !prof !268, !llvm.loop !269

55:                                               ; preds = %46, %5, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !270 !PGOFuncName !271 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !264

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!89}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!36 = !{ptr @just_once_each_iteration_p, ptr @dominated_by_p, i64 125063}
!37 = !{ptr @mark_irreducible_loops, ptr @number_of_loops, i64 97877}
!38 = !{ptr @mark_irreducible_loops, ptr @fancy_abort, i64 2}
!39 = !{ptr @mark_irreducible_loops, ptr @ei_start_1, i64 8496494}
!40 = !{ptr @mark_irreducible_loops, ptr @ei_cond, i64 21526488}
!41 = !{ptr @mark_irreducible_loops, ptr @ei_next, i64 13029994}
!42 = !{ptr @mark_irreducible_loops, ptr @new_graph, i64 97877}
!43 = !{ptr @mark_irreducible_loops, ptr @flow_bb_inside_loop_p, i64 6206760}
!44 = !{ptr @mark_irreducible_loops, ptr @find_common_loop, i64 342532}
!45 = !{ptr @mark_irreducible_loops, ptr @loop_depth, i64 685064}
!46 = !{ptr @mark_irreducible_loops, ptr @VEC_loop_p_base_index, i64 29701}
!47 = !{ptr @mark_irreducible_loops, ptr @add_edge, i64 6205869}
!48 = !{ptr @mark_irreducible_loops, ptr @graphds_scc, i64 97877}
!49 = !{ptr @mark_irreducible_loops, ptr @free_graph, i64 97877}
!50 = !{ptr @mark_irreducible_loops, ptr @loops_state_set, i64 97877}
!51 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 551638}
!52 = !{ptr @ei_cond, ptr @ei_end_p, i64 22910265}
!53 = !{ptr @ei_cond, ptr @ei_edge, i64 13882174}
!54 = !{ptr @ei_next, ptr @ei_container, i64 27764347}
!55 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 13882174}
!56 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!57 = !{ptr @loop_depth, ptr @VEC_loop_p_base_length, i64 685070}
!58 = !{ptr @ei_end_p, ptr @ei_container, i64 45805629}
!59 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 22910265}
!60 = !{ptr @ei_edge, ptr @ei_container, i64 27764347}
!61 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 13882174}
!62 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!63 = !{ptr @num_loop_insns, ptr @get_loop_body, i64 9070}
!64 = !{ptr @num_loop_insns, ptr @free, i64 9070}
!65 = !{ptr @expected_loop_iterations_unbounded, ptr @ei_start_1, i64 7319}
!66 = !{ptr @expected_loop_iterations_unbounded, ptr @ei_cond, i64 21992}
!67 = !{ptr @expected_loop_iterations_unbounded, ptr @ei_next, i64 14673}
!68 = !{ptr @expected_loop_iterations, ptr @expected_loop_iterations_unbounded, i64 7319}
!69 = !{ptr @init_set_costs, ptr @gen_raw_REG, i64 3}
!70 = !{ptr @init_set_costs, ptr @gen_rtx_MEM, i64 1}
!71 = !{ptr @init_set_costs, ptr @validize_mem, i64 1}
!72 = !{ptr @init_set_costs, ptr @start_sequence, i64 4}
!73 = !{ptr @init_set_costs, ptr @emit_move_insn, i64 6}
!74 = !{ptr @init_set_costs, ptr @get_insns, i64 4}
!75 = !{ptr @init_set_costs, ptr @end_sequence, i64 4}
!76 = !{ptr @init_set_costs, ptr @seq_cost, i64 4}
!77 = !{ptr @init_set_costs, ptr @default_rtl_profile, i64 1}
!78 = !{ptr @seq_cost, ptr @single_set_2, i64 1}
!79 = !{ptr @seq_cost, ptr @rtx_cost, i64 5}
!80 = !{ptr @estimate_reg_pressure_cost, ptr @number_of_loops, i64 433804}
!81 = !{ptr @mark_loop_exit_edges, ptr @number_of_loops, i64 19956}
!82 = !{ptr @mark_loop_exit_edges, ptr @ei_start_1, i64 524142}
!83 = !{ptr @mark_loop_exit_edges, ptr @ei_cond, i64 1361469}
!84 = !{ptr @mark_loop_exit_edges, ptr @loop_outer, i64 837327}
!85 = !{ptr @mark_loop_exit_edges, ptr @loop_exit_edge_p, i64 529432}
!86 = !{ptr @mark_loop_exit_edges, ptr @ei_next, i64 837327}
!87 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 837410}
!88 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 529485}
!89 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!90 = !{!"function_entry_count", i64 125063}
!91 = !{!92, !96, i64 16}
!92 = !{!"loop", !93, i64 0, !93, i64 4, !96, i64 8, !96, i64 16, !97, i64 24, !93, i64 32, !93, i64 36, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !98, i64 80, !98, i64 96, !94, i64 112, !94, i64 113, !93, i64 116, !96, i64 120, !96, i64 128, !94, i64 136, !96, i64 144}
!93 = !{!"int", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !{!"any pointer", !94, i64 0}
!97 = !{!"lpt_decision", !93, i64 0, !93, i64 4}
!98 = !{!"", !99, i64 0, !99, i64 8}
!99 = !{!"long", !94, i64 0}
!100 = !{!"branch_weights", i32 38687, i32 86378}
!101 = !{!102, !96, i64 24}
!102 = !{!"basic_block_def", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !94, i64 32, !96, i64 48, !96, i64 56, !94, i64 64, !99, i64 72, !93, i64 80, !93, i64 84, !93, i64 88, !93, i64 92, !93, i64 96}
!103 = !{!"branch_weights", i32 85721, i32 658}
!104 = !{!102, !93, i64 96}
!105 = !{!"function_entry_count", i64 97877}
!106 = !{!96, !96, i64 0}
!107 = !{!108, !96, i64 32}
!108 = !{!"function", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !96, i64 80, !96, i64 88, !96, i64 96, !93, i64 104, !93, i64 108, !93, i64 112, !93, i64 116, !93, i64 120, !93, i64 124, !96, i64 128, !93, i64 136, !93, i64 137, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139}
!109 = !{!"branch_weights", i32 1, i32 97878}
!110 = !{!108, !96, i64 8}
!111 = !{!112, !96, i64 8}
!112 = !{!"control_flow_graph", !96, i64 0, !96, i64 8, !96, i64 16, !93, i64 24, !93, i64 28, !93, i64 32, !96, i64 40, !93, i64 48, !94, i64 52, !94, i64 60, !93, i64 68, !93, i64 72}
!113 = !{!"branch_weights", i32 1, i32 97877}
!114 = !{i64 0, i64 4, !115, i64 8, i64 8, !106}
!115 = !{!93, !93, i64 0}
!116 = !{i64 0, i64 8, !106}
!117 = !{i8 0, i8 2}
!118 = !{!"branch_weights", i32 1, i32 4248289}
!119 = !{!120, !93, i64 48}
!120 = !{!"edge_def", !96, i64 0, !96, i64 8, !94, i64 16, !96, i64 24, !96, i64 32, !93, i64 40, !93, i64 44, !93, i64 48, !93, i64 52, !99, i64 56}
!121 = !{!"branch_weights", i32 4248289, i32 2266775}
!122 = distinct !{!122, !123}
!123 = !{!"llvm.loop.mustprogress"}
!124 = !{!"branch_weights", i32 97877, i32 4150413}
!125 = distinct !{!125, !123}
!126 = !{!112, !93, i64 32}
!127 = !{!120, !96, i64 8}
!128 = !{!"branch_weights", i32 102410, i32 6412655}
!129 = !{!102, !93, i64 80}
!130 = !{!92, !96, i64 8}
!131 = !{!"branch_weights", i32 413539, i32 5999117}
!132 = !{!"branch_weights", i32 206722, i32 206818}
!133 = !{!92, !93, i64 0}
!134 = !{!"branch_weights", i32 342536, i32 5863399}
!135 = !{!"branch_weights", i32 312836, i32 29701}
!136 = !{!92, !96, i64 40}
!137 = !{!138, !96, i64 24}
!138 = !{!"graph_edge", !93, i64 0, !93, i64 4, !96, i64 8, !96, i64 16, !96, i64 24}
!139 = distinct !{!139, !123}
!140 = distinct !{!140, !123}
!141 = !{!142, !93, i64 0}
!142 = !{!"graph", !93, i64 0, !96, i64 8, !96, i64 16}
!143 = !{!"branch_weights", i32 97877, i32 1}
!144 = !{!142, !96, i64 8}
!145 = !{!"branch_weights", i32 1, i32 4662862}
!146 = !{!138, !93, i64 0}
!147 = !{!148, !93, i64 16}
!148 = !{!"vertex", !96, i64 0, !96, i64 8, !93, i64 16, !93, i64 20, !96, i64 24}
!149 = !{!138, !93, i64 4}
!150 = !{!"branch_weights", i32 1, i32 6205934}
!151 = !{!"branch_weights", i32 891, i32 6205044}
!152 = !{!120, !96, i64 0}
!153 = !{!"branch_weights", i32 51, i32 841}
!154 = !{!"branch_weights", i32 4662862, i32 1543072}
!155 = distinct !{!155, !123}
!156 = !{!"branch_weights", i32 4564986, i32 97877}
!157 = distinct !{!157, !123}
!158 = !{!"function_entry_count", i64 551639}
!159 = !{!"cfgloopanal.c:number_of_loops"}
!160 = !{!"branch_weights", i32 1, i32 551640}
!161 = !{!162, !96, i64 8}
!162 = !{!"loops", !93, i64 0, !96, i64 8, !96, i64 16, !96, i64 24}
!163 = !{!"function_entry_count", i64 9028091}
!164 = !{!"cfgloopanal.c:ei_start_1"}
!165 = !{!"function_entry_count", i64 22910265}
!166 = !{!"cfgloopanal.c:ei_cond"}
!167 = !{!"branch_weights", i32 13882175, i32 9028092}
!168 = !{!"function_entry_count", i64 13882174}
!169 = !{!"cfgloopanal.c:ei_next"}
!170 = !{!"branch_weights", i32 1, i32 13882175}
!171 = !{!"branch_weights", i32 13882175, i32 1}
!172 = !{!173, !93, i64 0}
!173 = !{!"", !93, i64 0, !96, i64 8}
!174 = !{!"function_entry_count", i64 685070}
!175 = !{!"cfgloopanal.c:loop_depth"}
!176 = !{!"function_entry_count", i64 559185}
!177 = !{!"cfgloopanal.c:VEC_loop_p_base_index"}
!178 = !{!"cfgloopanal.c:loops_state_set"}
!179 = !{!162, !93, i64 0}
!180 = !{!"function_entry_count", i64 2074119}
!181 = !{!"cfgloopanal.c:VEC_loop_p_base_length"}
!182 = !{!"branch_weights", i32 498743, i32 1575378}
!183 = !{!184, !93, i64 0}
!184 = !{!"VEC_loop_p_base", !93, i64 0, !93, i64 4, !94, i64 8}
!185 = !{!"cfgloopanal.c:ei_end_p"}
!186 = !{!"branch_weights", i32 14901, i32 22895366}
!187 = !{!"cfgloopanal.c:ei_edge"}
!188 = !{!"function_entry_count", i64 36792439}
!189 = !{!"cfgloopanal.c:VEC_edge_base_length"}
!190 = !{!"branch_weights", i32 14901, i32 36777540}
!191 = !{!192, !93, i64 0}
!192 = !{!"VEC_edge_base", !93, i64 0, !93, i64 4, !94, i64 8}
!193 = !{!"function_entry_count", i64 101334326}
!194 = !{!"cfgloopanal.c:ei_container"}
!195 = !{!"branch_weights", i32 1, i32 101334327}
!196 = !{!"cfgloopanal.c:VEC_edge_base_index"}
!197 = !{!"function_entry_count", i64 9070}
!198 = !{!92, !93, i64 36}
!199 = !{!"branch_weights", i32 1, i32 9070}
!200 = !{!94, !94, i64 0}
!201 = !{!"branch_weights", i32 1, i32 183}
!202 = !{!203, !96, i64 8}
!203 = !{!"rtl_bb_info", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !93, i64 32}
!204 = !{!"branch_weights", i32 44979, i32 231540}
!205 = !{!"branch_weights", i32 183, i32 1105709}
!206 = distinct !{!206, !123}
!207 = !{!"branch_weights", i32 9070, i32 35909}
!208 = distinct !{!208, !123}
!209 = !{!"branch_weights", i32 1183681, i32 2146299967}
!210 = !{!"function_entry_count", i64 0}
!211 = !{!102, !93, i64 88}
!212 = distinct !{!212, !123}
!213 = distinct !{!213, !123}
!214 = !{!"function_entry_count", i64 7319}
!215 = !{!102, !99, i64 72}
!216 = !{!"branch_weights", i32 7320, i32 1}
!217 = !{!120, !99, i64 56}
!218 = distinct !{!218, !123}
!219 = !{!"branch_weights", i32 1, i32 7319}
!220 = !{!120, !93, i64 52}
!221 = !{!"branch_weights", i32 7320, i32 7320}
!222 = !{!"branch_weights", i32 7319, i32 7320}
!223 = distinct !{!223, !123}
!224 = !{!"branch_weights", i32 12614959, i32 2134868689}
!225 = distinct !{!225, !123}
!226 = !{!"function_entry_count", i64 1}
!227 = !{!99, !99, i64 0}
!228 = !{!"branch_weights", i32 36, i32 19}
!229 = !{!"branch_weights", i32 8, i32 12}
!230 = !{!"branch_weights", i32 2, i32 52}
!231 = distinct !{!231, !123}
!232 = !{!233, !94, i64 478}
!233 = !{!"rtl_data", !234, i64 0, !235, i64 40, !236, i64 96, !237, i64 112, !239, i64 208, !240, i64 248, !93, i64 312, !96, i64 320, !96, i64 328, !96, i64 336, !96, i64 344, !96, i64 352, !96, i64 360, !96, i64 368, !96, i64 376, !96, i64 384, !96, i64 392, !99, i64 400, !96, i64 408, !96, i64 416, !96, i64 424, !93, i64 432, !93, i64 436, !93, i64 440, !93, i64 444, !93, i64 448, !93, i64 452, !96, i64 456, !94, i64 464, !94, i64 465, !94, i64 466, !94, i64 467, !94, i64 468, !94, i64 469, !94, i64 470, !94, i64 471, !94, i64 472, !94, i64 473, !94, i64 474, !94, i64 475, !94, i64 476, !94, i64 477, !94, i64 478, !94, i64 479, !94, i64 480, !94, i64 481, !94, i64 482, !94, i64 483, !94, i64 484, !94, i64 485}
!234 = !{!"expr_status", !93, i64 0, !93, i64 4, !93, i64 8, !96, i64 16, !96, i64 24, !96, i64 32}
!235 = !{!"emit_status", !93, i64 0, !93, i64 4, !96, i64 8, !96, i64 16, !96, i64 24, !93, i64 32, !93, i64 36, !93, i64 40, !93, i64 44, !96, i64 48}
!236 = !{!"varasm_status", !96, i64 0, !93, i64 8}
!237 = !{!"incoming_args", !93, i64 0, !93, i64 4, !93, i64 8, !96, i64 16, !238, i64 24, !96, i64 88}
!238 = !{!"ix86_args", !93, i64 0, !93, i64 4, !93, i64 8, !93, i64 12, !93, i64 16, !93, i64 20, !93, i64 24, !93, i64 28, !93, i64 32, !93, i64 36, !93, i64 40, !93, i64 44, !93, i64 48, !93, i64 52, !93, i64 56, !93, i64 60}
!239 = !{!"function_subsections", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32}
!240 = !{!"rtl_eh", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !94, i64 48}
!241 = !{!"branch_weights", i32 1, i32 2}
!242 = distinct !{!242, !123}
!243 = !{!"function_entry_count", i64 4}
!244 = !{!"cfgloopanal.c:seq_cost"}
!245 = !{!"branch_weights", i32 1, i32 159}
!246 = !{!"branch_weights", i32 63, i32 1}
!247 = !{!"branch_weights", i32 7, i32 1}
!248 = !{!"branch_weights", i32 1908874352, i32 238609296}
!249 = !{!"branch_weights", i32 159, i32 65}
!250 = distinct !{!250, !123}
!251 = !{!"function_entry_count", i64 938439}
!252 = !{!"branch_weights", i32 433807, i32 504634}
!253 = !{!"branch_weights", i32 108980, i32 324828}
!254 = !{!"branch_weights", i32 1, i32 433807}
!255 = !{!"branch_weights", i32 -1354514999, i32 6778}
!256 = !{!257, !93, i64 8}
!257 = !{!"param_info", !96, i64 0, !93, i64 8, !94, i64 12, !93, i64 16, !93, i64 20, !96, i64 24}
!258 = !{!"function_entry_count", i64 19956}
!259 = !{!"branch_weights", i32 12352, i32 7606}
!260 = !{!112, !96, i64 0}
!261 = !{!102, !96, i64 56}
!262 = !{!"branch_weights", i32 1, i32 7605}
!263 = !{!"branch_weights", i32 1, i32 524194}
!264 = !{!"branch_weights", i32 307926, i32 529486}
!265 = !{!"branch_weights", i32 456994, i32 72493}
!266 = !{!"branch_weights", i32 524194, i32 313217}
!267 = distinct !{!267, !123}
!268 = !{!"branch_weights", i32 7605, i32 516590}
!269 = distinct !{!269, !123}
!270 = !{!"function_entry_count", i64 837410}
!271 = !{!"cfgloopanal.c:loop_outer"}
