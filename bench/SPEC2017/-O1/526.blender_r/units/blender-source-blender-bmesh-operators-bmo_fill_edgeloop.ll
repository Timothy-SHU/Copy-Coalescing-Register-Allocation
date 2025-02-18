; ModuleID = 'blender/source/blender/bmesh/operators/bmo_fill_edgeloop.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_fill_edgeloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_edgeloop_fill_exec = private unnamed_addr constant [23 x i8] c"bmo_edgeloop_fill_exec\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"mat_nr\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"use_smooth\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_edgeloop_fill_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = tail call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str) #3
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %8 = sext i32 %6 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr %7(i64 noundef %9, ptr noundef nonnull @__func__.bmo_edgeloop_fill_exec) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #3
  %11 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #3
  %12 = trunc i32 %11 to i16
  %13 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #3
  %14 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 2) #3
  %15 = icmp eq ptr %14, null
  br i1 %15, label %67, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %18 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %19 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %20 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %21

21:                                               ; preds = %16, %63
  %22 = phi ptr [ %14, %16 ], [ %65, %63 ]
  %23 = phi i32 [ 0, %16 ], [ %64, %63 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #3
  %24 = getelementptr inbounds %struct.BMEdge, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  %26 = load i32, ptr %17, align 8, !tbaa !43
  %27 = sext i32 %26 to i64
  %28 = getelementptr %struct.BMFlagLayer, ptr %25, i64 %27
  %29 = getelementptr %struct.BMFlagLayer, ptr %28, i64 -1
  %30 = load i16, ptr %29, align 2, !tbaa !48
  %31 = or i16 %30, 2
  store i16 %31, ptr %29, align 2, !tbaa !48
  store i8 7, ptr %18, align 4, !tbaa !50
  store ptr @bmiter__vert_of_edge_begin, ptr %19, align 8, !tbaa !52
  store ptr @bmiter__vert_of_edge_step, ptr %20, align 8, !tbaa !53
  store ptr %22, ptr %4, align 8, !tbaa !54
  call void @bmiter__vert_of_edge_begin(ptr noundef nonnull %4) #3
  %32 = load ptr, ptr %20, align 8, !tbaa !53
  %33 = call ptr %32(ptr noundef nonnull %4) #3
  %34 = icmp eq ptr %33, null
  br i1 %34, label %61, label %35

35:                                               ; preds = %21, %55
  %36 = phi i1 [ %59, %55 ], [ %34, %21 ]
  %37 = phi ptr [ %58, %55 ], [ %33, %21 ]
  %38 = phi i32 [ %56, %55 ], [ %23, %21 ]
  %39 = getelementptr inbounds %struct.BMVert, ptr %37, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  %41 = load i32, ptr %17, align 8, !tbaa !43
  %42 = sext i32 %41 to i64
  %43 = getelementptr %struct.BMFlagLayer, ptr %40, i64 %42
  %44 = getelementptr %struct.BMFlagLayer, ptr %43, i64 -1
  %45 = load i16, ptr %44, align 2, !tbaa !48
  %46 = and i16 %45, 1
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = icmp eq i32 %38, %6
  br i1 %49, label %60, label %50

50:                                               ; preds = %48
  %51 = or disjoint i16 %45, 1
  store i16 %51, ptr %44, align 2, !tbaa !48
  %52 = add nsw i32 %38, 1
  %53 = sext i32 %38 to i64
  %54 = getelementptr inbounds ptr, ptr %10, i64 %53
  store ptr %37, ptr %54, align 8, !tbaa !34
  br label %55

55:                                               ; preds = %35, %50
  %56 = phi i32 [ %52, %50 ], [ %38, %35 ]
  %57 = load ptr, ptr %20, align 8, !tbaa !53
  %58 = call ptr %57(ptr noundef nonnull %4) #3
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %35, !llvm.loop !57

60:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #3
  br i1 %36, label %63, label %196

61:                                               ; preds = %55, %21
  %62 = phi i32 [ %23, %21 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #3
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i32 [ %62, %61 ], [ %38, %60 ]
  %65 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #3
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %21, !llvm.loop !60

67:                                               ; preds = %63, %2
  %68 = phi i32 [ 0, %2 ], [ %64, %63 ]
  %69 = icmp eq i32 %68, %6
  br i1 %69, label %70, label %196

70:                                               ; preds = %67
  %71 = icmp sgt i32 %6, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %70
  %73 = zext nneg i32 %6 to i64
  %74 = zext nneg i32 %6 to i64
  %75 = load ptr, ptr %10, align 8, !tbaa !34
  %76 = call i32 @BMO_iter_elem_count_flag(ptr noundef %0, i8 noundef zeroext 4, ptr noundef %75, i16 noundef signext 2, i8 noundef zeroext 1) #3
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %89

78:                                               ; preds = %72, %82
  %79 = phi i64 [ %80, %82 ], [ 0, %72 ]
  %80 = add nuw nsw i64 %79, 1
  %81 = icmp eq i64 %80, %74
  br i1 %81, label %87, label %82, !llvm.loop !61

82:                                               ; preds = %78
  %83 = getelementptr inbounds ptr, ptr %10, i64 %80
  %84 = load ptr, ptr %83, align 8, !tbaa !34
  %85 = call i32 @BMO_iter_elem_count_flag(ptr noundef %0, i8 noundef zeroext 4, ptr noundef %84, i16 noundef signext 2, i8 noundef zeroext 1) #3
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %78, label %87, !llvm.loop !61

87:                                               ; preds = %78, %82
  %88 = icmp ult i64 %80, %73
  br label %89

89:                                               ; preds = %87, %72, %70
  %90 = phi i1 [ %71, %70 ], [ %71, %72 ], [ %88, %87 ]
  br i1 %90, label %196, label %91

91:                                               ; preds = %89
  %92 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %93 = call ptr %92(i64 noundef %9, ptr noundef nonnull @__func__.bmo_edgeloop_fill_exec) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  %94 = icmp sgt i32 %6, 0
  br i1 %94, label %95, label %193

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %97 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %98 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %99 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %100 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %101 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %102 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %103 = icmp eq i8 %13, 0
  %104 = zext nneg i32 %6 to i64
  br label %105

105:                                              ; preds = %95, %191
  %106 = phi i32 [ 0, %95 ], [ %160, %191 ]
  %107 = phi ptr [ null, %95 ], [ %150, %191 ]
  %108 = load i32, ptr %96, align 8, !tbaa !43
  %109 = sext i32 %108 to i64
  br label %110

110:                                              ; preds = %110, %105
  %111 = phi i64 [ %121, %110 ], [ 0, %105 ]
  %112 = getelementptr inbounds ptr, ptr %10, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !34
  %114 = getelementptr inbounds %struct.BMVert, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !55
  %116 = getelementptr %struct.BMFlagLayer, ptr %115, i64 %109
  %117 = getelementptr %struct.BMFlagLayer, ptr %116, i64 -1
  %118 = load i16, ptr %117, align 2, !tbaa !48
  %119 = and i16 %118, 1
  %120 = icmp eq i16 %119, 0
  %121 = add nuw nsw i64 %111, 1
  %122 = icmp ult i64 %121, %104
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %110, label %124, !llvm.loop !62

124:                                              ; preds = %110, %149
  %125 = phi i64 [ %169, %149 ], [ 0, %110 ]
  %126 = phi ptr [ %150, %149 ], [ %107, %110 ]
  %127 = phi i32 [ %160, %149 ], [ %106, %110 ]
  %128 = phi ptr [ %168, %149 ], [ %113, %110 ]
  store i8 4, ptr %97, align 4, !tbaa !50
  store ptr @bmiter__edge_of_vert_begin, ptr %98, align 8, !tbaa !52
  store ptr @bmiter__edge_of_vert_step, ptr %99, align 8, !tbaa !53
  store ptr %128, ptr %5, align 8, !tbaa !54
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %5) #3
  %129 = load ptr, ptr %99, align 8, !tbaa !53
  %130 = call ptr %129(ptr noundef nonnull %5) #3
  %131 = icmp eq ptr %130, null
  br i1 %131, label %149, label %132

132:                                              ; preds = %124, %145
  %133 = phi ptr [ %147, %145 ], [ %130, %124 ]
  %134 = getelementptr inbounds %struct.BMEdge, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !38
  %136 = load i32, ptr %100, align 8, !tbaa !43
  %137 = sext i32 %136 to i64
  %138 = getelementptr %struct.BMFlagLayer, ptr %135, i64 %137
  %139 = getelementptr %struct.BMFlagLayer, ptr %138, i64 -1
  %140 = load i16, ptr %139, align 2, !tbaa !48
  %141 = and i16 %140, 2
  %142 = icmp eq i16 %141, 0
  %143 = icmp eq ptr %133, %126
  %144 = or i1 %143, %142
  br i1 %144, label %145, label %149

145:                                              ; preds = %132
  %146 = load ptr, ptr %99, align 8, !tbaa !53
  %147 = call ptr %146(ptr noundef nonnull %5) #3
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %132, !llvm.loop !63

149:                                              ; preds = %145, %132, %124
  %150 = phi ptr [ %126, %124 ], [ %126, %145 ], [ %133, %132 ]
  %151 = getelementptr inbounds ptr, ptr %93, i64 %125
  store ptr %128, ptr %151, align 8, !tbaa !34
  %152 = getelementptr inbounds %struct.BMVert, ptr %128, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !55
  %154 = load i32, ptr %101, align 8, !tbaa !43
  %155 = sext i32 %154 to i64
  %156 = getelementptr %struct.BMFlagLayer, ptr %153, i64 %155
  %157 = getelementptr %struct.BMFlagLayer, ptr %156, i64 -1
  %158 = load i16, ptr %157, align 2, !tbaa !48
  %159 = and i16 %158, -2
  store i16 %159, ptr %157, align 2, !tbaa !48
  %160 = add nsw i32 %127, 1
  %161 = getelementptr inbounds %struct.BMEdge, ptr %150, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !64
  %163 = icmp eq ptr %162, %128
  %164 = getelementptr inbounds %struct.BMEdge, ptr %150, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !65
  %166 = icmp eq ptr %165, %128
  %167 = select i1 %166, ptr %162, ptr null
  %168 = select i1 %163, ptr %165, ptr %167
  %169 = add nuw i64 %125, 1
  %170 = load ptr, ptr %93, align 8, !tbaa !34
  %171 = icmp eq ptr %168, %170
  br i1 %171, label %172, label %124, !llvm.loop !66

172:                                              ; preds = %149
  %173 = trunc i64 %169 to i32
  %174 = call zeroext i8 @BM_face_exists(ptr noundef nonnull %93, i32 noundef %173, ptr noundef null) #3
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %172
  %177 = call ptr @BM_face_create_ngon_verts(ptr noundef %0, ptr noundef nonnull %93, i32 noundef %173, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #3
  %178 = getelementptr inbounds %struct.BMFace, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !67
  %180 = load i32, ptr %102, align 8, !tbaa !43
  %181 = sext i32 %180 to i64
  %182 = getelementptr %struct.BMFlagLayer, ptr %179, i64 %181
  %183 = getelementptr %struct.BMFlagLayer, ptr %182, i64 -1
  %184 = load i16, ptr %183, align 2, !tbaa !48
  %185 = or i16 %184, 4
  store i16 %185, ptr %183, align 2, !tbaa !48
  %186 = getelementptr inbounds %struct.BMFace, ptr %177, i64 0, i32 5
  store i16 %12, ptr %186, align 8, !tbaa !69
  br i1 %103, label %191, label %187

187:                                              ; preds = %176
  %188 = getelementptr inbounds %struct.BMHeader, ptr %177, i64 0, i32 3
  %189 = load i8, ptr %188, align 1, !tbaa !70
  %190 = or i8 %189, 8
  store i8 %190, ptr %188, align 1, !tbaa !70
  br label %191

191:                                              ; preds = %176, %187, %172
  %192 = icmp slt i32 %160, %6
  br i1 %192, label %105, label %193, !llvm.loop !71

193:                                              ; preds = %191, %91
  %194 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %194(ptr noundef %93) #3
  %195 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %195, ptr noundef nonnull @.str.3, i8 noundef zeroext 8, i16 noundef signext 4) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  br label %196

196:                                              ; preds = %60, %89, %193, %67
  %197 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %197(ptr noundef %10) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare i32 @BMO_iter_elem_count_flag(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BM_face_exists(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_create_ngon_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 16}
!39 = !{!"BMEdge", !40, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !42, i64 48, !42, i64 64}
!40 = !{!"BMHeader", !35, i64 0, !41, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!41 = !{!"int", !36, i64 0}
!42 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!43 = !{!44, !41, i64 128}
!44 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !41, i64 128, !35, i64 136, !45, i64 144, !45, i64 344, !45, i64 544, !45, i64 744, !46, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !47, i64 960, !35, i64 976, !47, i64 984, !35, i64 1000}
!45 = !{!"CustomData", !35, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !35, i64 184, !35, i64 192}
!46 = !{!"short", !36, i64 0}
!47 = !{!"ListBase", !35, i64 0, !35, i64 8}
!48 = !{!49, !46, i64 0}
!49 = !{!"BMFlagLayer", !46, i64 0}
!50 = !{!51, !36, i64 60}
!51 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !41, i64 56, !36, i64 60}
!52 = !{!51, !35, i64 40}
!53 = !{!51, !35, i64 48}
!54 = !{!36, !36, i64 0}
!55 = !{!56, !35, i64 16}
!56 = !{!"BMVert", !40, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !58, !59}
!61 = distinct !{!61, !58, !59}
!62 = distinct !{!62, !58, !59}
!63 = distinct !{!63, !58, !59}
!64 = !{!39, !35, i64 24}
!65 = !{!39, !35, i64 32}
!66 = distinct !{!66, !58, !59}
!67 = !{!68, !35, i64 16}
!68 = !{!"BMFace", !40, i64 0, !35, i64 16, !35, i64 24, !41, i64 32, !36, i64 36, !46, i64 48}
!69 = !{!68, !46, i64 48}
!70 = !{!40, !36, i64 13}
!71 = distinct !{!71, !58, !59}
