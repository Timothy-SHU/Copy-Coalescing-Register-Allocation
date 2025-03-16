; ModuleID = 'shcgen.c'
source_filename = "shcgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hc_definition_s = type { ptr, i32, ptr, i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.count_node_s = type { i64, i32, i32, ptr, ptr, ptr }
%struct.hce_code_s = type { i16, i16 }
%struct.hcd_code_s = type { i16, i16 }

@.str = private unnamed_addr constant [11 x i8] c"hc_compute\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hc_compute(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hc_definition_s, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %2, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = shl i32 %5, 1
  %9 = add i32 %8, -1
  %10 = tail call ptr %7(ptr noundef %2, i32 noundef %9, i32 noundef 40, ptr noundef nonnull @.str) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %223, label %12

12:                                               ; preds = %3
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %12
  %15 = zext i32 %5 to i64
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i64 [ 0, %14 ], [ %23, %16 ]
  %18 = getelementptr inbounds i64, ptr %1, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !14
  %20 = getelementptr inbounds %struct.count_node_s, ptr %10, i64 %17
  store i64 %19, ptr %20, align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.count_node_s, ptr %10, i64 %17, i32 1
  %22 = trunc i64 %17 to i32
  store i32 %22, ptr %21, align 8, !tbaa !18
  %23 = add nuw nsw i64 %17, 1
  %24 = icmp eq i64 %23, %15
  br i1 %24, label %25, label %16, !llvm.loop !19

25:                                               ; preds = %16, %12
  %26 = zext i32 %5 to i64
  tail call void @qsort(ptr noundef nonnull %10, i64 noundef %26, i64 noundef 40, ptr noundef nonnull @compare_freqs) #11
  %27 = getelementptr %struct.count_node_s, ptr %10, i64 -1
  %28 = icmp eq i32 %5, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = zext i32 %5 to i64
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ 0, %29 ], [ %37, %31 ]
  %33 = getelementptr %struct.count_node_s, ptr %27, i64 %32
  %34 = getelementptr inbounds %struct.count_node_s, ptr %10, i64 %32, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !21
  %35 = getelementptr inbounds %struct.count_node_s, ptr %10, i64 %32, i32 2
  store i32 0, ptr %35, align 4, !tbaa !22
  %36 = getelementptr inbounds %struct.count_node_s, ptr %10, i64 %32, i32 4
  %37 = add nuw nsw i64 %32, 1
  %38 = icmp eq i64 %37, %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  br i1 %38, label %39, label %31, !llvm.loop !23

39:                                               ; preds = %31, %25
  %40 = getelementptr inbounds %struct.count_node_s, ptr %10, i64 0, i32 3
  store ptr null, ptr %40, align 8, !tbaa !21
  %41 = add i32 %5, -1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.count_node_s, ptr %10, i64 %42
  %44 = getelementptr inbounds %struct.count_node_s, ptr %10, i64 %26
  br label %45

45:                                               ; preds = %84, %39
  %46 = phi ptr [ %44, %39 ], [ %86, %84 ]
  %47 = phi ptr [ %43, %39 ], [ %85, %84 ]
  %48 = getelementptr inbounds %struct.count_node_s, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !21
  %50 = load i64, ptr %47, align 8, !tbaa !16
  %51 = load i64, ptr %49, align 8, !tbaa !16
  %52 = add nsw i64 %51, %50
  %53 = getelementptr inbounds %struct.count_node_s, ptr %49, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !21
  store i64 %52, ptr %46, align 8, !tbaa !16
  %55 = getelementptr inbounds %struct.count_node_s, ptr %47, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !22
  %57 = getelementptr inbounds %struct.count_node_s, ptr %49, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !22
  %59 = icmp ugt i32 %56, %58
  %60 = getelementptr inbounds %struct.count_node_s, ptr %46, i64 0, i32 4
  %61 = getelementptr inbounds %struct.count_node_s, ptr %46, i64 0, i32 5
  %62 = getelementptr inbounds %struct.count_node_s, ptr %46, i64 0, i32 2
  %63 = select i1 %59, ptr %49, ptr %47
  %64 = select i1 %59, ptr %47, ptr %49
  %65 = tail call i32 @llvm.umax.i32(i32 %56, i32 %58)
  store ptr %63, ptr %60, align 8, !tbaa !24
  store ptr %64, ptr %61, align 8, !tbaa !25
  %66 = add i32 %65, 1
  store i32 %66, ptr %62, align 4, !tbaa !22
  %67 = icmp eq ptr %54, null
  br i1 %67, label %84, label %68

68:                                               ; preds = %45
  %69 = load i64, ptr %54, align 8, !tbaa !16
  %70 = icmp slt i64 %52, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.count_node_s, ptr %46, i64 0, i32 3
  store ptr %54, ptr %72, align 8, !tbaa !21
  br label %84

