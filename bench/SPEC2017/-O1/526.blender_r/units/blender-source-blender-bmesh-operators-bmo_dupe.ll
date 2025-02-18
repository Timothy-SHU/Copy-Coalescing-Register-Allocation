; ModuleID = 'blender/source/blender/bmesh/operators/bmo_dupe.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_dupe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"dest\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"geom_orig.out\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"use_only_faces\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"boundary_map.out\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"isovert_map.out\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"cent\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dvec\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"steps\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"use_duplicate\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"geom_last.out\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"duplicate geom=%S\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"rotate cent=%v matrix=%m3 space=%s verts=%S\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"extrude_face_region geom=%S\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"translate vec=%v space=%s verts=%S\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"use_select_history\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"vert_map.out\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"edge_map.out\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"face_map.out\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"bmesh dupeops v\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"bmesh dupeops e\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_duplicate_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = tail call ptr @BMO_slot_ptr_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr %0, ptr %7
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 11, i16 noundef signext 1) #5
  %10 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.22) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #5
  %11 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %12 = tail call ptr @BMO_slot_get(ptr noundef nonnull %11, ptr noundef nonnull @.str.8) #5
  %13 = tail call ptr @BMO_slot_get(ptr noundef nonnull %11, ptr noundef nonnull @.str.9) #5
  %14 = tail call ptr @BMO_slot_get(ptr noundef nonnull %11, ptr noundef nonnull @.str.23) #5
  %15 = tail call ptr @BMO_slot_get(ptr noundef nonnull %11, ptr noundef nonnull @.str.24) #5
  %16 = tail call ptr @BMO_slot_get(ptr noundef nonnull %11, ptr noundef nonnull @.str.25) #5
  %17 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.26) #5
  %18 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.27) #5
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %20, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %21, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  store ptr %23, ptr %3, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #5
  %24 = load ptr, ptr %21, align 8, !tbaa !41
  %25 = call ptr %24(ptr noundef nonnull %3) #5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %105, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %29 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 22
  %30 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %31 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %32 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %33

33:                                               ; preds = %27, %101
  %34 = phi ptr [ %25, %27 ], [ %103, %101 ]
  %35 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = load i32, ptr %28, align 8, !tbaa !51
  %38 = sext i32 %37 to i64
  %39 = getelementptr %struct.BMFlagLayer, ptr %36, i64 %38
  %40 = getelementptr %struct.BMFlagLayer, ptr %39, i64 -1
  %41 = load i16, ptr %40, align 2, !tbaa !52
  %42 = and i16 %41, 5
  %43 = icmp eq i16 %42, 1
  br i1 %43, label %44, label %101

44:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #5
  %45 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2
  %46 = call ptr @BM_vert_create(ptr noundef %9, ptr noundef nonnull %45, ptr noundef null, i32 noundef 4) #5
  call void @BMO_slot_map_insert(ptr noundef %1, ptr noundef %14, ptr noundef nonnull %34, ptr noundef %46) #5
  call void @BMO_slot_map_insert(ptr noundef %1, ptr noundef %14, ptr noundef %46, ptr noundef nonnull %34) #5
  call void @BLI_ghash_insert(ptr noundef %17, ptr noundef nonnull %34, ptr noundef %46) #5
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %34, ptr noundef %46) #5
  %47 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = load i32, ptr %29, align 8, !tbaa !51
  %50 = sext i32 %49 to i64
  %51 = getelementptr %struct.BMFlagLayer, ptr %48, i64 %50
  %52 = getelementptr %struct.BMFlagLayer, ptr %51, i64 -1
  %53 = load i16, ptr %52, align 2, !tbaa !52
  %54 = or i16 %53, 2
  store i16 %54, ptr %52, align 2, !tbaa !52
  store i8 5, ptr %30, align 4, !tbaa !34
  store ptr @bmiter__face_of_vert_begin, ptr %31, align 8, !tbaa !40
  store ptr @bmiter__face_of_vert_step, ptr %32, align 8, !tbaa !41
  store ptr %34, ptr %6, align 8, !tbaa !47
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %6) #5
  %55 = load ptr, ptr %32, align 8, !tbaa !41
  %56 = call ptr %55(ptr noundef nonnull %6) #5
  %57 = icmp eq ptr %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %44, %69
  %59 = phi ptr [ %71, %69 ], [ %56, %44 ]
  %60 = getelementptr inbounds %struct.BMFace, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !54
  %62 = load i32, ptr %28, align 8, !tbaa !51
  %63 = sext i32 %62 to i64
  %64 = getelementptr %struct.BMFlagLayer, ptr %61, i64 %63
  %65 = getelementptr %struct.BMFlagLayer, ptr %64, i64 -1
  %66 = load i16, ptr %65, align 2, !tbaa !52
  %67 = and i16 %66, 1
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %58
  %70 = load ptr, ptr %32, align 8, !tbaa !41
  %71 = call ptr %70(ptr noundef nonnull %6) #5
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %58, !llvm.loop !56

73:                                               ; preds = %69, %44
  store i8 4, ptr %30, align 4, !tbaa !34
  store ptr @bmiter__edge_of_vert_begin, ptr %31, align 8, !tbaa !40
  store ptr @bmiter__edge_of_vert_step, ptr %32, align 8, !tbaa !41
  store ptr %34, ptr %6, align 8, !tbaa !47
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %6) #5
  %74 = load ptr, ptr %32, align 8, !tbaa !41
  %75 = call ptr %74(ptr noundef nonnull %6) #5
  %76 = icmp eq ptr %75, null
  br i1 %76, label %92, label %77

