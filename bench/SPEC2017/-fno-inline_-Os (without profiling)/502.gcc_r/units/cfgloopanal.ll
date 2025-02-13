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
define dso_local zeroext i8 @just_once_each_iteration_p(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %4, ptr noundef %1) #10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !16
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
define dso_local zeroext i8 @mark_irreducible_loops() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %3 = tail call fastcc i32 @number_of_loops() #12
  %4 = load ptr, ptr @cfun, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @.str.1) #10
  %9 = load ptr, ptr @cfun, align 8, !tbaa !17
  br label %10

10:                                               ; preds = %0, %8
  %11 = phi ptr [ %4, %0 ], [ %9, %8 ]
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %47, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %2, i64 8
  br label %20

20:                                               ; preds = %18, %38
  %21 = phi ptr [ %14, %18 ], [ %40, %38 ]
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !16
  %24 = and i32 %23, -5
  store i32 %24, ptr %22, align 8, !tbaa !16
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 1
  %26 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %25) #12
  store i32 0, ptr %2, align 8, !tbaa.struct !23
  store ptr %26, ptr %19, align 8, !tbaa.struct !25
  %27 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %26, ptr noundef nonnull %1) #12, !range !26
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %20, %29
  %30 = load ptr, ptr %1, align 8, !tbaa !17
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !27
  %33 = and i32 %32, -129
  store i32 %33, ptr %31, align 8, !tbaa !27
  call fastcc void @ei_next(ptr noundef nonnull %2) #12
  %34 = load i32, ptr %2, align 8
  %35 = load ptr, ptr %19, align 8
  %36 = call fastcc zeroext i8 @ei_cond(i32 %34, ptr %35, ptr noundef nonnull %1) #12, !range !26
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %29, !llvm.loop !29

38:                                               ; preds = %29, %20
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !17
  %41 = load ptr, ptr @cfun, align 8, !tbaa !17
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !20
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !21
  %46 = icmp eq ptr %40, %45
  br i1 %46, label %47, label %20, !llvm.loop !31

47:                                               ; preds = %38, %10
  %48 = phi ptr [ %13, %10 ], [ %43, %38 ]
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !32
  %51 = add nsw i32 %50, %3
  %52 = tail call ptr @new_graph(i32 noundef %51) #10
  %53 = load ptr, ptr @cfun, align 8, !tbaa !17
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !20
  %56 = load ptr, ptr %55, align 8, !tbaa !17
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !21
  %59 = icmp eq ptr %56, %58
  br i1 %59, label %148, label %60

60:                                               ; preds = %47
  %61 = getelementptr inbounds i8, ptr %2, i64 8
  br label %62

62:                                               ; preds = %60, %139
  %63 = phi ptr [ %56, %60 ], [ %141, %139 ]
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 1
  %65 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %64) #12
  store i32 0, ptr %2, align 8, !tbaa.struct !23
  store ptr %65, ptr %61, align 8, !tbaa.struct !25
  %66 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %65, ptr noundef nonnull %1) #12, !range !26
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %139, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 3
  br label %71

71:                                               ; preds = %68, %134
  %72 = load ptr, ptr %1, align 8, !tbaa !17
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !33
  %75 = load ptr, ptr @cfun, align 8, !tbaa !17
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !20
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !21
  %80 = icmp eq ptr %74, %79
  br i1 %80, label %134, label %81

81:                                               ; preds = %71
  %82 = load i32, ptr %69, align 8, !tbaa !34
  %83 = add nsw i32 %82, 1
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %85 = load i32, ptr %84, align 8, !tbaa !34
  %86 = add nsw i32 %85, 1
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !14
  %89 = getelementptr inbounds %struct.loop, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !35
  %91 = icmp eq ptr %90, %74
  br i1 %91, label %92, label %101

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.loop, ptr %88, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  %95 = icmp eq ptr %94, %63
  br i1 %95, label %134, label %96