73:                                               ; preds = %68, %78
  %74 = phi ptr [ %76, %78 ], [ %54, %68 ]
  %75 = getelementptr inbounds %struct.count_node_s, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !21
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i64, ptr %76, align 8, !tbaa !16
  %80 = icmp slt i64 %52, %79
  br i1 %80, label %81, label %73, !llvm.loop !26

81:                                               ; preds = %73, %78
  %82 = getelementptr inbounds %struct.count_node_s, ptr %74, i64 0, i32 3
  %83 = getelementptr inbounds %struct.count_node_s, ptr %46, i64 0, i32 3
  store ptr %76, ptr %83, align 8, !tbaa !21
  store ptr %46, ptr %82, align 8, !tbaa !21
  br label %84

84:                                               ; preds = %71, %81, %45
  %85 = phi ptr [ null, %45 ], [ %54, %81 ], [ %46, %71 ]
  %86 = getelementptr inbounds %struct.count_node_s, ptr %46, i64 1
  br i1 %67, label %87, label %45, !llvm.loop !27

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.count_node_s, ptr %46, i64 1
  %89 = getelementptr inbounds %struct.count_node_s, ptr %46, i64 0, i32 2
  store i32 0, ptr %89, align 4, !tbaa !22
  %90 = icmp ugt ptr %88, %44
  br i1 %90, label %91, label %104

91:                                               ; preds = %87, %91
  %92 = phi ptr [ %93, %91 ], [ %88, %87 ]
  %93 = getelementptr inbounds %struct.count_node_s, ptr %92, i64 -1
  %94 = getelementptr %struct.count_node_s, ptr %92, i64 -1, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !22
  %96 = add i32 %95, 1
  %97 = getelementptr %struct.count_node_s, ptr %92, i64 -1, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !25
  %99 = getelementptr inbounds %struct.count_node_s, ptr %98, i64 0, i32 2
  store i32 %96, ptr %99, align 4, !tbaa !22
  %100 = getelementptr %struct.count_node_s, ptr %92, i64 -1, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !24
  %102 = getelementptr inbounds %struct.count_node_s, ptr %101, i64 0, i32 2
  store i32 %96, ptr %102, align 4, !tbaa !22
  %103 = icmp ugt ptr %93, %44
  br i1 %103, label %91, label %104, !llvm.loop !28

104:                                              ; preds = %91, %87
  tail call void @qsort(ptr noundef nonnull %10, i64 noundef %26, i64 noundef 40, ptr noundef nonnull @compare_code_lengths) #11
  %105 = getelementptr inbounds %struct.hc_definition_s, ptr %0, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !29
  %107 = getelementptr %struct.count_node_s, ptr %44, i64 -1, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !22
  %109 = icmp sgt i32 %108, %106
  br i1 %109, label %110, label %123

110:                                              ; preds = %104, %110
  %111 = phi i32 [ %121, %110 ], [ %108, %104 ]
  %112 = phi ptr [ %120, %110 ], [ %107, %104 ]
  %113 = phi i32 [ %119, %110 ], [ 0, %104 ]
  %114 = phi ptr [ %116, %110 ], [ %44, %104 ]
  %115 = phi i32 [ %111, %110 ], [ %108, %104 ]
  %116 = getelementptr inbounds %struct.count_node_s, ptr %114, i64 -1
  %117 = sub nsw i32 %115, %111
  %118 = ashr i32 %113, %117
  store i32 %106, ptr %112, align 4, !tbaa !22
  %119 = add nsw i32 %118, 1
  %120 = getelementptr %struct.count_node_s, ptr %114, i64 -2, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !22
  %122 = icmp sgt i32 %121, %106
  br i1 %122, label %110, label %123, !llvm.loop !30

123:                                              ; preds = %110, %104
  %124 = phi i32 [ %108, %104 ], [ %111, %110 ]
  %125 = phi ptr [ %44, %104 ], [ %116, %110 ]
  %126 = phi i32 [ 0, %104 ], [ %119, %110 ]
  %127 = ptrtoint ptr %44 to i64
  %128 = ptrtoint ptr %125 to i64
  %129 = sub i64 %127, %128
  %130 = sub nsw i32 %124, %106
  br label %131

131:                                              ; preds = %131, %123
  %132 = phi ptr [ %125, %123 ], [ %136, %131 ]
  %133 = getelementptr %struct.count_node_s, ptr %132, i64 -1, i32 2
  %134 = load i32, ptr %133, align 4, !tbaa !22
  %135 = icmp eq i32 %134, %106
  %136 = getelementptr inbounds %struct.count_node_s, ptr %132, i64 -1
  br i1 %135, label %131, label %137, !llvm.loop !31