77:                                               ; preds = %73, %88
  %78 = phi ptr [ %90, %88 ], [ %75, %73 ]
  %79 = getelementptr inbounds %struct.BMEdge, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !59
  %81 = load i32, ptr %28, align 8, !tbaa !51
  %82 = sext i32 %81 to i64
  %83 = getelementptr %struct.BMFlagLayer, ptr %80, i64 %82
  %84 = getelementptr %struct.BMFlagLayer, ptr %83, i64 -1
  %85 = load i16, ptr %84, align 2, !tbaa !52
  %86 = and i16 %85, 1
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load ptr, ptr %32, align 8, !tbaa !41
  %90 = call ptr %89(ptr noundef nonnull %6) #5
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %77, !llvm.loop !62

92:                                               ; preds = %88, %73
  call void @BMO_slot_map_insert(ptr noundef %1, ptr noundef %13, ptr noundef nonnull %34, ptr noundef %46) #5
  br label %93

93:                                               ; preds = %58, %77, %92
  %94 = load ptr, ptr %35, align 8, !tbaa !48
  %95 = load i32, ptr %28, align 8, !tbaa !51
  %96 = sext i32 %95 to i64
  %97 = getelementptr %struct.BMFlagLayer, ptr %94, i64 %96
  %98 = getelementptr %struct.BMFlagLayer, ptr %97, i64 -1
  %99 = load i16, ptr %98, align 2, !tbaa !52
  %100 = or i16 %99, 4
  store i16 %100, ptr %98, align 2, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #5
  br label %101

101:                                              ; preds = %93, %33
  %102 = load ptr, ptr %21, align 8, !tbaa !41
  %103 = call ptr %102(ptr noundef nonnull %3) #5
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %33, !llvm.loop !63

105:                                              ; preds = %101, %2
  %106 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %106, align 4, !tbaa !34
  %107 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %107, align 8, !tbaa !40
  %108 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %108, align 8, !tbaa !41
  %109 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %110 = load ptr, ptr %109, align 8, !tbaa !64
  store ptr %110, ptr %4, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %111 = load ptr, ptr %108, align 8, !tbaa !41
  %112 = call ptr %111(ptr noundef nonnull %4) #5
  %113 = icmp eq ptr %112, null
  br i1 %113, label %203, label %114

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %116 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 22
  %117 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 22
  br label %118

118:                                              ; preds = %114, %199
  %119 = phi ptr [ %112, %114 ], [ %201, %199 ]
  %120 = getelementptr inbounds %struct.BMEdge, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !59
  %122 = load i32, ptr %115, align 8, !tbaa !51
  %123 = sext i32 %122 to i64
  %124 = getelementptr %struct.BMFlagLayer, ptr %121, i64 %123
  %125 = getelementptr %struct.BMFlagLayer, ptr %124, i64 -1
  %126 = load i16, ptr %125, align 2, !tbaa !52
  %127 = and i16 %126, 5
  %128 = icmp eq i16 %127, 1
  br i1 %128, label %129, label %199

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.BMEdge, ptr %119, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !65
  %132 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !48
  %134 = getelementptr %struct.BMFlagLayer, ptr %133, i64 %123
  %135 = getelementptr %struct.BMFlagLayer, ptr %134, i64 -1
  %136 = load i16, ptr %135, align 2, !tbaa !52
  %137 = and i16 %136, 4
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %139, label %159

139:                                              ; preds = %129
  %140 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 2
  %141 = call ptr @BM_vert_create(ptr noundef %9, ptr noundef nonnull %140, ptr noundef null, i32 noundef 4) #5
  call void @BMO_slot_map_insert(ptr noundef %1, ptr noundef %14, ptr noundef %131, ptr noundef %141) #5
  call void @BMO_slot_map_insert(ptr noundef %1, ptr noundef %14, ptr noundef %141, ptr noundef %131) #5
  call void @BLI_ghash_insert(ptr noundef %17, ptr noundef %131, ptr noundef %141) #5
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %9, ptr noundef %131, ptr noundef %141) #5
  %142 = getelementptr inbounds %struct.BMVert, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !48
  %144 = load i32, ptr %116, align 8, !tbaa !51
  %145 = sext i32 %144 to i64
  %146 = getelementptr %struct.BMFlagLayer, ptr %143, i64 %145
  %147 = getelementptr %struct.BMFlagLayer, ptr %146, i64 -1
  %148 = load i16, ptr %147, align 2, !tbaa !52
  %149 = or i16 %148, 2
  store i16 %149, ptr %147, align 2, !tbaa !52
  %150 = load ptr, ptr %130, align 8, !tbaa !65
  %151 = getelementptr inbounds %struct.BMVert, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !48
  %153 = load i32, ptr %115, align 8, !tbaa !51
  %154 = sext i32 %153 to i64
  %155 = getelementptr %struct.BMFlagLayer, ptr %152, i64 %154
  %156 = getelementptr %struct.BMFlagLayer, ptr %155, i64 -1
  %157 = load i16, ptr %156, align 2, !tbaa !52
  %158 = or i16 %157, 4
  store i16 %158, ptr %156, align 2, !tbaa !52
  br label %159

