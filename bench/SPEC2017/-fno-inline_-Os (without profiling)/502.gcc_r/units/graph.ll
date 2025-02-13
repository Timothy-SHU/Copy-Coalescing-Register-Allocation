; ModuleID = 'graph.c'
source_filename = "graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@graph_ext = internal unnamed_addr constant [2 x ptr] [ptr @.str.8, ptr @.str.9], align 16
@graph_dump_format = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@dump_for_graph = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"can't open %s: %m\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"graph.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"graph: {\0Aport_sharing: no\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".vcg\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"graph: { title: \22%s\22\0Afolding: 1\0Ahidden: 2\0Anode: { title: \22%s.0\22 }\0A\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"graph: {\0Atitle: \22%s.BB%d\22\0Afolding: 1\0Acolor: lightblue\0Alabel: \22basic block %d\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"\22\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"color: red \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"color: blue \00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"color: green \00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"edge: { sourcename: \22%s.%d\22 targetname: \22%s.%d\22 %s\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"class: %d \00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"edge: { sourcename: \22%s.0\22 targetname: \22%s.%d\22 }\0A\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"node: {\0A  title: \22%s.%d\22\0A  color: %s\0A  label: \22%s %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"lightgrey\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"darkgreen\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"darkgrey\0A  shape: ellipse\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@rtx_name = external local_unnamed_addr constant [139 x ptr], align 16
@note_insn_name = external local_unnamed_addr constant [13 x ptr], align 16
@.str.25 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"\22\0A}\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"node: { title: \22%s.999999\22 label: \22END\22 }\0A}\0A\00", align 1
@reltable.node_data = private unnamed_addr constant [6 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.node_data to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.node_data to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.node_data to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.node_data to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.node_data to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.node_data to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_rtl_graph_with_bb(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %6 = load i32, ptr @graph_dump_format, align 4, !tbaa !5
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [2 x ptr], ptr @graph_ext, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #12
  %11 = add i64 %10, 1
  %12 = add i64 %11, %5
  %13 = alloca i8, i64 %12, align 16
  %14 = load ptr, ptr @cfun, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %220, label %20

20:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %13, ptr align 1 %0, i64 %5, i1 false)
  %21 = getelementptr inbounds i8, ptr %13, i64 %5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr align 1 %9, i64 %11, i1 false)
  %22 = call ptr @fopen_unlocked(ptr noundef nonnull %13, ptr noundef nonnull @.str) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %220, label %24

24:                                               ; preds = %20
  %25 = icmp eq ptr %1, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = call i64 @fwrite(ptr nonnull @.str.1, i64 6, i64 1, ptr nonnull %22)
  br label %218

28:                                               ; preds = %24
  %29 = call i32 @get_max_uid() #13
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  %32 = call ptr @xmalloc(i64 noundef %31) #13
  %33 = call ptr @xmalloc(i64 noundef %31) #13
  %34 = call ptr @xmalloc(i64 noundef %31) #13
  %35 = icmp sgt i32 %29, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = zext nneg i32 %29 to i64
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i64 [ 0, %36 ], [ %43, %38 ]
  %40 = getelementptr inbounds i32, ptr %33, i64 %39
  store i32 -1, ptr %40, align 4, !tbaa !5
  %41 = getelementptr inbounds i32, ptr %32, i64 %39
  store i32 -1, ptr %41, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, ptr %34, i64 %39
  store i32 0, ptr %42, align 4, !tbaa !5
  %43 = add nuw nsw i64 %39, 1
  %44 = icmp eq i64 %43, %37
  br i1 %44, label %45, label %38, !llvm.loop !15

45:                                               ; preds = %38, %28
  %46 = load ptr, ptr @cfun, align 8, !tbaa !9
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !11
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !17
  %51 = load ptr, ptr %48, align 8, !tbaa !18
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !19
  %54 = icmp eq ptr %53, %51
  br i1 %54, label %97, label %55

55:                                               ; preds = %45, %93
  %56 = phi ptr [ %95, %93 ], [ %53, %45 ]
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !22
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !23
  %61 = load ptr, ptr %60, align 8, !tbaa !24
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !23
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %32, i64 %64
  store i32 %58, ptr %65, align 4, !tbaa !5
  %66 = load ptr, ptr %59, align 8, !tbaa !23
  %67 = getelementptr inbounds %struct.rtl_bb_info, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !26
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !23
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %33, i64 %71
  store i32 %58, ptr %72, align 4, !tbaa !5
  %73 = load ptr, ptr %59, align 8, !tbaa !23
  %74 = load ptr, ptr %73, align 8, !tbaa !23
  %75 = icmp eq ptr %74, null
  br i1 %75, label %93, label %80

76:                                               ; preds = %80
  %77 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !23
  %79 = icmp eq ptr %78, null
  br i1 %79, label %93, label %80, !llvm.loop !27

80:                                               ; preds = %55, %76
  %81 = phi ptr [ %78, %76 ], [ %74, %55 ]
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !23
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %34, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !5
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 1, i32 2
  store i32 %88, ptr %85, align 4, !tbaa !5
  %89 = load ptr, ptr %59, align 8, !tbaa !23
  %90 = getelementptr inbounds %struct.rtl_bb_info, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !26
  %92 = icmp eq ptr %81, %91
  br i1 %92, label %93, label %76

93:                                               ; preds = %76, %80, %55
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !19
  %96 = icmp eq ptr %95, %51
  br i1 %96, label %97, label %55, !llvm.loop !28

97:                                               ; preds = %93, %45
  store i32 1, ptr @dump_for_graph, align 4, !tbaa !5
  call fastcc void @start_fct(ptr noundef nonnull %22) #12
  %98 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %99 = load ptr, ptr %98, align 8, !tbaa !23
  %100 = icmp eq ptr %99, null
  br i1 %100, label %217, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds i8, ptr %4, i64 8
  br label %103

103:                                              ; preds = %101, %213
  %104 = phi ptr [ %99, %101 ], [ %215, %213 ]
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !23
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, ptr %32, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !5
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %103
  %112 = getelementptr inbounds i32, ptr %33, i64 %107
  %113 = load i32, ptr %112, align 4, !tbaa !5
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load i32, ptr %104, align 8
  %117 = trunc i32 %116 to i16
  switch i16 %117, label %122 [
    i16 11, label %213
    i16 13, label %213
  ]

118:                                              ; preds = %103
  call fastcc void @start_bb(ptr noundef nonnull %22, i32 noundef %109) #12
  %119 = icmp eq i32 %109, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %118
  %121 = load i32, ptr %105, align 8, !tbaa !23
  call fastcc void @draw_edge(ptr noundef nonnull %22, i32 noundef 0, i32 noundef %121, i32 noundef 1, i32 noundef 0) #12
  br label %122

122:                                              ; preds = %111, %115, %118, %120
  call fastcc void @node_data(ptr noundef nonnull %22, ptr noundef nonnull %104) #12
  %123 = call ptr @next_nonnote_insn(ptr noundef nonnull %104) #13
  %124 = load i32, ptr %105, align 8, !tbaa !23
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %33, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !5
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %129, label %183

129:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %130 = load ptr, ptr @cfun, align 8, !tbaa !9
  %131 = getelementptr inbounds %struct.function, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !11
  %133 = getelementptr inbounds %struct.control_flow_graph, ptr %132, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !13
  %135 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %134, i32 noundef %127) #12
  call fastcc void @end_bb(ptr noundef nonnull %22) #12
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 1
  %137 = call fastcc ptr @ei_start_1(ptr noundef nonnull %136) #12
  store i32 0, ptr %4, align 8, !tbaa.struct !29
  store ptr %137, ptr %102, align 8, !tbaa.struct !30
  %138 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %137, ptr noundef nonnull %3) #12, !range !31
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %183

