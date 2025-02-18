; ModuleID = 'blender/source/blender/editors/util/ed_transverts.c'
source_filename = "blender/source/blender/editors/util/ed_transverts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TransVertStore = type { ptr, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.TransVert = type { ptr, [3 x float], [3 x float], [3 x float], i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.ED_transverts_create_from_obedit = private unnamed_addr constant [33 x i8] c"ED_transverts_create_from_obedit\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @ED_transverts_update_obedit(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #5
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !48
  switch i16 %8, label %228 [
    i16 1, label %9
    i16 2, label %12
    i16 3, label %12
    i16 25, label %114
    i16 22, label %218
  ]

9:                                                ; preds = %2
  %10 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #5
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  tail call void @BM_mesh_normals_update(ptr noundef %11) #5
  br label %228

12:                                               ; preds = %2, %2
  %13 = load ptr, ptr %5, align 8, !tbaa !40
  %14 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %13) #5
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %228, label %17

17:                                               ; preds = %12
  %18 = and i32 %4, 2
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %17, %111
  %21 = phi ptr [ %15, %17 ], [ %112, %111 ]
  %22 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, i1 true, i1 %19
  br i1 %25, label %111, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !54
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %111, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 8, !tbaa !55
  br label %32

32:                                               ; preds = %30, %107
  %33 = phi i32 [ %36, %107 ], [ %28, %30 ]
  %34 = phi ptr [ %109, %107 ], [ %23, %30 ]
  %35 = phi ptr [ %108, %107 ], [ %31, %30 ]
  %36 = add nsw i32 %33, -1
  %37 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 10
  %38 = load i8, ptr %37, align 2, !tbaa !56
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %107

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 8
  %42 = load i8, ptr %41, align 4, !tbaa !58
  %43 = and i8 %42, 1
  %44 = icmp ne i8 %43, 0
  %45 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 7
  %46 = load i8, ptr %45, align 1, !tbaa !59
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  %49 = or i1 %44, %48
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i64
  %52 = getelementptr inbounds %struct.TransVert, ptr %35, i64 %51
  %53 = icmp eq i8 %43, 0
  br i1 %53, label %97, label %54

54:                                               ; preds = %40
  %55 = load ptr, ptr %52, align 8, !tbaa !60
  %56 = getelementptr inbounds %struct.TransVert, ptr %35, i64 %51, i32 1
  %57 = load float, ptr %55, align 4, !tbaa !62
  %58 = load float, ptr %56, align 4, !tbaa !62
  %59 = fsub float %57, %58
  %60 = getelementptr inbounds float, ptr %55, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !62
  %62 = getelementptr inbounds float, ptr %56, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !62
  %64 = fsub float %61, %63
  %65 = getelementptr inbounds float, ptr %55, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !62
  %67 = getelementptr inbounds float, ptr %56, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !62
  %69 = fsub float %66, %68
  %70 = load float, ptr %34, align 4, !tbaa !62
  %71 = fadd float %59, %70
  store float %71, ptr %34, align 4, !tbaa !62
  %72 = getelementptr inbounds float, ptr %34, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !62
  %74 = fadd float %64, %73
  store float %74, ptr %72, align 4, !tbaa !62
  %75 = getelementptr inbounds float, ptr %34, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !62
  %77 = fadd float %69, %76
  store float %77, ptr %75, align 4, !tbaa !62
  %78 = load float, ptr %55, align 4, !tbaa !62
  %79 = load float, ptr %56, align 4, !tbaa !62
  %80 = fsub float %78, %79
  %81 = load float, ptr %60, align 4, !tbaa !62
  %82 = load float, ptr %62, align 4, !tbaa !62
  %83 = fsub float %81, %82
  %84 = load float, ptr %65, align 4, !tbaa !62
  %85 = load float, ptr %67, align 4, !tbaa !62
  %86 = fsub float %84, %85
  %87 = getelementptr inbounds [3 x [3 x float]], ptr %34, i64 0, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !62
  %89 = fadd float %80, %88
  store float %89, ptr %87, align 4, !tbaa !62
  %90 = getelementptr inbounds [3 x [3 x float]], ptr %34, i64 0, i64 2, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !62
  %92 = fadd float %83, %91
  store float %92, ptr %90, align 4, !tbaa !62
  %93 = getelementptr inbounds [3 x [3 x float]], ptr %34, i64 0, i64 2, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !62
  %95 = fadd float %86, %94
  store float %95, ptr %93, align 4, !tbaa !62
  %96 = getelementptr inbounds %struct.TransVert, ptr %52, i64 1
  br label %97

97:                                               ; preds = %54, %40
  %98 = phi ptr [ %96, %54 ], [ %52, %40 ]
  %99 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 9
  %100 = load i8, ptr %99, align 1, !tbaa !63
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  %103 = or i1 %44, %102
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i64
  %106 = getelementptr inbounds %struct.TransVert, ptr %98, i64 %105
  br label %107

107:                                              ; preds = %97, %32
  %108 = phi ptr [ %106, %97 ], [ %35, %32 ]
  %109 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 1
  %110 = icmp eq i32 %36, 0
  br i1 %110, label %111, label %32, !llvm.loop !64

111:                                              ; preds = %107, %26, %20
  tail call void @BKE_nurb_test2D(ptr noundef nonnull %21) #5
  tail call void @BKE_nurb_handles_test(ptr noundef nonnull %21, i8 noundef zeroext 1) #5
  %112 = load ptr, ptr %21, align 8, !tbaa !51
  %113 = icmp eq ptr %112, null
  br i1 %113, label %228, label %20, !llvm.loop !67

114:                                              ; preds = %2
  %115 = load ptr, ptr %5, align 8, !tbaa !40
  %116 = getelementptr inbounds %struct.bArmature, ptr %115, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !68
  %118 = load ptr, ptr %117, align 8, !tbaa !51
  %119 = icmp eq ptr %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr %0, align 8, !tbaa !55
  %122 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 1
  br label %126

123:                                              ; preds = %169, %114
  %124 = load ptr, ptr %117, align 8, !tbaa !51
  %125 = icmp eq ptr %124, null
  br i1 %125, label %212, label %174

126:                                              ; preds = %120, %169
  %127 = phi ptr [ %118, %120 ], [ %172, %169 ]
  %128 = phi i32 [ 0, %120 ], [ %171, %169 ]
  %129 = phi ptr [ %121, %120 ], [ %170, %169 ]
  %130 = getelementptr inbounds %struct.EditBone, ptr %127, i64 0, i32 9
  %131 = load i32, ptr %130, align 4, !tbaa !70
  %132 = and i32 %131, 2
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %169, label %134

134:                                              ; preds = %126
  %135 = and i32 %131, 4
  %136 = icmp ne i32 %135, 0
  %137 = icmp ne ptr %129, null
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %139, label %169

139:                                              ; preds = %134
  %140 = load ptr, ptr %129, align 8, !tbaa !60
  %141 = getelementptr inbounds %struct.TransVert, ptr %129, i64 0, i32 1
  %142 = load float, ptr %140, align 4, !tbaa !62
  %143 = load float, ptr %141, align 4, !tbaa !62
  %144 = fsub float %142, %143
  %145 = getelementptr inbounds float, ptr %140, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !62
  %147 = getelementptr inbounds %struct.TransVert, ptr %129, i64 0, i32 1, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !62
  %149 = fsub float %146, %148
  %150 = getelementptr inbounds float, ptr %140, i64 2
  %151 = load float, ptr %150, align 4, !tbaa !62
  %152 = getelementptr inbounds %struct.TransVert, ptr %129, i64 0, i32 1, i64 2
  %153 = load float, ptr %152, align 4, !tbaa !62
  %154 = fsub float %151, %153
  %155 = getelementptr inbounds %struct.EditBone, ptr %127, i64 0, i32 8
  %156 = load float, ptr %155, align 4, !tbaa !62
  %157 = fadd float %144, %156
  store float %157, ptr %155, align 4, !tbaa !62
  %158 = getelementptr inbounds %struct.EditBone, ptr %127, i64 0, i32 8, i64 1
  %159 = load float, ptr %158, align 4, !tbaa !62
  %160 = fadd float %149, %159
  store float %160, ptr %158, align 4, !tbaa !62
  %161 = getelementptr inbounds %struct.EditBone, ptr %127, i64 0, i32 8, i64 2
  %162 = load float, ptr %161, align 4, !tbaa !62
  %163 = fadd float %154, %162
  store float %163, ptr %161, align 4, !tbaa !62
  %164 = add nsw i32 %128, 1
  %165 = load i32, ptr %122, align 8, !tbaa !72
  %166 = icmp slt i32 %164, %165
  %167 = zext i1 %166 to i64
  %168 = getelementptr inbounds %struct.TransVert, ptr %129, i64 %167
  br label %169