159:                                              ; preds = %139, %129
  %160 = getelementptr inbounds %struct.BMEdge, ptr %119, i64 0, i32 3
  %161 = load ptr, ptr %160, align 8, !tbaa !66
  %162 = getelementptr inbounds %struct.BMVert, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !48
  %164 = load i32, ptr %115, align 8, !tbaa !51
  %165 = sext i32 %164 to i64
  %166 = getelementptr %struct.BMFlagLayer, ptr %163, i64 %165
  %167 = getelementptr %struct.BMFlagLayer, ptr %166, i64 -1
  %168 = load i16, ptr %167, align 2, !tbaa !52
  %169 = and i16 %168, 4
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %171, label %191

171:                                              ; preds = %159
  %172 = getelementptr inbounds %struct.BMVert, ptr %161, i64 0, i32 2
  %173 = call ptr @BM_vert_create(ptr noundef %9, ptr noundef nonnull %172, ptr noundef null, i32 noundef 4) #5
  call void @BMO_slot_map_insert(ptr noundef %1, ptr noundef %14, ptr noundef %161, ptr noundef %173) #5
  call void @BMO_slot_map_insert(ptr noundef %1, ptr noundef %14, ptr noundef %173, ptr noundef %161) #5
  call void @BLI_ghash_insert(ptr noundef %17, ptr noundef %161, ptr noundef %173) #5
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %9, ptr noundef %161, ptr noundef %173) #5
  %174 = getelementptr inbounds %struct.BMVert, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !48
  %176 = load i32, ptr %117, align 8, !tbaa !51
  %177 = sext i32 %176 to i64
  %178 = getelementptr %struct.BMFlagLayer, ptr %175, i64 %177
  %179 = getelementptr %struct.BMFlagLayer, ptr %178, i64 -1
  %180 = load i16, ptr %179, align 2, !tbaa !52
  %181 = or i16 %180, 2
  store i16 %181, ptr %179, align 2, !tbaa !52
  %182 = load ptr, ptr %160, align 8, !tbaa !66
  %183 = getelementptr inbounds %struct.BMVert, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !48
  %185 = load i32, ptr %115, align 8, !tbaa !51
  %186 = sext i32 %185 to i64
  %187 = getelementptr %struct.BMFlagLayer, ptr %184, i64 %186
  %188 = getelementptr %struct.BMFlagLayer, ptr %187, i64 -1
  %189 = load i16, ptr %188, align 2, !tbaa !52
  %190 = or i16 %189, 4
  store i16 %190, ptr %188, align 2, !tbaa !52
  br label %191

191:                                              ; preds = %171, %159
  call fastcc void @bmo_edge_copy(ptr noundef %1, ptr noundef %15, ptr noundef %12, ptr noundef %9, ptr noundef %0, ptr noundef nonnull %119, ptr noundef %17, ptr noundef %18)
  %192 = load ptr, ptr %120, align 8, !tbaa !59
  %193 = load i32, ptr %115, align 8, !tbaa !51
  %194 = sext i32 %193 to i64
  %195 = getelementptr %struct.BMFlagLayer, ptr %192, i64 %194
  %196 = getelementptr %struct.BMFlagLayer, ptr %195, i64 -1
  %197 = load i16, ptr %196, align 2, !tbaa !52
  %198 = or i16 %197, 4
  store i16 %198, ptr %196, align 2, !tbaa !52
  br label %199

199:                                              ; preds = %191, %118
  %200 = load ptr, ptr %108, align 8, !tbaa !41
  %201 = call ptr %200(ptr noundef nonnull %4) #5
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %118, !llvm.loop !67

203:                                              ; preds = %199, %105
  %204 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %204, align 4, !tbaa !34
  %205 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %205, align 8, !tbaa !40
  %206 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %206, align 8, !tbaa !41
  %207 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %208 = load ptr, ptr %207, align 8, !tbaa !68
  store ptr %208, ptr %5, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #5
  %209 = load ptr, ptr %206, align 8, !tbaa !41
  %210 = call ptr %209(ptr noundef nonnull %5) #5
  %211 = icmp eq ptr %210, null
  br i1 %211, label %302, label %212

212:                                              ; preds = %203
  %213 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %214 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 22
  br label %215

215:                                              ; preds = %212, %298
  %216 = phi ptr [ %210, %212 ], [ %300, %298 ]
  %217 = getelementptr inbounds %struct.BMFace, ptr %216, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !54
  %219 = load i32, ptr %213, align 8, !tbaa !51
  %220 = sext i32 %219 to i64
  %221 = getelementptr %struct.BMFlagLayer, ptr %218, i64 %220
  %222 = getelementptr %struct.BMFlagLayer, ptr %221, i64 -1
  %223 = load i16, ptr %222, align 2, !tbaa !52
  %224 = and i16 %223, 1
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %298, label %226

226:                                              ; preds = %215
  store i8 9, ptr %19, align 4, !tbaa !34
  store ptr @bmiter__vert_of_face_begin, ptr %20, align 8, !tbaa !40
  store ptr @bmiter__vert_of_face_step, ptr %21, align 8, !tbaa !41
  store ptr %216, ptr %3, align 8, !tbaa !47
  call void @bmiter__vert_of_face_begin(ptr noundef nonnull %3) #5
  %227 = load ptr, ptr %21, align 8, !tbaa !41
  %228 = call ptr %227(ptr noundef nonnull %3) #5
  %229 = icmp eq ptr %228, null
  br i1 %229, label %263, label %230