96:                                               ; preds = %92
  %97 = load i32, ptr %88, align 8, !tbaa !36
  %98 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 5
  %99 = load i32, ptr %98, align 8, !tbaa !32
  %100 = add nsw i32 %99, %97
  br label %101

101:                                              ; preds = %81, %96
  %102 = phi i32 [ %100, %96 ], [ %86, %81 ]
  %103 = load ptr, ptr %70, align 8, !tbaa !14
  %104 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %103, ptr noundef nonnull %74) #10
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %101
  %107 = load ptr, ptr %70, align 8, !tbaa !14
  %108 = load ptr, ptr %73, align 8, !tbaa !33
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !14
  %111 = tail call ptr @find_common_loop(ptr noundef %107, ptr noundef %110) #10
  %112 = tail call fastcc i32 @loop_depth(ptr noundef %111) #12
  %113 = add i32 %112, 1
  %114 = load ptr, ptr %70, align 8, !tbaa !14
  %115 = tail call fastcc i32 @loop_depth(ptr noundef %114) #12
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.loop, ptr %114, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !37
  %120 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %119, i32 noundef %113) #12
  br label %121

121:                                              ; preds = %106, %117
  %122 = phi ptr [ %120, %117 ], [ %114, %106 ]
  %123 = load i32, ptr %122, align 8, !tbaa !36
  %124 = load ptr, ptr @cfun, align 8, !tbaa !17
  %125 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !20
  %127 = getelementptr inbounds %struct.control_flow_graph, ptr %126, i64 0, i32 5
  %128 = load i32, ptr %127, align 8, !tbaa !32
  %129 = add nsw i32 %128, %123
  br label %130

130:                                              ; preds = %121, %101
  %131 = phi i32 [ %83, %101 ], [ %129, %121 ]
  %132 = tail call ptr @add_edge(ptr noundef %52, i32 noundef %131, i32 noundef %102) #10
  %133 = getelementptr inbounds %struct.graph_edge, ptr %132, i64 0, i32 4
  store ptr %72, ptr %133, align 8, !tbaa !38
  br label %134

134:                                              ; preds = %92, %71, %130
  call fastcc void @ei_next(ptr noundef nonnull %2) #12
  %135 = load i32, ptr %2, align 8
  %136 = load ptr, ptr %61, align 8
  %137 = call fastcc zeroext i8 @ei_cond(i32 %135, ptr %136, ptr noundef nonnull %1) #12, !range !26
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %71, !llvm.loop !40

139:                                              ; preds = %134, %62
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 6
  %141 = load ptr, ptr %140, align 8, !tbaa !17
  %142 = load ptr, ptr @cfun, align 8, !tbaa !17
  %143 = getelementptr inbounds %struct.function, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !20
  %145 = getelementptr inbounds %struct.control_flow_graph, ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !21
  %147 = icmp eq ptr %141, %146
  br i1 %147, label %148, label %62, !llvm.loop !41

148:                                              ; preds = %139, %47
  %149 = tail call i32 @graphds_scc(ptr noundef %52, ptr noundef null) #10
  %150 = load i32, ptr %52, align 8, !tbaa !42
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %221

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.graph, ptr %52, i64 0, i32 1
  br label %154

154:                                              ; preds = %152, %215
  %155 = phi i32 [ %150, %152 ], [ %216, %215 ]
  %156 = phi i64 [ 0, %152 ], [ %218, %215 ]
  %157 = phi i8 [ 0, %152 ], [ %217, %215 ]
  %158 = load ptr, ptr %153, align 8, !tbaa !44
  %159 = getelementptr inbounds %struct.vertex, ptr %158, i64 %156, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !17
  %161 = icmp eq ptr %160, null
  br i1 %161, label %215, label %162