141:                                              ; preds = %129
  %142 = icmp ne ptr %123, null
  %143 = zext i1 %142 to i32
  %144 = icmp eq ptr %123, null
  br label %145

145:                                              ; preds = %141, %174
  %146 = phi i32 [ 0, %141 ], [ %176, %174 ]
  %147 = load ptr, ptr %3, align 8, !tbaa !9
  %148 = getelementptr inbounds %struct.edge_def, ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !32
  %150 = load ptr, ptr @cfun, align 8, !tbaa !9
  %151 = getelementptr inbounds %struct.function, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !11
  %153 = getelementptr inbounds %struct.control_flow_graph, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !17
  %155 = icmp eq ptr %149, %154
  br i1 %155, label %169, label %156

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 7
  %158 = load ptr, ptr %157, align 8, !tbaa !23
  %159 = load ptr, ptr %158, align 8, !tbaa !24
  %160 = load i32, ptr %105, align 8, !tbaa !23
  %161 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  %162 = load i32, ptr %161, align 8, !tbaa !23
  %163 = icmp ne ptr %123, %159
  %164 = zext i1 %163 to i32
  %165 = getelementptr inbounds %struct.edge_def, ptr %147, i64 0, i32 7
  %166 = load i32, ptr %165, align 8, !tbaa !34
  %167 = and i32 %166, 2
  call fastcc void @draw_edge(ptr noundef nonnull %22, i32 noundef %160, i32 noundef %162, i32 noundef %164, i32 noundef %167) #12
  %168 = icmp eq ptr %159, %123
  br label %174

