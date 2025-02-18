; ModuleID = 'blender/source/blender/bmesh/operators/bmo_removedoubles.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_removedoubles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.0 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.0 = type { ptr, [8 x i8] }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.CDBlockBytes = type { [64 x i8] }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMWalker = type { i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.ListBase, i16, i16, i16, i32, ptr, ptr, i32 }

@.str = private unnamed_addr constant [10 x i8] c"targetmap\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"vert_snap\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"verts\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"merge_co\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"weld_verts\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"collapse_uvs edges=%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"BLI_array.edges\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"targetmap.out\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"find_doubles verts=%av keep_verts=%fv\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"dist\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"BLI_array.blocks\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"keep_verts\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_weld_verts_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %5 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str) #6
  %6 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  store ptr %10, ptr %3, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !41
  %12 = call ptr %11(ptr noundef nonnull %3) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %45, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.BMOpSlot, ptr %5, i64 0, i32 4
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %17

17:                                               ; preds = %14, %41
  %18 = phi ptr [ %12, %14 ], [ %43, %41 ]
  %19 = load ptr, ptr %15, align 8, !tbaa !47
  %20 = call ptr @BLI_ghash_lookup_p(ptr noundef %19, ptr noundef nonnull %18) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %20, align 8, !tbaa !48
  br label %24

24:                                               ; preds = %17, %22
  %25 = phi ptr [ %23, %22 ], [ null, %17 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = load i32, ptr %16, align 8, !tbaa !52
  %31 = sext i32 %30 to i64
  %32 = getelementptr %struct.BMFlagLayer, ptr %29, i64 %31
  %33 = getelementptr %struct.BMFlagLayer, ptr %32, i64 -1
  %34 = load i16, ptr %33, align 2, !tbaa !53
  %35 = or i16 %34, 1
  store i16 %35, ptr %33, align 2, !tbaa !53
  %36 = getelementptr inbounds %struct.BMHeader, ptr %18, i64 0, i32 3
  %37 = load i8, ptr %36, align 1, !tbaa !55
  %38 = getelementptr inbounds %struct.BMHeader, ptr %25, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !55
  %40 = or i8 %39, %37
  store i8 %40, ptr %38, align 1, !tbaa !55
  store i8 %40, ptr %36, align 1, !tbaa !55
  br label %41

41:                                               ; preds = %24, %27
  %42 = load ptr, ptr %8, align 8, !tbaa !41
  %43 = call ptr %42(ptr noundef nonnull %3) #6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %17, !llvm.loop !56

45:                                               ; preds = %41, %2
  store i8 3, ptr %6, align 4, !tbaa !34
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !40
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !41
  %46 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  store ptr %47, ptr %3, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %48 = load ptr, ptr %8, align 8, !tbaa !41
  %49 = call ptr %48(ptr noundef nonnull %3) #6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %45, %51
  %52 = phi ptr [ %54, %51 ], [ %49, %45 ]
  call fastcc void @remdoubles_splitface(ptr noundef nonnull %52, ptr noundef %0, ptr noundef %5)
  %53 = load ptr, ptr %8, align 8, !tbaa !41
  %54 = call ptr %53(ptr noundef nonnull %3) #6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %51, !llvm.loop !60

56:                                               ; preds = %51, %45
  store i8 2, ptr %6, align 4, !tbaa !34
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !40
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !41
  %57 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !61
  store ptr %58, ptr %3, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %59 = load ptr, ptr %8, align 8, !tbaa !41
  %60 = call ptr %59(ptr noundef nonnull %3) #6
  %61 = icmp eq ptr %60, null
  br i1 %61, label %138, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %64 = getelementptr inbounds %struct.BMOpSlot, ptr %5, i64 0, i32 4
  %65 = getelementptr inbounds %struct.BMOpSlot, ptr %5, i64 0, i32 4
  br label %66

66:                                               ; preds = %62, %134
  %67 = phi ptr [ %60, %62 ], [ %136, %134 ]
  %68 = getelementptr inbounds %struct.BMEdge, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !62
  %70 = getelementptr inbounds %struct.BMVert, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !49
  %72 = load i32, ptr %63, align 8, !tbaa !52
  %73 = sext i32 %72 to i64
  %74 = getelementptr %struct.BMFlagLayer, ptr %71, i64 %73
  %75 = getelementptr %struct.BMFlagLayer, ptr %74, i64 -1
  %76 = load i16, ptr %75, align 2, !tbaa !53
  %77 = trunc i16 %76 to i8
  %78 = and i8 %77, 1
  %79 = getelementptr inbounds %struct.BMEdge, ptr %67, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !65
  %81 = getelementptr inbounds %struct.BMVert, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !49
  %83 = getelementptr %struct.BMFlagLayer, ptr %82, i64 %73
  %84 = getelementptr %struct.BMFlagLayer, ptr %83, i64 -1
  %85 = load i16, ptr %84, align 2, !tbaa !53
  %86 = trunc i16 %85 to i8
  %87 = and i8 %86, 1
  %88 = icmp ne i8 %78, 0
  %89 = icmp ne i8 %87, 0
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %91, label %134

91:                                               ; preds = %66
  %92 = icmp eq i8 %78, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %91
  %94 = load ptr, ptr %64, align 8, !tbaa !47
  %95 = call ptr @BLI_ghash_lookup_p(ptr noundef %94, ptr noundef %69) #6
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %95, align 8, !tbaa !48
  br label %99

99:                                               ; preds = %97, %93, %91
  %100 = phi ptr [ %69, %91 ], [ %98, %97 ], [ null, %93 ]
  %101 = icmp eq i8 %87, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %65, align 8, !tbaa !47
  %104 = call ptr @BLI_ghash_lookup_p(ptr noundef %103, ptr noundef %80) #6
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %104, align 8, !tbaa !48
  br label %108

108:                                              ; preds = %106, %102, %99
  %109 = phi ptr [ %80, %99 ], [ %107, %106 ], [ null, %102 ]
  %110 = icmp eq ptr %100, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.BMEdge, ptr %67, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !66
  %114 = load i32, ptr %63, align 8, !tbaa !52
  %115 = sext i32 %114 to i64
  %116 = getelementptr %struct.BMFlagLayer, ptr %113, i64 %115
  %117 = getelementptr %struct.BMFlagLayer, ptr %116, i64 -1
  %118 = load i16, ptr %117, align 2, !tbaa !53
  %119 = or i16 %118, 2
  store i16 %119, ptr %117, align 2, !tbaa !53
  br label %125

120:                                              ; preds = %108
  %121 = call ptr @BM_edge_exists(ptr noundef %100, ptr noundef %109) #6
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %100, ptr noundef %109, ptr noundef nonnull %67, i32 noundef 2) #6
  br label %125

125:                                              ; preds = %120, %123, %111
  %126 = getelementptr inbounds %struct.BMEdge, ptr %67, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !66
  %128 = load i32, ptr %63, align 8, !tbaa !52
  %129 = sext i32 %128 to i64
  %130 = getelementptr %struct.BMFlagLayer, ptr %127, i64 %129
  %131 = getelementptr %struct.BMFlagLayer, ptr %130, i64 -1
  %132 = load i16, ptr %131, align 2, !tbaa !53
  %133 = or i16 %132, 1
  store i16 %133, ptr %131, align 2, !tbaa !53
  br label %134

134:                                              ; preds = %66, %125
  %135 = load ptr, ptr %8, align 8, !tbaa !41
  %136 = call ptr %135(ptr noundef nonnull %3) #6
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %66, !llvm.loop !67