137:                                              ; preds = %131
  %138 = sdiv exact i64 %129, 40
  %139 = trunc i64 %138 to i32
  %140 = ashr i32 %126, %130
  %141 = sub i32 %139, %140
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %167

143:                                              ; preds = %137, %163
  %144 = phi i32 [ %165, %163 ], [ %141, %137 ]
  %145 = phi ptr [ %164, %163 ], [ %132, %137 ]
  %146 = getelementptr %struct.count_node_s, ptr %145, i64 -1, i32 2
  %147 = load i32, ptr %146, align 4, !tbaa !22
  %148 = add i32 %147, 1
  store i32 %148, ptr %146, align 4, !tbaa !22
  %149 = sub nsw i32 %106, %148
  switch i32 %149, label %155 [
    i32 0, label %150
    i32 1, label %152
  ]

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.count_node_s, ptr %145, i64 -1
  br label %163

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.count_node_s, ptr %145, i64 1
  %154 = getelementptr inbounds %struct.count_node_s, ptr %145, i64 0, i32 2
  store i32 %148, ptr %154, align 4, !tbaa !22
  br label %163

155:                                              ; preds = %143
  %156 = add i32 %147, 2
  %157 = getelementptr inbounds %struct.count_node_s, ptr %145, i64 0, i32 2
  store i32 %156, ptr %157, align 4, !tbaa !22
  %158 = getelementptr inbounds %struct.count_node_s, ptr %145, i64 1, i32 2
  store i32 %156, ptr %158, align 4, !tbaa !22
  %159 = getelementptr inbounds %struct.count_node_s, ptr %145, i64 2, i32 2
  %160 = load i32, ptr %159, align 4, !tbaa !22
  %161 = add i32 %160, -1
  store i32 %161, ptr %159, align 4, !tbaa !22
  %162 = getelementptr inbounds %struct.count_node_s, ptr %145, i64 3
  br label %163

163:                                              ; preds = %155, %152, %150
  %164 = phi ptr [ %162, %155 ], [ %153, %152 ], [ %151, %150 ]
  %165 = add nsw i32 %144, -1
  %166 = icmp sgt i32 %144, 1
  br i1 %166, label %143, label %167, !llvm.loop !32

167:                                              ; preds = %163, %137
  %168 = icmp sgt i32 %5, 0
  br i1 %168, label %169, label %194

169:                                              ; preds = %167
  %170 = getelementptr %struct.count_node_s, ptr %10, i64 -1, i32 2
  br label %171

171:                                              ; preds = %169, %187
  %172 = phi i32 [ %5, %169 ], [ %188, %187 ]
  %173 = add nsw i32 %172, -1
  %174 = zext nneg i32 %173 to i64
  %175 = getelementptr inbounds %struct.count_node_s, ptr %10, i64 %174, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !22
  %177 = icmp sgt i32 %172, 1
  br i1 %177, label %178, label %187

178:                                              ; preds = %171, %184
  %179 = phi i32 [ %185, %184 ], [ %173, %171 ]
  %180 = zext nneg i32 %179 to i64
  %181 = getelementptr %struct.count_node_s, ptr %170, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !22
  %183 = icmp eq i32 %182, %176
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = add nsw i32 %179, -1
  %186 = icmp sgt i32 %179, 1
  br i1 %186, label %178, label %187, !llvm.loop !33

187:                                              ; preds = %178, %184, %171
  %188 = phi i32 [ %173, %171 ], [ %179, %178 ], [ 0, %184 ]
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds %struct.count_node_s, ptr %10, i64 %189
  %191 = sub nsw i32 %172, %188
  %192 = sext i32 %191 to i64
  tail call void @qsort(ptr noundef nonnull %190, i64 noundef %192, i64 noundef 40, ptr noundef nonnull @compare_values) #11
  %193 = icmp sgt i32 %188, 0
  br i1 %193, label %171, label %194, !llvm.loop !34

194:                                              ; preds = %187, %167
  %195 = load ptr, ptr %0, align 8, !tbaa !35
  %196 = load i32, ptr %105, align 8, !tbaa !29
  %197 = add i32 %196, 1
  %198 = zext i32 %197 to i64
  %199 = shl nuw nsw i64 %198, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %195, i8 0, i64 %199, i1 false)
  %200 = icmp eq i32 %5, 0
  br i1 %200, label %220, label %201

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.hc_definition_s, ptr %0, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !36
  %204 = load ptr, ptr %0, align 8, !tbaa !35
  %205 = zext i32 %5 to i64
  br label %206