230:                                              ; preds = %226, %259
  %231 = phi ptr [ %261, %259 ], [ %228, %226 ]
  %232 = getelementptr inbounds %struct.BMVert, ptr %231, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !48
  %234 = load i32, ptr %213, align 8, !tbaa !51
  %235 = sext i32 %234 to i64
  %236 = getelementptr %struct.BMFlagLayer, ptr %233, i64 %235
  %237 = getelementptr %struct.BMFlagLayer, ptr %236, i64 -1
  %238 = load i16, ptr %237, align 2, !tbaa !52
  %239 = and i16 %238, 4
  %240 = icmp eq i16 %239, 0
  br i1 %240, label %241, label %259

241:                                              ; preds = %230
  %242 = getelementptr inbounds %struct.BMVert, ptr %231, i64 0, i32 2
  %243 = call ptr @BM_vert_create(ptr noundef %9, ptr noundef nonnull %242, ptr noundef null, i32 noundef 4) #5
  call void @BMO_slot_map_insert(ptr noundef %1, ptr noundef %14, ptr noundef nonnull %231, ptr noundef %243) #5
  call void @BMO_slot_map_insert(ptr noundef %1, ptr noundef %14, ptr noundef %243, ptr noundef nonnull %231) #5
  call void @BLI_ghash_insert(ptr noundef %17, ptr noundef nonnull %231, ptr noundef %243) #5
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %231, ptr noundef %243) #5
  %244 = getelementptr inbounds %struct.BMVert, ptr %243, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !48
  %246 = load i32, ptr %214, align 8, !tbaa !51
  %247 = sext i32 %246 to i64
  %248 = getelementptr %struct.BMFlagLayer, ptr %245, i64 %247
  %249 = getelementptr %struct.BMFlagLayer, ptr %248, i64 -1
  %250 = load i16, ptr %249, align 2, !tbaa !52
  %251 = or i16 %250, 2
  store i16 %251, ptr %249, align 2, !tbaa !52
  %252 = load ptr, ptr %232, align 8, !tbaa !48
  %253 = load i32, ptr %213, align 8, !tbaa !51
  %254 = sext i32 %253 to i64
  %255 = getelementptr %struct.BMFlagLayer, ptr %252, i64 %254
  %256 = getelementptr %struct.BMFlagLayer, ptr %255, i64 -1
  %257 = load i16, ptr %256, align 2, !tbaa !52
  %258 = or i16 %257, 4
  store i16 %258, ptr %256, align 2, !tbaa !52
  br label %259

259:                                              ; preds = %241, %230
  %260 = load ptr, ptr %21, align 8, !tbaa !41
  %261 = call ptr %260(ptr noundef nonnull %3) #5
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %230, !llvm.loop !69

263:                                              ; preds = %259, %226
  store i8 10, ptr %106, align 4, !tbaa !34
  store ptr @bmiter__edge_of_face_begin, ptr %107, align 8, !tbaa !40
  store ptr @bmiter__edge_of_face_step, ptr %108, align 8, !tbaa !41
  store ptr %216, ptr %4, align 8, !tbaa !47
  call void @bmiter__edge_of_face_begin(ptr noundef nonnull %4) #5
  %264 = load ptr, ptr %108, align 8, !tbaa !41
  %265 = call ptr %264(ptr noundef nonnull %4) #5
  %266 = icmp eq ptr %265, null
  br i1 %266, label %290, label %267

267:                                              ; preds = %263, %286
  %268 = phi ptr [ %288, %286 ], [ %265, %263 ]
  %269 = getelementptr inbounds %struct.BMEdge, ptr %268, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !59
  %271 = load i32, ptr %213, align 8, !tbaa !51
  %272 = sext i32 %271 to i64
  %273 = getelementptr %struct.BMFlagLayer, ptr %270, i64 %272
  %274 = getelementptr %struct.BMFlagLayer, ptr %273, i64 -1
  %275 = load i16, ptr %274, align 2, !tbaa !52
  %276 = and i16 %275, 4
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %267
  call fastcc void @bmo_edge_copy(ptr noundef %1, ptr noundef %15, ptr noundef %12, ptr noundef %9, ptr noundef %0, ptr noundef nonnull %268, ptr noundef %17, ptr noundef %18)
  %279 = load ptr, ptr %269, align 8, !tbaa !59
  %280 = load i32, ptr %213, align 8, !tbaa !51
  %281 = sext i32 %280 to i64
  %282 = getelementptr %struct.BMFlagLayer, ptr %279, i64 %281
  %283 = getelementptr %struct.BMFlagLayer, ptr %282, i64 -1
  %284 = load i16, ptr %283, align 2, !tbaa !52
  %285 = or i16 %284, 4
  store i16 %285, ptr %283, align 2, !tbaa !52
  br label %286

286:                                              ; preds = %278, %267
  %287 = load ptr, ptr %108, align 8, !tbaa !41
  %288 = call ptr %287(ptr noundef nonnull %4) #5
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %267, !llvm.loop !70