169:                                              ; preds = %126, %134, %139
  %170 = phi ptr [ %168, %139 ], [ %129, %134 ], [ %129, %126 ]
  %171 = phi i32 [ %164, %139 ], [ %128, %134 ], [ %128, %126 ]
  %172 = load ptr, ptr %127, align 8, !tbaa !51
  %173 = icmp eq ptr %172, null
  br i1 %173, label %123, label %126, !llvm.loop !73

174:                                              ; preds = %123, %209
  %175 = phi ptr [ %210, %209 ], [ %124, %123 ]
  %176 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 9
  %177 = load i32, ptr %176, align 4, !tbaa !70
  %178 = and i32 %177, 16
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %209, label %180

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !74
  %183 = icmp eq ptr %182, null
  br i1 %183, label %209, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.EditBone, ptr %182, i64 0, i32 9
  %186 = load i32, ptr %185, align 4, !tbaa !70
  %187 = and i32 %186, 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %199, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 7
  %191 = getelementptr inbounds %struct.EditBone, ptr %182, i64 0, i32 8
  %192 = load float, ptr %191, align 4, !tbaa !62
  store float %192, ptr %190, align 4, !tbaa !62
  %193 = getelementptr inbounds %struct.EditBone, ptr %182, i64 0, i32 8, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !62
  %195 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 7, i64 1
  store float %194, ptr %195, align 4, !tbaa !62
  %196 = getelementptr inbounds %struct.EditBone, ptr %182, i64 0, i32 8, i64 2
  %197 = load float, ptr %196, align 4, !tbaa !62
  %198 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 7, i64 2
  store float %197, ptr %198, align 4, !tbaa !62
  br label %209

199:                                              ; preds = %184
  %200 = getelementptr inbounds %struct.EditBone, ptr %182, i64 0, i32 8
  %201 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 7
  %202 = load float, ptr %201, align 4, !tbaa !62
  store float %202, ptr %200, align 4, !tbaa !62
  %203 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 7, i64 1
  %204 = load float, ptr %203, align 4, !tbaa !62
  %205 = getelementptr inbounds %struct.EditBone, ptr %182, i64 0, i32 8, i64 1
  store float %204, ptr %205, align 4, !tbaa !62
  %206 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 7, i64 2
  %207 = load float, ptr %206, align 4, !tbaa !62
  %208 = getelementptr inbounds %struct.EditBone, ptr %182, i64 0, i32 8, i64 2
  store float %207, ptr %208, align 4, !tbaa !62
  br label %209

209:                                              ; preds = %174, %180, %199, %189
  %210 = load ptr, ptr %175, align 8, !tbaa !51
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %174, !llvm.loop !75

212:                                              ; preds = %209, %123
  %213 = getelementptr inbounds %struct.bArmature, ptr %115, i64 0, i32 8
  %214 = load i32, ptr %213, align 8, !tbaa !76
  %215 = and i32 %214, 256
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %228, label %217

217:                                              ; preds = %212
  tail call void @transform_armature_mirror_update(ptr noundef %1) #5
  br label %228

218:                                              ; preds = %2
  %219 = load ptr, ptr %5, align 8, !tbaa !40
  %220 = getelementptr inbounds %struct.Lattice, ptr %219, i64 0, i32 26
  %221 = load ptr, ptr %220, align 8, !tbaa !77
  %222 = load ptr, ptr %221, align 8, !tbaa !79
  %223 = getelementptr inbounds %struct.Lattice, ptr %222, i64 0, i32 5
  %224 = load i16, ptr %223, align 2, !tbaa !81
  %225 = and i16 %224, 2
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %218
  tail call void @outside_lattice(ptr noundef %222) #5
  br label %228