206:                                              ; preds = %201, %206
  %207 = phi i64 [ 0, %201 ], [ %218, %206 ]
  %208 = getelementptr inbounds %struct.count_node_s, ptr %10, i64 %207, i32 1
  %209 = load i32, ptr %208, align 8, !tbaa !18
  %210 = trunc i32 %209 to i16
  %211 = getelementptr inbounds i16, ptr %203, i64 %207
  store i16 %210, ptr %211, align 2, !tbaa !37
  %212 = getelementptr inbounds %struct.count_node_s, ptr %10, i64 %207, i32 2
  %213 = load i32, ptr %212, align 4, !tbaa !22
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i16, ptr %204, i64 %214
  %216 = load i16, ptr %215, align 2, !tbaa !37
  %217 = add i16 %216, 1
  store i16 %217, ptr %215, align 2, !tbaa !37
  %218 = add nuw nsw i64 %207, 1
  %219 = icmp eq i64 %218, %205
  br i1 %219, label %220, label %206, !llvm.loop !39

220:                                              ; preds = %206, %194
  %221 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %2, i64 0, i32 11
  %222 = load ptr, ptr %221, align 8, !tbaa !40
  tail call void %222(ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull @.str) #11
  br label %223

223:                                              ; preds = %3, %220
  %224 = phi i32 [ 0, %220 ], [ -25, %3 ]
  ret i32 %224
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_freqs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i64, ptr %1, align 8, !tbaa !16
  %4 = load i64, ptr %0, align 8, !tbaa !16
  %5 = icmp slt i64 %3, %4
  %6 = icmp ne i64 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_code_lengths(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.count_node_s, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !22
  %5 = getelementptr inbounds %struct.count_node_s, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !22
  %7 = sub i32 %4, %6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %4, %6
  br i1 %10, label %11, label %18

11:                                               ; preds = %9
  %12 = load i64, ptr %1, align 8, !tbaa !16
  %13 = load i64, ptr %0, align 8, !tbaa !16
  %14 = icmp slt i64 %12, %13
  %15 = icmp ne i64 %12, %13
  %16 = zext i1 %15 to i32
  %17 = select i1 %14, i32 -1, i32 %16
  br label %18

18:                                               ; preds = %11, %9, %2
  %19 = phi i32 [ -1, %2 ], [ %17, %11 ], [ 1, %9 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_values(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.count_node_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.count_node_s, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !18
  %7 = icmp ult i32 %4, %6
  %8 = icmp ugt i32 %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @hc_bytes_from_definition(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.hc_definition_s, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = getelementptr inbounds %struct.hc_definition_s, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !29
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hc_definition_s, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  br label %13

13:                                               ; preds = %10, %37
  %14 = phi i64 [ 1, %10 ], [ %39, %37 ]
  %15 = phi ptr [ %12, %10 ], [ %38, %37 ]
  %16 = load ptr, ptr %1, align 8, !tbaa !35
  %17 = getelementptr inbounds i16, ptr %16, i64 %14
  %18 = load i16, ptr %17, align 2, !tbaa !37
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %13
  %21 = trunc i64 %14 to i8
  br label %24

22:                                               ; preds = %37, %2
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %69, label %43

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %15, %20 ], [ %27, %24 ]
  %26 = phi i32 [ 0, %20 ], [ %31, %24 ]
  %27 = getelementptr inbounds i16, ptr %25, i64 1
  %28 = load i16, ptr %25, align 2, !tbaa !37
  %29 = zext i16 %28 to i64
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  store i8 %21, ptr %30, align 1, !tbaa !41
  %31 = add nuw nsw i32 %26, 1
  %32 = load ptr, ptr %1, align 8, !tbaa !35
  %33 = getelementptr inbounds i16, ptr %32, i64 %14
  %34 = load i16, ptr %33, align 2, !tbaa !37
  %35 = zext i16 %34 to i32
  %36 = icmp ult i32 %31, %35
  br i1 %36, label %24, label %37, !llvm.loop !42

37:                                               ; preds = %24, %13
  %38 = phi ptr [ %15, %13 ], [ %27, %24 ]
  %39 = add nuw nsw i64 %14, 1
  %40 = load i32, ptr %7, align 8, !tbaa !29
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %14, %41
  br i1 %42, label %13, label %22, !llvm.loop !43

43:                                               ; preds = %22, %60
  %44 = phi ptr [ %62, %60 ], [ %0, %22 ]
  %45 = phi ptr [ %67, %60 ], [ %0, %22 ]
  %46 = load i8, ptr %44, align 1, !tbaa !41
  %47 = getelementptr inbounds i8, ptr %44, i64 1
  %48 = icmp ult ptr %47, %6
  br i1 %48, label %49, label %60

49:                                               ; preds = %43, %54
  %50 = phi ptr [ %56, %54 ], [ %47, %43 ]
  %51 = phi i64 [ %55, %54 ], [ 1, %43 ]
  %52 = load i8, ptr %50, align 1, !tbaa !41
  %53 = icmp eq i8 %52, %46
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = add nuw nsw i64 %51, 1
  %56 = getelementptr inbounds i8, ptr %44, i64 %55
  %57 = icmp ult ptr %56, %6
  %58 = icmp ult i64 %51, 15
  %59 = and i1 %58, %57
  br i1 %59, label %49, label %60, !llvm.loop !44

60:                                               ; preds = %49, %54, %43
  %61 = phi i64 [ 1, %43 ], [ %51, %49 ], [ %55, %54 ]
  %62 = phi ptr [ %47, %43 ], [ %50, %49 ], [ %56, %54 ]
  %63 = trunc i64 %61 to i8
  %64 = shl i8 %63, 4
  %65 = add i8 %46, -17
  %66 = add i8 %65, %64
  %67 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 %66, ptr %45, align 1, !tbaa !41
  %68 = icmp ult ptr %62, %6
  br i1 %68, label %43, label %69, !llvm.loop !45

69:                                               ; preds = %60, %22
  %70 = phi ptr [ %0, %22 ], [ %67, %60 ]
  %71 = ptrtoint ptr %70 to i64
  %72 = ptrtoint ptr %0 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  ret i32 %74
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @hc_sizes_from_bytes(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %21, %7 ]
  %9 = phi i32 [ 0, %5 ], [ %18, %7 ]
  %10 = phi i32 [ 0, %5 ], [ %20, %7 ]
  %11 = getelementptr inbounds i8, ptr %1, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !41
  %13 = zext i8 %12 to i32
  %14 = lshr i32 %13, 4
  %15 = and i32 %13, 15
  %16 = icmp ult i32 %15, %9
  %17 = add nuw nsw i32 %15, 1
  %18 = select i1 %16, i32 %9, i32 %17
  %19 = add i32 %10, 1
  %20 = add i32 %19, %14
  %21 = add nuw nsw i64 %8, 1
  %22 = icmp eq i64 %21, %6
  br i1 %22, label %23, label %7, !llvm.loop !46

23:                                               ; preds = %7, %3
  %24 = phi i32 [ 0, %3 ], [ %20, %7 ]
  %25 = phi i32 [ 0, %3 ], [ %18, %7 ]
  %26 = getelementptr inbounds %struct.hc_definition_s, ptr %0, i64 0, i32 1
  store i32 %25, ptr %26, align 8, !tbaa !29
  %27 = getelementptr inbounds %struct.hc_definition_s, ptr %0, i64 0, i32 3
  store i32 %24, ptr %27, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @hc_definition_from_bytes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = alloca [17 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.hc_definition_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !29
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %3, i8 0, i64 %8, i1 false)
  %9 = getelementptr inbounds %struct.hc_definition_s, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %2, %12
  %13 = phi i64 [ %28, %12 ], [ 0, %2 ]
  %14 = phi i32 [ %27, %12 ], [ 0, %2 ]
  %15 = getelementptr inbounds i8, ptr %1, i64 %13
  %16 = load i8, ptr %15, align 1, !tbaa !41
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %17, 4
  %19 = add nuw nsw i32 %18, 1
  %20 = and i32 %17, 15
  %21 = add nuw nsw i32 %20, 1
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [17 x i16], ptr %3, i64 0, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !37
  %25 = trunc i32 %19 to i16
  %26 = add i16 %24, %25
  store i16 %26, ptr %23, align 2, !tbaa !37
  %27 = add nuw nsw i32 %19, %14
  %28 = add nuw i64 %13, 1
  %29 = icmp ult i32 %27, %10
  br i1 %29, label %12, label %30, !llvm.loop !47

30:                                               ; preds = %12, %2
  %31 = getelementptr inbounds %struct.hc_definition_s, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %0, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %32, ptr nonnull align 16 %3, i64 %8, i1 false)
  %33 = load i32, ptr %4, align 8, !tbaa !29
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %30
  %36 = add i32 %33, 1
  %37 = zext i32 %36 to i64
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i64 [ 1, %35 ], [ %46, %38 ]
  %40 = phi i32 [ 0, %35 ], [ %45, %38 ]
  %41 = getelementptr inbounds [17 x i16], ptr %3, i64 0, i64 %39
  %42 = load i16, ptr %41, align 2, !tbaa !37
  %43 = zext i16 %42 to i32
  %44 = trunc i32 %40 to i16
  store i16 %44, ptr %41, align 2, !tbaa !37
  %45 = add i32 %40, %43
  %46 = add nuw nsw i64 %39, 1
  %47 = icmp eq i64 %46, %37
  br i1 %47, label %48, label %38, !llvm.loop !48

48:                                               ; preds = %38, %30
  %49 = load i32, ptr %31, align 8, !tbaa !5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  %52 = load i8, ptr %1, align 1, !tbaa !41
  %53 = and i8 %52, 15
  %54 = add nuw nsw i8 %53, 1
  %55 = getelementptr inbounds %struct.hc_definition_s, ptr %0, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !36
  %57 = zext nneg i8 %54 to i64
  %58 = getelementptr inbounds [17 x i16], ptr %3, i64 0, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !37
  br label %60

60:                                               ; preds = %60, %51
  %61 = phi i16 [ %59, %51 ], [ %65, %60 ]
  %62 = phi i32 [ 0, %51 ], [ %63, %60 ]
  %63 = add nuw nsw i32 %62, 1
  %64 = trunc i32 %62 to i16
  %65 = add i16 %61, 1
  %66 = zext i16 %61 to i64
  %67 = getelementptr inbounds i16, ptr %56, i64 %66
  store i16 %64, ptr %67, align 2, !tbaa !37
  br label %60, !llvm.loop !49

68:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @hc_make_encoding(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.hc_definition_s, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hc_definition_s, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = load ptr, ptr %1, align 8, !tbaa !35
  br label %10

10:                                               ; preds = %6, %35
  %11 = phi i32 [ 0, %6 ], [ %38, %35 ]
  %12 = phi i32 [ 1, %6 ], [ %39, %35 ]
  %13 = phi ptr [ %8, %6 ], [ %36, %35 ]
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds i16, ptr %9, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !37
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %10
  %19 = trunc i32 %12 to i16
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i32 [ %11, %18 ], [ %31, %20 ]
  %22 = phi i32 [ 0, %18 ], [ %29, %20 ]
  %23 = phi ptr [ %13, %18 ], [ %30, %20 ]
  %24 = load i16, ptr %23, align 2, !tbaa !37
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds %struct.hce_code_s, ptr %0, i64 %25
  %27 = trunc i32 %21 to i16
  store i16 %27, ptr %26, align 2, !tbaa !50
  %28 = getelementptr inbounds %struct.hce_code_s, ptr %0, i64 %25, i32 1
  store i16 %19, ptr %28, align 2, !tbaa !52
  %29 = add nuw nsw i32 %22, 1
  %30 = getelementptr inbounds i16, ptr %23, i64 1
  %31 = add i32 %21, 1
  %32 = load i16, ptr %15, align 2, !tbaa !37
  %33 = zext i16 %32 to i32
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %20, label %35, !llvm.loop !53

35:                                               ; preds = %20, %10
  %36 = phi ptr [ %13, %10 ], [ %30, %20 ]
  %37 = phi i32 [ %11, %10 ], [ %31, %20 ]
  %38 = shl i32 %37, 1
  %39 = add i32 %12, 1
  %40 = icmp ugt i32 %39, %4
  br i1 %40, label %41, label %10, !llvm.loop !54

41:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @hc_sizeof_decoding(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = shl nuw i32 1, %1
  %4 = getelementptr inbounds %struct.hc_definition_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !29
  %6 = add i32 %1, 1
  %7 = icmp ugt i32 %6, %5
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i32 [ %6, %8 ], [ %26, %10 ]
  %12 = phi i32 [ -2, %8 ], [ %25, %10 ]
  %13 = phi i32 [ 0, %8 ], [ %24, %10 ]
  %14 = phi i32 [ %3, %8 ], [ %21, %10 ]
  %15 = zext i32 %11 to i64
  %16 = getelementptr inbounds i16, ptr %9, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !37
  %18 = zext i16 %17 to i32
  %19 = add i32 %13, %18
  %20 = and i32 %19, %12
  %21 = add i32 %20, %14
  %22 = xor i32 %12, -1
  %23 = and i32 %19, %22
  %24 = shl i32 %23, 1
  %25 = shl i32 %12, 1
  %26 = add i32 %11, 1
  %27 = icmp ugt i32 %26, %5
  br i1 %27, label %28, label %10, !llvm.loop !55

28:                                               ; preds = %10, %2
  %29 = phi i32 [ %3, %2 ], [ %21, %10 ]
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @hc_make_decoding(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.hc_definition_s, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = load ptr, ptr %1, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %3, %37
  %8 = phi ptr [ %0, %3 ], [ %39, %37 ]
  %9 = phi i32 [ 0, %3 ], [ %40, %37 ]
  %10 = phi ptr [ %5, %3 ], [ %38, %37 ]
  %11 = zext i32 %9 to i64
  %12 = getelementptr inbounds i16, ptr %6, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !37
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %7
  %16 = sub i32 %2, %9
  %17 = shl nuw i32 1, %16
  %18 = trunc i32 %9 to i16
  br label %19

19:                                               ; preds = %15, %31
  %20 = phi ptr [ %8, %15 ], [ %29, %31 ]
  %21 = phi i32 [ 0, %15 ], [ %32, %31 ]
  %22 = phi ptr [ %10, %15 ], [ %33, %31 ]
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %20, %19 ], [ %29, %23 ]
  %25 = phi i32 [ %17, %19 ], [ %28, %23 ]
  %26 = load i16, ptr %22, align 2, !tbaa !37
  store i16 %26, ptr %24, align 2, !tbaa !56
  %27 = getelementptr inbounds %struct.hcd_code_s, ptr %24, i64 0, i32 1
  store i16 %18, ptr %27, align 2, !tbaa !58
  %28 = add i32 %25, -1
  %29 = getelementptr inbounds %struct.hcd_code_s, ptr %24, i64 1
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %23, !llvm.loop !59

31:                                               ; preds = %23
  %32 = add nuw nsw i32 %21, 1
  %33 = getelementptr inbounds i16, ptr %22, i64 1
  %34 = load i16, ptr %12, align 2, !tbaa !37
  %35 = zext i16 %34 to i32
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %19, label %37, !llvm.loop !60

37:                                               ; preds = %31, %7
  %38 = phi ptr [ %10, %7 ], [ %33, %31 ]
  %39 = phi ptr [ %8, %7 ], [ %29, %31 ]
  %40 = add i32 %9, 1
  %41 = icmp ugt i32 %40, %2
  br i1 %41, label %42, label %7, !llvm.loop !61

42:                                               ; preds = %37
  %43 = shl nuw i32 1, %2
  %44 = getelementptr inbounds %struct.hc_definition_s, ptr %1, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !29
  %46 = add i32 %2, 1
  %47 = icmp ugt i32 %46, %45
  br i1 %47, label %68, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %1, align 8, !tbaa !35
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi i32 [ %46, %48 ], [ %66, %50 ]
  %52 = phi i32 [ -2, %48 ], [ %65, %50 ]
  %53 = phi i32 [ 0, %48 ], [ %64, %50 ]
  %54 = phi i32 [ %43, %48 ], [ %61, %50 ]
  %55 = zext i32 %51 to i64
  %56 = getelementptr inbounds i16, ptr %49, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !37
  %58 = zext i16 %57 to i32
  %59 = add i32 %53, %58
  %60 = and i32 %59, %52
  %61 = add i32 %60, %54
  %62 = xor i32 %52, -1
  %63 = and i32 %59, %62
  %64 = shl i32 %63, 1
  %65 = shl i32 %52, 1
  %66 = add i32 %51, 1
  %67 = icmp ugt i32 %66, %45
  br i1 %67, label %68, label %50, !llvm.loop !55

68:                                               ; preds = %50, %42
  %69 = phi i32 [ %43, %42 ], [ %61, %50 ]
  %70 = sext i32 %43 to i64
  %71 = getelementptr inbounds %struct.hcd_code_s, ptr %0, i64 %70
  %72 = zext i32 %69 to i64
  %73 = getelementptr inbounds %struct.hcd_code_s, ptr %0, i64 %72
  %74 = getelementptr inbounds %struct.hc_definition_s, ptr %1, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !5
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i16, ptr %5, i64 %76
  %78 = add i32 %45, 1
  %79 = ptrtoint ptr %0 to i64
  br label %80

80:                                               ; preds = %146, %68
  %81 = phi ptr [ %147, %146 ], [ %71, %68 ]
  %82 = phi ptr [ %137, %146 ], [ %73, %68 ]
  %83 = phi ptr [ %130, %146 ], [ %77, %68 ]
  %84 = phi i32 [ %143, %146 ], [ 0, %68 ]
  %85 = phi i32 [ %144, %146 ], [ 0, %68 ]
  %86 = phi i32 [ %121, %146 ], [ 0, %68 ]
  %87 = phi i32 [ %99, %146 ], [ %78, %68 ]
  br label %88

88:                                               ; preds = %80, %142
  %89 = phi ptr [ %137, %142 ], [ %82, %80 ]
  %90 = phi ptr [ %130, %142 ], [ %83, %80 ]
  %91 = phi i32 [ %143, %142 ], [ %84, %80 ]
  %92 = phi i32 [ %144, %142 ], [ %85, %80 ]
  %93 = phi i32 [ %121, %142 ], [ %86, %80 ]
  %94 = phi i32 [ %99, %142 ], [ %87, %80 ]
  br label %95

95:                                               ; preds = %112, %88
  %96 = phi i32 [ %91, %88 ], [ %118, %112 ]
  %97 = phi i32 [ %92, %88 ], [ %114, %112 ]
  %98 = phi i32 [ %93, %88 ], [ %115, %112 ]
  %99 = phi i32 [ %94, %88 ], [ %116, %112 ]
  %100 = icmp eq i32 %97, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = icmp eq i32 %96, 0
  %103 = sub i32 %99, %2
  %104 = shl nuw i32 1, %103
  br i1 %102, label %105, label %119

105:                                              ; preds = %101
  %106 = add i32 %99, -1
  %107 = icmp ugt i32 %106, %2
  br i1 %107, label %108, label %155

108:                                              ; preds = %105
  %109 = load ptr, ptr %1, align 8, !tbaa !35
  %110 = zext i32 %106 to i64
  %111 = getelementptr inbounds i16, ptr %109, i64 %110
  br label %112

112:                                              ; preds = %108, %123
  %113 = phi ptr [ %127, %123 ], [ %111, %108 ]
  %114 = phi i32 [ %120, %123 ], [ 0, %108 ]
  %115 = phi i32 [ %128, %123 ], [ %98, %108 ]
  %116 = phi i32 [ %125, %123 ], [ %106, %108 ]
  %117 = load i16, ptr %113, align 2, !tbaa !37
  %118 = zext i16 %117 to i32
  br label %95, !llvm.loop !62

119:                                              ; preds = %101, %95
  %120 = phi i32 [ %97, %95 ], [ %104, %101 ]
  %121 = phi i32 [ %98, %95 ], [ 0, %101 ]
  %122 = icmp eq i32 %96, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load ptr, ptr %1, align 8, !tbaa !35
  %125 = add i32 %99, -1
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i16, ptr %124, i64 %126
  %128 = add i32 %121, 1
  br label %112

129:                                              ; preds = %119
  %130 = getelementptr inbounds i16, ptr %90, i64 -1
  %131 = shl nuw i32 1, %121
  %132 = sub i32 %99, %2
  %133 = trunc i32 %132 to i16
  br label %134

134:                                              ; preds = %129, %134
  %135 = phi i32 [ %131, %129 ], [ %140, %134 ]
  %136 = phi ptr [ %89, %129 ], [ %137, %134 ]
  %137 = getelementptr inbounds %struct.hcd_code_s, ptr %136, i64 -1
  %138 = load i16, ptr %130, align 2, !tbaa !37
  store i16 %138, ptr %137, align 2, !tbaa !56
  %139 = getelementptr %struct.hcd_code_s, ptr %136, i64 -1, i32 1
  store i16 %133, ptr %139, align 2, !tbaa !58
  %140 = add i32 %135, -1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %134, !llvm.loop !63

142:                                              ; preds = %134
  %143 = add nsw i32 %96, -1
  %144 = sub i32 %120, %131
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %88, !llvm.loop !62

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.hcd_code_s, ptr %81, i64 -1
  %148 = ptrtoint ptr %137 to i64
  %149 = sub i64 %148, %79
  %150 = lshr exact i64 %149, 2
  %151 = trunc i64 %150 to i16
  store i16 %151, ptr %147, align 2, !tbaa !56
  %152 = add i32 %99, %121
  %153 = trunc i32 %152 to i16
  %154 = getelementptr %struct.hcd_code_s, ptr %81, i64 -1, i32 1
  store i16 %153, ptr %154, align 2, !tbaa !58
  br label %80, !llvm.loop !62

155:                                              ; preds = %105
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 24}
!6 = !{!"hc_definition_s", !7, i64 0, !10, i64 8, !7, i64 16, !10, i64 24}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !7, i64 32}
!12 = !{!"gs_memory_s", !13, i64 0}
!13 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!17, !15, i64 0}
!17 = !{!"count_node_s", !15, i64 0, !10, i64 8, !10, i64 12, !7, i64 16, !7, i64 24, !7, i64 32}
!18 = !{!17, !10, i64 8}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!17, !7, i64 16}
!22 = !{!17, !10, i64 12}
!23 = distinct !{!23, !20}
!24 = !{!17, !7, i64 24}
!25 = !{!17, !7, i64 32}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20}
!29 = !{!6, !10, i64 8}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = !{!6, !7, i64 0}
!36 = !{!6, !7, i64 16}
!37 = !{!38, !38, i64 0}
!38 = !{!"short", !8, i64 0}
!39 = distinct !{!39, !20}
!40 = !{!12, !7, i64 88}
!41 = !{!8, !8, i64 0}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = !{!51, !38, i64 0}
!51 = !{!"hce_code_s", !38, i64 0, !38, i64 2}
!52 = !{!51, !38, i64 2}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = !{!57, !38, i64 0}
!57 = !{!"hcd_code_s", !38, i64 0, !38, i64 2}
!58 = !{!57, !38, i64 2}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