290:                                              ; preds = %286, %263
  call fastcc void @bmo_face_copy(ptr noundef %1, ptr noundef %16, ptr noundef %9, ptr noundef %0, ptr noundef nonnull %216, ptr noundef %17, ptr noundef %18)
  %291 = load ptr, ptr %217, align 8, !tbaa !54
  %292 = load i32, ptr %213, align 8, !tbaa !51
  %293 = sext i32 %292 to i64
  %294 = getelementptr %struct.BMFlagLayer, ptr %291, i64 %293
  %295 = getelementptr %struct.BMFlagLayer, ptr %294, i64 -1
  %296 = load i16, ptr %295, align 2, !tbaa !52
  %297 = or i16 %296, 4
  store i16 %297, ptr %295, align 2, !tbaa !52
  br label %298

298:                                              ; preds = %290, %215
  %299 = load ptr, ptr %206, align 8, !tbaa !41
  %300 = call ptr %299(ptr noundef nonnull %5) #5
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %215, !llvm.loop !71

302:                                              ; preds = %298, %203
  call void @BLI_ghash_free(ptr noundef %17, ptr noundef null, ptr noundef null) #5
  call void @BLI_ghash_free(ptr noundef %18, ptr noundef null, ptr noundef null) #5
  %303 = icmp eq i8 %10, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %302
  call void @BMO_mesh_selected_remap(ptr noundef %9, ptr noundef %14, ptr noundef %15, ptr noundef %16, i8 noundef zeroext 0) #5
  br label %305

305:                                              ; preds = %302, %304
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  %306 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %307 = load ptr, ptr %306, align 8, !tbaa !72
  call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %11, ptr noundef nonnull @.str.2, ptr noundef %307) #5
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @.str.3, i8 noundef zeroext 11, i16 noundef signext 2) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BMO_slot_ptr_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @_bmo_slot_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_split_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #5
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.4) #5
  %8 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !74
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %9, ptr noundef nonnull @.str.5) #5
  %10 = load i32, ptr %8, align 8, !tbaa !74
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %10, ptr noundef nonnull @.str.6) #5
  %11 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef %12) #5
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #5
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 11, i16 noundef signext 1) #5
  %13 = icmp eq i8 %7, 0
  br i1 %13, label %108, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #5
  %15 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %16, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %17, align 8, !tbaa !41
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  store ptr %19, ptr %5, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #5
  %20 = load ptr, ptr %17, align 8, !tbaa !41
  %21 = call ptr %20(ptr noundef nonnull %5) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %62, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %25 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %27 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %28 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %29

29:                                               ; preds = %23, %58
  %30 = phi ptr [ %21, %23 ], [ %60, %58 ]
  store i8 8, ptr %24, align 4, !tbaa !34
  store ptr @bmiter__face_of_edge_begin, ptr %25, align 8, !tbaa !40
  store ptr @bmiter__face_of_edge_step, ptr %26, align 8, !tbaa !41
  store ptr %30, ptr %6, align 8, !tbaa !47
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %6) #5
  %31 = load ptr, ptr %26, align 8, !tbaa !41
  %32 = call ptr %31(ptr noundef nonnull %6) #5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %29, %45
  %35 = phi ptr [ %47, %45 ], [ %32, %29 ]
  %36 = getelementptr inbounds %struct.BMFace, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = load i32, ptr %27, align 8, !tbaa !51
  %39 = sext i32 %38 to i64
  %40 = getelementptr %struct.BMFlagLayer, ptr %37, i64 %39
  %41 = getelementptr %struct.BMFlagLayer, ptr %40, i64 -1
  %42 = load i16, ptr %41, align 2, !tbaa !52
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %34
  %46 = load ptr, ptr %26, align 8, !tbaa !41
  %47 = call ptr %46(ptr noundef nonnull %6) #5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %34, !llvm.loop !75

49:                                               ; preds = %45, %29
  %50 = getelementptr inbounds %struct.BMEdge, ptr %30, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !59
  %52 = load i32, ptr %28, align 8, !tbaa !51
  %53 = sext i32 %52 to i64
  %54 = getelementptr %struct.BMFlagLayer, ptr %51, i64 %53
  %55 = getelementptr %struct.BMFlagLayer, ptr %54, i64 -1
  %56 = load i16, ptr %55, align 2, !tbaa !52
  %57 = or i16 %56, 1
  store i16 %57, ptr %55, align 2, !tbaa !52
  br label %58

58:                                               ; preds = %34, %49
  %59 = load ptr, ptr %17, align 8, !tbaa !41
  %60 = call ptr %59(ptr noundef nonnull %5) #5
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %29, !llvm.loop !76

62:                                               ; preds = %58, %14
  store i8 1, ptr %15, align 4, !tbaa !34
  store ptr @bmiter__elem_of_mesh_begin, ptr %16, align 8, !tbaa !40
  store ptr @bmiter__elem_of_mesh_step, ptr %17, align 8, !tbaa !41
  %63 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !42
  store ptr %64, ptr %5, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #5
  %65 = load ptr, ptr %17, align 8, !tbaa !41
  %66 = call ptr %65(ptr noundef nonnull %5) #5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %107, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %70 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %71 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %72 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %73 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %74