162:                                              ; preds = %154, %208
  %163 = phi ptr [ %211, %208 ], [ %160, %154 ]
  %164 = phi i8 [ %209, %208 ], [ %157, %154 ]
  %165 = getelementptr inbounds %struct.graph_edge, ptr %163, i64 0, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !38
  %167 = load ptr, ptr %153, align 8, !tbaa !44
  %168 = load i32, ptr %163, align 8, !tbaa !45
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.vertex, ptr %167, i64 %169, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !46
  %172 = getelementptr inbounds %struct.graph_edge, ptr %163, i64 0, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !48
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.vertex, ptr %167, i64 %174, i32 2
  %176 = load i32, ptr %175, align 8, !tbaa !46
  %177 = icmp slt i32 %171, %176
  br i1 %177, label %178, label %188

178:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @.str.1) #10
  %179 = load ptr, ptr %153, align 8, !tbaa !44
  %180 = load i32, ptr %163, align 8, !tbaa !45
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.vertex, ptr %179, i64 %181, i32 2
  %183 = load i32, ptr %182, align 8, !tbaa !46
  %184 = load i32, ptr %172, align 4, !tbaa !48
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.vertex, ptr %179, i64 %185, i32 2
  %187 = load i32, ptr %186, align 8, !tbaa !46
  br label %188

188:                                              ; preds = %162, %178
  %189 = phi i32 [ %176, %162 ], [ %187, %178 ]
  %190 = phi i32 [ %171, %162 ], [ %183, %178 ]
  %191 = icmp eq i32 %190, %189
  br i1 %191, label %192, label %208

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.edge_def, ptr %166, i64 0, i32 7
  %194 = load i32, ptr %193, align 8, !tbaa !27
  %195 = or i32 %194, 128
  store i32 %195, ptr %193, align 8, !tbaa !27
  %196 = load ptr, ptr %166, align 8, !tbaa !49
  %197 = getelementptr inbounds %struct.basic_block_def, ptr %196, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !14
  %199 = getelementptr inbounds %struct.edge_def, ptr %166, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !33
  %201 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %198, ptr noundef %200) #10
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %192
  %204 = load ptr, ptr %166, align 8, !tbaa !49
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 13
  %206 = load i32, ptr %205, align 8, !tbaa !16
  %207 = or i32 %206, 4
  store i32 %207, ptr %205, align 8, !tbaa !16
  br label %208

208:                                              ; preds = %192, %203, %188
  %209 = phi i8 [ %164, %188 ], [ 1, %203 ], [ 1, %192 ]
  %210 = getelementptr inbounds %struct.graph_edge, ptr %163, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !17
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %162, !llvm.loop !50

213:                                              ; preds = %208
  %214 = load i32, ptr %52, align 8, !tbaa !42
  br label %215