169:                                              ; preds = %145
  %170 = load i32, ptr %105, align 8, !tbaa !23
  %171 = getelementptr inbounds %struct.edge_def, ptr %147, i64 0, i32 7
  %172 = load i32, ptr %171, align 8, !tbaa !34
  %173 = and i32 %172, 2
  call fastcc void @draw_edge(ptr noundef nonnull %22, i32 noundef %170, i32 noundef 999999, i32 noundef %143, i32 noundef %173) #12
  br label %174

174:                                              ; preds = %169, %156
  %175 = phi i1 [ %144, %169 ], [ %168, %156 ]
  %176 = select i1 %175, i32 1, i32 %146
  call fastcc void @ei_next(ptr noundef nonnull %4) #12
  %177 = load i32, ptr %4, align 8
  %178 = load ptr, ptr %102, align 8
  %179 = call fastcc zeroext i8 @ei_cond(i32 %177, ptr %178, ptr noundef nonnull %3) #12, !range !31
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %145, !llvm.loop !35

181:                                              ; preds = %174
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %182 = icmp eq i32 %176, 0
  br i1 %182, label %183, label %213

183:                                              ; preds = %140, %122, %181
  %184 = icmp eq ptr %123, null
  br i1 %184, label %196, label %185

185:                                              ; preds = %183
  %186 = load i32, ptr %123, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 11
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 2
  %191 = load ptr, ptr %190, align 8, !tbaa !23
  %192 = icmp eq ptr %191, null
  br i1 %192, label %210, label %199

193:                                              ; preds = %185
  %194 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %195 = load i32, ptr %194, align 8, !tbaa !23
  br label %196

196:                                              ; preds = %183, %193
  %197 = phi i32 [ %195, %193 ], [ 999999, %183 ]
  %198 = load i32, ptr %105, align 8, !tbaa !23
  call fastcc void @draw_edge(ptr noundef nonnull %22, i32 noundef %198, i32 noundef %197, i32 noundef 0, i32 noundef 0) #12
  br label %213

199:                                              ; preds = %189, %203
  %200 = phi ptr [ %205, %203 ], [ %191, %189 ]
  %201 = load i32, ptr %200, align 8
  %202 = trunc i32 %201 to i16
  switch i16 %202, label %207 [
    i16 13, label %203
    i16 11, label %203
  ]

203:                                              ; preds = %199, %199
  %204 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1, i32 0, i32 0, i64 2
  %205 = load ptr, ptr %204, align 8, !tbaa !23
  %206 = icmp eq ptr %205, null
  br i1 %206, label %210, label %199

207:                                              ; preds = %199
  %208 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1
  %209 = load i32, ptr %208, align 8, !tbaa !23
  br label %210

210:                                              ; preds = %203, %189, %207
  %211 = phi i32 [ %209, %207 ], [ 999999, %189 ], [ 999999, %203 ]
  %212 = load i32, ptr %105, align 8, !tbaa !23
  call fastcc void @draw_edge(ptr noundef nonnull %22, i32 noundef %212, i32 noundef %211, i32 noundef 0, i32 noundef 3) #12
  br label %213

213:                                              ; preds = %181, %210, %196, %115, %115
  %214 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1, i32 0, i32 0, i64 2
  %215 = load ptr, ptr %214, align 8, !tbaa !23
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %103, !llvm.loop !36