138:                                              ; preds = %134, %56
  store i8 3, ptr %6, align 4, !tbaa !34
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !40
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !41
  %139 = load ptr, ptr %46, align 8, !tbaa !59
  store ptr %139, ptr %3, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %140 = load ptr, ptr %8, align 8, !tbaa !41
  %141 = call ptr %140(ptr noundef nonnull %3) #6
  %142 = icmp eq ptr %141, null
  br i1 %142, label %196, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %145 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %146 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %147 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %148

148:                                              ; preds = %143, %192
  %149 = phi ptr [ %141, %143 ], [ %194, %192 ]
  %150 = getelementptr inbounds %struct.BMHeader, ptr %149, i64 0, i32 1
  store i32 0, ptr %150, align 8, !tbaa !68
  store i8 11, ptr %144, align 4, !tbaa !34
  store ptr @bmiter__loop_of_face_begin, ptr %145, align 8, !tbaa !40
  store ptr @bmiter__loop_of_face_step, ptr %146, align 8, !tbaa !41
  store ptr %149, ptr %4, align 8, !tbaa !47
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #6
  %151 = load ptr, ptr %146, align 8, !tbaa !41
  %152 = call ptr %151(ptr noundef nonnull %4) #6
  %153 = icmp eq ptr %152, null
  br i1 %153, label %192, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.BMFace, ptr %149, i64 0, i32 1
  br label %156

156:                                              ; preds = %154, %188
  %157 = phi ptr [ %152, %154 ], [ %190, %188 ]
  %158 = getelementptr inbounds %struct.BMLoop, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !69
  %160 = getelementptr inbounds %struct.BMVert, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !49
  %162 = load i32, ptr %147, align 8, !tbaa !52
  %163 = sext i32 %162 to i64
  %164 = getelementptr %struct.BMFlagLayer, ptr %161, i64 %163
  %165 = getelementptr %struct.BMFlagLayer, ptr %164, i64 -1
  %166 = load i16, ptr %165, align 2, !tbaa !53
  %167 = and i16 %166, 1
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %156
  %170 = load ptr, ptr %155, align 8, !tbaa !71
  %171 = getelementptr %struct.BMFlagLayer, ptr %170, i64 %163
  %172 = getelementptr %struct.BMFlagLayer, ptr %171, i64 -1
  %173 = load i16, ptr %172, align 2, !tbaa !53
  %174 = or i16 %173, 3
  store i16 %174, ptr %172, align 2, !tbaa !53
  br label %175

175:                                              ; preds = %169, %156
  %176 = getelementptr inbounds %struct.BMLoop, ptr %157, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !73
  %178 = getelementptr inbounds %struct.BMEdge, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !66
  %180 = getelementptr %struct.BMFlagLayer, ptr %179, i64 %163
  %181 = getelementptr %struct.BMFlagLayer, ptr %180, i64 -1
  %182 = load i16, ptr %181, align 2, !tbaa !53
  %183 = and i16 %182, 2
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %175
  %186 = load i32, ptr %150, align 8, !tbaa !68
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %150, align 8, !tbaa !68
  br label %188

188:                                              ; preds = %175, %185
  %189 = load ptr, ptr %146, align 8, !tbaa !41
  %190 = call ptr %189(ptr noundef nonnull %4) #6
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %156, !llvm.loop !74

192:                                              ; preds = %188, %148
  %193 = load ptr, ptr %8, align 8, !tbaa !41
  %194 = call ptr %193(ptr noundef nonnull %3) #6
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %148, !llvm.loop !75

196:                                              ; preds = %192, %138
  %197 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %198 = load i8, ptr %197, align 4, !tbaa !76
  %199 = or i8 %198, 12
  store i8 %199, ptr %197, align 4, !tbaa !76
  store i8 3, ptr %6, align 4, !tbaa !34
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !40
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !41
  %200 = load ptr, ptr %46, align 8, !tbaa !59
  store ptr %200, ptr %3, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %201 = load ptr, ptr %8, align 8, !tbaa !41
  %202 = call ptr %201(ptr noundef nonnull %3) #6
  %203 = icmp eq ptr %202, null
  br i1 %203, label %231, label %204

204:                                              ; preds = %196
  %205 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %206

206:                                              ; preds = %204, %227
  %207 = phi ptr [ %202, %204 ], [ %229, %227 ]
  %208 = getelementptr inbounds %struct.BMFace, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !71
  %210 = load i32, ptr %205, align 8, !tbaa !52
  %211 = sext i32 %210 to i64
  %212 = getelementptr %struct.BMFlagLayer, ptr %209, i64 %211
  %213 = getelementptr %struct.BMFlagLayer, ptr %212, i64 -1
  %214 = load i16, ptr %213, align 2, !tbaa !53
  %215 = and i16 %214, 2
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %227, label %217

217:                                              ; preds = %206
  %218 = getelementptr inbounds %struct.BMFace, ptr %207, i64 0, i32 3
  %219 = load i32, ptr %218, align 8, !tbaa !77
  %220 = getelementptr inbounds %struct.BMHeader, ptr %207, i64 0, i32 1
  %221 = load i32, ptr %220, align 8, !tbaa !68
  %222 = sub nsw i32 %219, %221
  %223 = icmp slt i32 %222, 3
  br i1 %223, label %224, label %226

224:                                              ; preds = %217
  %225 = or i16 %214, 1
  store i16 %225, ptr %213, align 2, !tbaa !53
  br label %227

226:                                              ; preds = %217
  call fastcc void @remdoubles_createface(ptr noundef %0, ptr noundef nonnull %207, ptr noundef %5)
  br label %227

227:                                              ; preds = %206, %226, %224
  %228 = load ptr, ptr %8, align 8, !tbaa !41
  %229 = call ptr %228(ptr noundef nonnull %3) #6
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %206, !llvm.loop !78