228:                                              ; preds = %111, %12, %218, %227, %2, %212, %217, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_test2D(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_handles_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @transform_armature_mirror_update(ptr noundef) local_unnamed_addr #2

declare void @outside_lattice(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @ED_transverts_check_obedit(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !48
  switch i16 %3, label %4 [
    i16 25, label %7
    i16 22, label %7
    i16 1, label %7
    i16 3, label %7
    i16 2, label %7
  ]

4:                                                ; preds = %1
  %5 = icmp eq i16 %3, 5
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %1, %1, %1, %1, %1, %4
  %8 = phi i8 [ 1, %1 ], [ %6, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_transverts_create_from_obedit(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [2 x ptr], align 16
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !48
  switch i16 %9, label %613 [
    i16 1, label %10
    i16 25, label %235
    i16 2, label %331
    i16 3, label %331
    i16 5, label %520
    i16 22, label %558
  ]

10:                                               ; preds = %3
  %11 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #5
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  store ptr %11, ptr %5, align 16, !tbaa !51
  %13 = getelementptr inbounds ptr, ptr %5, i64 1
  store ptr null, ptr %13, align 8, !tbaa !51
  store i32 0, ptr %7, align 8, !tbaa !72
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !82
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %20, align 4, !tbaa !83
  %21 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %21, align 8, !tbaa !85
  %22 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %22, align 8, !tbaa !86
  %23 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  store ptr %24, ptr %4, align 8, !tbaa !90
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %25 = load ptr, ptr %22, align 8, !tbaa !86
  %26 = call ptr %25(ptr noundef nonnull %4) #5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %158, label %28

28:                                               ; preds = %19, %39
  %29 = phi ptr [ %41, %39 ], [ %26, %19 ]
  %30 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !91
  %32 = and i8 %31, 3
  %33 = icmp eq i8 %32, 1
  %34 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 1
  br i1 %33, label %35, label %38

35:                                               ; preds = %28
  store i32 1, ptr %34, align 8, !tbaa !93
  %36 = load i32, ptr %7, align 8, !tbaa !72
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %7, align 8, !tbaa !72
  br label %39

38:                                               ; preds = %28
  store i32 0, ptr %34, align 8, !tbaa !93
  br label %39

39:                                               ; preds = %35, %38
  %40 = load ptr, ptr %22, align 8, !tbaa !86
  %41 = call ptr %40(ptr noundef nonnull %4) #5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %158, label %28, !llvm.loop !94

43:                                               ; preds = %10
  %44 = and i32 %16, 2
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %46, align 4, !tbaa !83
  %47 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !85
  %48 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !86
  %49 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !87
  store ptr %50, ptr %4, align 8, !tbaa !90
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %51 = load ptr, ptr %48, align 8, !tbaa !86
  %52 = call ptr %51(ptr noundef nonnull %4) #5
  %53 = icmp eq ptr %52, null
  br i1 %45, label %101, label %54

54:                                               ; preds = %43
  br i1 %53, label %61, label %55

55:                                               ; preds = %54, %55
  %56 = phi ptr [ %59, %55 ], [ %52, %54 ]
  %57 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 1
  store i32 0, ptr %57, align 8, !tbaa !93
  %58 = load ptr, ptr %48, align 8, !tbaa !86
  %59 = call ptr %58(ptr noundef nonnull %4) #5
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %55, !llvm.loop !95

61:                                               ; preds = %55, %54
  store i8 2, ptr %46, align 4, !tbaa !83
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !85
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !86
  %62 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !96
  store ptr %63, ptr %4, align 8, !tbaa !90
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %64 = load ptr, ptr %48, align 8, !tbaa !86
  %65 = call ptr %64(ptr noundef nonnull %4) #5
  %66 = icmp eq ptr %65, null
  br i1 %66, label %84, label %67

67:                                               ; preds = %61, %80
  %68 = phi ptr [ %82, %80 ], [ %65, %61 ]
  %69 = getelementptr inbounds %struct.BMHeader, ptr %68, i64 0, i32 3
  %70 = load i8, ptr %69, align 1, !tbaa !91
  %71 = and i8 %70, 3
  %72 = icmp eq i8 %71, 1
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.BMEdge, ptr %68, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !97
  %76 = getelementptr inbounds %struct.BMHeader, ptr %75, i64 0, i32 1
  store i32 1, ptr %76, align 8, !tbaa !93
  %77 = getelementptr inbounds %struct.BMEdge, ptr %68, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !100
  %79 = getelementptr inbounds %struct.BMHeader, ptr %78, i64 0, i32 1
  store i32 1, ptr %79, align 8, !tbaa !93
  br label %80

80:                                               ; preds = %67, %73
  %81 = load ptr, ptr %48, align 8, !tbaa !86
  %82 = call ptr %81(ptr noundef nonnull %4) #5
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %67, !llvm.loop !101

84:                                               ; preds = %80, %61
  store i8 1, ptr %46, align 4, !tbaa !83
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !85
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !86
  %85 = load ptr, ptr %49, align 8, !tbaa !87
  store ptr %85, ptr %4, align 8, !tbaa !90
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %86 = load ptr, ptr %48, align 8, !tbaa !86
  %87 = call ptr %86(ptr noundef nonnull %4) #5
  %88 = icmp eq ptr %87, null
  br i1 %88, label %158, label %89

89:                                               ; preds = %84, %97
  %90 = phi ptr [ %99, %97 ], [ %87, %84 ]
  %91 = getelementptr inbounds %struct.BMHeader, ptr %90, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !93
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, ptr %7, align 8, !tbaa !72
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %7, align 8, !tbaa !72
  br label %97

97:                                               ; preds = %89, %94
  %98 = load ptr, ptr %48, align 8, !tbaa !86
  %99 = call ptr %98(ptr noundef nonnull %4) #5
  %100 = icmp eq ptr %99, null
  br i1 %100, label %158, label %89, !llvm.loop !102

101:                                              ; preds = %43
  br i1 %53, label %108, label %102

102:                                              ; preds = %101, %102
  %103 = phi ptr [ %106, %102 ], [ %52, %101 ]
  %104 = getelementptr inbounds %struct.BMHeader, ptr %103, i64 0, i32 1
  store i32 0, ptr %104, align 8, !tbaa !93
  %105 = load ptr, ptr %48, align 8, !tbaa !86
  %106 = call ptr %105(ptr noundef nonnull %4) #5
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %102, !llvm.loop !103

108:                                              ; preds = %102, %101
  store i8 3, ptr %46, align 4, !tbaa !83
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !85
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !86
  %109 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 12
  %110 = load ptr, ptr %109, align 8, !tbaa !104
  store ptr %110, ptr %4, align 8, !tbaa !90
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %111 = load ptr, ptr %48, align 8, !tbaa !86
  %112 = call ptr %111(ptr noundef nonnull %4) #5
  %113 = icmp eq ptr %112, null
  br i1 %113, label %141, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %116 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %117 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %118

118:                                              ; preds = %114, %137
  %119 = phi ptr [ %112, %114 ], [ %139, %137 ]
  %120 = getelementptr inbounds %struct.BMHeader, ptr %119, i64 0, i32 3
  %121 = load i8, ptr %120, align 1, !tbaa !91
  %122 = and i8 %121, 3
  %123 = icmp eq i8 %122, 1
  br i1 %123, label %124, label %137

124:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #5
  store i8 11, ptr %115, align 4, !tbaa !83
  store ptr @bmiter__loop_of_face_begin, ptr %116, align 8, !tbaa !85
  store ptr @bmiter__loop_of_face_step, ptr %117, align 8, !tbaa !86
  store ptr %119, ptr %6, align 8, !tbaa !90
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #5
  %125 = load ptr, ptr %117, align 8, !tbaa !86
  %126 = call ptr %125(ptr noundef nonnull %6) #5
  %127 = icmp eq ptr %126, null
  br i1 %127, label %136, label %128

128:                                              ; preds = %124, %128
  %129 = phi ptr [ %134, %128 ], [ %126, %124 ]
  %130 = getelementptr inbounds %struct.BMLoop, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !105
  %132 = getelementptr inbounds %struct.BMHeader, ptr %131, i64 0, i32 1
  store i32 1, ptr %132, align 8, !tbaa !93
  %133 = load ptr, ptr %117, align 8, !tbaa !86
  %134 = call ptr %133(ptr noundef nonnull %6) #5
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %128, !llvm.loop !107

136:                                              ; preds = %128, %124
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #5
  br label %137

137:                                              ; preds = %118, %136
  %138 = load ptr, ptr %48, align 8, !tbaa !86
  %139 = call ptr %138(ptr noundef nonnull %4) #5
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %118, !llvm.loop !108

141:                                              ; preds = %137, %108
  store i8 1, ptr %46, align 4, !tbaa !83
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !85
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !86
  %142 = load ptr, ptr %49, align 8, !tbaa !87
  store ptr %142, ptr %4, align 8, !tbaa !90
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %143 = load ptr, ptr %48, align 8, !tbaa !86
  %144 = call ptr %143(ptr noundef nonnull %4) #5
  %145 = icmp eq ptr %144, null
  br i1 %145, label %158, label %146

146:                                              ; preds = %141, %154
  %147 = phi ptr [ %156, %154 ], [ %144, %141 ]
  %148 = getelementptr inbounds %struct.BMHeader, ptr %147, i64 0, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !93
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, ptr %7, align 8, !tbaa !72
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %7, align 8, !tbaa !72
  br label %154

154:                                              ; preds = %146, %151
  %155 = load ptr, ptr %48, align 8, !tbaa !86
  %156 = call ptr %155(ptr noundef nonnull %4) #5
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %146, !llvm.loop !109

158:                                              ; preds = %39, %97, %154, %19, %84, %141
  %159 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 7
  %160 = load i8, ptr %159, align 4, !tbaa !110
  %161 = or i8 %160, 1
  store i8 %161, ptr %159, align 4, !tbaa !110
  %162 = load i32, ptr %7, align 8, !tbaa !72
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %223, label %164

164:                                              ; preds = %158
  %165 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %166 = sext i32 %162 to i64
  %167 = mul nsw i64 %166, 48
  %168 = call ptr %165(i64 noundef %167, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #5
  store ptr %168, ptr %0, align 8, !tbaa !55
  %169 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %169, align 4, !tbaa !83
  %170 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %170, align 8, !tbaa !85
  %171 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %171, align 8, !tbaa !86
  %172 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 9
  %173 = load ptr, ptr %172, align 8, !tbaa !87
  store ptr %173, ptr %4, align 8, !tbaa !90
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %174 = load ptr, ptr %171, align 8, !tbaa !86
  %175 = call ptr %174(ptr noundef nonnull %4) #5
  %176 = icmp eq ptr %175, null
  br i1 %176, label %221, label %177

177:                                              ; preds = %164
  %178 = and i32 %2, 4
  %179 = icmp eq i32 %178, 0
  br label %180

180:                                              ; preds = %177, %215
  %181 = phi ptr [ %168, %177 ], [ %217, %215 ]
  %182 = phi ptr [ %175, %177 ], [ %219, %215 ]
  %183 = phi i32 [ 0, %177 ], [ %216, %215 ]
  %184 = getelementptr inbounds %struct.BMHeader, ptr %182, i64 0, i32 1
  %185 = load i32, ptr %184, align 8, !tbaa !93
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %214, label %187

187:                                              ; preds = %180
  store i32 %183, ptr %184, align 8, !tbaa !93
  %188 = getelementptr inbounds %struct.TransVert, ptr %181, i64 0, i32 1
  %189 = getelementptr inbounds %struct.BMVert, ptr %182, i64 0, i32 2
  %190 = load float, ptr %189, align 4, !tbaa !62
  store float %190, ptr %188, align 4, !tbaa !62
  %191 = getelementptr inbounds %struct.BMVert, ptr %182, i64 0, i32 2, i64 1
  %192 = load float, ptr %191, align 4, !tbaa !62
  %193 = getelementptr inbounds %struct.TransVert, ptr %181, i64 0, i32 1, i64 1
  store float %192, ptr %193, align 4, !tbaa !62
  %194 = getelementptr inbounds %struct.BMVert, ptr %182, i64 0, i32 2, i64 2
  %195 = load float, ptr %194, align 4, !tbaa !62
  %196 = getelementptr inbounds %struct.TransVert, ptr %181, i64 0, i32 1, i64 2
  store float %195, ptr %196, align 4, !tbaa !62
  store ptr %189, ptr %181, align 8, !tbaa !60
  %197 = icmp eq i32 %183, 1
  %198 = zext i1 %197 to i32
  %199 = getelementptr inbounds %struct.TransVert, ptr %181, i64 0, i32 4
  store i32 %198, ptr %199, align 4, !tbaa !111
  br i1 %179, label %211, label %200

200:                                              ; preds = %187
  %201 = or disjoint i32 %198, 4
  store i32 %201, ptr %199, align 4, !tbaa !111
  %202 = getelementptr inbounds %struct.TransVert, ptr %181, i64 0, i32 3
  %203 = getelementptr inbounds %struct.BMVert, ptr %182, i64 0, i32 3
  %204 = load float, ptr %203, align 4, !tbaa !62
  store float %204, ptr %202, align 4, !tbaa !62
  %205 = getelementptr inbounds %struct.BMVert, ptr %182, i64 0, i32 3, i64 1
  %206 = load float, ptr %205, align 4, !tbaa !62
  %207 = getelementptr inbounds %struct.TransVert, ptr %181, i64 0, i32 3, i64 1
  store float %206, ptr %207, align 4, !tbaa !62
  %208 = getelementptr inbounds %struct.BMVert, ptr %182, i64 0, i32 3, i64 2
  %209 = load float, ptr %208, align 4, !tbaa !62
  %210 = getelementptr inbounds %struct.TransVert, ptr %181, i64 0, i32 3, i64 2
  store float %209, ptr %210, align 4, !tbaa !62
  br label %211

211:                                              ; preds = %200, %187
  %212 = getelementptr inbounds %struct.TransVert, ptr %181, i64 1
  %213 = add nsw i32 %183, 1
  br label %215

214:                                              ; preds = %180
  store i32 -1, ptr %184, align 8, !tbaa !93
  br label %215

215:                                              ; preds = %211, %214
  %216 = phi i32 [ %213, %211 ], [ %183, %214 ]
  %217 = phi ptr [ %212, %211 ], [ %181, %214 ]
  %218 = load ptr, ptr %171, align 8, !tbaa !86
  %219 = call ptr %218(ptr noundef nonnull %4) #5
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %180, !llvm.loop !112

221:                                              ; preds = %215, %164
  %222 = load ptr, ptr %0, align 8, !tbaa !55
  store ptr %222, ptr %13, align 8, !tbaa !51
  br label %223

223:                                              ; preds = %221, %158
  %224 = load ptr, ptr %0, align 8, !tbaa !55
  %225 = icmp eq ptr %224, null
  br i1 %225, label %234, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 6
  %228 = load ptr, ptr %227, align 8, !tbaa !113
  %229 = icmp eq ptr %228, null
  br i1 %229, label %234, label %230

230:                                              ; preds = %226
  call void @BM_mesh_elem_table_ensure(ptr noundef %12, i8 noundef zeroext 1) #5
  %231 = load ptr, ptr %227, align 8, !tbaa !113
  %232 = getelementptr inbounds %struct.DerivedMesh, ptr %231, i64 0, i32 71
  %233 = load ptr, ptr %232, align 8, !tbaa !114
  call void %233(ptr noundef %231, ptr noundef nonnull @set_mapped_co, ptr noundef nonnull %5, i32 noundef 0) #5
  br label %234

234:                                              ; preds = %230, %226, %223
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  br label %613

235:                                              ; preds = %3
  %236 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %237 = load ptr, ptr %236, align 8, !tbaa !40
  %238 = getelementptr inbounds %struct.bArmature, ptr %237, i64 0, i32 4
  %239 = load ptr, ptr %238, align 8, !tbaa !68
  %240 = tail call i32 @BLI_countlist(ptr noundef %239) #5
  %241 = shl nsw i32 %240, 1
  %242 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %243 = sext i32 %241 to i64
  %244 = mul nsw i64 %243, 48
  %245 = tail call ptr %242(i64 noundef %244, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #5
  store ptr %245, ptr %0, align 8, !tbaa !55
  %246 = load ptr, ptr %238, align 8, !tbaa !68
  %247 = load ptr, ptr %246, align 8, !tbaa !51
  %248 = icmp eq ptr %247, null
  br i1 %248, label %613, label %249

249:                                              ; preds = %235
  %250 = getelementptr inbounds %struct.bArmature, ptr %237, i64 0, i32 15
  %251 = load i32, ptr %250, align 8, !tbaa !116
  %252 = and i32 %2, 1
  %253 = icmp ne i32 %252, 0
  br label %254

254:                                              ; preds = %249, %327
  %255 = phi ptr [ %247, %249 ], [ %329, %327 ]
  %256 = phi ptr [ %245, %249 ], [ %328, %327 ]
  %257 = getelementptr inbounds %struct.EditBone, ptr %255, i64 0, i32 10
  %258 = load i32, ptr %257, align 8, !tbaa !117
  %259 = and i32 %251, %258
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %327, label %261

261:                                              ; preds = %254
  %262 = getelementptr inbounds %struct.EditBone, ptr %255, i64 0, i32 9
  %263 = load i32, ptr %262, align 4, !tbaa !70
  %264 = and i32 %263, 2
  %265 = getelementptr inbounds %struct.EditBone, ptr %255, i64 0, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !74
  %267 = icmp eq ptr %266, null
  %268 = and i32 %263, 16
  %269 = icmp eq i32 %268, 0
  %270 = select i1 %267, i1 true, i1 %269
  br i1 %270, label %276, label %271

271:                                              ; preds = %261
  %272 = getelementptr inbounds %struct.EditBone, ptr %266, i64 0, i32 9
  %273 = load i32, ptr %272, align 4, !tbaa !70
  %274 = and i32 %273, 4
  %275 = icmp ne i32 %274, 0
  br label %276

276:                                              ; preds = %271, %261
  %277 = phi i1 [ false, %261 ], [ %275, %271 ]
  %278 = and i32 %263, 4
  %279 = icmp ne i32 %278, 0
  %280 = icmp eq i32 %264, 0
  br i1 %280, label %309, label %281

281:                                              ; preds = %276
  br i1 %277, label %296, label %282

282:                                              ; preds = %281
  %283 = getelementptr inbounds %struct.TransVert, ptr %256, i64 0, i32 1
  %284 = getelementptr inbounds %struct.EditBone, ptr %255, i64 0, i32 7
  %285 = load float, ptr %284, align 4, !tbaa !62
  store float %285, ptr %283, align 4, !tbaa !62
  %286 = getelementptr inbounds %struct.EditBone, ptr %255, i64 0, i32 7, i64 1
  %287 = load float, ptr %286, align 4, !tbaa !62
  %288 = getelementptr inbounds %struct.TransVert, ptr %256, i64 0, i32 1, i64 1
  store float %287, ptr %288, align 4, !tbaa !62
  %289 = getelementptr inbounds %struct.EditBone, ptr %255, i64 0, i32 7, i64 2
  %290 = load float, ptr %289, align 4, !tbaa !62
  %291 = getelementptr inbounds %struct.TransVert, ptr %256, i64 0, i32 1, i64 2
  store float %290, ptr %291, align 4, !tbaa !62
  store ptr %284, ptr %256, align 8, !tbaa !60
  %292 = getelementptr inbounds %struct.TransVert, ptr %256, i64 0, i32 4
  store i32 1, ptr %292, align 4, !tbaa !111
  %293 = getelementptr inbounds %struct.TransVert, ptr %256, i64 1
  %294 = load i32, ptr %7, align 8, !tbaa !72
  %295 = add nsw i32 %294, 1
  store i32 %295, ptr %7, align 8, !tbaa !72
  br label %296

296:                                              ; preds = %282, %281
  %297 = phi ptr [ %293, %282 ], [ %256, %281 ]
  %298 = select i1 %253, i1 %279, i1 false
  br i1 %298, label %299, label %327

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.TransVert, ptr %297, i64 0, i32 1
  %301 = getelementptr inbounds %struct.EditBone, ptr %255, i64 0, i32 8
  %302 = load float, ptr %301, align 4, !tbaa !62
  store float %302, ptr %300, align 4, !tbaa !62
  %303 = getelementptr inbounds %struct.EditBone, ptr %255, i64 0, i32 8, i64 1
  %304 = load float, ptr %303, align 4, !tbaa !62
  %305 = getelementptr inbounds %struct.TransVert, ptr %297, i64 0, i32 1, i64 1
  store float %304, ptr %305, align 4, !tbaa !62
  %306 = getelementptr inbounds %struct.EditBone, ptr %255, i64 0, i32 8, i64 2
  %307 = load float, ptr %306, align 4, !tbaa !62
  %308 = getelementptr inbounds %struct.TransVert, ptr %297, i64 0, i32 1, i64 2
  store float %307, ptr %308, align 4, !tbaa !62
  store ptr %301, ptr %297, align 8, !tbaa !60
  br label %321

309:                                              ; preds = %276
  %310 = icmp eq i32 %278, 0
  br i1 %310, label %327, label %311

311:                                              ; preds = %309
  %312 = getelementptr inbounds %struct.TransVert, ptr %256, i64 0, i32 1
  %313 = getelementptr inbounds %struct.EditBone, ptr %255, i64 0, i32 8
  %314 = load float, ptr %313, align 4, !tbaa !62
  store float %314, ptr %312, align 4, !tbaa !62
  %315 = getelementptr inbounds %struct.EditBone, ptr %255, i64 0, i32 8, i64 1
  %316 = load float, ptr %315, align 4, !tbaa !62
  %317 = getelementptr inbounds %struct.TransVert, ptr %256, i64 0, i32 1, i64 1
  store float %316, ptr %317, align 4, !tbaa !62
  %318 = getelementptr inbounds %struct.EditBone, ptr %255, i64 0, i32 8, i64 2
  %319 = load float, ptr %318, align 4, !tbaa !62
  %320 = getelementptr inbounds %struct.TransVert, ptr %256, i64 0, i32 1, i64 2
  store float %319, ptr %320, align 4, !tbaa !62
  store ptr %313, ptr %256, align 8, !tbaa !60
  br label %321

321:                                              ; preds = %311, %299
  %322 = phi ptr [ %297, %299 ], [ %256, %311 ]
  %323 = getelementptr inbounds %struct.TransVert, ptr %322, i64 0, i32 4
  store i32 1, ptr %323, align 4, !tbaa !111
  %324 = getelementptr inbounds %struct.TransVert, ptr %322, i64 1
  %325 = load i32, ptr %7, align 8, !tbaa !72
  %326 = add nsw i32 %325, 1
  store i32 %326, ptr %7, align 8, !tbaa !72
  br label %327

327:                                              ; preds = %321, %296, %309, %254
  %328 = phi ptr [ %256, %254 ], [ %297, %296 ], [ %256, %309 ], [ %324, %321 ]
  %329 = load ptr, ptr %255, align 8, !tbaa !51
  %330 = icmp eq ptr %329, null
  br i1 %330, label %613, label %254, !llvm.loop !118

331:                                              ; preds = %3, %3
  %332 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %333 = load ptr, ptr %332, align 8, !tbaa !40
  %334 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %333) #5
  %335 = load ptr, ptr %334, align 8, !tbaa !51
  %336 = icmp eq ptr %335, null
  br i1 %336, label %359, label %337

337:                                              ; preds = %331, %351
  %338 = phi ptr [ %354, %351 ], [ %335, %331 ]
  %339 = phi i32 [ %353, %351 ], [ 0, %331 ]
  %340 = getelementptr inbounds %struct.Nurb, ptr %338, i64 0, i32 2
  %341 = load i16, ptr %340, align 8, !tbaa !119
  %342 = icmp eq i16 %341, 1
  %343 = getelementptr inbounds %struct.Nurb, ptr %338, i64 0, i32 6
  %344 = load i32, ptr %343, align 8, !tbaa !54
  br i1 %342, label %345, label %347

345:                                              ; preds = %337
  %346 = mul nsw i32 %344, 3
  br label %351

347:                                              ; preds = %337
  %348 = getelementptr inbounds %struct.Nurb, ptr %338, i64 0, i32 7
  %349 = load i32, ptr %348, align 4, !tbaa !120
  %350 = mul nsw i32 %349, %344
  br label %351

351:                                              ; preds = %345, %347
  %352 = phi i32 [ %346, %345 ], [ %350, %347 ]
  %353 = add nsw i32 %352, %339
  %354 = load ptr, ptr %338, align 8, !tbaa !51
  %355 = icmp eq ptr %354, null
  br i1 %355, label %356, label %337, !llvm.loop !121

356:                                              ; preds = %351
  %357 = sext i32 %353 to i64
  %358 = mul nsw i64 %357, 48
  br label %359

359:                                              ; preds = %356, %331
  %360 = phi i64 [ 0, %331 ], [ %358, %356 ]
  %361 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %362 = tail call ptr %361(i64 noundef %360, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #5
  store ptr %362, ptr %0, align 8, !tbaa !55
  %363 = load ptr, ptr %334, align 8, !tbaa !51
  %364 = icmp eq ptr %363, null
  br i1 %364, label %613, label %365

365:                                              ; preds = %359
  %366 = and i32 %2, 2
  %367 = icmp ne i32 %366, 0
  %368 = and i32 %2, 4
  %369 = icmp eq i32 %368, 0
  %370 = and i32 %2, 4
  %371 = icmp eq i32 %370, 0
  %372 = and i32 %2, 4
  %373 = icmp eq i32 %372, 0
  br label %374

374:                                              ; preds = %365, %516
  %375 = phi ptr [ %363, %365 ], [ %518, %516 ]
  %376 = phi ptr [ %362, %365 ], [ %517, %516 ]
  %377 = getelementptr inbounds %struct.Nurb, ptr %375, i64 0, i32 2
  %378 = load i16, ptr %377, align 8, !tbaa !119
  %379 = icmp eq i16 %378, 1
  %380 = getelementptr inbounds %struct.Nurb, ptr %375, i64 0, i32 6
  %381 = load i32, ptr %380, align 8, !tbaa !54
  br i1 %379, label %382, label %477

382:                                              ; preds = %374
  %383 = icmp eq i32 %381, 0
  br i1 %383, label %516, label %384

384:                                              ; preds = %382
  %385 = getelementptr inbounds %struct.Nurb, ptr %375, i64 0, i32 18
  %386 = load ptr, ptr %385, align 8, !tbaa !52
  br label %387

387:                                              ; preds = %384, %473
  %388 = phi i32 [ %391, %473 ], [ %381, %384 ]
  %389 = phi ptr [ %475, %473 ], [ %386, %384 ]
  %390 = phi ptr [ %474, %473 ], [ %376, %384 ]
  %391 = add nsw i32 %388, -1
  %392 = getelementptr inbounds %struct.BezTriple, ptr %389, i64 0, i32 10
  %393 = load i8, ptr %392, align 2, !tbaa !56
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %395, label %473

395:                                              ; preds = %387
  %396 = getelementptr inbounds %struct.BezTriple, ptr %389, i64 0, i32 8
  %397 = load i8, ptr %396, align 4, !tbaa !58
  %398 = and i8 %397, 1
  %399 = icmp ne i8 %398, 0
  %400 = getelementptr inbounds %struct.BezTriple, ptr %389, i64 0, i32 7
  %401 = load i8, ptr %400, align 1, !tbaa !59
  %402 = and i8 %401, 1
  %403 = icmp eq i8 %402, 0
  %404 = and i1 %367, %399
  %405 = or i1 %403, %404
  br i1 %405, label %424, label %406

406:                                              ; preds = %395
  %407 = getelementptr inbounds %struct.TransVert, ptr %390, i64 0, i32 1
  %408 = load float, ptr %389, align 4, !tbaa !62
  store float %408, ptr %407, align 4, !tbaa !62
  %409 = getelementptr inbounds float, ptr %389, i64 1
  %410 = load float, ptr %409, align 4, !tbaa !62
  %411 = getelementptr inbounds %struct.TransVert, ptr %390, i64 0, i32 1, i64 1
  store float %410, ptr %411, align 4, !tbaa !62
  %412 = getelementptr inbounds float, ptr %389, i64 2
  %413 = load float, ptr %412, align 4, !tbaa !62
  %414 = getelementptr inbounds %struct.TransVert, ptr %390, i64 0, i32 1, i64 2
  store float %413, ptr %414, align 4, !tbaa !62
  store ptr %389, ptr %390, align 8, !tbaa !60
  %415 = zext nneg i8 %402 to i32
  %416 = getelementptr inbounds %struct.TransVert, ptr %390, i64 0, i32 4
  store i32 %415, ptr %416, align 4, !tbaa !111
  br i1 %369, label %420, label %417

417:                                              ; preds = %406
  %418 = or disjoint i32 %415, 4
  store i32 %418, ptr %416, align 4, !tbaa !111
  %419 = getelementptr inbounds %struct.TransVert, ptr %390, i64 0, i32 3
  tail call void @BKE_nurb_bezt_calc_plane(ptr noundef nonnull %375, ptr noundef nonnull %389, ptr noundef nonnull %419) #5
  br label %420

420:                                              ; preds = %417, %406
  %421 = getelementptr inbounds %struct.TransVert, ptr %390, i64 1
  %422 = load i32, ptr %7, align 8, !tbaa !72
  %423 = add nsw i32 %422, 1
  store i32 %423, ptr %7, align 8, !tbaa !72
  br label %424

424:                                              ; preds = %420, %395
  %425 = phi ptr [ %390, %395 ], [ %421, %420 ]
  %426 = load i8, ptr %396, align 4, !tbaa !58
  %427 = and i8 %426, 1
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %447, label %429

429:                                              ; preds = %424
  %430 = getelementptr inbounds %struct.TransVert, ptr %425, i64 0, i32 1
  %431 = getelementptr inbounds [3 x [3 x float]], ptr %389, i64 0, i64 1
  %432 = load float, ptr %431, align 4, !tbaa !62
  store float %432, ptr %430, align 4, !tbaa !62
  %433 = getelementptr inbounds [3 x [3 x float]], ptr %389, i64 0, i64 1, i64 1
  %434 = load float, ptr %433, align 4, !tbaa !62
  %435 = getelementptr inbounds %struct.TransVert, ptr %425, i64 0, i32 1, i64 1
  store float %434, ptr %435, align 4, !tbaa !62
  %436 = getelementptr inbounds [3 x [3 x float]], ptr %389, i64 0, i64 1, i64 2
  %437 = load float, ptr %436, align 4, !tbaa !62
  %438 = getelementptr inbounds %struct.TransVert, ptr %425, i64 0, i32 1, i64 2
  store float %437, ptr %438, align 4, !tbaa !62
  store ptr %431, ptr %425, align 8, !tbaa !60
  %439 = zext nneg i8 %427 to i32
  %440 = getelementptr inbounds %struct.TransVert, ptr %425, i64 0, i32 4
  store i32 %439, ptr %440, align 4, !tbaa !111
  br i1 %371, label %443, label %441

441:                                              ; preds = %429
  store i32 5, ptr %440, align 4, !tbaa !111
  %442 = getelementptr inbounds %struct.TransVert, ptr %425, i64 0, i32 3
  tail call void @BKE_nurb_bezt_calc_plane(ptr noundef nonnull %375, ptr noundef %389, ptr noundef nonnull %442) #5
  br label %443

443:                                              ; preds = %441, %429
  %444 = getelementptr inbounds %struct.TransVert, ptr %425, i64 1
  %445 = load i32, ptr %7, align 8, !tbaa !72
  %446 = add nsw i32 %445, 1
  store i32 %446, ptr %7, align 8, !tbaa !72
  br label %447

447:                                              ; preds = %443, %424
  %448 = phi ptr [ %444, %443 ], [ %425, %424 ]
  %449 = getelementptr inbounds %struct.BezTriple, ptr %389, i64 0, i32 9
  %450 = load i8, ptr %449, align 1, !tbaa !63
  %451 = and i8 %450, 1
  %452 = icmp eq i8 %451, 0
  %453 = or i1 %404, %452
  br i1 %453, label %473, label %454

454:                                              ; preds = %447
  %455 = getelementptr inbounds %struct.TransVert, ptr %448, i64 0, i32 1
  %456 = getelementptr inbounds [3 x [3 x float]], ptr %389, i64 0, i64 2
  %457 = load float, ptr %456, align 4, !tbaa !62
  store float %457, ptr %455, align 4, !tbaa !62
  %458 = getelementptr inbounds [3 x [3 x float]], ptr %389, i64 0, i64 2, i64 1
  %459 = load float, ptr %458, align 4, !tbaa !62
  %460 = getelementptr inbounds %struct.TransVert, ptr %448, i64 0, i32 1, i64 1
  store float %459, ptr %460, align 4, !tbaa !62
  %461 = getelementptr inbounds [3 x [3 x float]], ptr %389, i64 0, i64 2, i64 2
  %462 = load float, ptr %461, align 4, !tbaa !62
  %463 = getelementptr inbounds %struct.TransVert, ptr %448, i64 0, i32 1, i64 2
  store float %462, ptr %463, align 4, !tbaa !62
  store ptr %456, ptr %448, align 8, !tbaa !60
  %464 = zext nneg i8 %451 to i32
  %465 = getelementptr inbounds %struct.TransVert, ptr %448, i64 0, i32 4
  store i32 %464, ptr %465, align 4, !tbaa !111
  br i1 %373, label %469, label %466

466:                                              ; preds = %454
  %467 = or disjoint i32 %464, 4
  store i32 %467, ptr %465, align 4, !tbaa !111
  %468 = getelementptr inbounds %struct.TransVert, ptr %448, i64 0, i32 3
  tail call void @BKE_nurb_bezt_calc_plane(ptr noundef nonnull %375, ptr noundef %389, ptr noundef nonnull %468) #5
  br label %469

469:                                              ; preds = %466, %454
  %470 = getelementptr inbounds %struct.TransVert, ptr %448, i64 1
  %471 = load i32, ptr %7, align 8, !tbaa !72
  %472 = add nsw i32 %471, 1
  store i32 %472, ptr %7, align 8, !tbaa !72
  br label %473

473:                                              ; preds = %447, %469, %387
  %474 = phi ptr [ %390, %387 ], [ %448, %447 ], [ %470, %469 ]
  %475 = getelementptr inbounds %struct.BezTriple, ptr %389, i64 1
  %476 = icmp eq i32 %391, 0
  br i1 %476, label %516, label %387, !llvm.loop !122

477:                                              ; preds = %374
  %478 = getelementptr inbounds %struct.Nurb, ptr %375, i64 0, i32 7
  %479 = load i32, ptr %478, align 4, !tbaa !120
  %480 = mul nsw i32 %479, %381
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %516, label %482

482:                                              ; preds = %477
  %483 = getelementptr inbounds %struct.Nurb, ptr %375, i64 0, i32 17
  %484 = load ptr, ptr %483, align 8, !tbaa !123
  br label %485

485:                                              ; preds = %482, %512
  %486 = phi i32 [ %489, %512 ], [ %480, %482 ]
  %487 = phi ptr [ %514, %512 ], [ %484, %482 ]
  %488 = phi ptr [ %513, %512 ], [ %376, %482 ]
  %489 = add nsw i32 %486, -1
  %490 = getelementptr inbounds %struct.BPoint, ptr %487, i64 0, i32 4
  %491 = load i16, ptr %490, align 2, !tbaa !124
  %492 = icmp eq i16 %491, 0
  br i1 %492, label %493, label %512

493:                                              ; preds = %485
  %494 = getelementptr inbounds %struct.BPoint, ptr %487, i64 0, i32 3
  %495 = load i16, ptr %494, align 4, !tbaa !126
  %496 = and i16 %495, 1
  %497 = icmp eq i16 %496, 0
  br i1 %497, label %512, label %498

498:                                              ; preds = %493
  %499 = getelementptr inbounds %struct.TransVert, ptr %488, i64 0, i32 1
  %500 = load float, ptr %487, align 4, !tbaa !62
  store float %500, ptr %499, align 4, !tbaa !62
  %501 = getelementptr inbounds float, ptr %487, i64 1
  %502 = load float, ptr %501, align 4, !tbaa !62
  %503 = getelementptr inbounds %struct.TransVert, ptr %488, i64 0, i32 1, i64 1
  store float %502, ptr %503, align 4, !tbaa !62
  %504 = getelementptr inbounds float, ptr %487, i64 2
  %505 = load float, ptr %504, align 4, !tbaa !62
  %506 = getelementptr inbounds %struct.TransVert, ptr %488, i64 0, i32 1, i64 2
  store float %505, ptr %506, align 4, !tbaa !62
  store ptr %487, ptr %488, align 8, !tbaa !60
  %507 = zext nneg i16 %496 to i32
  %508 = getelementptr inbounds %struct.TransVert, ptr %488, i64 0, i32 4
  store i32 %507, ptr %508, align 4, !tbaa !111
  %509 = getelementptr inbounds %struct.TransVert, ptr %488, i64 1
  %510 = load i32, ptr %7, align 8, !tbaa !72
  %511 = add nsw i32 %510, 1
  store i32 %511, ptr %7, align 8, !tbaa !72
  br label %512

512:                                              ; preds = %493, %498, %485
  %513 = phi ptr [ %509, %498 ], [ %488, %493 ], [ %488, %485 ]
  %514 = getelementptr inbounds %struct.BPoint, ptr %487, i64 1
  %515 = icmp eq i32 %489, 0
  br i1 %515, label %516, label %485, !llvm.loop !127

516:                                              ; preds = %512, %473, %477, %382
  %517 = phi ptr [ %376, %382 ], [ %376, %477 ], [ %474, %473 ], [ %513, %512 ]
  %518 = load ptr, ptr %375, align 8, !tbaa !51
  %519 = icmp eq ptr %518, null
  br i1 %519, label %613, label %374, !llvm.loop !128

520:                                              ; preds = %3
  %521 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %522 = load ptr, ptr %521, align 8, !tbaa !40
  %523 = getelementptr inbounds %struct.MetaBall, ptr %522, i64 0, i32 4
  %524 = load ptr, ptr %523, align 8, !tbaa !129
  %525 = tail call i32 @BLI_countlist(ptr noundef %524) #5
  %526 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %527 = sext i32 %525 to i64
  %528 = mul nsw i64 %527, 48
  %529 = tail call ptr %526(i64 noundef %528, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #5
  store ptr %529, ptr %0, align 8, !tbaa !55
  %530 = load ptr, ptr %523, align 8, !tbaa !129
  %531 = load ptr, ptr %530, align 8, !tbaa !51
  %532 = icmp eq ptr %531, null
  br i1 %532, label %613, label %533

533:                                              ; preds = %520, %554
  %534 = phi ptr [ %556, %554 ], [ %531, %520 ]
  %535 = phi ptr [ %555, %554 ], [ %529, %520 ]
  %536 = getelementptr inbounds %struct.MetaElem, ptr %534, i64 0, i32 4
  %537 = load i16, ptr %536, align 2, !tbaa !131
  %538 = and i16 %537, 1
  %539 = icmp eq i16 %538, 0
  br i1 %539, label %554, label %540

540:                                              ; preds = %533
  %541 = getelementptr inbounds %struct.MetaElem, ptr %534, i64 0, i32 7
  store ptr %541, ptr %535, align 8, !tbaa !60
  %542 = getelementptr inbounds %struct.TransVert, ptr %535, i64 0, i32 1
  %543 = load float, ptr %541, align 4, !tbaa !62
  store float %543, ptr %542, align 4, !tbaa !62
  %544 = getelementptr inbounds %struct.MetaElem, ptr %534, i64 0, i32 8
  %545 = load float, ptr %544, align 4, !tbaa !62
  %546 = getelementptr inbounds %struct.TransVert, ptr %535, i64 0, i32 1, i64 1
  store float %545, ptr %546, align 4, !tbaa !62
  %547 = getelementptr inbounds %struct.MetaElem, ptr %534, i64 0, i32 9
  %548 = load float, ptr %547, align 4, !tbaa !62
  %549 = getelementptr inbounds %struct.TransVert, ptr %535, i64 0, i32 1, i64 2
  store float %548, ptr %549, align 4, !tbaa !62
  %550 = getelementptr inbounds %struct.TransVert, ptr %535, i64 0, i32 4
  store i32 1, ptr %550, align 4, !tbaa !111
  %551 = getelementptr inbounds %struct.TransVert, ptr %535, i64 1
  %552 = load i32, ptr %7, align 8, !tbaa !72
  %553 = add nsw i32 %552, 1
  store i32 %553, ptr %7, align 8, !tbaa !72
  br label %554

554:                                              ; preds = %540, %533
  %555 = phi ptr [ %551, %540 ], [ %535, %533 ]
  %556 = load ptr, ptr %534, align 8, !tbaa !51
  %557 = icmp eq ptr %556, null
  br i1 %557, label %613, label %533, !llvm.loop !133

558:                                              ; preds = %3
  %559 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %560 = load ptr, ptr %559, align 8, !tbaa !40
  %561 = getelementptr inbounds %struct.Lattice, ptr %560, i64 0, i32 26
  %562 = load ptr, ptr %561, align 8, !tbaa !77
  %563 = load ptr, ptr %562, align 8, !tbaa !79
  %564 = getelementptr inbounds %struct.Lattice, ptr %563, i64 0, i32 21
  %565 = load ptr, ptr %564, align 8, !tbaa !134
  %566 = getelementptr inbounds %struct.Lattice, ptr %563, i64 0, i32 2
  %567 = load i16, ptr %566, align 8, !tbaa !135
  %568 = sext i16 %567 to i32
  %569 = getelementptr inbounds %struct.Lattice, ptr %563, i64 0, i32 3
  %570 = load i16, ptr %569, align 2, !tbaa !136
  %571 = sext i16 %570 to i32
  %572 = mul nsw i32 %571, %568
  %573 = getelementptr inbounds %struct.Lattice, ptr %563, i64 0, i32 4
  %574 = load i16, ptr %573, align 4, !tbaa !137
  %575 = sext i16 %574 to i32
  %576 = mul nsw i32 %572, %575
  %577 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %578 = sext i32 %576 to i64
  %579 = mul nsw i64 %578, 48
  %580 = tail call ptr %577(i64 noundef %579, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #5
  store ptr %580, ptr %0, align 8, !tbaa !55
  %581 = icmp eq i32 %576, 0
  br i1 %581, label %613, label %582

582:                                              ; preds = %558, %609
  %583 = phi i32 [ %586, %609 ], [ %576, %558 ]
  %584 = phi ptr [ %611, %609 ], [ %565, %558 ]
  %585 = phi ptr [ %610, %609 ], [ %580, %558 ]
  %586 = add nsw i32 %583, -1
  %587 = getelementptr inbounds %struct.BPoint, ptr %584, i64 0, i32 3
  %588 = load i16, ptr %587, align 4, !tbaa !126
  %589 = and i16 %588, 1
  %590 = icmp eq i16 %589, 0
  br i1 %590, label %609, label %591

591:                                              ; preds = %582
  %592 = getelementptr inbounds %struct.BPoint, ptr %584, i64 0, i32 4
  %593 = load i16, ptr %592, align 2, !tbaa !124
  %594 = icmp eq i16 %593, 0
  br i1 %594, label %595, label %609

595:                                              ; preds = %591
  %596 = getelementptr inbounds %struct.TransVert, ptr %585, i64 0, i32 1
  %597 = load float, ptr %584, align 4, !tbaa !62
  store float %597, ptr %596, align 4, !tbaa !62
  %598 = getelementptr inbounds float, ptr %584, i64 1
  %599 = load float, ptr %598, align 4, !tbaa !62
  %600 = getelementptr inbounds %struct.TransVert, ptr %585, i64 0, i32 1, i64 1
  store float %599, ptr %600, align 4, !tbaa !62
  %601 = getelementptr inbounds float, ptr %584, i64 2
  %602 = load float, ptr %601, align 4, !tbaa !62
  %603 = getelementptr inbounds %struct.TransVert, ptr %585, i64 0, i32 1, i64 2
  store float %602, ptr %603, align 4, !tbaa !62
  store ptr %584, ptr %585, align 8, !tbaa !60
  %604 = zext nneg i16 %589 to i32
  %605 = getelementptr inbounds %struct.TransVert, ptr %585, i64 0, i32 4
  store i32 %604, ptr %605, align 4, !tbaa !111
  %606 = getelementptr inbounds %struct.TransVert, ptr %585, i64 1
  %607 = load i32, ptr %7, align 8, !tbaa !72
  %608 = add nsw i32 %607, 1
  store i32 %608, ptr %7, align 8, !tbaa !72
  br label %609

609:                                              ; preds = %591, %595, %582
  %610 = phi ptr [ %606, %595 ], [ %585, %591 ], [ %585, %582 ]
  %611 = getelementptr inbounds %struct.BPoint, ptr %584, i64 1
  %612 = icmp eq i32 %586, 0
  br i1 %612, label %613, label %582, !llvm.loop !138

613:                                              ; preds = %609, %554, %516, %327, %558, %520, %359, %235, %3, %234
  %614 = load i32, ptr %7, align 8, !tbaa !72
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %621

616:                                              ; preds = %613
  %617 = load ptr, ptr %0, align 8, !tbaa !55
  %618 = icmp eq ptr %617, null
  br i1 %618, label %621, label %619

619:                                              ; preds = %616
  %620 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %620(ptr noundef nonnull %617) #5
  store ptr null, ptr %0, align 8, !tbaa !55
  br label %621

621:                                              ; preds = %619, %616, %613
  %622 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 2
  store i32 %2, ptr %622, align 4, !tbaa !34
  ret void
}

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @set_mapped_co(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  %7 = getelementptr inbounds ptr, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = tail call ptr @BM_vert_at_index(ptr noundef %9, i32 noundef %1) #5
  %11 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !93
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %63, label %14

14:                                               ; preds = %5
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds %struct.TransVert, ptr %8, i64 %15, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !111
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = load float, ptr %2, align 4, !tbaa !62
  br i1 %19, label %21, label %30

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.TransVert, ptr %8, i64 %15, i32 2
  store float %20, ptr %22, align 4, !tbaa !62
  %23 = getelementptr inbounds float, ptr %2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !62
  %25 = getelementptr inbounds float, ptr %22, i64 1
  store float %24, ptr %25, align 4, !tbaa !62
  %26 = getelementptr inbounds float, ptr %2, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !62
  %28 = getelementptr inbounds float, ptr %22, i64 2
  store float %27, ptr %28, align 4, !tbaa !62
  %29 = or disjoint i32 %17, 2
  store i32 %29, ptr %16, align 4, !tbaa !111
  br label %63

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2
  %32 = load float, ptr %31, align 4, !tbaa !62
  %33 = fsub float %20, %32
  %34 = getelementptr inbounds float, ptr %2, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !62
  %36 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !62
  %38 = fsub float %35, %37
  %39 = getelementptr inbounds float, ptr %2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !62
  %41 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !62
  %43 = fsub float %40, %42
  %44 = fmul float %38, %38
  %45 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %43, float %43, float %45)
  %47 = getelementptr inbounds %struct.TransVert, ptr %8, i64 %15, i32 2
  %48 = load float, ptr %47, align 4, !tbaa !62
  %49 = fsub float %48, %32
  %50 = getelementptr inbounds float, ptr %47, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !62
  %52 = fsub float %51, %37
  %53 = getelementptr inbounds float, ptr %47, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !62
  %55 = fsub float %54, %42
  %56 = fmul float %52, %52
  %57 = tail call float @llvm.fmuladd.f32(float %49, float %49, float %56)
  %58 = tail call float @llvm.fmuladd.f32(float %55, float %55, float %57)
  %59 = fcmp olt float %46, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %30
  store float %20, ptr %47, align 4, !tbaa !62
  %61 = load float, ptr %34, align 4, !tbaa !62
  store float %61, ptr %50, align 4, !tbaa !62
  %62 = load float, ptr %39, align 4, !tbaa !62
  store float %62, ptr %53, align 4, !tbaa !62
  br label %63

63:                                               ; preds = %21, %60, %30, %5
  ret void
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_bezt_calc_plane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_transverts_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !55
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %5(ptr noundef nonnull %2) #5
  store ptr null, ptr %0, align 8, !tbaa !55
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !72
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_transverts_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !48
  switch i16 %6, label %7 [
    i16 25, label %8
    i16 22, label %8
    i16 1, label %8
    i16 3, label %8
    i16 2, label %8
    i16 5, label %8
  ]

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %4, %4, %4, %4, %4, %4, %1, %7
  %9 = phi i32 [ 0, %7 ], [ 0, %1 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ]
  ret i32 %9
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !39, i64 12}
!35 = !{!"TransVertStore", !36, i64 0, !39, i64 8, !39, i64 12}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !36, i64 296}
!41 = !{!"Object", !42, i64 0, !36, i64 120, !36, i64 128, !43, i64 136, !43, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !44, i64 312, !36, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !46, i64 616, !46, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !37, i64 1042, !37, i64 1043, !43, i64 1044, !37, i64 1046, !37, i64 1047, !46, i64 1048, !46, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !46, i64 1120, !43, i64 1124, !43, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !43, i64 1162, !37, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !43, i64 1266, !46, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !47, i64 1304, !47, i64 1312, !39, i64 1320, !39, i64 1324, !45, i64 1328, !45, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !45, i64 1400, !36, i64 1416}
!42 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!43 = !{!"short", !37, i64 0}
!44 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!"float", !37, i64 0}
!47 = !{!"long", !37, i64 0}
!48 = !{!41, !43, i64 136}
!49 = !{!50, !36, i64 0}
!50 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !36, i64 48, !47, i64 56, !36, i64 64, !39, i64 72, !36, i64 80, !39, i64 88, !43, i64 92, !43, i64 94, !36, i64 96, !39, i64 104}
!51 = !{!36, !36, i64 0}
!52 = !{!53, !36, i64 72}
!53 = !{!"Nurb", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !39, i64 24, !39, i64 28, !37, i64 32, !43, i64 36, !43, i64 38, !43, i64 40, !43, i64 42, !43, i64 44, !43, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !43, i64 80, !43, i64 82, !39, i64 84}
!54 = !{!53, !39, i64 24}
!55 = !{!35, !36, i64 0}
!56 = !{!57, !37, i64 54}
!57 = !{!"BezTriple", !37, i64 0, !46, i64 36, !46, i64 40, !46, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !46, i64 56, !46, i64 60, !46, i64 64, !37, i64 68}
!58 = !{!57, !37, i64 52}
!59 = !{!57, !37, i64 51}
!60 = !{!61, !36, i64 0}
!61 = !{!"TransVert", !36, i64 0, !37, i64 8, !37, i64 20, !37, i64 32, !39, i64 44}
!62 = !{!46, !46, i64 0}
!63 = !{!57, !37, i64 53}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = distinct !{!67, !65, !66}
!68 = !{!69, !36, i64 160}
!69 = !{!"bArmature", !42, i64 0, !36, i64 120, !45, i64 128, !45, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !43, i64 208, !43, i64 210, !39, i64 212, !39, i64 216, !39, i64 220, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252}
!70 = !{!71, !39, i64 132}
!71 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !46, i64 104, !37, i64 108, !37, i64 120, !39, i64 132, !39, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !43, i64 180}
!72 = !{!35, !39, i64 8}
!73 = distinct !{!73, !65, !66}
!74 = !{!71, !36, i64 24}
!75 = distinct !{!75, !65, !66}
!76 = !{!69, !39, i64 192}
!77 = !{!78, !36, i64 272}
!78 = !{!"Lattice", !42, i64 0, !36, i64 120, !43, i64 128, !43, i64 130, !43, i64 132, !43, i64 134, !43, i64 136, !43, i64 138, !43, i64 140, !43, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !39, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!79 = !{!80, !36, i64 0}
!80 = !{!"EditLatt", !36, i64 0, !39, i64 8, !37, i64 12}
!81 = !{!78, !43, i64 134}
!82 = !{!50, !43, i64 92}
!83 = !{!84, !37, i64 60}
!84 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 60}
!85 = !{!84, !36, i64 40}
!86 = !{!84, !36, i64 48}
!87 = !{!88, !36, i64 32}
!88 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 136, !89, i64 144, !89, i64 344, !89, i64 544, !89, i64 744, !43, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !45, i64 960, !36, i64 976, !45, i64 984, !36, i64 1000}
!89 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!90 = !{!37, !37, i64 0}
!91 = !{!92, !37, i64 13}
!92 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!93 = !{!92, !39, i64 8}
!94 = distinct !{!94, !65, !66}
!95 = distinct !{!95, !65, !66}
!96 = !{!88, !36, i64 40}
!97 = !{!98, !36, i64 24}
!98 = !{!"BMEdge", !92, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !99, i64 48, !99, i64 64}
!99 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!100 = !{!98, !36, i64 32}
!101 = distinct !{!101, !65, !66}
!102 = distinct !{!102, !65, !66}
!103 = distinct !{!103, !65, !66}
!104 = !{!88, !36, i64 56}
!105 = !{!106, !36, i64 16}
!106 = !{!"BMLoop", !92, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!107 = distinct !{!107, !65, !66}
!108 = distinct !{!108, !65, !66}
!109 = distinct !{!109, !65, !66}
!110 = !{!88, !37, i64 28}
!111 = !{!61, !39, i64 44}
!112 = distinct !{!112, !65, !66}
!113 = !{!50, !36, i64 48}
!114 = !{!115, !36, i64 1488}
!115 = !{!"DerivedMesh", !89, i64 0, !89, i64 200, !89, i64 400, !89, i64 600, !89, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !36, i64 1032, !36, i64 1040, !39, i64 1048, !46, i64 1052, !39, i64 1056, !39, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!116 = !{!69, !39, i64 216}
!117 = !{!71, !39, i64 136}
!118 = distinct !{!118, !65, !66}
!119 = !{!53, !43, i64 16}
!120 = !{!53, !39, i64 28}
!121 = distinct !{!121, !65, !66}
!122 = distinct !{!122, !65, !66}
!123 = !{!53, !36, i64 64}
!124 = !{!125, !43, i64 26}
!125 = !{!"BPoint", !37, i64 0, !46, i64 16, !46, i64 20, !43, i64 24, !43, i64 26, !46, i64 28, !46, i64 32}
!126 = !{!125, !43, i64 24}
!127 = distinct !{!127, !65, !66}
!128 = distinct !{!128, !65, !66}
!129 = !{!130, !36, i64 160}
!130 = !{!"MetaBall", !42, i64 0, !36, i64 120, !45, i64 128, !45, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !43, i64 186, !43, i64 188, !43, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !46, i64 228, !46, i64 232, !46, i64 236, !36, i64 240}
!131 = !{!132, !43, i64 26}
!132 = !{!"MetaElem", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !46, i64 32, !46, i64 36, !46, i64 40, !37, i64 44, !46, i64 60, !46, i64 64, !46, i64 68, !46, i64 72, !46, i64 76, !46, i64 80, !46, i64 84, !36, i64 88, !36, i64 96}
!133 = distinct !{!133, !65, !66}
!134 = !{!78, !36, i64 176}
!135 = !{!78, !43, i64 128}
!136 = !{!78, !43, i64 130}
!137 = !{!78, !43, i64 132}
!138 = distinct !{!138, !65, !66}