217:                                              ; preds = %213, %97
  store i32 0, ptr @dump_for_graph, align 4, !tbaa !5
  call fastcc void @end_fct(ptr noundef nonnull %22) #12
  call void @free(ptr noundef %32) #12
  call void @free(ptr noundef %33) #12
  call void @free(ptr noundef %34) #12
  br label %218

218:                                              ; preds = %217, %26
  %219 = call i32 @fclose(ptr noundef nonnull %22) #12
  br label %220

220:                                              ; preds = %20, %2, %218
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @start_fct(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @graph_dump_format, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call ptr @current_function_name() #13
  %6 = tail call ptr @current_function_name() #13
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %5, ptr noundef %6) #12
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @start_bb(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr @graph_dump_format, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call ptr @current_function_name() #13
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef %6, i32 noundef %1, i32 noundef %1) #12
  %8 = load i32, ptr @graph_dump_format, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 @fputs(ptr noundef nonnull @.str.12, ptr noundef %0) #12
  br label %12

12:                                               ; preds = %2, %5, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_edge(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = load i32, ptr @graph_dump_format, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = icmp eq i32 %4, 2
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = icmp eq i32 %4, 3
  %14 = select i1 %13, ptr @.str.15, ptr @.str.8
  br label %15

15:                                               ; preds = %12, %10, %8
  %16 = phi ptr [ @.str.13, %8 ], [ @.str.14, %10 ], [ %14, %12 ]
  %17 = tail call ptr @current_function_name() #13
  %18 = tail call ptr @current_function_name() #13
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %17, i32 noundef %1, ptr noundef %18, i32 noundef %2, ptr noundef nonnull %16) #12
  %20 = icmp eq i32 %4, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %4) #12
  br label %23

23:                                               ; preds = %21, %15
  %24 = tail call i32 @fputs(ptr noundef nonnull @.str.7, ptr noundef %0) #12
  br label %25

25:                                               ; preds = %5, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = icmp eq ptr %5, null
  %7 = load i32, ptr @graph_dump_format, align 4
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = tail call ptr @current_function_name() #13
  %12 = tail call ptr @current_function_name() #13
  %13 = load i32, ptr %3, align 8, !tbaa !23
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %11, ptr noundef %12, i32 noundef %13) #12
  %15 = load i32, ptr @graph_dump_format, align 4, !tbaa !5
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i32 [ %15, %10 ], [ %7, %2 ]
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = tail call ptr @current_function_name() #13
  %21 = load i32, ptr %3, align 8, !tbaa !23
  %22 = load i32, ptr %1, align 8
  %23 = and i32 %22, 65535
  %24 = trunc i32 %22 to i16
  %25 = add i16 %24, -8
  %26 = icmp ult i16 %25, 6
  br i1 %26, label %30, label %27

27:                                               ; preds = %30, %19
  %28 = icmp eq i32 %23, 12
  %29 = select i1 %28, ptr @.str.23, ptr @.str.24
  br label %39

30:                                               ; preds = %19
  %31 = trunc i16 %25 to i8
  %32 = lshr i8 39, %31
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %27, label %35

35:                                               ; preds = %30
  %36 = zext nneg i16 %25 to i64
  %37 = shl i64 %36, 2
  %38 = call ptr @llvm.load.relative.i64(ptr @reltable.node_data, i64 %37)
  br label %39

39:                                               ; preds = %35, %27
  %40 = phi ptr [ %29, %27 ], [ %38, %35 ]
  %41 = zext nneg i32 %23 to i64
  %42 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %20, i32 noundef %21, ptr noundef nonnull %40, ptr noundef %43, i32 noundef %21) #12
  br label %45

45:                                               ; preds = %16, %39
  %46 = load i32, ptr %1, align 8
  %47 = trunc i32 %46 to i16
  switch i16 %47, label %59 [
    i16 13, label %48
    i16 8, label %55
    i16 7, label %55
    i16 9, label %55
    i16 10, label %55
  ]

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %50 = load i32, ptr %49, align 8, !tbaa !23
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [13 x ptr], ptr @note_insn_name, i64 0, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !9
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %53) #12
  br label %61