231:                                              ; preds = %227, %196
  call void @BMO_mesh_delete_oflag_context(ptr noundef %0, i16 noundef signext 1, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @remdoubles_splitface(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %6 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 11, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %7, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %8, align 8, !tbaa !41
  store ptr %0, ptr %4, align 8, !tbaa !47
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #6
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = call ptr %9(ptr noundef nonnull %4) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %58, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 0, i32 4
  br label %14

14:                                               ; preds = %12, %52
  %15 = phi ptr [ %10, %12 ], [ %54, %52 ]
  %16 = phi ptr [ undef, %12 ], [ %50, %52 ]
  %17 = phi i8 [ 0, %12 ], [ %49, %52 ]
  %18 = phi ptr [ undef, %12 ], [ %48, %52 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = load ptr, ptr %13, align 8, !tbaa !47
  %22 = call ptr @BLI_ghash_lookup_p(ptr noundef %21, ptr noundef %20) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %14
  %25 = load ptr, ptr %22, align 8, !tbaa !48
  br label %26

26:                                               ; preds = %14, %24
  %27 = phi ptr [ %25, %24 ], [ null, %14 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %26
  %30 = call ptr @BM_face_vert_share_loop(ptr noundef %0, ptr noundef nonnull %27) #6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %29
  %33 = icmp eq ptr %30, %15
  br i1 %33, label %47, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !79
  %37 = icmp eq ptr %36, %15
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !80
  %41 = icmp eq ptr %40, %15
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %34, %38
  %44 = phi i8 [ 1, %34 ], [ %42, %38 ]
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %26, %32, %29, %43, %46
  %48 = phi ptr [ %15, %43 ], [ %18, %29 ], [ %18, %32 ], [ %18, %26 ], [ %18, %46 ]
  %49 = phi i8 [ 1, %43 ], [ %17, %29 ], [ %17, %32 ], [ %17, %26 ], [ %17, %46 ]
  %50 = phi ptr [ %30, %43 ], [ null, %29 ], [ %30, %32 ], [ %16, %26 ], [ %30, %46 ]
  %51 = phi i1 [ false, %43 ], [ true, %29 ], [ true, %32 ], [ true, %26 ], [ true, %46 ]
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load ptr, ptr %8, align 8, !tbaa !41
  %54 = call ptr %53(ptr noundef nonnull %4) #6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %14, !llvm.loop !81

56:                                               ; preds = %47, %52
  %57 = icmp eq i8 %49, 0
  br label %58

58:                                               ; preds = %56, %3
  %59 = phi ptr [ undef, %3 ], [ %48, %56 ]
  %60 = phi i1 [ true, %3 ], [ %57, %56 ]
  %61 = phi ptr [ undef, %3 ], [ %50, %56 ]
  br i1 %60, label %64, label %62

62:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %63 = call ptr @BM_face_split(ptr noundef %1, ptr noundef %0, ptr noundef %59, ptr noundef %61, ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 0) #6
  call fastcc void @remdoubles_splitface(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  call fastcc void @remdoubles_splitface(ptr noundef %63, ptr noundef %1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %64

64:                                               ; preds = %62, %58
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret void
}

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @remdoubles_createface(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !77
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = alloca i8, i64 %8, align 16
  %10 = alloca i8, i64 %8, align 16
  %11 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 11, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %12, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %13, align 8, !tbaa !41
  store ptr %1, ptr %4, align 8, !tbaa !47
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #6
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = call ptr %14(ptr noundef nonnull %4) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %105, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %19 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 0, i32 4
  %20 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 0, i32 4
  br label %21

21:                                               ; preds = %17, %99
  %22 = phi ptr [ %15, %17 ], [ %103, %99 ]
  %23 = phi i32 [ 0, %17 ], [ %101, %99 ]
  %24 = phi i32 [ 0, %17 ], [ %100, %99 ]
  %25 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !69
  %31 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = load i32, ptr %18, align 8, !tbaa !52
  %34 = sext i32 %33 to i64
  %35 = getelementptr %struct.BMFlagLayer, ptr %32, i64 %34
  %36 = getelementptr %struct.BMFlagLayer, ptr %35, i64 -1
  %37 = load i16, ptr %36, align 2, !tbaa !53
  %38 = trunc i16 %37 to i8
  %39 = and i8 %38, 1
  %40 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = getelementptr %struct.BMFlagLayer, ptr %41, i64 %34
  %43 = getelementptr %struct.BMFlagLayer, ptr %42, i64 -1
  %44 = load i16, ptr %43, align 2, !tbaa !53
  %45 = trunc i16 %44 to i8
  %46 = and i8 %45, 1
  %47 = icmp ne i8 %39, 0
  %48 = icmp ne i8 %46, 0
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %21
  %51 = icmp eq i8 %39, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr %19, align 8, !tbaa !47
  %54 = call ptr @BLI_ghash_lookup_p(ptr noundef %53, ptr noundef %26) #6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %54, align 8, !tbaa !48
  br label %58

58:                                               ; preds = %56, %52, %50
  %59 = phi ptr [ %26, %50 ], [ %57, %56 ], [ null, %52 ]
  %60 = icmp eq i8 %46, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %20, align 8, !tbaa !47
  %63 = call ptr @BLI_ghash_lookup_p(ptr noundef %62, ptr noundef %30) #6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %63, align 8, !tbaa !48
  br label %67

67:                                               ; preds = %65, %61, %58
  %68 = phi ptr [ %30, %58 ], [ %66, %65 ], [ null, %61 ]
  %69 = icmp eq ptr %59, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = call ptr @BM_edge_exists(ptr noundef %59, ptr noundef %68) #6
  br label %75

72:                                               ; preds = %21
  %73 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !73
  br label %75

75:                                               ; preds = %70, %67, %72
  %76 = phi ptr [ %74, %72 ], [ %71, %70 ], [ null, %67 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %99, label %78

78:                                               ; preds = %75
  %79 = icmp eq i32 %24, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %78, %86
  %81 = phi i32 [ %87, %86 ], [ 0, %78 ]
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %9, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  %85 = icmp eq ptr %84, %76
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = add nuw i32 %81, 1
  %88 = icmp eq i32 %87, %24
  br i1 %88, label %89, label %80, !llvm.loop !82

89:                                               ; preds = %86, %80, %78
  %90 = phi i32 [ 0, %78 ], [ %24, %86 ], [ %81, %80 ]
  %91 = icmp eq i32 %90, %24
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = add i32 %24, 1
  %94 = zext i32 %24 to i64
  %95 = getelementptr inbounds ptr, ptr %9, i64 %94
  store ptr %76, ptr %95, align 8, !tbaa !48
  %96 = add i32 %23, 1
  %97 = zext i32 %23 to i64
  %98 = getelementptr inbounds ptr, ptr %10, i64 %97
  store ptr %22, ptr %98, align 8, !tbaa !48
  br label %99

99:                                               ; preds = %92, %89, %75
  %100 = phi i32 [ %24, %75 ], [ %93, %92 ], [ %24, %89 ]
  %101 = phi i32 [ %23, %75 ], [ %96, %92 ], [ %23, %89 ]
  %102 = load ptr, ptr %13, align 8, !tbaa !41
  %103 = call ptr %102(ptr noundef nonnull %4) #6
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %21, !llvm.loop !83

105:                                              ; preds = %99, %3
  %106 = phi i32 [ 0, %3 ], [ %100, %99 ]
  %107 = icmp ugt i32 %106, 2
  br i1 %107, label %108, label %169

108:                                              ; preds = %105
  %109 = load ptr, ptr %10, align 16, !tbaa !48
  %110 = getelementptr inbounds %struct.BMLoop, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !69
  %112 = getelementptr inbounds ptr, ptr %10, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !48
  %114 = getelementptr inbounds %struct.BMLoop, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !69
  %116 = getelementptr inbounds %struct.BMVert, ptr %111, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !49
  %118 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %119 = load i32, ptr %118, align 8, !tbaa !52
  %120 = sext i32 %119 to i64
  %121 = getelementptr %struct.BMFlagLayer, ptr %117, i64 %120
  %122 = getelementptr %struct.BMFlagLayer, ptr %121, i64 -1
  %123 = load i16, ptr %122, align 2, !tbaa !53
  %124 = and i16 %123, 1
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %108
  %127 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !47
  %129 = call ptr @BLI_ghash_lookup_p(ptr noundef %128, ptr noundef %111) #6
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = load ptr, ptr %129, align 8, !tbaa !48
  br label %133

133:                                              ; preds = %131, %126, %108
  %134 = phi ptr [ %111, %108 ], [ %132, %131 ], [ null, %126 ]
  %135 = getelementptr inbounds %struct.BMVert, ptr %115, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !49
  %137 = load i32, ptr %118, align 8, !tbaa !52
  %138 = sext i32 %137 to i64
  %139 = getelementptr %struct.BMFlagLayer, ptr %136, i64 %138
  %140 = getelementptr %struct.BMFlagLayer, ptr %139, i64 -1
  %141 = load i16, ptr %140, align 2, !tbaa !53
  %142 = and i16 %141, 1
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %133
  %145 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 0, i32 4
  %146 = load ptr, ptr %145, align 8, !tbaa !47
  %147 = call ptr @BLI_ghash_lookup_p(ptr noundef %146, ptr noundef %115) #6
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr %147, align 8, !tbaa !48
  br label %151

151:                                              ; preds = %149, %144, %133
  %152 = phi ptr [ %115, %133 ], [ %150, %149 ], [ null, %144 ]
  %153 = call ptr @BM_face_create_ngon(ptr noundef %0, ptr noundef %134, ptr noundef %152, ptr noundef nonnull %9, i32 noundef %106, ptr noundef %1, i32 noundef 2) #6
  %154 = icmp eq ptr %153, null
  br i1 %154, label %169, label %155

155:                                              ; preds = %151
  store i8 11, ptr %11, align 4, !tbaa !34
  store ptr @bmiter__loop_of_face_begin, ptr %12, align 8, !tbaa !40
  store ptr @bmiter__loop_of_face_step, ptr %13, align 8, !tbaa !41
  store ptr %153, ptr %4, align 8, !tbaa !47
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #6
  %156 = load ptr, ptr %13, align 8, !tbaa !41
  %157 = call ptr %156(ptr noundef nonnull %4) #6
  %158 = icmp eq ptr %157, null
  br i1 %158, label %169, label %159

159:                                              ; preds = %155, %159
  %160 = phi i32 [ %167, %159 ], [ 0, %155 ]
  %161 = phi ptr [ %166, %159 ], [ %157, %155 ]
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds ptr, ptr %10, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !48
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %164, ptr noundef nonnull %161) #6
  %165 = load ptr, ptr %13, align 8, !tbaa !41
  %166 = call ptr %165(ptr noundef nonnull %4) #6
  %167 = add i32 %160, 1
  %168 = icmp eq ptr %166, null
  br i1 %168, label %169, label %159, !llvm.loop !84

169:                                              ; preds = %159, %155, %151, %105
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret void
}

declare void @BMO_mesh_delete_oflag_context(ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_pointmerge_facedata_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %5 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %6 = tail call ptr @BMO_slot_buffer_get_single(ptr noundef %5) #6
  %7 = tail call i32 @BM_vert_face_count(ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %78, label %9

9:                                                ; preds = %2
  %10 = sitofp i32 %7 to float
  %11 = fdiv float 1.000000e+00, %10
  %12 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 6, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %13, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %14, align 8, !tbaa !41
  store ptr %6, ptr %4, align 8, !tbaa !47
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %4) #6
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = call ptr %15(ptr noundef nonnull %4) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %55, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  br label %21

21:                                               ; preds = %18, %51
  %22 = phi ptr [ %16, %18 ], [ %53, %51 ]
  %23 = phi ptr [ null, %18 ], [ %25, %51 ]
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr %22, ptr %23
  %26 = load i32, ptr %20, align 4, !tbaa !85
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %21
  %29 = icmp eq ptr %22, %25
  br label %30

30:                                               ; preds = %28, %46
  %31 = phi i64 [ 0, %28 ], [ %47, %46 ]
  %32 = trunc i64 %31 to i32
  %33 = call zeroext i8 @CustomData_layer_has_math(ptr noundef nonnull %19, i32 noundef %32) #6
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %19, align 8, !tbaa !86
  %37 = getelementptr inbounds %struct.CustomDataLayer, ptr %36, i64 %31
  %38 = load i32, ptr %37, align 8, !tbaa !87
  %39 = load ptr, ptr %25, align 8, !tbaa !89
  %40 = trunc i64 %31 to i32
  %41 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %19, ptr noundef %39, i32 noundef %40) #6
  %42 = load ptr, ptr %22, align 8, !tbaa !89
  %43 = trunc i64 %31 to i32
  %44 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %19, ptr noundef %42, i32 noundef %43) #6
  call void @CustomData_data_multiply(i32 noundef %38, ptr noundef %44, float noundef %11) #6
  br i1 %29, label %46, label %45

45:                                               ; preds = %35
  call void @CustomData_data_add(i32 noundef %38, ptr noundef %41, ptr noundef %44) #6
  br label %46

46:                                               ; preds = %35, %45, %30
  %47 = add nuw nsw i64 %31, 1
  %48 = load i32, ptr %20, align 4, !tbaa !85
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %30, label %51, !llvm.loop !90

51:                                               ; preds = %46, %21
  %52 = load ptr, ptr %14, align 8, !tbaa !41
  %53 = call ptr %52(ptr noundef nonnull %4) #6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %21, !llvm.loop !91

55:                                               ; preds = %51, %9
  %56 = phi ptr [ null, %9 ], [ %25, %51 ]
  %57 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1) #6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %78, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  br label %61

61:                                               ; preds = %59, %75
  %62 = phi ptr [ %57, %59 ], [ %76, %75 ]
  store i8 6, ptr %12, align 4, !tbaa !34
  store ptr @bmiter__loop_of_vert_begin, ptr %13, align 8, !tbaa !40
  store ptr @bmiter__loop_of_vert_step, ptr %14, align 8, !tbaa !41
  store ptr %62, ptr %4, align 8, !tbaa !47
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %4) #6
  %63 = load ptr, ptr %14, align 8, !tbaa !41
  %64 = call ptr %63(ptr noundef nonnull %4) #6
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %61, %71
  %67 = phi ptr [ %73, %71 ], [ %64, %61 ]
  %68 = icmp eq ptr %67, %56
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %56, align 8, !tbaa !89
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %60, ptr noundef nonnull %60, ptr noundef %70, ptr noundef nonnull %67) #6
  br label %71

71:                                               ; preds = %66, %69
  %72 = load ptr, ptr %14, align 8, !tbaa !41
  %73 = call ptr %72(ptr noundef nonnull %4) #6
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %66, !llvm.loop !92

75:                                               ; preds = %71, %61
  %76 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #6
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %61, !llvm.loop !93

78:                                               ; preds = %75, %55, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  ret void
}