215:                                              ; preds = %213, %154
  %216 = phi i32 [ %155, %154 ], [ %214, %213 ]
  %217 = phi i8 [ %157, %154 ], [ %209, %213 ]
  %218 = add nuw nsw i64 %156, 1
  %219 = sext i32 %216 to i64
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %154, label %221, !llvm.loop !51

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
define internal fastcc i32 @number_of_loops() unnamed_addr #3 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !17
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #12
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #12, !range !26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #12
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !17
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #12
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #12
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #10
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !54
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare ptr @new_graph(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #12
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @add_edge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @graphds_scc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_graph(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set() unnamed_addr #6 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !17
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = load i32, ptr %3, align 8, !tbaa !56
  %5 = or i32 %4, 4
  store i32 %5, ptr %3, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @num_loop_insns(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %1
  %7 = zext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %36
  %9 = phi i64 [ 0, %6 ], [ %38, %36 ]
  %10 = phi i32 [ 0, %6 ], [ %37, %36 ]
  %11 = getelementptr inbounds ptr, ptr %2, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !58
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
  %34 = load ptr, ptr %33, align 8, !tbaa !58
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %22, !llvm.loop !61

36:                                               ; preds = %26, %22, %8
  %37 = phi i32 [ %10, %8 ], [ %24, %22 ], [ %32, %26 ]
  %38 = add nuw nsw i64 %9, 1
  %39 = icmp eq i64 %38, %7
  br i1 %39, label %40, label %8, !llvm.loop !62

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
define dso_local i32 @average_num_loop_insns(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @free(ptr noundef %2) #12
  br label %59

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !63
  %12 = icmp eq i32 %11, 0
  %13 = zext i32 %4 to i64
  br label %14

14:                                               ; preds = %7, %49
  %15 = phi i64 [ 0, %7 ], [ %54, %49 ]
  %16 = phi i32 [ 0, %7 ], [ %53, %49 ]
  %17 = getelementptr inbounds ptr, ptr %2, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !58
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
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %28, !llvm.loop !64

42:                                               ; preds = %28, %32, %14
  %43 = phi i32 [ 0, %14 ], [ %38, %32 ], [ %30, %28 ]
  br i1 %12, label %49, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 11
  %46 = load i32, ptr %45, align 8, !tbaa !63
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
  br i1 %55, label %56, label %14, !llvm.loop !65

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
define dso_local i64 @expected_loop_iterations_unbounded(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 8
  %7 = load i64, ptr %6, align 8, !tbaa !66
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  br i1 %8, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !66
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %1, %11
  %16 = tail call fastcc ptr @ei_start_1(ptr noundef %10) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !23
  %17 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %16, ptr %17, align 8, !tbaa.struct !25
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %16, ptr noundef nonnull %2) #12, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %15, %20
  %21 = phi i64 [ %31, %20 ], [ 0, %15 ]
  %22 = phi i64 [ %29, %20 ], [ 0, %15 ]
  %23 = load ptr, ptr %2, align 8, !tbaa !17
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = load ptr, ptr %4, align 8, !tbaa !5
  %26 = icmp eq ptr %24, %25
  %27 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 9
  %28 = load i64, ptr %27, align 8, !tbaa !67
  %29 = select i1 %26, i64 %28, i64 %22
  %30 = select i1 %26, i64 0, i64 %28
  %31 = add nsw i64 %21, %30
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %32 = load i32, ptr %3, align 8
  %33 = load ptr, ptr %17, align 8
  %34 = call fastcc zeroext i8 @ei_cond(i32 %32, ptr %33, ptr noundef nonnull %2) #12, !range !26
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %20, !llvm.loop !68

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
  store i32 0, ptr %3, align 8, !tbaa.struct !23
  %47 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %46, ptr %47, align 8, !tbaa.struct !25
  %48 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %2) #12, !range !26
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %45, %50
  %51 = phi i32 [ %66, %50 ], [ 0, %45 ]
  %52 = phi i32 [ %65, %50 ], [ 0, %45 ]
  %53 = load ptr, ptr %2, align 8, !tbaa !17
  %54 = load ptr, ptr %53, align 8, !tbaa !49
  %55 = load ptr, ptr %4, align 8, !tbaa !5
  %56 = icmp eq ptr %54, %55
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 11
  %58 = load i32, ptr %57, align 8, !tbaa !63
  %59 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 8
  %60 = load i32, ptr %59, align 4, !tbaa !69
  %61 = mul nsw i32 %60, %58
  %62 = add nsw i32 %61, 5000
  %63 = sdiv i32 %62, 10000
  %64 = select i1 %56, i32 0, i32 %63
  %65 = add nsw i32 %52, %64
  %66 = select i1 %56, i32 %63, i32 %51
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %67 = load i32, ptr %3, align 8
  %68 = load ptr, ptr %47, align 8
  %69 = call fastcc zeroext i8 @ei_cond(i32 %67, ptr %68, ptr noundef nonnull %2) #12, !range !26
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %50, !llvm.loop !70

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
define dso_local i32 @expected_loop_iterations(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @expected_loop_iterations_unbounded(ptr noundef %0) #12
  %3 = tail call i64 @llvm.smin.i64(i64 %2, i64 10000)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_loop_level(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !17
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
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !71

15:                                               ; preds = %5, %1
  %16 = phi i32 [ 0, %1 ], [ %11, %5 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_set_costs() local_unnamed_addr #0 {
  %1 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 53) #10
  %2 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 54) #10
  %3 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 55) #10
  %4 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %3) #10
  %5 = tail call ptr @validize_mem(ptr noundef %4) #10
  store i32 0, ptr @target_avail_regs, align 4, !tbaa !24
  %6 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 13), align 8, !tbaa !72
  br label %7

7:                                                ; preds = %0, %19
  %8 = phi i64 [ 0, %0 ], [ %21, %19 ]
  %9 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %10 = shl nuw nsw i64 1, %8
  %11 = and i64 %6, %10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %8
  %15 = load i8, ptr %14, align 1, !tbaa !58
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = add i32 %9, 1
  store i32 %18, ptr @target_avail_regs, align 4, !tbaa !24
  br label %19

19:                                               ; preds = %7, %13, %17
  %20 = phi i32 [ %9, %7 ], [ %9, %13 ], [ %18, %17 ]
  %21 = add nuw nsw i64 %8, 1
  %22 = icmp eq i64 %21, 53
  br i1 %22, label %23, label %7, !llvm.loop !73

23:                                               ; preds = %19
  store i32 3, ptr @target_res_regs, align 4, !tbaa !24
  br label %24

24:                                               ; preds = %23, %24
  %25 = phi i1 [ true, %23 ], [ false, %24 ]
  %26 = phi i64 [ 0, %23 ], [ 1, %24 ]
  %27 = trunc i64 %26 to i8
  store i8 %27, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !74
  tail call void @start_sequence() #10
  %28 = tail call ptr @emit_move_insn(ptr noundef %1, ptr noundef %2) #10
  %29 = tail call ptr @get_insns() #10
  tail call void @end_sequence() #10
  %30 = tail call fastcc i32 @seq_cost(ptr noundef %29, i8 noundef zeroext %27) #12
  %31 = getelementptr inbounds [2 x i32], ptr @target_reg_cost, i64 0, i64 %26
  store i32 %30, ptr %31, align 4, !tbaa !24
  tail call void @start_sequence() #10
  %32 = tail call ptr @emit_move_insn(ptr noundef %5, ptr noundef %1) #10
  %33 = tail call ptr @emit_move_insn(ptr noundef %2, ptr noundef %5) #10
  %34 = tail call ptr @get_insns() #10
  tail call void @end_sequence() #10
  %35 = tail call fastcc i32 @seq_cost(ptr noundef %34, i8 noundef zeroext %27) #12
  %36 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %26
  store i32 %35, ptr %36, align 4, !tbaa !24
  br i1 %25, label %24, label %37, !llvm.loop !83

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
define internal fastcc i32 @seq_cost(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2, %23
  %5 = phi ptr [ %27, %23 ], [ %0, %2 ]
  %6 = phi i32 [ %25, %23 ], [ 0, %2 ]
  %7 = load i32, ptr %5, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %13) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %11, %17
  %21 = phi ptr [ %18, %17 ], [ %13, %11 ]
  %22 = tail call i32 @rtx_cost(ptr noundef nonnull %21, i32 noundef 23, i8 noundef zeroext %1) #10
  br label %23

23:                                               ; preds = %4, %17, %20
  %24 = phi i32 [ %22, %20 ], [ 1, %17 ], [ 1, %4 ]
  %25 = add i32 %24, %6
  %26 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %4, !llvm.loop !84

29:                                               ; preds = %23, %2
  %30 = phi i32 [ 0, %2 ], [ %25, %23 ]
  ret i32 %30
}