74:                                               ; preds = %68, %103
  %75 = phi ptr [ %66, %68 ], [ %105, %103 ]
  store i8 4, ptr %69, align 4, !tbaa !34
  store ptr @bmiter__edge_of_vert_begin, ptr %70, align 8, !tbaa !40
  store ptr @bmiter__edge_of_vert_step, ptr %71, align 8, !tbaa !41
  store ptr %75, ptr %6, align 8, !tbaa !47
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %6) #5
  %76 = load ptr, ptr %71, align 8, !tbaa !41
  %77 = call ptr %76(ptr noundef nonnull %6) #5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %94, label %79

79:                                               ; preds = %74, %90
  %80 = phi ptr [ %92, %90 ], [ %77, %74 ]
  %81 = getelementptr inbounds %struct.BMEdge, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !59
  %83 = load i32, ptr %72, align 8, !tbaa !51
  %84 = sext i32 %83 to i64
  %85 = getelementptr %struct.BMFlagLayer, ptr %82, i64 %84
  %86 = getelementptr %struct.BMFlagLayer, ptr %85, i64 -1
  %87 = load i16, ptr %86, align 2, !tbaa !52
  %88 = and i16 %87, 1
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %79
  %91 = load ptr, ptr %71, align 8, !tbaa !41
  %92 = call ptr %91(ptr noundef nonnull %6) #5
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %79, !llvm.loop !77

94:                                               ; preds = %90, %74
  %95 = getelementptr inbounds %struct.BMVert, ptr %75, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !48
  %97 = load i32, ptr %73, align 8, !tbaa !51
  %98 = sext i32 %97 to i64
  %99 = getelementptr %struct.BMFlagLayer, ptr %96, i64 %98
  %100 = getelementptr %struct.BMFlagLayer, ptr %99, i64 -1
  %101 = load i16, ptr %100, align 2, !tbaa !52
  %102 = or i16 %101, 1
  store i16 %102, ptr %100, align 2, !tbaa !52
  br label %103

103:                                              ; preds = %79, %94
  %104 = load ptr, ptr %17, align 8, !tbaa !41
  %105 = call ptr %104(ptr noundef nonnull %5) #5
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %74, !llvm.loop !78

107:                                              ; preds = %103, %62
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #5
  br label %108

108:                                              ; preds = %107, %2
  call void @BMO_slot_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.7, i32 noundef 5) #5
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, i8 noundef zeroext 11, i16 noundef signext 1) #5
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %4) #5
  %109 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %110 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %111 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !72
  call void @_bmo_slot_copy(ptr noundef nonnull %109, ptr noundef nonnull @.str.3, ptr noundef nonnull %110, ptr noundef nonnull @.str.3, ptr noundef %112) #5
  %113 = load ptr, ptr %111, align 8, !tbaa !72
  call void @_bmo_slot_copy(ptr noundef nonnull %109, ptr noundef nonnull @.str.8, ptr noundef nonnull %110, ptr noundef nonnull @.str.8, ptr noundef %113) #5
  %114 = load ptr, ptr %111, align 8, !tbaa !72
  call void @_bmo_slot_copy(ptr noundef nonnull %109, ptr noundef nonnull @.str.9, ptr noundef nonnull %110, ptr noundef nonnull @.str.9, ptr noundef %114) #5
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #5
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #5
  ret void
}

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_delete_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 11, i16 noundef signext 1) #5
  %3 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.7) #5
  tail call void @BMO_mesh_delete_oflag_context(ptr noundef %0, i16 noundef signext 1, i32 noundef %3) #5
  ret void
}

declare void @BMO_mesh_delete_oflag_context(ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #2

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_spin_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #5
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %5) #5
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %7) #5
  %9 = load float, ptr %7, align 4, !tbaa !79
  %10 = getelementptr inbounds float, ptr %7, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !79
  %12 = fmul float %11, %11
  %13 = call float @llvm.fmuladd.f32(float %9, float %9, float %12)
  %14 = getelementptr inbounds float, ptr %7, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !79
  %16 = call float @llvm.fmuladd.f32(float %15, float %15, float %13)
  %17 = fcmp ogt float %16, 0x38AA95A5C0000000
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = call float @sqrtf(float noundef %16) #5
  %20 = fdiv float 1.000000e+00, %19
  %21 = load float, ptr %7, align 4, !tbaa !79
  %22 = fmul float %21, %20
  store float %22, ptr %7, align 4, !tbaa !79
  %23 = load float, ptr %10, align 4, !tbaa !79
  %24 = fmul float %20, %23
  store float %24, ptr %10, align 4, !tbaa !79
  %25 = load float, ptr %14, align 4, !tbaa !79
  %26 = fmul float %20, %25
  br label %28

27:                                               ; preds = %2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !79
  store float 0.000000e+00, ptr %10, align 4, !tbaa !79
  br label %28

28:                                               ; preds = %18, %27
  %29 = phi float [ 0.000000e+00, %27 ], [ %26, %18 ]
  store float %29, ptr %14, align 4, !tbaa !79
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %6) #5
  %30 = load float, ptr %6, align 4, !tbaa !79
  %31 = fcmp une float %30, 0.000000e+00
  %32 = getelementptr inbounds float, ptr %6, i64 1
  %33 = load float, ptr %32, align 4
  %34 = fcmp une float %33, 0.000000e+00
  %35 = select i1 %31, i1 true, i1 %34
  %36 = getelementptr inbounds float, ptr %6, i64 2
  %37 = load float, ptr %36, align 4
  %38 = fcmp une float %37, 0.000000e+00
  %39 = select i1 %35, i1 true, i1 %38
  %40 = call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.13) #5
  %41 = call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.14) #5
  %42 = sitofp i32 %40 to float
  %43 = fdiv float %41, %42
  %44 = call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.15) #5
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %8, ptr noundef nonnull %7, float noundef %43) #5
  %45 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %46 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !72
  call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %45, ptr noundef nonnull @.str.16, ptr noundef %47) #5
  %48 = icmp sgt i32 %40, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %28
  %50 = icmp eq i8 %44, 0
  %51 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %52 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %53 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %54 = getelementptr inbounds %struct.BMOperator, ptr %4, i64 0, i32 1
  %55 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  br label %56