declare ptr @BMO_slot_buffer_get_single(ptr noundef) local_unnamed_addr #2

declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_layer_has_math(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_bmesh_get_layer_n(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_data_multiply(i32 noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @CustomData_data_add(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @CustomData_bmesh_copy_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_average_vert_facedata_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.CDBlockBytes, align 1
  %6 = alloca %struct.CDBlockBytes, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !85
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %71

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %15 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %16 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %17 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %18

18:                                               ; preds = %11, %66
  %19 = phi i64 [ 0, %11 ], [ %67, %66 ]
  %20 = trunc i64 %19 to i32
  %21 = call zeroext i8 @CustomData_layer_has_math(ptr noundef nonnull %7, i32 noundef %20) #6
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %66, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %7, align 8, !tbaa !86
  %25 = getelementptr inbounds %struct.CustomDataLayer, ptr %24, i64 %19
  %26 = load i32, ptr %25, align 8, !tbaa !87
  call void @CustomData_data_initminmax(i32 noundef %26, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %27 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %23
  %30 = trunc i64 %19 to i32
  br label %31

31:                                               ; preds = %29, %43
  %32 = phi ptr [ %44, %43 ], [ %27, %29 ]
  store i8 6, ptr %12, align 4, !tbaa !34
  store ptr @bmiter__loop_of_vert_begin, ptr %13, align 8, !tbaa !40
  store ptr @bmiter__loop_of_vert_step, ptr %14, align 8, !tbaa !41
  store ptr %32, ptr %4, align 8, !tbaa !47
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %4) #6
  %33 = load ptr, ptr %14, align 8, !tbaa !41
  %34 = call ptr %33(ptr noundef nonnull %4) #6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %31, %36
  %37 = phi ptr [ %41, %36 ], [ %34, %31 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !89
  %39 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %7, ptr noundef %38, i32 noundef %30) #6
  call void @CustomData_data_dominmax(i32 noundef %26, ptr noundef %39, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %40 = load ptr, ptr %14, align 8, !tbaa !41
  %41 = call ptr %40(ptr noundef nonnull %4) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %36, !llvm.loop !94

43:                                               ; preds = %36, %31
  %44 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %31, !llvm.loop !95

46:                                               ; preds = %43, %23
  call void @CustomData_data_multiply(i32 noundef %26, ptr noundef nonnull %5, float noundef 5.000000e-01) #6
  call void @CustomData_data_multiply(i32 noundef %26, ptr noundef nonnull %6, float noundef 5.000000e-01) #6
  call void @CustomData_data_add(i32 noundef %26, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %47 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1) #6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %46
  %50 = trunc i64 %19 to i32
  br label %51

51:                                               ; preds = %49, %63
  %52 = phi ptr [ %64, %63 ], [ %47, %49 ]
  store i8 6, ptr %15, align 4, !tbaa !34
  store ptr @bmiter__loop_of_vert_begin, ptr %16, align 8, !tbaa !40
  store ptr @bmiter__loop_of_vert_step, ptr %17, align 8, !tbaa !41
  store ptr %52, ptr %4, align 8, !tbaa !47
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %4) #6
  %53 = load ptr, ptr %17, align 8, !tbaa !41
  %54 = call ptr %53(ptr noundef nonnull %4) #6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %61, %56 ], [ %54, %51 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !89
  %59 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %7, ptr noundef %58, i32 noundef %50) #6
  call void @CustomData_data_copy_value(i32 noundef %26, ptr noundef nonnull %5, ptr noundef %59) #6
  %60 = load ptr, ptr %17, align 8, !tbaa !41
  %61 = call ptr %60(ptr noundef nonnull %4) #6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %56, !llvm.loop !96

63:                                               ; preds = %56, %51
  %64 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #6
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %51, !llvm.loop !97

66:                                               ; preds = %63, %46, %18
  %67 = add nuw nsw i64 %19, 1
  %68 = load i32, ptr %8, align 4, !tbaa !85
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %18, label %71, !llvm.loop !98

71:                                               ; preds = %66, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  ret void
}

declare void @CustomData_data_initminmax(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_data_dominmax(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_data_copy_value(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_pointmerge_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOIter, align 8
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #6
  %6 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !99
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %7, ptr noundef nonnull @.str.4) #6
  %8 = call ptr @BMO_slot_get(ptr noundef nonnull %3, ptr noundef nonnull @.str) #6
  %9 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds float, ptr %5, i64 1
  %13 = getelementptr inbounds float, ptr %5, i64 2
  br label %14

14:                                               ; preds = %11, %26
  %15 = phi ptr [ %9, %11 ], [ %28, %26 ]
  %16 = phi ptr [ null, %11 ], [ %27, %26 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %20 = load float, ptr %5, align 4, !tbaa !101
  store float %20, ptr %19, align 4, !tbaa !101
  %21 = load float, ptr %12, align 4, !tbaa !101
  %22 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2, i64 1
  store float %21, ptr %22, align 4, !tbaa !101
  %23 = load float, ptr %13, align 4, !tbaa !101
  %24 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2, i64 2
  store float %23, ptr %24, align 4, !tbaa !101
  br label %26

25:                                               ; preds = %14
  call void @BMO_slot_map_insert(ptr noundef nonnull %3, ptr noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %16) #6
  br label %26

26:                                               ; preds = %18, %25
  %27 = phi ptr [ %16, %25 ], [ %15, %18 ]
  %28 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %14, !llvm.loop !103

30:                                               ; preds = %26, %2
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #6
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #6
  ret void
}

declare void @BMO_slot_vec_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_collapse_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMWalker, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  store ptr null, ptr %6, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #6
  %10 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !99
  %12 = tail call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %11, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef nonnull @.str.6) #6
  %13 = load i32, ptr %10, align 8, !tbaa !99
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %13, ptr noundef nonnull @.str.4) #6
  %14 = call ptr @BMO_slot_get(ptr noundef nonnull %3, ptr noundef nonnull @.str) #6
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.6, i8 noundef zeroext 2, i16 noundef signext 1) #6
  call void @BMW_init(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0, i32 noundef 0, i32 noundef 0) #6
  %15 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %16, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %17, align 8, !tbaa !41
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  store ptr %19, ptr %5, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #6
  %20 = load ptr, ptr %17, align 8, !tbaa !41
  %21 = call ptr %20(ptr noundef nonnull %5) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %125, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %25 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %26 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %27 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %28 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %29 = getelementptr inbounds float, ptr %9, i64 1
  %30 = getelementptr inbounds float, ptr %9, i64 2
  br label %31

31:                                               ; preds = %23, %121
  %32 = phi ptr [ %21, %23 ], [ %123, %121 ]
  %33 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !66
  %35 = load i32, ptr %24, align 8, !tbaa !52
  %36 = sext i32 %35 to i64
  %37 = getelementptr %struct.BMFlagLayer, ptr %34, i64 %36
  %38 = getelementptr %struct.BMFlagLayer, ptr %37, i64 -1
  %39 = load i16, ptr %38, align 2, !tbaa !53
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %121, label %42

42:                                               ; preds = %31
  store float 0x46293E5940000000, ptr %25, align 4, !tbaa !101
  store float 0x46293E5940000000, ptr %26, align 4, !tbaa !101
  store float 0x46293E5940000000, ptr %7, align 4, !tbaa !101
  store float 0xC6293E5940000000, ptr %27, align 4, !tbaa !101
  store float 0xC6293E5940000000, ptr %28, align 4, !tbaa !101
  store float 0xC6293E5940000000, ptr %8, align 4, !tbaa !101
  %43 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !62
  %45 = call ptr @BMW_begin(ptr noundef nonnull %4, ptr noundef %44) #6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %82, label %47

47:                                               ; preds = %42, %62
  %48 = phi ptr [ %80, %62 ], [ %45, %42 ]
  %49 = phi i32 [ %58, %62 ], [ 0, %42 ]
  %50 = load ptr, ptr %6, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !48
  %54 = call i64 %53(ptr noundef nonnull %50) #6
  %55 = lshr i64 %54, 3
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i64 [ %55, %52 ], [ 0, %47 ]
  %58 = add nuw i32 %49, 1
  %59 = zext nneg i32 %58 to i64
  %60 = icmp ult i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef null, i32 noundef 8, i32 noundef %49, i32 noundef 1, ptr noundef nonnull @.str.7) #6
  br label %62