; Function Attrs: optsize
declare void @default_rtl_profile() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @estimate_reg_pressure_cost(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = add i32 %1, %0
  %5 = load i32, ptr @target_res_regs, align 4, !tbaa !24
  %6 = add i32 %5, %4
  %7 = load i32, ptr @target_avail_regs, align 4, !tbaa !24
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = icmp ugt i32 %4, %7
  %11 = zext i8 %2 to i64
  %12 = getelementptr inbounds [2 x i32], ptr @target_reg_cost, i64 0, i64 %11
  %13 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %11
  %14 = select i1 %10, ptr %13, ptr %12
  %15 = load i32, ptr %14, align 4, !tbaa !24
  %16 = mul i32 %15, %0
  %17 = load i32, ptr @optimize, align 4, !tbaa !24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %9
  %20 = load i32, ptr @flag_ira_region, align 4
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @number_of_loops() #12
  %25 = load ptr, ptr @compiler_params, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.param_info, ptr %25, i64 105, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !85
  %28 = icmp ule i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = lshr i32 %16, %29
  br label %31

31:                                               ; preds = %23, %9, %19, %3
  %32 = phi i32 [ 0, %3 ], [ %16, %19 ], [ %16, %9 ], [ %30, %23 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_loop_exit_edges() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  %3 = tail call fastcc i32 @number_of_loops() #12
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %55, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !21
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
  store i32 0, ptr %2, align 8, !tbaa.struct !23
  store ptr %20, ptr %16, align 8, !tbaa.struct !25
  %21 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %20, ptr noundef nonnull %1) #12, !range !26
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 3
  br label %25

25:                                               ; preds = %23, %41
  %26 = load ptr, ptr %24, align 8, !tbaa !14
  %27 = tail call fastcc ptr @loop_outer(ptr noundef %26) #12
  %28 = icmp eq ptr %27, null
  %29 = load ptr, ptr %1, align 8, !tbaa !17
  br i1 %28, label %37, label %30

30:                                               ; preds = %25
  %31 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %26, ptr noundef %29) #10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !27
  %36 = or i32 %35, 512
  store i32 %36, ptr %34, align 8, !tbaa !27
  br label %41