56:                                               ; preds = %49, %74
  %57 = phi i32 [ 0, %49 ], [ %75, %74 ]
  br i1 %50, label %61, label %58

58:                                               ; preds = %56
  %59 = load i32, ptr %51, align 8, !tbaa !74
  %60 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %59, ptr noundef nonnull @.str.17, ptr noundef %1, ptr noundef nonnull @.str.16) #5
  br label %64

61:                                               ; preds = %56
  %62 = load i32, ptr %53, align 8, !tbaa !74
  %63 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %62, ptr noundef nonnull @.str.20, ptr noundef %1, ptr noundef nonnull @.str.16) #5
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi ptr [ %4, %61 ], [ %3, %58 ]
  %66 = phi ptr [ %53, %61 ], [ %51, %58 ]
  %67 = phi ptr [ %54, %61 ], [ %52, %58 ]
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %65) #5
  %68 = load i32, ptr %66, align 8, !tbaa !74
  %69 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %68, ptr noundef nonnull @.str.18, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %65, ptr noundef nonnull @.str.3) #5
  %70 = load ptr, ptr %46, align 8, !tbaa !72
  call void @_bmo_slot_copy(ptr noundef nonnull %67, ptr noundef nonnull @.str.3, ptr noundef nonnull %45, ptr noundef nonnull @.str.16, ptr noundef %70) #5
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %65) #5
  br i1 %39, label %71, label %74

71:                                               ; preds = %64
  call void @mul_m3_v3(ptr noundef nonnull %8, ptr noundef nonnull %6) #5
  %72 = load i32, ptr %55, align 8, !tbaa !74
  %73 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %72, ptr noundef nonnull @.str.21, ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef %1, ptr noundef nonnull @.str.16) #5
  br label %74

74:                                               ; preds = %64, %71
  %75 = add nuw nsw i32 %57, 1
  %76 = icmp eq i32 %75, %40
  br i1 %76, label %77, label %56, !llvm.loop !81

77:                                               ; preds = %74, %28
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #5
  ret void
}

declare void @BMO_slot_vec_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @axis_angle_normalized_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bmo_edge_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 22
  %14 = load i32, ptr %13, align 8, !tbaa !51
  %15 = sext i32 %14 to i64
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %30, %16 ], [ %10, %12 ]
  %18 = phi i32 [ %28, %16 ], [ 0, %12 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = getelementptr %struct.BMFlagLayer, ptr %22, i64 %15
  %24 = getelementptr %struct.BMFlagLayer, ptr %23, i64 -1
  %25 = load i16, ptr %24, align 2, !tbaa !52
  %26 = and i16 %25, 1
  %27 = zext nneg i16 %26 to i32
  %28 = add i32 %18, %27
  %29 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = icmp eq ptr %30, %10
  br i1 %31, label %32, label %16, !llvm.loop !86

32:                                               ; preds = %16
  %33 = icmp ult i32 %28, 2
  br label %34

34:                                               ; preds = %32, %8
  %35 = phi i1 [ %33, %32 ], [ true, %8 ]
  %36 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %37) #5
  %39 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !66
  %41 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %40) #5
  %42 = tail call ptr @BM_edge_create(ptr noundef %3, ptr noundef %38, ptr noundef %41, ptr noundef null, i32 noundef 4) #5
  tail call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %42) #5
  tail call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %42, ptr noundef %5) #5
  br i1 %35, label %43, label %44

43:                                               ; preds = %34
  tail call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %2, ptr noundef %5, ptr noundef %42) #5
  br label %44

44:                                               ; preds = %43, %34
  tail call void @BLI_ghash_insert(ptr noundef %7, ptr noundef %5, ptr noundef %42) #5
  tail call void @BM_elem_attrs_copy(ptr noundef %4, ptr noundef %3, ptr noundef %5, ptr noundef %42) #5
  %45 = getelementptr inbounds %struct.BMEdge, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !59
  %47 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 22
  %48 = load i32, ptr %47, align 8, !tbaa !51
  %49 = sext i32 %48 to i64
  %50 = getelementptr %struct.BMFlagLayer, ptr %46, i64 %49
  %51 = getelementptr %struct.BMFlagLayer, ptr %50, i64 -1
  %52 = load i16, ptr %51, align 2, !tbaa !52
  %53 = or i16 %52, 2
  store i16 %53, ptr %51, align 2, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bmo_face_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !87
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = alloca i8, i64 %11, align 16
  %13 = alloca i8, i64 %11, align 16
  %14 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  br label %16