62:                                               ; preds = %61, %56
  %63 = load ptr, ptr %6, align 8, !tbaa !48
  %64 = zext i32 %49 to i64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  store ptr %48, ptr %65, align 8, !tbaa !48
  %66 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !62
  %68 = getelementptr inbounds %struct.BMVert, ptr %67, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %68) #6
  %69 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !65
  %71 = getelementptr inbounds %struct.BMVert, ptr %70, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %71) #6
  %72 = load ptr, ptr %66, align 8, !tbaa !62
  %73 = getelementptr inbounds %struct.BMHeader, ptr %72, i64 0, i32 3
  %74 = load i8, ptr %73, align 1, !tbaa !55
  %75 = and i8 %74, -17
  store i8 %75, ptr %73, align 1, !tbaa !55
  %76 = load ptr, ptr %69, align 8, !tbaa !65
  %77 = getelementptr inbounds %struct.BMHeader, ptr %76, i64 0, i32 3
  %78 = load i8, ptr %77, align 1, !tbaa !55
  %79 = and i8 %78, -17
  store i8 %79, ptr %77, align 1, !tbaa !55
  %80 = call ptr @BMW_step(ptr noundef nonnull %4) #6
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %47, !llvm.loop !104

82:                                               ; preds = %62, %42
  %83 = phi i32 [ 0, %42 ], [ %58, %62 ]
  call void @mid_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %84 = load ptr, ptr %6, align 8, !tbaa !48
  %85 = load ptr, ptr %84, align 8, !tbaa !48
  %86 = getelementptr inbounds %struct.BMEdge, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !62
  %88 = icmp eq i32 %83, 0
  br i1 %88, label %121, label %89