37:                                               ; preds = %30, %25
  %38 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !27
  %40 = and i32 %39, -513
  store i32 %40, ptr %38, align 8, !tbaa !27
  br label %41

41:                                               ; preds = %33, %37
  call fastcc void @ei_next(ptr noundef nonnull %2) #12
  %42 = load i32, ptr %2, align 8
  %43 = load ptr, ptr %16, align 8
  %44 = call fastcc zeroext i8 @ei_cond(i32 %42, ptr %43, ptr noundef nonnull %1) #12, !range !26
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %25, !llvm.loop !89

46:                                               ; preds = %41, %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !88
  %49 = load ptr, ptr @cfun, align 8, !tbaa !17
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !20
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !21
  %54 = icmp eq ptr %48, %53
  br i1 %54, label %55, label %17, !llvm.loop !90

55:                                               ; preds = %46, %5, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !37
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
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !91
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #12
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #12
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !93
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #10
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !17
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"loop", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !11, i64 24, !7, i64 32, !7, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !12, i64 80, !12, i64 96, !8, i64 112, !8, i64 113, !7, i64 116, !10, i64 120, !10, i64 128, !8, i64 136, !10, i64 144}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"lpt_decision", !7, i64 0, !7, i64 4}
!12 = !{!"", !13, i64 0, !13, i64 8}
!13 = !{!"long", !8, i64 0}
!14 = !{!15, !10, i64 24}
!15 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !8, i64 32, !10, i64 48, !10, i64 56, !8, i64 64, !13, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!16 = !{!15, !7, i64 96}
!17 = !{!10, !10, i64 0}
!18 = !{!19, !10, i64 32}
!19 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !10, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!20 = !{!19, !10, i64 8}
!21 = !{!22, !10, i64 8}
!22 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!23 = !{i64 0, i64 4, !24, i64 8, i64 8, !17}
!24 = !{!7, !7, i64 0}
!25 = !{i64 0, i64 8, !17}
!26 = !{i8 0, i8 2}
!27 = !{!28, !7, i64 48}
!28 = !{!"edge_def", !10, i64 0, !10, i64 8, !8, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !13, i64 56}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = distinct !{!31, !30}
!32 = !{!22, !7, i64 32}
!33 = !{!28, !10, i64 8}
!34 = !{!15, !7, i64 80}
!35 = !{!6, !10, i64 8}
!36 = !{!6, !7, i64 0}
!37 = !{!6, !10, i64 40}
!38 = !{!39, !10, i64 24}
!39 = !{!"graph_edge", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !10, i64 24}
!40 = distinct !{!40, !30}
!41 = distinct !{!41, !30}
!42 = !{!43, !7, i64 0}
!43 = !{!"graph", !7, i64 0, !10, i64 8, !10, i64 16}
!44 = !{!43, !10, i64 8}
!45 = !{!39, !7, i64 0}
!46 = !{!47, !7, i64 16}
!47 = !{!"vertex", !10, i64 0, !10, i64 8, !7, i64 16, !7, i64 20, !10, i64 24}
!48 = !{!39, !7, i64 4}
!49 = !{!28, !10, i64 0}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30}
!52 = !{!53, !10, i64 8}
!53 = !{!"loops", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!54 = !{!55, !7, i64 0}
!55 = !{!"", !7, i64 0, !10, i64 8}
!56 = !{!53, !7, i64 0}
!57 = !{!6, !7, i64 36}
!58 = !{!8, !8, i64 0}
!59 = !{!60, !10, i64 8}
!60 = !{!"rtl_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
!63 = !{!15, !7, i64 88}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = !{!15, !13, i64 72}
!67 = !{!28, !13, i64 56}
!68 = distinct !{!68, !30}
!69 = !{!28, !7, i64 52}
!70 = distinct !{!70, !30}
!71 = distinct !{!71, !30}
!72 = !{!13, !13, i64 0}
!73 = distinct !{!73, !30}
!74 = !{!75, !8, i64 478}
!75 = !{!"rtl_data", !76, i64 0, !77, i64 40, !78, i64 96, !79, i64 112, !81, i64 208, !82, i64 248, !7, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !10, i64 376, !10, i64 384, !10, i64 392, !13, i64 400, !10, i64 408, !10, i64 416, !10, i64 424, !7, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !10, i64 456, !8, i64 464, !8, i64 465, !8, i64 466, !8, i64 467, !8, i64 468, !8, i64 469, !8, i64 470, !8, i64 471, !8, i64 472, !8, i64 473, !8, i64 474, !8, i64 475, !8, i64 476, !8, i64 477, !8, i64 478, !8, i64 479, !8, i64 480, !8, i64 481, !8, i64 482, !8, i64 483, !8, i64 484, !8, i64 485}
!76 = !{!"expr_status", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!77 = !{!"emit_status", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !10, i64 48}
!78 = !{!"varasm_status", !10, i64 0, !7, i64 8}
!79 = !{!"incoming_args", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !80, i64 24, !10, i64 88}
!80 = !{!"ix86_args", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60}
!81 = !{!"function_subsections", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!82 = !{!"rtl_eh", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !8, i64 48}
!83 = distinct !{!83, !30}
!84 = distinct !{!84, !30}
!85 = !{!86, !7, i64 8}
!86 = !{!"param_info", !10, i64 0, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 20, !10, i64 24}
!87 = !{!22, !10, i64 0}
!88 = !{!15, !10, i64 56}
!89 = distinct !{!89, !30}
!90 = distinct !{!90, !30}
!91 = !{!92, !7, i64 0}
!92 = !{!"VEC_loop_p_base", !7, i64 0, !7, i64 4, !8, i64 8}
!93 = !{!94, !7, i64 0}
!94 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