16:                                               ; preds = %16, %7
  %17 = phi i64 [ %27, %16 ], [ 0, %7 ]
  %18 = phi ptr [ %29, %16 ], [ %15, %7 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !89
  %21 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef %20) #5
  %22 = getelementptr inbounds ptr, ptr %12, i64 %17
  store ptr %21, ptr %22, align 8, !tbaa !90
  %23 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %24) #5
  %26 = getelementptr inbounds ptr, ptr %13, i64 %17
  store ptr %25, ptr %26, align 8, !tbaa !90
  %27 = add nuw i64 %17, 1
  %28 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = icmp eq ptr %29, %15
  br i1 %30, label %31, label %16, !llvm.loop !93

31:                                               ; preds = %16
  %32 = load i32, ptr %8, align 8, !tbaa !87
  %33 = call ptr @BM_face_create(ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %32, ptr noundef null, i32 noundef 4) #5
  call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %33) #5
  call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %33, ptr noundef %4) #5
  call void @BM_elem_attrs_copy(ptr noundef %3, ptr noundef %2, ptr noundef %4, ptr noundef %33) #5
  %34 = getelementptr inbounds %struct.BMFace, ptr %33, i64 0, i32 2
  br label %35

35:                                               ; preds = %35, %31
  %36 = phi ptr [ %34, %31 ], [ %39, %35 ]
  %37 = phi ptr [ %15, %31 ], [ %41, %35 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !90
  call void @BM_elem_attrs_copy(ptr noundef %3, ptr noundef %2, ptr noundef %37, ptr noundef %38) #5
  %39 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 6
  %40 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !92
  %42 = icmp eq ptr %41, %15
  br i1 %42, label %43, label %35, !llvm.loop !94

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.BMFace, ptr %33, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  %46 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 22
  %47 = load i32, ptr %46, align 8, !tbaa !51
  %48 = sext i32 %47 to i64
  %49 = getelementptr %struct.BMFlagLayer, ptr %45, i64 %48
  %50 = getelementptr %struct.BMFlagLayer, ptr %49, i64 -1
  %51 = load i16, ptr %50, align 2, !tbaa !52
  %52 = or i16 %51, 2
  store i16 %52, ptr %50, align 2, !tbaa !52
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_mesh_selected_remap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_face_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

declare void @bmiter__vert_of_face_begin(ptr noundef) #2

declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

declare void @bmiter__edge_of_face_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!34 = !{!35, !36, i64 60}
!35 = !{!"BMIter", !36, i64 0, !38, i64 40, !38, i64 48, !39, i64 56, !36, i64 60}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!35, !38, i64 40}
!41 = !{!35, !38, i64 48}
!42 = !{!43, !38, i64 32}
!43 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !36, i64 28, !36, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !39, i64 128, !38, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !45, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !46, i64 960, !38, i64 976, !46, i64 984, !38, i64 1000}
!44 = !{!"CustomData", !38, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !38, i64 184, !38, i64 192}
!45 = !{!"short", !36, i64 0}
!46 = !{!"ListBase", !38, i64 0, !38, i64 8}
!47 = !{!36, !36, i64 0}
!48 = !{!49, !38, i64 16}
!49 = !{!"BMVert", !50, i64 0, !38, i64 16, !36, i64 24, !36, i64 36, !38, i64 48}
!50 = !{!"BMHeader", !38, i64 0, !39, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!51 = !{!43, !39, i64 128}
!52 = !{!53, !45, i64 0}
!53 = !{!"BMFlagLayer", !45, i64 0}
!54 = !{!55, !38, i64 16}
!55 = !{!"BMFace", !50, i64 0, !38, i64 16, !38, i64 24, !39, i64 32, !36, i64 36, !45, i64 48}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!60, !38, i64 16}
!60 = !{!"BMEdge", !50, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !61, i64 48, !61, i64 64}
!61 = !{!"BMDiskLink", !38, i64 0, !38, i64 8}
!62 = distinct !{!62, !57, !58}
!63 = distinct !{!63, !57, !58}
!64 = !{!43, !38, i64 40}
!65 = !{!60, !38, i64 24}
!66 = !{!60, !38, i64 32}
!67 = distinct !{!67, !57, !58}
!68 = !{!43, !38, i64 56}
!69 = distinct !{!69, !57, !58}
!70 = distinct !{!70, !57, !58}
!71 = distinct !{!71, !57, !58}
!72 = !{!73, !38, i64 1288}
!73 = !{!"BMOperator", !36, i64 0, !36, i64 640, !38, i64 1280, !38, i64 1288, !39, i64 1296, !39, i64 1300, !39, i64 1304}
!74 = !{!73, !39, i64 1304}
!75 = distinct !{!75, !57, !58}
!76 = distinct !{!76, !57, !58}
!77 = distinct !{!77, !57, !58}
!78 = distinct !{!78, !57, !58}
!79 = !{!80, !80, i64 0}
!80 = !{!"float", !36, i64 0}
!81 = distinct !{!81, !57, !58}
!82 = !{!60, !38, i64 40}
!83 = !{!84, !38, i64 32}
!84 = !{!"BMLoop", !50, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64}
!85 = !{!84, !38, i64 40}
!86 = distinct !{!86, !57, !58}
!87 = !{!55, !39, i64 32}
!88 = !{!55, !38, i64 24}
!89 = !{!84, !38, i64 16}
!90 = !{!38, !38, i64 0}
!91 = !{!84, !38, i64 24}
!92 = !{!84, !38, i64 56}
!93 = distinct !{!93, !57, !58}
!94 = distinct !{!94, !57, !58}