89:                                               ; preds = %82
  %90 = zext i32 %83 to i64
  br label %91

91:                                               ; preds = %89, %118
  %92 = phi i64 [ 0, %89 ], [ %119, %118 ]
  br label %93

93:                                               ; preds = %91, %115
  %94 = phi i64 [ 0, %91 ], [ %116, %115 ]
  %95 = load ptr, ptr %6, align 8, !tbaa !48
  %96 = getelementptr inbounds ptr, ptr %95, i64 %92
  %97 = load ptr, ptr %96, align 8, !tbaa !48
  %98 = getelementptr inbounds %struct.BMEdge, ptr %97, i64 0, i32 2
  %99 = getelementptr inbounds ptr, ptr %98, i64 %94
  %100 = load ptr, ptr %99, align 8, !tbaa !48
  %101 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 2
  %102 = load float, ptr %9, align 4, !tbaa !101
  store float %102, ptr %101, align 4, !tbaa !101
  %103 = load float, ptr %29, align 4, !tbaa !101
  %104 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 2, i64 1
  store float %103, ptr %104, align 4, !tbaa !101
  %105 = load float, ptr %30, align 4, !tbaa !101
  %106 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 2, i64 2
  store float %105, ptr %106, align 4, !tbaa !101
  %107 = icmp eq ptr %100, %87
  br i1 %107, label %115, label %108

108:                                              ; preds = %93
  %109 = getelementptr inbounds %struct.BMHeader, ptr %100, i64 0, i32 3
  %110 = load i8, ptr %109, align 1, !tbaa !55
  %111 = and i8 %110, 16
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = or disjoint i8 %110, 16
  store i8 %114, ptr %109, align 1, !tbaa !55
  call void @BMO_slot_map_insert(ptr noundef nonnull %3, ptr noundef %14, ptr noundef %100, ptr noundef %87) #6
  br label %115

115:                                              ; preds = %113, %108, %93
  %116 = add nuw nsw i64 %94, 1
  %117 = icmp eq i64 %94, 0
  br i1 %117, label %93, label %118, !llvm.loop !105

118:                                              ; preds = %115
  %119 = add nuw nsw i64 %92, 1
  %120 = icmp eq i64 %119, %90
  br i1 %120, label %121, label %91, !llvm.loop !106

121:                                              ; preds = %118, %82, %31
  %122 = load ptr, ptr %17, align 8, !tbaa !41
  %123 = call ptr %122(ptr noundef nonnull %5) #6
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %31, !llvm.loop !107

125:                                              ; preds = %121, %2
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #6
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #6
  call void @BMW_end(ptr noundef nonnull %4) #6
  %126 = load ptr, ptr %6, align 8, !tbaa !48
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %129(ptr noundef nonnull %126) #6
  br label %130

130:                                              ; preds = %128, %125
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #6
  ret void
}

declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @BMW_init(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BMW_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMW_step(ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMW_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_collapse_uvs_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMWalker, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.CDBlockBytes, align 1
  %8 = alloca %struct.CDBlockBytes, align 1
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %10 = tail call zeroext i8 @CustomData_has_math(ptr noundef nonnull %9) #6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %120, label %12

12:                                               ; preds = %2
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.6, i8 noundef zeroext 2, i16 noundef signext 1) #6
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !85
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %120

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %18 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %21 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %22 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %23 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %24 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %25

25:                                               ; preds = %16, %115
  %26 = phi i64 [ 0, %16 ], [ %116, %115 ]
  %27 = trunc i64 %26 to i32
  %28 = call zeroext i8 @CustomData_layer_has_math(ptr noundef nonnull %9, i32 noundef %27) #6
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %115, label %30

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  store ptr null, ptr %6, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #6
  %31 = load ptr, ptr %9, align 8, !tbaa !86
  %32 = getelementptr inbounds %struct.CustomDataLayer, ptr %31, i64 %26
  %33 = load i32, ptr %32, align 8, !tbaa !87
  %34 = trunc i64 %26 to i32
  call void @BMW_init(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 6, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0, i32 noundef 0, i32 noundef %34) #6
  store i8 3, ptr %17, align 4, !tbaa !34
  store ptr @bmiter__elem_of_mesh_begin, ptr %18, align 8, !tbaa !40
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !41
  %35 = load ptr, ptr %20, align 8, !tbaa !59
  store ptr %35, ptr %3, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %36 = load ptr, ptr %19, align 8, !tbaa !41
  %37 = call ptr %36(ptr noundef nonnull %3) #6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %109, label %39

39:                                               ; preds = %30
  %40 = trunc i64 %26 to i32
  br label %41

41:                                               ; preds = %39, %105
  %42 = phi ptr [ %107, %105 ], [ %37, %39 ]
  store i8 11, ptr %21, align 4, !tbaa !34
  store ptr @bmiter__loop_of_face_begin, ptr %22, align 8, !tbaa !40
  store ptr @bmiter__loop_of_face_step, ptr %23, align 8, !tbaa !41
  store ptr %42, ptr %4, align 8, !tbaa !47
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #6
  %43 = load ptr, ptr %23, align 8, !tbaa !41
  %44 = call ptr %43(ptr noundef nonnull %4) #6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %105, label %46

46:                                               ; preds = %41, %101
  %47 = phi ptr [ %103, %101 ], [ %44, %41 ]
  %48 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !73
  %50 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !66
  %52 = load i32, ptr %24, align 8, !tbaa !52
  %53 = sext i32 %52 to i64
  %54 = getelementptr %struct.BMFlagLayer, ptr %51, i64 %53
  %55 = getelementptr %struct.BMFlagLayer, ptr %54, i64 -1
  %56 = load i16, ptr %55, align 2, !tbaa !53
  %57 = and i16 %56, 1
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %101, label %59

59:                                               ; preds = %46
  call void @CustomData_data_initminmax(i32 noundef %33, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %60 = call ptr @BMW_begin(ptr noundef nonnull %5, ptr noundef nonnull %47) #6
  %61 = icmp eq ptr %60, null
  br i1 %61, label %89, label %62

62:                                               ; preds = %59, %77
  %63 = phi i64 [ %73, %77 ], [ 0, %59 ]
  %64 = phi ptr [ %85, %77 ], [ %60, %59 ]
  %65 = load ptr, ptr %6, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !48
  %69 = call i64 %68(ptr noundef nonnull %65) #6
  %70 = lshr i64 %69, 3
  br label %71

71:                                               ; preds = %67, %62
  %72 = phi i64 [ %70, %67 ], [ 0, %62 ]
  %73 = add nuw i64 %63, 1
  %74 = icmp ugt i64 %72, %63
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = trunc i64 %63 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef null, i32 noundef 8, i32 noundef %76, i32 noundef 1, ptr noundef nonnull @.str.11) #6
  br label %77

77:                                               ; preds = %75, %71
  %78 = load ptr, ptr %64, align 8, !tbaa !89
  %79 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %9, ptr noundef %78, i32 noundef %40) #6
  %80 = load ptr, ptr %6, align 8, !tbaa !48
  %81 = getelementptr inbounds ptr, ptr %80, i64 %63
  store ptr %79, ptr %81, align 8, !tbaa !48
  %82 = load ptr, ptr %6, align 8, !tbaa !48
  %83 = getelementptr inbounds ptr, ptr %82, i64 %63
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  call void @CustomData_data_dominmax(i32 noundef %33, ptr noundef %84, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %85 = call ptr @BMW_step(ptr noundef nonnull %5) #6
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %62, !llvm.loop !108

87:                                               ; preds = %77
  %88 = trunc i64 %73 to i32
  br label %89

89:                                               ; preds = %87, %59
  %90 = phi i32 [ 0, %59 ], [ %88, %87 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %89
  call void @CustomData_data_multiply(i32 noundef %33, ptr noundef nonnull %7, float noundef 5.000000e-01) #6
  call void @CustomData_data_multiply(i32 noundef %33, ptr noundef nonnull %8, float noundef 5.000000e-01) #6
  call void @CustomData_data_add(i32 noundef %33, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %93 = zext i32 %90 to i64
  br label %94

94:                                               ; preds = %92, %94
  %95 = phi i64 [ 0, %92 ], [ %99, %94 ]
  %96 = load ptr, ptr %6, align 8, !tbaa !48
  %97 = getelementptr inbounds ptr, ptr %96, i64 %95
  %98 = load ptr, ptr %97, align 8, !tbaa !48
  call void @CustomData_data_copy_value(i32 noundef %33, ptr noundef nonnull %7, ptr noundef %98) #6
  %99 = add nuw nsw i64 %95, 1
  %100 = icmp eq i64 %99, %93
  br i1 %100, label %101, label %94, !llvm.loop !109

101:                                              ; preds = %94, %89, %46
  %102 = load ptr, ptr %23, align 8, !tbaa !41
  %103 = call ptr %102(ptr noundef nonnull %4) #6
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %46, !llvm.loop !110

105:                                              ; preds = %101, %41
  %106 = load ptr, ptr %19, align 8, !tbaa !41
  %107 = call ptr %106(ptr noundef nonnull %3) #6
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %41, !llvm.loop !111

109:                                              ; preds = %105, %30
  call void @BMW_end(ptr noundef nonnull %5) #6
  %110 = load ptr, ptr %6, align 8, !tbaa !48
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %113(ptr noundef nonnull %110) #6
  br label %114

114:                                              ; preds = %109, %112
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  br label %115

115:                                              ; preds = %25, %114
  %116 = add nuw nsw i64 %26, 1
  %117 = load i32, ptr %13, align 4, !tbaa !85
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %116, %118
  br i1 %119, label %25, label %120, !llvm.loop !112

120:                                              ; preds = %115, %12, %2
  ret void
}

declare zeroext i8 @CustomData_has_math(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_remove_doubles_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !99
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %5, ptr noundef nonnull @.str.4) #6
  %6 = call ptr @BMO_slot_get(ptr noundef nonnull %3, ptr noundef nonnull @.str) #6
  call fastcc void @bmesh_find_doubles_common(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %6)
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #6
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bmesh_find_doubles_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  %7 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.10) #6
  %8 = fmul float %7, %7
  %9 = fpext float %7 to double
  %10 = fmul double %9, 0x3FFBB6AF561E0CAA
  %11 = fptrunc double %10 to float
  %12 = tail call zeroext i8 @BMO_slot_exists(ptr noundef %1, ptr noundef nonnull @.str.12) #6
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #6
  %15 = call ptr @BMO_iter_new(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull @.str.12, i8 noundef zeroext 1) #6
  %16 = icmp eq ptr %15, null
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #6
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i1 [ %16, %14 ], [ true, %4 ]
  %19 = call ptr @BMO_slot_as_arrayN(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #6
  %20 = load i32, ptr %5, align 4, !tbaa !113
  %21 = sext i32 %20 to i64
  call void @qsort(ptr noundef %19, i64 noundef %21, i64 noundef 8, ptr noundef nonnull @vergaverco) #6
  br i1 %18, label %23, label %22

22:                                               ; preds = %17
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.12, i8 noundef zeroext 1, i16 noundef signext 8) #6
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, ptr %5, align 4, !tbaa !113
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %122

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %28

28:                                               ; preds = %26, %117
  %29 = phi i64 [ 0, %26 ], [ %118, %117 ]
  %30 = getelementptr inbounds ptr, ptr %19, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = load i32, ptr %27, align 8, !tbaa !52
  %35 = sext i32 %34 to i64
  %36 = getelementptr %struct.BMFlagLayer, ptr %33, i64 %35
  %37 = getelementptr %struct.BMFlagLayer, ptr %36, i64 -1
  %38 = load i16, ptr %37, align 2, !tbaa !53
  %39 = and i16 %38, 6
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %117

41:                                               ; preds = %28, %114
  %42 = phi i64 [ %44, %114 ], [ %29, %28 ]
  %43 = phi ptr [ %115, %114 ], [ %31, %28 ]
  %44 = add nuw nsw i64 %42, 1
  %45 = load i32, ptr %5, align 4, !tbaa !113
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %48, label %117

48:                                               ; preds = %41
  %49 = getelementptr inbounds ptr, ptr %19, i64 %44
  %50 = load ptr, ptr %49, align 8, !tbaa !48
  %51 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !49
  %53 = load i32, ptr %27, align 8, !tbaa !52
  %54 = sext i32 %53 to i64
  %55 = getelementptr %struct.BMFlagLayer, ptr %52, i64 %54
  %56 = getelementptr %struct.BMFlagLayer, ptr %55, i64 -1
  %57 = load i16, ptr %56, align 2, !tbaa !53
  %58 = and i16 %57, 6
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %114

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 2
  %62 = load float, ptr %61, align 8, !tbaa !101
  %63 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 2, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !101
  %65 = fadd float %62, %64
  %66 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 2, i64 2
  %67 = load float, ptr %66, align 8, !tbaa !101
  %68 = fadd float %65, %67
  %69 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 2
  %70 = load float, ptr %69, align 8, !tbaa !101
  %71 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 2, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !101
  %73 = fadd float %70, %72
  %74 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 2, i64 2
  %75 = load float, ptr %74, align 8, !tbaa !101
  %76 = fadd float %73, %75
  %77 = fsub float %68, %76
  %78 = fcmp ogt float %77, %11
  br i1 %78, label %114, label %79

79:                                               ; preds = %60
  br i1 %18, label %89, label %80

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !49
  %83 = getelementptr %struct.BMFlagLayer, ptr %82, i64 %54
  %84 = getelementptr %struct.BMFlagLayer, ptr %83, i64 -1
  %85 = load i16, ptr %84, align 2, !tbaa !53
  %86 = xor i16 %85, %57
  %87 = and i16 %86, 8
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %114, label %89

89:                                               ; preds = %80, %79
  %90 = fsub float %70, %62
  %91 = fsub float %72, %64
  %92 = fsub float %75, %67
  %93 = fmul float %91, %91
  %94 = call float @llvm.fmuladd.f32(float %90, float %90, float %93)
  %95 = call float @llvm.fmuladd.f32(float %92, float %92, float %94)
  %96 = fcmp ugt float %95, %8
  br i1 %96, label %114, label %97

97:                                               ; preds = %89
  %98 = and i16 %57, 8
  %99 = icmp eq i16 %98, 0
  %100 = select i1 %99, ptr %43, ptr %50
  %101 = select i1 %99, ptr %50, ptr %43
  %102 = getelementptr inbounds %struct.BMVert, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !49
  %104 = getelementptr %struct.BMFlagLayer, ptr %103, i64 %54
  %105 = getelementptr %struct.BMFlagLayer, ptr %104, i64 -1
  %106 = load i16, ptr %105, align 2, !tbaa !53
  %107 = or i16 %106, 2
  store i16 %107, ptr %105, align 2, !tbaa !53
  %108 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !49
  %110 = getelementptr %struct.BMFlagLayer, ptr %109, i64 %54
  %111 = getelementptr %struct.BMFlagLayer, ptr %110, i64 -1
  %112 = load i16, ptr %111, align 2, !tbaa !53
  %113 = or i16 %112, 4
  store i16 %113, ptr %111, align 2, !tbaa !53
  call void @BMO_slot_map_insert(ptr noundef %2, ptr noundef %3, ptr noundef %101, ptr noundef %100) #6
  br label %114

114:                                              ; preds = %89, %97, %80, %60, %48
  %115 = phi ptr [ %43, %48 ], [ %43, %60 ], [ %43, %80 ], [ %100, %97 ], [ %43, %89 ]
  %116 = phi i1 [ false, %48 ], [ true, %60 ], [ false, %80 ], [ false, %97 ], [ false, %89 ]
  br i1 %116, label %117, label %41, !llvm.loop !114

117:                                              ; preds = %41, %114, %28
  %118 = add nuw nsw i64 %29, 1
  %119 = load i32, ptr %5, align 4, !tbaa !113
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %28, label %122, !llvm.loop !115

122:                                              ; preds = %117, %23
  %123 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %123(ptr noundef %19) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bmo_find_doubles_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %4 = tail call ptr @BMO_slot_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.8) #6
  tail call fastcc void @bmesh_find_doubles_common(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bmo_automerge_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1, i16 noundef signext 32) #6
  %6 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  store ptr %10, ptr %5, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !41
  %12 = call ptr %11(ptr noundef nonnull %5) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %16