55:                                               ; preds = %45, %45, %45, %45
  %56 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !23
  %58 = tail call i32 @print_rtl_single(ptr noundef %0, ptr noundef %57) #13
  br label %61

59:                                               ; preds = %45
  %60 = tail call i32 @print_rtl_single(ptr noundef %0, ptr noundef nonnull %1) #13
  br label %61

61:                                               ; preds = %55, %59, %48
  %62 = load i32, ptr @graph_dump_format, align 4, !tbaa !5
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = tail call i32 @fputs(ptr noundef nonnull @.str.26, ptr noundef %0) #12
  br label %66

66:                                               ; preds = %61, %64
  ret void
}

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @end_bb(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load i32, ptr @graph_dump_format, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @fputs(ptr noundef nonnull @.str.7, ptr noundef %0) #12
  br label %6

6:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #12, !range !31
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #12
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !9
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 738, ptr noundef nonnull @.str.5) #13
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !37
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @end_fct(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @graph_dump_format, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call ptr @current_function_name() #13
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef %5) #12
  br label %7

7:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clean_graph_dump_file(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %3 = load i32, ptr @graph_dump_format, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [2 x ptr], ptr @graph_ext, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #12
  %8 = add i64 %7, 1
  %9 = add i64 %8, %2
  %10 = alloca i8, i64 %9, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %10, ptr align 1 %0, i64 %2, i1 false)
  %11 = getelementptr inbounds i8, ptr %10, i64 %2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %11, ptr align 1 %6, i64 %8, i1 false)
  %12 = call ptr @fopen_unlocked(ptr noundef nonnull %10, ptr noundef nonnull @.str.2) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.3, ptr noundef nonnull %10) #13
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i32, ptr @graph_dump_format, align 4, !tbaa !5
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 403, ptr noundef nonnull @.str.5) #13
  br label %19

19:                                               ; preds = %15, %18
  %20 = call i32 @fputs(ptr noundef nonnull @.str.6, ptr noundef %12) #12
  %21 = call i32 @fclose(ptr noundef %12) #12
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finish_graph_dump_file(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %3 = load i32, ptr @graph_dump_format, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [2 x ptr], ptr @graph_ext, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #12
  %8 = add i64 %7, 1
  %9 = add i64 %8, %2
  %10 = alloca i8, i64 %9, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %10, ptr align 1 %0, i64 %2, i1 false)
  %11 = getelementptr inbounds i8, ptr %10, i64 %2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %11, ptr align 1 %6, i64 %8, i1 false)
  %12 = call ptr @fopen_unlocked(ptr noundef nonnull %10, ptr noundef nonnull @.str) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load i32, ptr @graph_dump_format, align 4, !tbaa !5
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 425, ptr noundef nonnull @.str.5) #13
  br label %18

18:                                               ; preds = %14, %17
  %19 = call i32 @fputs(ptr noundef nonnull @.str.7, ptr noundef nonnull %12) #12
  %20 = call i32 @fclose(ptr noundef nonnull %12) #12
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: optsize
declare ptr @current_function_name() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #4

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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !39
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 687, ptr noundef nonnull @.str.5) #13
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

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
!11 = !{!12, !10, i64 8}
!12 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !10, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!13 = !{!14, !10, i64 16}
!14 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!14, !10, i64 8}
!18 = !{!14, !10, i64 0}
!19 = !{!20, !10, i64 48}
!20 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !10, i64 48, !10, i64 56, !7, i64 64, !21, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!21 = !{!"long", !7, i64 0}
!22 = !{!20, !6, i64 80}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !10, i64 0}
!25 = !{!"rtl_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32}
!26 = !{!25, !10, i64 8}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = !{i64 0, i64 4, !5, i64 8, i64 8, !9}
!30 = !{i64 0, i64 8, !9}
!31 = !{i8 0, i8 2}
!32 = !{!33, !10, i64 8}
!33 = !{!"edge_def", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !21, i64 56}
!34 = !{!33, !6, i64 48}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = !{!38, !6, i64 0}
!38 = !{!"", !6, i64 0, !10, i64 8}
!39 = !{!40, !6, i64 0}
!40 = !{!"VEC_edge_base", !6, i64 0, !6, i64 4, !7, i64 8}
