; ModuleID = 'igcref.c'
source_filename = "igcref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.struct_shared_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_string_s = type { ptr, i32 }
%struct.gc_state_s = type { %struct.chunk_locator_s, %union.vm_spaces_s, i32, i32 }
%struct.chunk_locator_s = type { ptr, ptr }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t }
%union._f = type { %struct._l }
%struct._l = type { i32 }
%union._t = type { ptr }

@.str = private unnamed_addr constant [5 x i8] c"refs\00", align 1
@refs_shared_procs = internal constant %struct.struct_shared_procs_s { ptr @refs_clear_reloc, ptr @refs_set_reloc, ptr @refs_compact }, align 8
@st_refs = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 16, ptr @.str, ptr @refs_shared_procs, ptr @refs_clear_marks, ptr null, ptr @refs_do_reloc, ptr null }, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@types_using_size = internal unnamed_addr global [64 x i8] zeroinitializer, align 16
@st_bytes = external constant %struct.gs_memory_struct_type_s, align 8
@switch.table.gs_igcref_init = private unnamed_addr constant [18 x i8] c"\01\01\01\01\00\00\00\00\00\00\01\01\01\00\00\01\00\01", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @refs_clear_marks(ptr noundef %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  br label %5

5:                                                ; preds = %16, %2
  %6 = phi ptr [ %0, %2 ], [ %17, %16 ]
  %7 = load i16, ptr %6, align 2, !tbaa !5
  %8 = icmp ugt i16 %7, 16383
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = and i16 %7, -4097
  store i16 %10, ptr %6, align 2, !tbaa !5
  %11 = getelementptr inbounds i16, ptr %6, i64 1
  br label %16

12:                                               ; preds = %5
  %13 = and i16 %7, 16382
  store i16 %13, ptr %6, align 8, !tbaa !9
  %14 = getelementptr inbounds i16, ptr %6, i64 8
  %15 = icmp ult ptr %14, %4
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %9
  %17 = phi ptr [ %11, %9 ], [ %14, %12 ]
  br label %5, !llvm.loop !12

18:                                               ; preds = %12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @refs_do_reloc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  tail call void @gs_reloc_refs(ptr noundef %0, ptr noundef %5, ptr noundef %2)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ref_struct_clear_marks(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %0, %2 ]
  %8 = load i16, ptr %7, align 8, !tbaa !9
  %9 = and i16 %8, -2
  store i16 %9, ptr %7, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.ref_s, ptr %7, i64 1
  %11 = icmp ult ptr %10, %4
  br i1 %11, label %6, label %12, !llvm.loop !14

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @ref_struct_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 {
  %5 = lshr i32 %1, 4
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %8
  store ptr %9, ptr %3, align 8, !tbaa !15
  br label %10

10:                                               ; preds = %4, %7
  %11 = phi ptr [ @ptr_ref_procs, %7 ], [ null, %4 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local void @ref_struct_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  tail call void @gs_reloc_refs(ptr noundef %0, ptr noundef %5, ptr noundef %2)
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %11, %7 ], [ %0, %3 ]
  %9 = load i16, ptr %8, align 8, !tbaa !9
  %10 = and i16 %9, -2
  store i16 %10, ptr %8, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.ref_s, ptr %8, i64 1
  %12 = icmp ult ptr %11, %5
  br i1 %12, label %7, label %13, !llvm.loop !14

13:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_reloc_refs(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.gs_string_s, align 8
  %5 = getelementptr inbounds %struct.gc_state_s, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %7 = icmp ult ptr %0, %1
  br i1 %7, label %8, label %464

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gc_state_s, ptr %2, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !21
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.gs_string_s, ptr %4, i64 0, i32 1
  br label %13

13:                                               ; preds = %8, %460
  %14 = phi ptr [ %0, %8 ], [ %462, %460 ]
  %15 = load i16, ptr %14, align 2, !tbaa !5
  %16 = icmp ugt i16 %15, 16383
  br i1 %16, label %460, label %17, !llvm.loop !22

17:                                               ; preds = %13
  %18 = zext nneg i16 %15 to i32
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i1 %11, i1 false
  %22 = and i32 %18, 12
  %23 = icmp ult i32 %22, %6
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %460, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds i8, ptr %14, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !23
  switch i8 %27, label %460 [
    i8 3, label %28
    i8 19, label %32
    i8 10, label %36
    i8 8, label %36
    i8 9, label %36
    i8 2, label %40
    i8 4, label %103
    i8 5, label %241
    i8 6, label %308
    i8 13, label %381
    i8 18, label %390
    i8 20, label %397
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !23
  %31 = call ptr @gs_reloc_struct_ptr(ptr noundef %30, ptr noundef %2) #11
  store ptr %31, ptr %29, align 8, !tbaa !23
  br label %460

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !23
  %35 = call ptr @gs_reloc_struct_ptr(ptr noundef %34, ptr noundef %2) #11
  store ptr %35, ptr %33, align 8, !tbaa !23
  br label %460

36:                                               ; preds = %25, %25, %25
  %37 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !23
  %39 = call ptr @gs_reloc_struct_ptr(ptr noundef %38, ptr noundef %2) #11
  store ptr %39, ptr %37, align 8, !tbaa !23
  br label %460

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !23
  %43 = load i16, ptr %42, align 2, !tbaa !5
  %44 = zext i16 %43 to i32
  %45 = icmp ugt i16 %43, 16383
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = and i32 %44, 4096
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %101, label %52

49:                                               ; preds = %40
  %50 = and i32 %44, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %101, label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %75
  %54 = phi ptr [ %78, %75 ], [ %42, %52 ]
  %55 = phi i32 [ %77, %75 ], [ 0, %52 ]
  %56 = load i16, ptr %54, align 2, !tbaa !5
  %57 = icmp ugt i16 %56, 16383
  br i1 %57, label %58, label %79

58:                                               ; preds = %97, %53
  %59 = phi i16 [ %56, %53 ], [ %99, %97 ]
  %60 = phi ptr [ %54, %53 ], [ %98, %97 ]
  %61 = zext i16 %59 to i32
  %62 = and i32 %61, 4096
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = icmp eq i16 %59, 28671
  br i1 %65, label %73, label %66

66:                                               ; preds = %64
  %67 = and i32 %61, 4095
  %68 = zext nneg i32 %67 to i64
  %69 = sub nsw i64 0, %68
  %70 = getelementptr inbounds i8, ptr %42, i64 %69
  %71 = zext i32 %55 to i64
  %72 = getelementptr inbounds i8, ptr %70, i64 %71
  br label %101

73:                                               ; preds = %64
  %74 = add i32 %55, 8
  br label %75

75:                                               ; preds = %58, %73
  %76 = phi i64 [ 4, %73 ], [ 1, %58 ]
  %77 = phi i32 [ %74, %73 ], [ %55, %58 ]
  %78 = getelementptr inbounds i16, ptr %60, i64 %76
  br label %53, !llvm.loop !24

79:                                               ; preds = %53, %97
  %80 = phi ptr [ %98, %97 ], [ %54, %53 ]
  %81 = getelementptr inbounds i8, ptr %80, i64 1
  %82 = load i8, ptr %81, align 1, !tbaa !23
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [64 x i8], ptr @types_using_size, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !23
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.tas_s, ptr %80, i64 0, i32 1
  %89 = load i16, ptr %88, align 2, !tbaa !25
  %90 = icmp eq i16 %89, 0
  %91 = zext i16 %89 to i64
  %92 = sub nsw i64 0, %91
  %93 = getelementptr inbounds i8, ptr %42, i64 %92
  %94 = zext i32 %55 to i64
  %95 = getelementptr inbounds i8, ptr %93, i64 %94
  %96 = select i1 %90, ptr %42, ptr %95
  br label %101

97:                                               ; preds = %79
  %98 = getelementptr inbounds i16, ptr %80, i64 8
  %99 = load i16, ptr %98, align 2, !tbaa !5
  %100 = icmp ugt i16 %99, 16383
  br i1 %100, label %58, label %79, !llvm.loop !24

101:                                              ; preds = %46, %49, %66, %87
  %102 = phi ptr [ %72, %66 ], [ %96, %87 ], [ %42, %46 ], [ %42, %49 ]
  store ptr %102, ptr %41, align 8, !tbaa !23
  br label %460

103:                                              ; preds = %25
  %104 = getelementptr inbounds %struct.tas_s, ptr %14, i64 0, i32 1
  %105 = load i16, ptr %104, align 2, !tbaa !25
  %106 = zext i16 %105 to i64
  %107 = icmp eq i16 %105, 0
  br i1 %107, label %460, label %108

108:                                              ; preds = %103
  %109 = icmp ult i16 %105, 50
  br i1 %109, label %110, label %173

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !23
  %113 = load i16, ptr %112, align 2, !tbaa !5
  %114 = zext i16 %113 to i32
  %115 = icmp ugt i16 %113, 16383
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = and i32 %114, 4096
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %171, label %122

119:                                              ; preds = %110
  %120 = and i32 %114, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %171, label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122, %145
  %124 = phi ptr [ %148, %145 ], [ %112, %122 ]
  %125 = phi i32 [ %147, %145 ], [ 0, %122 ]
  %126 = load i16, ptr %124, align 2, !tbaa !5
  %127 = icmp ugt i16 %126, 16383
  br i1 %127, label %128, label %149

128:                                              ; preds = %167, %123
  %129 = phi i16 [ %126, %123 ], [ %169, %167 ]
  %130 = phi ptr [ %124, %123 ], [ %168, %167 ]
  %131 = zext i16 %129 to i32
  %132 = and i32 %131, 4096
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %128
  %135 = icmp eq i16 %129, 28671
  br i1 %135, label %143, label %136

136:                                              ; preds = %134
  %137 = and i32 %131, 4095
  %138 = zext nneg i32 %137 to i64
  %139 = sub nsw i64 0, %138
  %140 = getelementptr inbounds i8, ptr %112, i64 %139
  %141 = zext i32 %125 to i64
  %142 = getelementptr inbounds i8, ptr %140, i64 %141
  br label %171

143:                                              ; preds = %134
  %144 = add i32 %125, 8
  br label %145

145:                                              ; preds = %128, %143
  %146 = phi i64 [ 4, %143 ], [ 1, %128 ]
  %147 = phi i32 [ %144, %143 ], [ %125, %128 ]
  %148 = getelementptr inbounds i16, ptr %130, i64 %146
  br label %123, !llvm.loop !24

149:                                              ; preds = %123, %167
  %150 = phi ptr [ %168, %167 ], [ %124, %123 ]
  %151 = getelementptr inbounds i8, ptr %150, i64 1
  %152 = load i8, ptr %151, align 1, !tbaa !23
  %153 = zext i8 %152 to i64
  %154 = getelementptr inbounds [64 x i8], ptr @types_using_size, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !23
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.tas_s, ptr %150, i64 0, i32 1
  %159 = load i16, ptr %158, align 2, !tbaa !25
  %160 = icmp eq i16 %159, 0
  %161 = zext i16 %159 to i64
  %162 = sub nsw i64 0, %161
  %163 = getelementptr inbounds i8, ptr %112, i64 %162
  %164 = zext i32 %125 to i64
  %165 = getelementptr inbounds i8, ptr %163, i64 %164
  %166 = select i1 %160, ptr %112, ptr %165
  br label %171

167:                                              ; preds = %149
  %168 = getelementptr inbounds i16, ptr %150, i64 8
  %169 = load i16, ptr %168, align 2, !tbaa !5
  %170 = icmp ugt i16 %169, 16383
  br i1 %170, label %128, label %149, !llvm.loop !24

171:                                              ; preds = %116, %119, %136, %157
  %172 = phi ptr [ %142, %136 ], [ %166, %157 ], [ %112, %116 ], [ %112, %119 ]
  store ptr %172, ptr %111, align 8, !tbaa !23
  br label %460

173:                                              ; preds = %108
  %174 = add nuw nsw i64 %106, 4294967295
  %175 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !23
  %177 = and i64 %174, 4294967295
  %178 = getelementptr inbounds %struct.ref_s, ptr %176, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !5
  %180 = zext i16 %179 to i32
  %181 = icmp ugt i16 %179, 16383
  br i1 %181, label %182, label %185

182:                                              ; preds = %173
  %183 = and i32 %180, 4096
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %237, label %188

185:                                              ; preds = %173
  %186 = and i32 %180, 1
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %237, label %188

188:                                              ; preds = %185, %182
  br label %189

189:                                              ; preds = %188, %211
  %190 = phi ptr [ %214, %211 ], [ %178, %188 ]
  %191 = phi i32 [ %213, %211 ], [ 0, %188 ]
  %192 = load i16, ptr %190, align 2, !tbaa !5
  %193 = icmp ugt i16 %192, 16383
  br i1 %193, label %194, label %215

194:                                              ; preds = %233, %189
  %195 = phi i16 [ %192, %189 ], [ %235, %233 ]
  %196 = phi ptr [ %190, %189 ], [ %234, %233 ]
  %197 = zext i16 %195 to i32
  %198 = and i32 %197, 4096
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  %201 = icmp eq i16 %195, 28671
  br i1 %201, label %209, label %202

202:                                              ; preds = %200
  %203 = and i32 %197, 4095
  %204 = zext nneg i32 %203 to i64
  %205 = sub nsw i64 0, %204
  %206 = getelementptr inbounds i8, ptr %178, i64 %205
  %207 = zext i32 %191 to i64
  %208 = getelementptr inbounds i8, ptr %206, i64 %207
  br label %237

209:                                              ; preds = %200
  %210 = add i32 %191, 8
  br label %211

211:                                              ; preds = %194, %209
  %212 = phi i64 [ 4, %209 ], [ 1, %194 ]
  %213 = phi i32 [ %210, %209 ], [ %191, %194 ]
  %214 = getelementptr inbounds i16, ptr %196, i64 %212
  br label %189, !llvm.loop !24

215:                                              ; preds = %189, %233
  %216 = phi ptr [ %234, %233 ], [ %190, %189 ]
  %217 = getelementptr inbounds i8, ptr %216, i64 1
  %218 = load i8, ptr %217, align 1, !tbaa !23
  %219 = zext i8 %218 to i64
  %220 = getelementptr inbounds [64 x i8], ptr @types_using_size, i64 0, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !23
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %215
  %224 = getelementptr inbounds %struct.tas_s, ptr %216, i64 0, i32 1
  %225 = load i16, ptr %224, align 2, !tbaa !25
  %226 = icmp eq i16 %225, 0
  %227 = zext i16 %225 to i64
  %228 = sub nsw i64 0, %227
  %229 = getelementptr inbounds i8, ptr %178, i64 %228
  %230 = zext i32 %191 to i64
  %231 = getelementptr inbounds i8, ptr %229, i64 %230
  %232 = select i1 %226, ptr %178, ptr %231
  br label %237

233:                                              ; preds = %215
  %234 = getelementptr inbounds i16, ptr %216, i64 8
  %235 = load i16, ptr %234, align 2, !tbaa !5
  %236 = icmp ugt i16 %235, 16383
  br i1 %236, label %194, label %215, !llvm.loop !24

237:                                              ; preds = %182, %185, %202, %223
  %238 = phi ptr [ %208, %202 ], [ %232, %223 ], [ %178, %182 ], [ %178, %185 ]
  %239 = sub nsw i64 0, %177
  %240 = getelementptr inbounds %struct.ref_s, ptr %238, i64 %239
  store ptr %240, ptr %175, align 8, !tbaa !23
  br label %460

241:                                              ; preds = %25
  %242 = getelementptr inbounds %struct.tas_s, ptr %14, i64 0, i32 1
  %243 = load i16, ptr %242, align 2, !tbaa !25
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %460, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !23
  %248 = load i16, ptr %247, align 2, !tbaa !5
  %249 = zext i16 %248 to i32
  %250 = icmp ugt i16 %248, 16383
  br i1 %250, label %251, label %254

251:                                              ; preds = %245
  %252 = and i32 %249, 4096
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %306, label %257

254:                                              ; preds = %245
  %255 = and i32 %249, 1
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %306, label %257

257:                                              ; preds = %254, %251
  br label %258

258:                                              ; preds = %257, %280
  %259 = phi ptr [ %283, %280 ], [ %247, %257 ]
  %260 = phi i32 [ %282, %280 ], [ 0, %257 ]
  %261 = load i16, ptr %259, align 2, !tbaa !5
  %262 = icmp ugt i16 %261, 16383
  br i1 %262, label %263, label %284

263:                                              ; preds = %302, %258
  %264 = phi i16 [ %261, %258 ], [ %304, %302 ]
  %265 = phi ptr [ %259, %258 ], [ %303, %302 ]
  %266 = zext i16 %264 to i32
  %267 = and i32 %266, 4096
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %263
  %270 = icmp eq i16 %264, 28671
  br i1 %270, label %278, label %271

271:                                              ; preds = %269
  %272 = and i32 %266, 4095
  %273 = zext nneg i32 %272 to i64
  %274 = sub nsw i64 0, %273
  %275 = getelementptr inbounds i8, ptr %247, i64 %274
  %276 = zext i32 %260 to i64
  %277 = getelementptr inbounds i8, ptr %275, i64 %276
  br label %306

278:                                              ; preds = %269
  %279 = add i32 %260, 8
  br label %280

280:                                              ; preds = %263, %278
  %281 = phi i64 [ 4, %278 ], [ 1, %263 ]
  %282 = phi i32 [ %279, %278 ], [ %260, %263 ]
  %283 = getelementptr inbounds i16, ptr %265, i64 %281
  br label %258, !llvm.loop !24

284:                                              ; preds = %258, %302
  %285 = phi ptr [ %303, %302 ], [ %259, %258 ]
  %286 = getelementptr inbounds i8, ptr %285, i64 1
  %287 = load i8, ptr %286, align 1, !tbaa !23
  %288 = zext i8 %287 to i64
  %289 = getelementptr inbounds [64 x i8], ptr @types_using_size, i64 0, i64 %288
  %290 = load i8, ptr %289, align 1, !tbaa !23
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %292, label %302

292:                                              ; preds = %284
  %293 = getelementptr inbounds %struct.tas_s, ptr %285, i64 0, i32 1
  %294 = load i16, ptr %293, align 2, !tbaa !25
  %295 = icmp eq i16 %294, 0
  %296 = zext i16 %294 to i64
  %297 = sub nsw i64 0, %296
  %298 = getelementptr inbounds i8, ptr %247, i64 %297
  %299 = zext i32 %260 to i64
  %300 = getelementptr inbounds i8, ptr %298, i64 %299
  %301 = select i1 %295, ptr %247, ptr %300
  br label %306

302:                                              ; preds = %284
  %303 = getelementptr inbounds i16, ptr %285, i64 8
  %304 = load i16, ptr %303, align 2, !tbaa !5
  %305 = icmp ugt i16 %304, 16383
  br i1 %305, label %263, label %284, !llvm.loop !24

306:                                              ; preds = %251, %254, %271, %292
  %307 = phi ptr [ %277, %271 ], [ %301, %292 ], [ %247, %251 ], [ %247, %254 ]
  store ptr %307, ptr %246, align 8, !tbaa !23
  br label %460

308:                                              ; preds = %25
  %309 = getelementptr inbounds %struct.tas_s, ptr %14, i64 0, i32 1
  %310 = load i16, ptr %309, align 2, !tbaa !25
  %311 = icmp eq i16 %310, 0
  br i1 %311, label %460, label %312

312:                                              ; preds = %308
  %313 = zext i16 %310 to i64
  %314 = add nuw nsw i64 %313, 4294967295
  %315 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !23
  %317 = and i64 %314, 4294967295
  %318 = getelementptr inbounds i16, ptr %316, i64 %317
  %319 = load i16, ptr %318, align 2, !tbaa !5
  %320 = zext i16 %319 to i32
  %321 = icmp ugt i16 %319, 16383
  br i1 %321, label %322, label %325

322:                                              ; preds = %312
  %323 = and i32 %320, 4096
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %377, label %328

325:                                              ; preds = %312
  %326 = and i32 %320, 1
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %377, label %328

328:                                              ; preds = %325, %322
  br label %329

329:                                              ; preds = %328, %351
  %330 = phi ptr [ %354, %351 ], [ %318, %328 ]
  %331 = phi i32 [ %353, %351 ], [ 0, %328 ]
  %332 = load i16, ptr %330, align 2, !tbaa !5
  %333 = icmp ugt i16 %332, 16383
  br i1 %333, label %334, label %355

334:                                              ; preds = %373, %329
  %335 = phi i16 [ %332, %329 ], [ %375, %373 ]
  %336 = phi ptr [ %330, %329 ], [ %374, %373 ]
  %337 = zext i16 %335 to i32
  %338 = and i32 %337, 4096
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %351

340:                                              ; preds = %334
  %341 = icmp eq i16 %335, 28671
  br i1 %341, label %349, label %342

342:                                              ; preds = %340
  %343 = and i32 %337, 4095
  %344 = zext nneg i32 %343 to i64
  %345 = sub nsw i64 0, %344
  %346 = getelementptr inbounds i8, ptr %318, i64 %345
  %347 = zext i32 %331 to i64
  %348 = getelementptr inbounds i8, ptr %346, i64 %347
  br label %377

349:                                              ; preds = %340
  %350 = add i32 %331, 8
  br label %351

351:                                              ; preds = %334, %349
  %352 = phi i64 [ 4, %349 ], [ 1, %334 ]
  %353 = phi i32 [ %350, %349 ], [ %331, %334 ]
  %354 = getelementptr inbounds i16, ptr %336, i64 %352
  br label %329, !llvm.loop !24

355:                                              ; preds = %329, %373
  %356 = phi ptr [ %374, %373 ], [ %330, %329 ]
  %357 = getelementptr inbounds i8, ptr %356, i64 1
  %358 = load i8, ptr %357, align 1, !tbaa !23
  %359 = zext i8 %358 to i64
  %360 = getelementptr inbounds [64 x i8], ptr @types_using_size, i64 0, i64 %359
  %361 = load i8, ptr %360, align 1, !tbaa !23
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %363, label %373

363:                                              ; preds = %355
  %364 = getelementptr inbounds %struct.tas_s, ptr %356, i64 0, i32 1
  %365 = load i16, ptr %364, align 2, !tbaa !25
  %366 = icmp eq i16 %365, 0
  %367 = zext i16 %365 to i64
  %368 = sub nsw i64 0, %367
  %369 = getelementptr inbounds i8, ptr %318, i64 %368
  %370 = zext i32 %331 to i64
  %371 = getelementptr inbounds i8, ptr %369, i64 %370
  %372 = select i1 %366, ptr %318, ptr %371
  br label %377

373:                                              ; preds = %355
  %374 = getelementptr inbounds i16, ptr %356, i64 8
  %375 = load i16, ptr %374, align 2, !tbaa !5
  %376 = icmp ugt i16 %375, 16383
  br i1 %376, label %334, label %355, !llvm.loop !24

377:                                              ; preds = %322, %325, %342, %363
  %378 = phi ptr [ %348, %342 ], [ %372, %363 ], [ %318, %322 ], [ %318, %325 ]
  %379 = sub nsw i64 0, %317
  %380 = getelementptr inbounds i16, ptr %378, i64 %379
  store ptr %380, ptr %315, align 8, !tbaa !23
  br label %460

381:                                              ; preds = %25
  %382 = call ptr @name_ref_sub_table(ptr noundef nonnull %14) #11
  %383 = call ptr @gs_reloc_struct_ptr(ptr noundef %382, ptr noundef %2) #11
  %384 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %385 = load ptr, ptr %384, align 8, !tbaa !23
  %386 = ptrtoint ptr %385 to i64
  %387 = ptrtoint ptr %382 to i64
  %388 = sub i64 %386, %387
  %389 = getelementptr inbounds i8, ptr %383, i64 %388
  store ptr %389, ptr %384, align 8, !tbaa !23
  br label %460

390:                                              ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %391 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !23
  store ptr %392, ptr %4, align 8, !tbaa !26
  %393 = getelementptr inbounds %struct.tas_s, ptr %14, i64 0, i32 1
  %394 = load i16, ptr %393, align 2, !tbaa !25
  %395 = zext i16 %394 to i32
  store i32 %395, ptr %12, align 8, !tbaa !28
  call void @gs_reloc_string(ptr noundef nonnull %4, ptr noundef %2) #11
  %396 = load ptr, ptr %4, align 8, !tbaa !26
  store ptr %396, ptr %391, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %460

397:                                              ; preds = %25
  %398 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !23
  %400 = load i16, ptr %399, align 2, !tbaa !5
  %401 = zext i16 %400 to i32
  %402 = icmp ugt i16 %400, 16383
  br i1 %402, label %403, label %406

403:                                              ; preds = %397
  %404 = and i32 %401, 4096
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %458, label %409

406:                                              ; preds = %397
  %407 = and i32 %401, 1
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %458, label %409

409:                                              ; preds = %406, %403
  br label %410

410:                                              ; preds = %409, %432
  %411 = phi ptr [ %435, %432 ], [ %399, %409 ]
  %412 = phi i32 [ %434, %432 ], [ 0, %409 ]
  %413 = load i16, ptr %411, align 2, !tbaa !5
  %414 = icmp ugt i16 %413, 16383
  br i1 %414, label %415, label %436

415:                                              ; preds = %454, %410
  %416 = phi i16 [ %413, %410 ], [ %456, %454 ]
  %417 = phi ptr [ %411, %410 ], [ %455, %454 ]
  %418 = zext i16 %416 to i32
  %419 = and i32 %418, 4096
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %432

421:                                              ; preds = %415
  %422 = icmp eq i16 %416, 28671
  br i1 %422, label %430, label %423

423:                                              ; preds = %421
  %424 = and i32 %418, 4095
  %425 = zext nneg i32 %424 to i64
  %426 = sub nsw i64 0, %425
  %427 = getelementptr inbounds i8, ptr %399, i64 %426
  %428 = zext i32 %412 to i64
  %429 = getelementptr inbounds i8, ptr %427, i64 %428
  br label %458

430:                                              ; preds = %421
  %431 = add i32 %412, 8
  br label %432

432:                                              ; preds = %415, %430
  %433 = phi i64 [ 4, %430 ], [ 1, %415 ]
  %434 = phi i32 [ %431, %430 ], [ %412, %415 ]
  %435 = getelementptr inbounds i16, ptr %417, i64 %433
  br label %410, !llvm.loop !24

436:                                              ; preds = %410, %454
  %437 = phi ptr [ %455, %454 ], [ %411, %410 ]
  %438 = getelementptr inbounds i8, ptr %437, i64 1
  %439 = load i8, ptr %438, align 1, !tbaa !23
  %440 = zext i8 %439 to i64
  %441 = getelementptr inbounds [64 x i8], ptr @types_using_size, i64 0, i64 %440
  %442 = load i8, ptr %441, align 1, !tbaa !23
  %443 = icmp eq i8 %442, 0
  br i1 %443, label %444, label %454

444:                                              ; preds = %436
  %445 = getelementptr inbounds %struct.tas_s, ptr %437, i64 0, i32 1
  %446 = load i16, ptr %445, align 2, !tbaa !25
  %447 = icmp eq i16 %446, 0
  %448 = zext i16 %446 to i64
  %449 = sub nsw i64 0, %448
  %450 = getelementptr inbounds i8, ptr %399, i64 %449
  %451 = zext i32 %412 to i64
  %452 = getelementptr inbounds i8, ptr %450, i64 %451
  %453 = select i1 %447, ptr %399, ptr %452
  br label %458

454:                                              ; preds = %436
  %455 = getelementptr inbounds i16, ptr %437, i64 8
  %456 = load i16, ptr %455, align 2, !tbaa !5
  %457 = icmp ugt i16 %456, 16383
  br i1 %457, label %415, label %436, !llvm.loop !24

458:                                              ; preds = %403, %406, %423, %444
  %459 = phi ptr [ %429, %423 ], [ %453, %444 ], [ %399, %403 ], [ %399, %406 ]
  store ptr %459, ptr %398, align 8, !tbaa !23
  br label %460

460:                                              ; preds = %17, %241, %306, %25, %458, %390, %381, %101, %36, %32, %28, %171, %237, %103, %377, %308, %13
  %461 = phi i64 [ 1, %13 ], [ 8, %308 ], [ 8, %377 ], [ 8, %103 ], [ 8, %237 ], [ 8, %171 ], [ 8, %28 ], [ 8, %32 ], [ 8, %36 ], [ 8, %101 ], [ 8, %381 ], [ 8, %390 ], [ 8, %458 ], [ 8, %25 ], [ 8, %306 ], [ 8, %241 ], [ 8, %17 ]
  %462 = getelementptr inbounds i16, ptr %14, i64 %461
  %463 = icmp ult ptr %462, %1
  br i1 %463, label %13, label %464

464:                                              ; preds = %460, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_igcref_init(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %1, %11
  %3 = phi i64 [ 0, %1 ], [ %14, %11 ]
  %4 = trunc i64 %3 to i32
  %5 = add i32 %4, -3
  %6 = icmp ult i32 %5, 18
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [18 x i8], ptr @switch.table.gs_igcref_init, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi i8 [ %10, %7 ], [ 0, %2 ]
  %13 = getelementptr inbounds [64 x i8], ptr @types_using_size, i64 0, i64 %3
  store i8 %12, ptr %13, align 1, !tbaa !23
  %14 = add nuw nsw i64 %3, 1
  %15 = icmp eq i64 %14, 21
  br i1 %15, label %16, label %2, !llvm.loop !29

16:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) getelementptr inbounds ([64 x i8], ptr @types_using_size, i64 0, i64 21), i8 1, i64 43, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ptr_ref_unmark(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = load i16, ptr %0, align 2, !tbaa !5
  %4 = icmp ugt i16 %3, 16383
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = and i16 %3, -4097
  store i16 %6, ptr %0, align 2, !tbaa !5
  br label %9

7:                                                ; preds = %2
  %8 = and i16 %3, 16382
  store i16 %8, ptr %0, align 8, !tbaa !9
  br label %9

9:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ptr_ref_mark(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = load i16, ptr %0, align 2, !tbaa !5
  %4 = zext i16 %3 to i32
  %5 = icmp ugt i16 %3, 16383
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = and i32 %4, 4096
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = or i16 %3, 4096
  store i16 %10, ptr %0, align 2, !tbaa !5
  br label %16

11:                                               ; preds = %2
  %12 = and i32 %4, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = or i16 %3, 1
  store i16 %15, ptr %0, align 8, !tbaa !9
  br label %16

16:                                               ; preds = %9, %14, %11, %6
  %17 = phi i32 [ 0, %6 ], [ 0, %11 ], [ 1, %14 ], [ 1, %9 ]
  ret i32 %17
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gs_reloc_ref_ptr(ptr noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 {
  %3 = load i16, ptr %0, align 2, !tbaa !5
  %4 = zext i16 %3 to i32
  %5 = icmp ugt i16 %3, 16383
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = and i32 %4, 4096
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %61, label %12

9:                                                ; preds = %2
  %10 = and i32 %4, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %61, label %12

12:                                               ; preds = %9, %6
  br label %13

13:                                               ; preds = %12, %35
  %14 = phi ptr [ %38, %35 ], [ %0, %12 ]
  %15 = phi i32 [ %37, %35 ], [ 0, %12 ]
  %16 = load i16, ptr %14, align 2, !tbaa !5
  %17 = icmp ugt i16 %16, 16383
  br i1 %17, label %18, label %39

18:                                               ; preds = %57, %13
  %19 = phi i16 [ %16, %13 ], [ %59, %57 ]
  %20 = phi ptr [ %14, %13 ], [ %58, %57 ]
  %21 = zext i16 %19 to i32
  %22 = and i32 %21, 4096
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = icmp eq i16 %19, 28671
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = and i32 %21, 4095
  %28 = zext nneg i32 %27 to i64
  %29 = sub nsw i64 0, %28
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = zext i32 %15 to i64
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  br label %61

33:                                               ; preds = %24
  %34 = add i32 %15, 8
  br label %35

35:                                               ; preds = %18, %33
  %36 = phi i64 [ 4, %33 ], [ 1, %18 ]
  %37 = phi i32 [ %34, %33 ], [ %15, %18 ]
  %38 = getelementptr inbounds i16, ptr %20, i64 %36
  br label %13, !llvm.loop !24

39:                                               ; preds = %13, %57
  %40 = phi ptr [ %58, %57 ], [ %14, %13 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !23
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds [64 x i8], ptr @types_using_size, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !23
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.tas_s, ptr %40, i64 0, i32 1
  %49 = load i16, ptr %48, align 2, !tbaa !25
  %50 = icmp eq i16 %49, 0
  %51 = zext i16 %49 to i64
  %52 = sub nsw i64 0, %51
  %53 = getelementptr inbounds i8, ptr %0, i64 %52
  %54 = zext i32 %15 to i64
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  %56 = select i1 %50, ptr %0, ptr %55
  br label %61

57:                                               ; preds = %39
  %58 = getelementptr inbounds i16, ptr %40, i64 8
  %59 = load i16, ptr %58, align 2, !tbaa !5
  %60 = icmp ugt i16 %59, 16383
  br i1 %60, label %18, label %39, !llvm.loop !24

61:                                               ; preds = %9, %6, %47, %26
  %62 = phi ptr [ %32, %26 ], [ %56, %47 ], [ %0, %6 ], [ %0, %9 ]
  ret ptr %62
}

declare ptr @name_ref_sub_table(ptr noundef) local_unnamed_addr #7

declare void @gs_reloc_string(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @refs_clear_reloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr i8, ptr %0, i64 %3
  %5 = getelementptr i8, ptr %4, i64 16
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  br label %9

9:                                                ; preds = %7, %22
  %10 = phi ptr [ %24, %22 ], [ %8, %7 ]
  %11 = load i16, ptr %10, align 2, !tbaa !5
  %12 = icmp ugt i16 %11, 16383
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %10, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !23
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [64 x i8], ptr @types_using_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tas_s, ptr %10, i64 0, i32 1
  store i16 0, ptr %21, align 2, !tbaa !25
  br label %22

22:                                               ; preds = %13, %20, %9
  %23 = phi i64 [ 1, %9 ], [ 8, %20 ], [ 8, %13 ]
  %24 = getelementptr inbounds i16, ptr %10, i64 %23
  %25 = icmp ult ptr %24, %5
  br i1 %25, label %9, label %26, !llvm.loop !30

26:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @refs_set_reloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  %5 = zext i32 %2 to i64
  %6 = getelementptr i8, ptr %0, i64 %5
  %7 = getelementptr i8, ptr %6, i64 16
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %70, label %9

9:                                                ; preds = %3, %66
  %10 = phi ptr [ %68, %66 ], [ %4, %3 ]
  %11 = phi i32 [ %67, %66 ], [ 0, %3 ]
  %12 = load i16, ptr %10, align 2, !tbaa !5
  %13 = icmp ugt i16 %12, 16383
  br i1 %13, label %14, label %45

14:                                               ; preds = %9
  %15 = and i16 %12, 4096
  %16 = getelementptr inbounds i16, ptr %10, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !5
  %18 = and i16 %17, 4096
  %19 = add nuw nsw i16 %18, %15
  %20 = getelementptr inbounds i16, ptr %10, i64 2
  %21 = load i16, ptr %20, align 2, !tbaa !5
  %22 = and i16 %21, 4096
  %23 = add nuw nsw i16 %19, %22
  %24 = getelementptr inbounds i16, ptr %10, i64 3
  %25 = load i16, ptr %24, align 2, !tbaa !5
  %26 = and i16 %25, 4096
  %27 = add nuw nsw i16 %23, %26
  switch i16 %27, label %30 [
    i16 16384, label %28
    i16 0, label %38
  ]

28:                                               ; preds = %14
  %29 = getelementptr inbounds i16, ptr %10, i64 4
  br label %66

30:                                               ; preds = %14, %30
  %31 = phi ptr [ %36, %30 ], [ %10, %14 ]
  %32 = phi i32 [ %33, %30 ], [ 4, %14 ]
  %33 = add nsw i32 %32, -1
  %34 = load i16, ptr %31, align 2, !tbaa !5
  %35 = or i16 %34, 4096
  store i16 %35, ptr %31, align 2, !tbaa !5
  %36 = getelementptr inbounds i16, ptr %31, i64 1
  %37 = icmp eq i32 %33, 0
  br i1 %37, label %66, label %30, !llvm.loop !31

38:                                               ; preds = %14
  %39 = add i32 %11, %1
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 4095)
  %41 = trunc i32 %40 to i16
  %42 = or disjoint i16 %41, 24576
  store i16 %42, ptr %10, align 2, !tbaa !5
  %43 = getelementptr inbounds i16, ptr %10, i64 4
  %44 = add i32 %11, 8
  br label %66

45:                                               ; preds = %9
  %46 = add i32 %11, %1
  %47 = and i16 %12, 1
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  store i16 3072, ptr %10, align 8, !tbaa !9
  %50 = trunc i32 %46 to i16
  %51 = getelementptr inbounds %struct.tas_s, ptr %10, i64 0, i32 1
  store i16 %50, ptr %51, align 2, !tbaa !25
  %52 = add i32 %11, 16
  br label %63

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, ptr %10, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !23
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds [64 x i8], ptr @types_using_size, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !23
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = trunc i32 %46 to i16
  %62 = getelementptr inbounds %struct.tas_s, ptr %10, i64 0, i32 1
  store i16 %61, ptr %62, align 2, !tbaa !25
  br label %63

63:                                               ; preds = %53, %60, %49
  %64 = phi i32 [ %11, %53 ], [ %11, %60 ], [ %52, %49 ]
  %65 = getelementptr inbounds i16, ptr %10, i64 8
  br label %66

66:                                               ; preds = %30, %28, %38, %63
  %67 = phi i32 [ %64, %63 ], [ %44, %38 ], [ %11, %28 ], [ %11, %30 ]
  %68 = phi ptr [ %65, %63 ], [ %43, %38 ], [ %29, %28 ], [ %36, %30 ]
  %69 = icmp ult ptr %68, %7
  br i1 %69, label %9, label %70, !llvm.loop !32

70:                                               ; preds = %66, %3
  %71 = phi i32 [ 0, %3 ], [ %67, %66 ]
  %72 = icmp eq i32 %71, %2
  br i1 %72, label %110, label %73

73:                                               ; preds = %70
  %74 = icmp ult i32 %71, 65536
  br i1 %74, label %110, label %75

75:                                               ; preds = %73
  %76 = icmp ugt ptr %6, %0
  br i1 %76, label %77, label %105

77:                                               ; preds = %75
  %78 = trunc i32 %1 to i16
  br label %79

79:                                               ; preds = %77, %101
  %80 = phi ptr [ %4, %77 ], [ %103, %101 ]
  %81 = load i16, ptr %80, align 2, !tbaa !5
  %82 = zext i16 %81 to i32
  %83 = icmp ugt i16 %81, 16383
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = and i32 %82, 4096
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  store i16 28672, ptr %80, align 2, !tbaa !5
  br label %101

88:                                               ; preds = %79
  %89 = and i32 %82, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i16 3073, ptr %80, align 8, !tbaa !9
  br label %99

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, ptr %80, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !23
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds [64 x i8], ptr @types_using_size, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !23
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92, %91
  %100 = getelementptr inbounds %struct.tas_s, ptr %80, i64 0, i32 1
  store i16 %78, ptr %100, align 2, !tbaa !25
  br label %101

101:                                              ; preds = %92, %99, %84, %87
  %102 = phi i64 [ 1, %87 ], [ 1, %84 ], [ 8, %99 ], [ 8, %92 ]
  %103 = getelementptr inbounds i16, ptr %80, i64 %102
  %104 = icmp ult ptr %103, %7
  br i1 %104, label %79, label %105, !llvm.loop !33

105:                                              ; preds = %101, %75
  %106 = phi ptr [ %4, %75 ], [ %103, %101 ]
  %107 = getelementptr inbounds %struct.ref_s, ptr %106, i64 -1
  %108 = load i16, ptr %107, align 8, !tbaa !9
  %109 = and i16 %108, -2
  store i16 %109, ptr %107, align 8, !tbaa !9
  br label %110

110:                                              ; preds = %73, %70, %105
  %111 = phi i32 [ 1, %105 ], [ 0, %70 ], [ 1, %73 ]
  ret i32 %111
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @refs_compact(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.obj_header_s, ptr %0, i64 1
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %8, label %26

8:                                                ; preds = %3, %23
  %9 = phi ptr [ %25, %23 ], [ %4, %3 ]
  %10 = load i16, ptr %9, align 2, !tbaa !5
  %11 = zext i16 %10 to i32
  %12 = icmp ugt i16 %10, 16383
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = and i32 %11, 4096
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = and i16 %10, -4097
  store i16 %17, ptr %9, align 2, !tbaa !5
  br label %23

18:                                               ; preds = %8
  %19 = and i32 %11, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = and i16 %10, 16382
  store i16 %22, ptr %9, align 8, !tbaa !9
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i64 [ 8, %21 ], [ 1, %16 ]
  %25 = getelementptr inbounds i16, ptr %9, i64 %24
  br label %8, !llvm.loop !34

26:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !35
  br label %27

27:                                               ; preds = %13, %18, %26
  %28 = phi ptr [ %4, %26 ], [ %9, %18 ], [ %9, %13 ]
  %29 = ptrtoint ptr %28 to i64
  %30 = ptrtoint ptr %0 to i64
  %31 = sub i64 %29, %30
  %32 = getelementptr inbounds i8, ptr %1, i64 %31
  br label %33

33:                                               ; preds = %50, %27
  %34 = phi ptr [ %28, %27 ], [ %51, %50 ]
  %35 = phi ptr [ %32, %27 ], [ %52, %50 ]
  br label %36

36:                                               ; preds = %33, %66
  %37 = phi ptr [ %67, %66 ], [ %34, %33 ]
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp ugt i16 %38, 16383
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = and i32 %39, 4096
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = and i16 %38, -4097
  %46 = getelementptr inbounds i16, ptr %35, i64 1
  store i16 %45, ptr %35, align 2, !tbaa !5
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi ptr [ %46, %44 ], [ %35, %41 ]
  %49 = getelementptr inbounds i16, ptr %37, i64 1
  br label %50

50:                                               ; preds = %47, %56
  %51 = phi ptr [ %65, %56 ], [ %49, %47 ]
  %52 = phi ptr [ %64, %56 ], [ %48, %47 ]
  br label %33, !llvm.loop !37

53:                                               ; preds = %36
  %54 = and i32 %39, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.ref_s, ptr %37, i64 0, i32 1
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds i8, ptr %37, i64 2
  %60 = load i16, ptr %59, align 2, !tbaa !5
  %61 = and i16 %38, 16382
  %62 = getelementptr inbounds %struct.ref_s, ptr %35, i64 0, i32 1
  store i64 %58, ptr %62, align 8
  store i16 %61, ptr %35, align 8, !tbaa.struct !38
  %63 = getelementptr inbounds i8, ptr %35, i64 2
  store i16 %60, ptr %63, align 2, !tbaa !5
  %64 = getelementptr inbounds i16, ptr %35, i64 8
  %65 = getelementptr inbounds i16, ptr %37, i64 8
  br label %50

66:                                               ; preds = %53
  %67 = getelementptr inbounds i16, ptr %37, i64 8
  %68 = icmp ult ptr %67, %6
  br i1 %68, label %36, label %69, !llvm.loop !37

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.obj_header_s, ptr %1, i64 1
  %71 = ptrtoint ptr %35 to i64
  %72 = ptrtoint ptr %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = add i32 %74, 16
  %76 = and i32 %74, 15
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %69, %78
  %79 = phi ptr [ %81, %78 ], [ %35, %69 ]
  %80 = phi i32 [ %82, %78 ], [ %75, %69 ]
  %81 = getelementptr inbounds i16, ptr %79, i64 1
  store i16 24576, ptr %79, align 2, !tbaa !5
  %82 = add i32 %80, 2
  %83 = and i32 %82, 15
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %78, !llvm.loop !39

85:                                               ; preds = %78, %69
  %86 = phi i32 [ %75, %69 ], [ %82, %78 ]
  %87 = phi ptr [ %35, %69 ], [ %81, %78 ]
  %88 = sub i32 %2, %86
  %89 = icmp ult i32 %88, 16
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = icmp ult i32 %86, %2
  br i1 %91, label %92, label %105

92:                                               ; preds = %90, %92
  %93 = phi ptr [ %95, %92 ], [ %87, %90 ]
  %94 = phi i32 [ %96, %92 ], [ %86, %90 ]
  %95 = getelementptr inbounds i16, ptr %93, i64 1
  store i16 24576, ptr %93, align 2, !tbaa !5
  %96 = add i32 %94, 2
  %97 = icmp ult i32 %96, %2
  br i1 %97, label %92, label %105, !llvm.loop !40

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct.ref_s, ptr %87, i64 1
  %100 = load i8, ptr %99, align 8
  %101 = and i8 %100, -2
  store i8 %101, ptr %99, align 8
  %102 = add i32 %88, -16
  %103 = getelementptr inbounds i8, ptr %87, i64 20
  store i32 %102, ptr %103, align 4, !tbaa !23
  %104 = getelementptr inbounds %struct.ref_s, ptr %87, i64 1, i32 1
  store ptr @st_bytes, ptr %104, align 8, !tbaa !23
  br label %105

105:                                              ; preds = %92, %90, %98
  %106 = phi i32 [ %86, %98 ], [ %86, %90 ], [ %96, %92 ]
  %107 = phi ptr [ %87, %98 ], [ %87, %90 ], [ %95, %92 ]
  store i16 2816, ptr %107, align 8, !tbaa !9
  %108 = getelementptr inbounds %struct.obj_header_data_s, ptr %1, i64 0, i32 1
  store i32 %106, ptr %108, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"ref_s", !11, i64 0, !7, i64 8}
!11 = !{!"tas_s", !6, i64 0, !6, i64 2}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!18, !20, i64 48}
!18 = !{!"gc_state_s", !19, i64 0, !7, i64 16, !20, i64 48, !20, i64 52}
!19 = !{!"chunk_locator_s", !16, i64 0, !16, i64 8}
!20 = !{!"int", !7, i64 0}
!21 = !{!18, !20, i64 52}
!22 = distinct !{!22, !13}
!23 = !{!7, !7, i64 0}
!24 = distinct !{!24, !13}
!25 = !{!10, !6, i64 2}
!26 = !{!27, !16, i64 0}
!27 = !{!"gs_string_s", !16, i64 0, !20, i64 8}
!28 = !{!27, !20, i64 8}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = !{i64 0, i64 4, !36, i64 0, i64 4, !36, i64 0, i64 4, !36, i64 0, i64 4, !36, i64 0, i64 4, !36, i64 0, i64 4, !36, i64 0, i64 4, !36, i64 0, i64 4, !36, i64 4, i64 4, !36, i64 8, i64 8, !15, i64 8, i64 4, !36, i64 0, i64 16, !23}
!36 = !{!20, !20, i64 0}
!37 = distinct !{!37, !13}
!38 = !{i64 0, i64 2, !5, i64 2, i64 2, !5}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