16:                                               ; preds = %14, %29
  %17 = phi ptr [ %12, %14 ], [ %31, %29 ]
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = load i32, ptr %15, align 8, !tbaa !52
  %21 = sext i32 %20 to i64
  %22 = getelementptr %struct.BMFlagLayer, ptr %19, i64 %21
  %23 = getelementptr %struct.BMFlagLayer, ptr %22, i64 -1
  %24 = load i16, ptr %23, align 2, !tbaa !53
  %25 = and i16 %24, 32
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = or i16 %24, 8
  store i16 %28, ptr %23, align 2, !tbaa !53
  br label %29

29:                                               ; preds = %16, %27
  %30 = load ptr, ptr %8, align 8, !tbaa !41
  %31 = call ptr %30(ptr noundef nonnull %5) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %16, !llvm.loop !116

33:                                               ; preds = %29, %2
  %34 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !99
  %36 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %35, ptr noundef nonnull @.str.9, i32 noundef 8) #6
  %37 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !117
  call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %38) #6
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #6
  %39 = load i32, ptr %34, align 8, !tbaa !99
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %39, ptr noundef nonnull @.str.4) #6
  %40 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %41 = getelementptr inbounds %struct.BMOperator, ptr %4, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !117
  call void @_bmo_slot_copy(ptr noundef nonnull %40, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef %42) #6
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %4) #6
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #6
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #6
  ret void
}

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @_bmo_slot_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BM_face_create_ngon(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_slot_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_slot_as_arrayN(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @vergaverco(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !101
  %9 = fadd float %6, %8
  %10 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2, i64 2
  %11 = load float, ptr %10, align 8, !tbaa !101
  %12 = fadd float %9, %11
  %13 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %14 = load float, ptr %13, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !101
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2, i64 2
  %19 = load float, ptr %18, align 8, !tbaa !101
  %20 = fadd float %17, %19
  %21 = fcmp ogt float %12, %20
  %22 = fcmp olt float %12, %20
  %23 = sext i1 %22 to i32
  %24 = select i1 %21, i32 1, i32 %23
  ret i32 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!48 = !{!38, !38, i64 0}
!49 = !{!50, !38, i64 16}
!50 = !{!"BMVert", !51, i64 0, !38, i64 16, !36, i64 24, !36, i64 36, !38, i64 48}
!51 = !{!"BMHeader", !38, i64 0, !39, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!52 = !{!43, !39, i64 128}
!53 = !{!54, !45, i64 0}
!54 = !{!"BMFlagLayer", !45, i64 0}
!55 = !{!51, !36, i64 13}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!43, !38, i64 56}
!60 = distinct !{!60, !57, !58}
!61 = !{!43, !38, i64 40}
!62 = !{!63, !38, i64 24}
!63 = !{!"BMEdge", !51, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !64, i64 48, !64, i64 64}
!64 = !{!"BMDiskLink", !38, i64 0, !38, i64 8}
!65 = !{!63, !38, i64 32}
!66 = !{!63, !38, i64 16}
!67 = distinct !{!67, !57, !58}
!68 = !{!51, !39, i64 8}
!69 = !{!70, !38, i64 16}
!70 = !{!"BMLoop", !51, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64}
!71 = !{!72, !38, i64 16}
!72 = !{!"BMFace", !51, i64 0, !38, i64 16, !38, i64 24, !39, i64 32, !36, i64 36, !45, i64 48}
!73 = !{!70, !38, i64 24}
!74 = distinct !{!74, !57, !58}
!75 = distinct !{!75, !57, !58}
!76 = !{!43, !36, i64 28}
!77 = !{!72, !39, i64 32}
!78 = distinct !{!78, !57, !58}
!79 = !{!70, !38, i64 56}
!80 = !{!70, !38, i64 64}
!81 = distinct !{!81, !57, !58}
!82 = distinct !{!82, !57, !58}
!83 = distinct !{!83, !57, !58}
!84 = distinct !{!84, !57, !58}
!85 = !{!43, !39, i64 716}
!86 = !{!43, !38, i64 544}
!87 = !{!88, !39, i64 0}
!88 = !{!"CustomDataLayer", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32, !38, i64 96}
!89 = !{!70, !38, i64 0}
!90 = distinct !{!90, !57, !58}
!91 = distinct !{!91, !57, !58}
!92 = distinct !{!92, !57, !58}
!93 = distinct !{!93, !57, !58}
!94 = distinct !{!94, !57, !58}
!95 = distinct !{!95, !57, !58}
!96 = distinct !{!96, !57, !58}
!97 = distinct !{!97, !57, !58}
!98 = distinct !{!98, !57, !58}
!99 = !{!100, !39, i64 1304}
!100 = !{!"BMOperator", !36, i64 0, !36, i64 640, !38, i64 1280, !38, i64 1288, !39, i64 1296, !39, i64 1300, !39, i64 1304}
!101 = !{!102, !102, i64 0}
!102 = !{!"float", !36, i64 0}
!103 = distinct !{!103, !57, !58}
!104 = distinct !{!104, !57, !58}
!105 = distinct !{!105, !57, !58}
!106 = distinct !{!106, !57, !58}
!107 = distinct !{!107, !57, !58}
!108 = distinct !{!108, !57, !58}
!109 = distinct !{!109, !57, !58}
!110 = distinct !{!110, !57, !58}
!111 = distinct !{!111, !57, !58}
!112 = distinct !{!112, !57, !58}
!113 = !{!39, !39, i64 0}
!114 = distinct !{!114, !57, !58}
!115 = distinct !{!115, !57, !58}
!116 = distinct !{!116, !57, !58}
!117 = !{!100, !38, i64 1288}
