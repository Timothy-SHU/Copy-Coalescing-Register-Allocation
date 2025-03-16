; ModuleID = 'isave.c'
source_filename = "isave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_ref_memory_s = type { %struct.gs_memory_procs_s, ptr, i32, i32, ptr, i32, %struct.gs_memory_gc_status_s, i64, ptr, ptr, %struct.chunk_s, ptr, %struct.chunk_locator_s, i64, i64, i64, %struct.lost_, ptr, i32, ptr, ptr, ptr, %struct.gs_memory_status_s, [101 x ptr] }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_gc_status_s = type { i64, i64, ptr, i32, i32, i64 }
%struct.chunk_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i16, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.chunk_locator_s = type { ptr, ptr }
%struct.lost_ = type { i64, i64, i64 }
%struct.gs_memory_status_s = type { i64, i64 }
%struct.alloc_save_s = type { %struct.gs_ref_memory_s, ptr, i32, i32, i64, ptr }
%struct.alloc_change_s = type { ptr, ptr, %struct.ref_s, i16 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.obj_header_data_s = type { %union._f, i32, %union._t }
%union._f = type { %struct._l }
%struct._l = type { i32 }
%union._t = type { ptr }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.name_s = type { i16, i16, ptr, ptr }
%struct.chunk_head_s = type { ptr, %struct.obj_header_s }

@.str = private unnamed_addr constant [29 x i8] c"alloc_save_state(local save)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"alloc_save_state(local inner)\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"alloc_save_state(global save)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"alloc_save_state(global inner)\00", align 1
@st_alloc_change = internal constant %struct.gs_memory_struct_type_s { i32 40, ptr @.str.10, ptr null, ptr @change_clear_marks, ptr @change_enum_ptrs, ptr @change_reloc_ptrs, ptr null }, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"alloc_save_change\00", align 1
@gs_stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"isave.c\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Bad type %u for save!  pcont = 0x%lx, where = 0x%lx\0A\00", align 1
@st_chunk = external constant %struct.gs_memory_struct_type_s, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"alloc_save_space(inner)\00", align 1
@st_alloc_save = internal constant %struct.gs_memory_struct_type_s { i32 1400, ptr @.str.9, ptr null, ptr null, ptr @save_enum_ptrs, ptr @save_reloc_ptrs, ptr null }, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"alloc_save_space(save)\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"alloc_save\00", align 1
@st_ref_memory = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"alloc_change\00", align 1
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_bytes = external constant %struct.gs_memory_struct_type_s, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"combine_space(inner)\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"combine_space(saved)\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"forget_changes\00", align 1
@st_refs = external constant %struct.gs_memory_struct_type_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @alloc_save_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 3
  store i32 0, ptr %2, align 4, !tbaa !5
  %3 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 5
  store i32 -1, ptr %3, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %4, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @alloc_save_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 3
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = tail call i64 @gs_next_ids(i32 noundef 2) #10
  %8 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = icmp ne i32 %9, 0
  %11 = icmp eq ptr %6, %4
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %6, i64 0, i32 18
  %15 = load i32, ptr %14, align 8, !tbaa !14
  %16 = icmp eq i32 %15, 1
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i1 [ false, %2 ], [ %16, %13 ]
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call fastcc ptr @alloc_save_space(ptr noundef %6, ptr noundef %0)
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi ptr [ %20, %19 ], [ null, %17 ]
  %23 = tail call fastcc ptr @alloc_save_space(ptr noundef %4, ptr noundef %0)
  %24 = icmp eq ptr %23, null
  %25 = icmp eq ptr %22, null
  %26 = select i1 %18, i1 %25, i1 false
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  br i1 %24, label %38, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %4, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  tail call void %33(ptr noundef %4, ptr noundef nonnull %23, ptr noundef nonnull @.str) #10
  %34 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %4, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !27
  %36 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %35, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !25
  tail call void %37(ptr noundef %35, ptr noundef %31, ptr noundef nonnull @.str.1) #10
  br label %38

38:                                               ; preds = %29, %28
  br i1 %25, label %168, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %6, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !24
  %42 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !25
  tail call void %43(ptr noundef %6, ptr noundef nonnull %22, ptr noundef nonnull @.str.2) #10
  %44 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %6, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !27
  %46 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %45, i64 0, i32 11
  %47 = load ptr, ptr %46, align 8, !tbaa !25
  tail call void %47(ptr noundef %45, ptr noundef %41, ptr noundef nonnull @.str.3) #10
  br label %168

48:                                               ; preds = %21
  br i1 %25, label %56, label %49

49:                                               ; preds = %48
  %50 = add i64 %7, 1
  %51 = getelementptr inbounds %struct.alloc_save_s, ptr %22, i64 0, i32 4
  store i64 %50, ptr %51, align 8, !tbaa !28
  %52 = getelementptr inbounds %struct.alloc_save_s, ptr %22, i64 0, i32 5
  store ptr null, ptr %52, align 8, !tbaa !30
  %53 = getelementptr inbounds %struct.alloc_save_s, ptr %22, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !31
  %55 = getelementptr inbounds %struct.alloc_save_s, ptr %23, i64 0, i32 2
  store i32 %54, ptr %55, align 8, !tbaa !31
  store i32 0, ptr %53, align 8, !tbaa !31
  br label %56

56:                                               ; preds = %49, %48
  %57 = getelementptr inbounds %struct.alloc_save_s, ptr %23, i64 0, i32 4
  store i64 %7, ptr %57, align 8, !tbaa !28
  %58 = getelementptr inbounds %struct.alloc_save_s, ptr %23, i64 0, i32 5
  store ptr %1, ptr %58, align 8, !tbaa !30
  %59 = load i32, ptr %8, align 4, !tbaa !5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %163, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %23, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !32
  %64 = icmp eq ptr %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %61, %73
  %66 = phi ptr [ %74, %73 ], [ %63, %61 ]
  %67 = getelementptr inbounds %struct.alloc_change_s, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !33
  %69 = load i16, ptr %68, align 2, !tbaa !37
  %70 = icmp ugt i16 %69, 16383
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = and i16 %69, 16381
  store i16 %72, ptr %68, align 8, !tbaa !38
  br label %73

73:                                               ; preds = %71, %65
  %74 = load ptr, ptr %66, align 8, !tbaa !32
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %65, !llvm.loop !39

76:                                               ; preds = %73, %61
  %77 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %23, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !32
  %79 = icmp eq ptr %78, null
  br i1 %79, label %163, label %80

80:                                               ; preds = %76, %143
  %81 = phi ptr [ %146, %143 ], [ %78, %76 ]
  %82 = phi i64 [ %144, %143 ], [ 0, %76 ]
  %83 = getelementptr inbounds %struct.chunk_s, ptr %81, i64 0, i32 12
  %84 = load i32, ptr %83, align 4, !tbaa !41
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %143, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.chunk_s, ptr %81, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !42
  %89 = getelementptr inbounds %struct.chunk_s, ptr %81, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !43
  %91 = icmp ult ptr %88, %90
  br i1 %91, label %92, label %140

92:                                               ; preds = %86, %132
  %93 = phi i64 [ %135, %132 ], [ %82, %86 ]
  %94 = phi i32 [ %133, %132 ], [ 0, %86 ]
  %95 = phi ptr [ %138, %132 ], [ %88, %86 ]
  %96 = load i8, ptr %95, align 8
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %92
  %100 = load i32, ptr %95, align 8
  %101 = lshr i32 %100, 3
  %102 = zext nneg i32 %101 to i64
  %103 = shl nuw nsw i64 %102, 32
  %104 = getelementptr inbounds %struct.obj_header_data_s, ptr %95, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !13
  %106 = zext i32 %105 to i64
  %107 = or disjoint i64 %103, %106
  br label %112

108:                                              ; preds = %92
  %109 = getelementptr inbounds %struct.obj_header_data_s, ptr %95, i64 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !13
  %111 = zext i32 %110 to i64
  br label %112

112:                                              ; preds = %108, %99
  %113 = phi i64 [ %107, %99 ], [ %111, %108 ]
  %114 = getelementptr inbounds %struct.obj_header_data_s, ptr %95, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !13
  %116 = icmp eq ptr %115, @st_refs
  br i1 %116, label %117, label %132

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.obj_header_s, ptr %95, i64 1
  %119 = getelementptr inbounds i8, ptr %118, i64 %113
  br label %120

120:                                              ; preds = %130, %117
  %121 = phi ptr [ %118, %117 ], [ %131, %130 ]
  %122 = load i16, ptr %121, align 2, !tbaa !37
  %123 = icmp ugt i16 %122, 16383
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = getelementptr inbounds i16, ptr %121, i64 1
  br label %130

126:                                              ; preds = %120
  %127 = and i16 %122, 16381
  store i16 %127, ptr %121, align 8, !tbaa !38
  %128 = getelementptr inbounds i16, ptr %121, i64 8
  %129 = icmp ult ptr %128, %119
  br i1 %129, label %130, label %132

130:                                              ; preds = %126, %124
  %131 = phi ptr [ %125, %124 ], [ %128, %126 ]
  br label %120, !llvm.loop !44

132:                                              ; preds = %126, %112
  %133 = phi i32 [ %94, %112 ], [ 1, %126 ]
  %134 = phi i64 [ 16, %112 ], [ %113, %126 ]
  %135 = add i64 %134, %93
  %136 = add nuw nsw i64 %113, 23
  %137 = and i64 %136, 4294967288
  %138 = getelementptr inbounds i8, ptr %95, i64 %137
  %139 = icmp ult ptr %138, %90
  br i1 %139, label %92, label %140, !llvm.loop !45

140:                                              ; preds = %132, %86
  %141 = phi i32 [ 0, %86 ], [ %133, %132 ]
  %142 = phi i64 [ %82, %86 ], [ %135, %132 ]
  store i32 %141, ptr %83, align 4, !tbaa !41
  br label %143

143:                                              ; preds = %140, %80
  %144 = phi i64 [ %142, %140 ], [ %82, %80 ]
  %145 = getelementptr inbounds %struct.chunk_s, ptr %81, i64 0, i32 9
  %146 = load ptr, ptr %145, align 8, !tbaa !32
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %80, !llvm.loop !46

148:                                              ; preds = %143
  %149 = icmp sgt i64 %144, 100000
  br i1 %149, label %150, label %163

150:                                              ; preds = %148
  tail call void @file_save() #10
  %151 = tail call fastcc ptr @alloc_save_space(ptr noundef %4, ptr noundef %0)
  %152 = icmp eq ptr %151, null
  br i1 %152, label %163, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.alloc_save_s, ptr %151, i64 0, i32 4
  store i64 %7, ptr %154, align 8, !tbaa !28
  %155 = getelementptr inbounds %struct.alloc_save_s, ptr %151, i64 0, i32 5
  store ptr %1, ptr %155, align 8, !tbaa !30
  %156 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %23, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  %157 = load i64, ptr %156, align 8, !tbaa !47
  %158 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %23, i64 0, i32 14
  %159 = load i64, ptr %158, align 8, !tbaa !48
  %160 = add i64 %159, %157
  %161 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %151, i64 0, i32 14
  store i64 %160, ptr %161, align 8, !tbaa !48
  %162 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %4, i64 0, i32 14
  store i64 %160, ptr %162, align 8, !tbaa !49
  br label %163

163:                                              ; preds = %76, %148, %153, %150, %56
  %164 = load i32, ptr %8, align 4, !tbaa !5
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %8, align 4, !tbaa !5
  %166 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 6
  store i32 2, ptr %166, align 4, !tbaa !12
  %167 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 5
  store i32 2, ptr %167, align 8, !tbaa !11
  tail call void @file_save() #10
  br label %168

168:                                              ; preds = %38, %39, %163
  %169 = phi i64 [ %7, %163 ], [ 0, %39 ], [ 0, %38 ]
  ret i64 %169
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @alloc_save_space(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.gs_ref_memory_s, align 8
  call void @llvm.lifetime.start.p0(i64 1368, ptr nonnull %3)
  %4 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10
  %5 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp ugt i64 %11, 24
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !27
  %16 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = tail call ptr %17(ptr noundef %15, ptr noundef nonnull @st_chunk, ptr noundef nonnull @.str.7) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %58, label %20

20:                                               ; preds = %13, %2
  %21 = phi ptr [ %18, %13 ], [ null, %2 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1368) %3, ptr noundef nonnull align 8 dereferenceable(1368) %0, i64 1368, i1 false), !tbaa.struct !53
  tail call void @alloc_close_chunk(ptr noundef %0) #10
  %22 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 22
  tail call void %23(ptr noundef %0, ptr noundef nonnull %24) #10
  tail call void @ialloc_reset(ptr noundef %0) #10
  %25 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 8
  %26 = icmp eq ptr %21, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %7, align 8, !tbaa !51
  %29 = load ptr, ptr %5, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !24
  tail call void @alloc_init_chunk(ptr noundef nonnull %4, ptr noundef %28, ptr noundef %29, i32 noundef 1, ptr noundef %31) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %21, ptr noundef nonnull align 8 dereferenceable(176) %4, i64 176, i1 false), !tbaa.struct !57
  store ptr %21, ptr %30, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 9
  store ptr %21, ptr %32, align 8, !tbaa !58
  %33 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 8
  store ptr %21, ptr %33, align 8, !tbaa !59
  br label %37

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 11
  store ptr null, ptr %35, align 8, !tbaa !24
  %36 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 8
  store ptr null, ptr %5, align 8, !tbaa !50
  store ptr null, ptr %7, align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  br label %37

37:                                               ; preds = %34, %27
  %38 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  %40 = tail call ptr %39(ptr noundef %0, ptr noundef nonnull @st_alloc_save, ptr noundef nonnull @.str.8) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !27
  %45 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %44, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !25
  tail call void %46(ptr noundef %44, ptr noundef %21, ptr noundef nonnull @.str.7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1368) %0, ptr noundef nonnull align 8 dereferenceable(1368) %3, i64 1368, i1 false), !tbaa.struct !53
  br label %58

47:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1368) %40, ptr noundef nonnull align 8 dereferenceable(1368) %3, i64 1368, i1 false), !tbaa.struct !53
  %48 = getelementptr inbounds %struct.alloc_save_s, ptr %40, i64 0, i32 1
  store ptr %1, ptr %48, align 8, !tbaa !60
  %49 = tail call ptr @name_memory() #10
  %50 = icmp eq ptr %49, %0
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds %struct.alloc_save_s, ptr %40, i64 0, i32 2
  store i32 %51, ptr %52, align 8, !tbaa !31
  %53 = load ptr, ptr %1, align 8, !tbaa !61
  %54 = icmp eq ptr %53, %0
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds %struct.alloc_save_s, ptr %40, i64 0, i32 3
  store i32 %55, ptr %56, align 4, !tbaa !62
  %57 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 20
  store ptr %40, ptr %57, align 8, !tbaa !63
  br label %58

58:                                               ; preds = %13, %47, %42
  %59 = phi ptr [ null, %42 ], [ %40, %47 ], [ null, %13 ]
  call void @llvm.lifetime.end.p0(i64 1368, ptr nonnull %3)
  ret ptr %59
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @file_save() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @alloc_save_change(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %75, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 3
  br label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1
  %14 = load i16, ptr %1, align 8, !tbaa !38
  %15 = lshr i16 %14, 2
  %16 = and i16 %15, 3
  %17 = zext nneg i16 %16 to i64
  %18 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 %17
  br label %19

19:                                               ; preds = %12, %10
  %20 = phi ptr [ %11, %10 ], [ %18, %12 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  %22 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = tail call ptr %23(ptr noundef %21, ptr noundef nonnull @st_alloc_change, ptr noundef nonnull @.str.4) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %75, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %21, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  store ptr %28, ptr %24, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.alloc_change_s, ptr %24, i64 0, i32 1
  store ptr %2, ptr %29, align 8, !tbaa !33
  br i1 %9, label %30, label %32

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.alloc_change_s, ptr %24, i64 0, i32 3
  store i16 -2, ptr %31, align 8, !tbaa !66
  br label %62

32:                                               ; preds = %26
  %33 = load i16, ptr %1, align 8, !tbaa !38
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 15360
  %36 = icmp eq i32 %35, 1024
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, ptr %1, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !13
  %40 = icmp eq i8 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %32
  %42 = getelementptr inbounds %struct.alloc_change_s, ptr %24, i64 0, i32 3
  store i16 -1, ptr %42, align 8, !tbaa !66
  br label %62

43:                                               ; preds = %37
  %44 = and i32 %34, 15872
  %45 = icmp eq i32 %44, 2048
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = ptrtoint ptr %2 to i64
  %50 = ptrtoint ptr %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i16
  %53 = getelementptr inbounds %struct.alloc_change_s, ptr %24, i64 0, i32 3
  store i16 %52, ptr %53, align 8, !tbaa !66
  br label %62

54:                                               ; preds = %43
  %55 = load ptr, ptr @gs_stderr, align 8, !tbaa !32
  tail call void @lprintf_file_and_line(ptr noundef %55, ptr noundef nonnull @.str.5, i32 noundef 426) #10
  %56 = load ptr, ptr @gs_stderr, align 8, !tbaa !32
  %57 = load i8, ptr %38, align 1, !tbaa !13
  %58 = zext i8 %57 to i32
  %59 = ptrtoint ptr %1 to i64
  %60 = ptrtoint ptr %2 to i64
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.6, i32 noundef %58, i64 noundef %59, i64 noundef %60)
  tail call void @gs_exit(i32 noundef 1) #10
  br label %62

62:                                               ; preds = %41, %54, %46, %30
  %63 = load i16, ptr %2, align 2, !tbaa !37
  %64 = icmp ugt i16 %63, 16383
  %65 = getelementptr inbounds %struct.alloc_change_s, ptr %24, i64 0, i32 2
  br i1 %64, label %66, label %67

66:                                               ; preds = %62
  store i16 %63, ptr %65, align 8, !tbaa !37
  br label %74

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.alloc_change_s, ptr %24, i64 0, i32 2, i32 1
  %69 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %70 = load i64, ptr %69, align 8
  store i64 %70, ptr %68, align 8
  %71 = load i32, ptr %2, align 8
  store i32 %71, ptr %65, align 8
  %72 = load i16, ptr %2, align 8, !tbaa !38
  %73 = or i16 %72, 2
  store i16 %73, ptr %2, align 8, !tbaa !38
  br label %74

74:                                               ; preds = %67, %66
  store ptr %24, ptr %27, align 8, !tbaa !64
  br label %75

75:                                               ; preds = %19, %4, %74
  %76 = phi i32 [ 0, %74 ], [ 0, %4 ], [ -1, %19 ]
  ret i32 %76
}

declare void @lprintf_file_and_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare void @gs_exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @alloc_save_level(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !5
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @alloc_save_current(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 3
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  br label %4

4:                                                ; preds = %9, %1
  %5 = phi ptr [ %3, %1 ], [ %7, %9 ]
  %6 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.alloc_save_s, ptr %7, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !28
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %4, label %13, !llvm.loop !67

13:                                               ; preds = %4, %9
  ret ptr %7
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @alloc_is_since_save(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.alloc_save_s, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %4, i64 0, i32 1, i32 0, i64 3
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %63, label %10

10:                                               ; preds = %2, %35
  %11 = phi ptr [ %37, %35 ], [ %6, %2 ]
  %12 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %10, %24
  %16 = phi ptr [ %26, %24 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.chunk_s, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = icmp ugt ptr %18, %0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.chunk_s, ptr %16, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  %23 = icmp ugt ptr %22, %0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.chunk_s, ptr %16, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !32
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %15, !llvm.loop !69

28:                                               ; preds = %24, %10
  %29 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %11, i64 0, i32 20
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = icmp eq ptr %30, %1
  %32 = select i1 %31, i32 4, i32 0
  br label %33

33:                                               ; preds = %20, %28
  %34 = phi i32 [ %32, %28 ], [ 1, %20 ]
  switch i32 %34, label %63 [
    i32 0, label %35
    i32 4, label %38
  ]

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %11, i64 0, i32 20
  %37 = load ptr, ptr %36, align 8, !tbaa !63
  br label %10, !llvm.loop !70

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %4, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !5
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %4, i64 0, i32 1, i32 0, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !13
  %45 = icmp eq ptr %44, %6
  br i1 %45, label %63, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %44, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !32
  %49 = icmp eq ptr %48, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %46, %59
  %51 = phi ptr [ %61, %59 ], [ %48, %46 ]
  %52 = getelementptr inbounds %struct.chunk_s, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = icmp ugt ptr %53, %0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.chunk_s, ptr %51, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !68
  %58 = icmp ugt ptr %57, %0
  br i1 %58, label %63, label %59

59:                                               ; preds = %50, %55
  %60 = getelementptr inbounds %struct.chunk_s, ptr %51, i64 0, i32 9
  %61 = load ptr, ptr %60, align 8, !tbaa !32
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %50, !llvm.loop !71

63:                                               ; preds = %33, %55, %59, %46, %38, %42, %2
  %64 = phi i32 [ 1, %2 ], [ 0, %42 ], [ 0, %38 ], [ 0, %46 ], [ 0, %59 ], [ 1, %55 ], [ 1, %33 ]
  ret i32 %64
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @alloc_name_is_since_save(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.alloc_save_s, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !31
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %76, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.name_s, ptr %8, i64 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %76

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.name_s, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.alloc_save_s, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %17, i64 0, i32 1, i32 0, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %19, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !63
  %22 = icmp eq ptr %21, null
  br i1 %22, label %76, label %23

23:                                               ; preds = %13, %48
  %24 = phi ptr [ %50, %48 ], [ %19, %13 ]
  %25 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %24, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !32
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %23, %37
  %29 = phi ptr [ %39, %37 ], [ %26, %23 ]
  %30 = getelementptr inbounds %struct.chunk_s, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = icmp ugt ptr %31, %15
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.chunk_s, ptr %29, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !68
  %36 = icmp ugt ptr %35, %15
  br i1 %36, label %46, label %37

37:                                               ; preds = %33, %28
  %38 = getelementptr inbounds %struct.chunk_s, ptr %29, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !32
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %28, !llvm.loop !69

41:                                               ; preds = %37, %23
  %42 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %24, i64 0, i32 20
  %43 = load ptr, ptr %42, align 8, !tbaa !63
  %44 = icmp eq ptr %43, %1
  %45 = select i1 %44, i32 4, i32 0
  br label %46

46:                                               ; preds = %33, %41
  %47 = phi i32 [ %45, %41 ], [ 1, %33 ]
  switch i32 %47, label %76 [
    i32 0, label %48
    i32 4, label %51
  ]

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %24, i64 0, i32 20
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  br label %23, !llvm.loop !70

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %17, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !5
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %17, i64 0, i32 1, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !13
  %58 = icmp eq ptr %57, %19
  br i1 %58, label %76, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %57, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !32
  %62 = icmp eq ptr %61, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %59, %72
  %64 = phi ptr [ %74, %72 ], [ %61, %59 ]
  %65 = getelementptr inbounds %struct.chunk_s, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  %67 = icmp ugt ptr %66, %15
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.chunk_s, ptr %64, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !68
  %71 = icmp ugt ptr %70, %15
  br i1 %71, label %76, label %72

72:                                               ; preds = %68, %63
  %73 = getelementptr inbounds %struct.chunk_s, ptr %64, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !32
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %63, !llvm.loop !71

76:                                               ; preds = %46, %72, %68, %59, %55, %51, %13, %6, %2
  %77 = phi i32 [ 0, %2 ], [ 0, %6 ], [ 1, %13 ], [ 0, %55 ], [ 0, %51 ], [ 0, %59 ], [ 0, %72 ], [ 1, %68 ], [ 1, %46 ]
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @alloc_name_index_is_since_save(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = tail call ptr @name_index_ptr(i32 noundef %0) #10
  %4 = getelementptr inbounds %struct.alloc_save_s, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !31
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %75, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.name_s, ptr %3, i64 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %75

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.name_s, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = getelementptr inbounds %struct.alloc_save_s, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %16, i64 0, i32 1, i32 0, i64 3
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %18, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = icmp eq ptr %20, null
  br i1 %21, label %75, label %22

22:                                               ; preds = %12, %47
  %23 = phi ptr [ %49, %47 ], [ %18, %12 ]
  %24 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %23, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !32
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %22, %36
  %28 = phi ptr [ %38, %36 ], [ %25, %22 ]
  %29 = getelementptr inbounds %struct.chunk_s, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  %31 = icmp ugt ptr %30, %14
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.chunk_s, ptr %28, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !68
  %35 = icmp ugt ptr %34, %14
  br i1 %35, label %45, label %36

36:                                               ; preds = %32, %27
  %37 = getelementptr inbounds %struct.chunk_s, ptr %28, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !32
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %27, !llvm.loop !69

40:                                               ; preds = %36, %22
  %41 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %23, i64 0, i32 20
  %42 = load ptr, ptr %41, align 8, !tbaa !63
  %43 = icmp eq ptr %42, %1
  %44 = select i1 %43, i32 4, i32 0
  br label %45

45:                                               ; preds = %32, %40
  %46 = phi i32 [ %44, %40 ], [ 1, %32 ]
  switch i32 %46, label %75 [
    i32 0, label %47
    i32 4, label %50
  ]

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %23, i64 0, i32 20
  %49 = load ptr, ptr %48, align 8, !tbaa !63
  br label %22, !llvm.loop !70

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %16, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !5
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %16, i64 0, i32 1, i32 0, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !13
  %57 = icmp eq ptr %56, %18
  br i1 %57, label %75, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %56, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !32
  %61 = icmp eq ptr %60, null
  br i1 %61, label %75, label %62

62:                                               ; preds = %58, %71
  %63 = phi ptr [ %73, %71 ], [ %60, %58 ]
  %64 = getelementptr inbounds %struct.chunk_s, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !42
  %66 = icmp ugt ptr %65, %14
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.chunk_s, ptr %63, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !68
  %70 = icmp ugt ptr %69, %14
  br i1 %70, label %75, label %71

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds %struct.chunk_s, ptr %63, i64 0, i32 9
  %73 = load ptr, ptr %72, align 8, !tbaa !32
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %62, !llvm.loop !71

75:                                               ; preds = %45, %67, %71, %2, %7, %12, %50, %54, %58
  %76 = phi i32 [ 0, %2 ], [ 0, %7 ], [ 1, %12 ], [ 0, %54 ], [ 0, %50 ], [ 0, %58 ], [ 0, %71 ], [ 1, %67 ], [ 1, %45 ]
  ret i32 %76
}

declare ptr @name_index_ptr(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @alloc_any_names_since_save(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.alloc_save_s, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !31
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @alloc_find_save(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 3
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  br label %7

7:                                                ; preds = %4, %12
  %8 = phi ptr [ %10, %12 ], [ %6, %4 ]
  %9 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.alloc_save_s, ptr %10, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !28
  %15 = icmp eq i64 %14, %1
  br i1 %15, label %16, label %7, !llvm.loop !74

16:                                               ; preds = %7, %12, %2
  %17 = phi ptr [ null, %2 ], [ %10, %12 ], [ null, %7 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @alloc_save_client_data(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.alloc_save_s, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @alloc_restore_state_step(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.alloc_save_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %3, i64 0, i32 1, i32 0, i64 3
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %5, i64 0, i32 20
  %7 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 19
  %8 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %5, i64 0, i32 9
  %9 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %3, i64 0, i32 3
  br label %10

10:                                               ; preds = %56, %1
  %11 = load ptr, ptr %6, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.alloc_save_s, ptr %11, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !28
  tail call void @alloc_close_chunk(ptr noundef %5) #10
  %14 = load ptr, ptr %7, align 8, !tbaa !75
  tail call void %14(ptr noundef %5, i32 noundef 0) #10
  %15 = load ptr, ptr %8, align 8, !tbaa !32
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %10, %41
  %18 = phi ptr [ %43, %41 ], [ %15, %10 ]
  %19 = getelementptr inbounds %struct.chunk_s, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.chunk_s, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %17, %35
  %25 = phi ptr [ %39, %35 ], [ %20, %17 ]
  %26 = getelementptr inbounds %struct.obj_header_data_s, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !13
  %28 = getelementptr inbounds %struct.obj_header_data_s, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !76
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.obj_header_s, ptr %25, i64 1
  tail call void %31(ptr noundef nonnull %34) #10
  br label %35

35:                                               ; preds = %33, %24
  %36 = add i32 %27, 23
  %37 = and i32 %36, -8
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %25, i64 %38
  %40 = icmp ult ptr %39, %22
  br i1 %40, label %24, label %41, !llvm.loop !78

41:                                               ; preds = %35, %17
  %42 = getelementptr inbounds %struct.chunk_s, ptr %18, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !32
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %17, !llvm.loop !79

45:                                               ; preds = %41, %10
  %46 = load ptr, ptr %7, align 8, !tbaa !75
  tail call void %46(ptr noundef %5, i32 noundef 1) #10
  tail call void @file_restore(ptr noundef %11, ptr noundef %5) #10
  tail call void @font_restore(ptr noundef %11) #10
  %47 = getelementptr inbounds %struct.alloc_save_s, ptr %11, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !31
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void @name_restore(ptr noundef %11) #10
  br label %51

51:                                               ; preds = %45, %50
  tail call fastcc void @restore_space(ptr noundef %5)
  %52 = icmp ne i64 %13, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i32, ptr %9, align 4, !tbaa !5
  %55 = add nsw i32 %54, -1
  store i32 %55, ptr %9, align 4, !tbaa !5
  br label %56

56:                                               ; preds = %51, %53
  %57 = icmp eq ptr %11, %0
  %58 = or i1 %57, %52
  br i1 %58, label %59, label %10, !llvm.loop !80

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %3, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !5
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %117

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %3, i64 0, i32 1, i32 0, i64 2
  %65 = load ptr, ptr %64, align 8, !tbaa !13
  %66 = load ptr, ptr %4, align 8, !tbaa !13
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %114, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %65, i64 0, i32 20
  %70 = load ptr, ptr %69, align 8, !tbaa !63
  %71 = icmp eq ptr %70, null
  br i1 %71, label %114, label %72

72:                                               ; preds = %68
  tail call void @alloc_close_chunk(ptr noundef %65) #10
  %73 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %65, i64 0, i32 19
  %74 = load ptr, ptr %73, align 8, !tbaa !75
  tail call void %74(ptr noundef %65, i32 noundef 0) #10
  %75 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %65, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !32
  %77 = icmp eq ptr %76, null
  br i1 %77, label %106, label %78

78:                                               ; preds = %72, %102
  %79 = phi ptr [ %104, %102 ], [ %76, %72 ]
  %80 = getelementptr inbounds %struct.chunk_s, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !42
  %82 = getelementptr inbounds %struct.chunk_s, ptr %79, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !43
  %84 = icmp ult ptr %81, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %78, %96
  %86 = phi ptr [ %100, %96 ], [ %81, %78 ]
  %87 = getelementptr inbounds %struct.obj_header_data_s, ptr %86, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !13
  %89 = getelementptr inbounds %struct.obj_header_data_s, ptr %86, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !13
  %91 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %90, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !76
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.obj_header_s, ptr %86, i64 1
  tail call void %92(ptr noundef nonnull %95) #10
  br label %96

96:                                               ; preds = %94, %85
  %97 = add i32 %88, 23
  %98 = and i32 %97, -8
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %86, i64 %99
  %101 = icmp ult ptr %100, %83
  br i1 %101, label %85, label %102, !llvm.loop !78

102:                                              ; preds = %96, %78
  %103 = getelementptr inbounds %struct.chunk_s, ptr %79, i64 0, i32 8
  %104 = load ptr, ptr %103, align 8, !tbaa !32
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %78, !llvm.loop !79

106:                                              ; preds = %102, %72
  %107 = load ptr, ptr %73, align 8, !tbaa !75
  tail call void %107(ptr noundef %65, i32 noundef 1) #10
  %108 = load ptr, ptr %69, align 8, !tbaa !63
  tail call void @file_restore(ptr noundef %108, ptr noundef %65) #10
  tail call void @font_restore(ptr noundef %108) #10
  %109 = getelementptr inbounds %struct.alloc_save_s, ptr %108, i64 0, i32 2
  %110 = load i32, ptr %109, align 8, !tbaa !31
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  tail call void @name_restore(ptr noundef %108) #10
  br label %113

113:                                              ; preds = %106, %112
  tail call fastcc void @restore_space(ptr noundef %65)
  br label %114

114:                                              ; preds = %113, %68, %63
  %115 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %3, i64 0, i32 5
  store i32 -1, ptr %115, align 8, !tbaa !11
  %116 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %3, i64 0, i32 6
  store i32 0, ptr %116, align 4, !tbaa !12
  br label %198

117:                                              ; preds = %59
  %118 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %5, i64 0, i32 19
  %119 = load ptr, ptr %118, align 8, !tbaa !32
  %120 = icmp eq ptr %119, null
  br i1 %120, label %132, label %121

121:                                              ; preds = %117, %129
  %122 = phi ptr [ %130, %129 ], [ %119, %117 ]
  %123 = getelementptr inbounds %struct.alloc_change_s, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !33
  %125 = load i16, ptr %124, align 2, !tbaa !37
  %126 = icmp ugt i16 %125, 16383
  br i1 %126, label %129, label %127

127:                                              ; preds = %121
  %128 = or i16 %125, 2
  store i16 %128, ptr %124, align 8, !tbaa !38
  br label %129

129:                                              ; preds = %127, %121
  %130 = load ptr, ptr %122, align 8, !tbaa !32
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %121, !llvm.loop !39

132:                                              ; preds = %129, %117
  %133 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %5, i64 0, i32 8
  %134 = load ptr, ptr %133, align 8, !tbaa !32
  %135 = icmp eq ptr %134, null
  br i1 %135, label %198, label %136

136:                                              ; preds = %132, %194
  %137 = phi ptr [ %196, %194 ], [ %134, %132 ]
  %138 = getelementptr inbounds %struct.chunk_s, ptr %137, i64 0, i32 12
  %139 = load i32, ptr %138, align 4, !tbaa !41
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %194, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.chunk_s, ptr %137, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !42
  %144 = getelementptr inbounds %struct.chunk_s, ptr %137, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !43
  %146 = icmp ult ptr %143, %145
  br i1 %146, label %147, label %192

147:                                              ; preds = %141, %186
  %148 = phi i32 [ %187, %186 ], [ 0, %141 ]
  %149 = phi ptr [ %190, %186 ], [ %143, %141 ]
  %150 = load i8, ptr %149, align 8
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %162, label %153

153:                                              ; preds = %147
  %154 = load i32, ptr %149, align 8
  %155 = lshr i32 %154, 3
  %156 = zext nneg i32 %155 to i64
  %157 = shl nuw nsw i64 %156, 32
  %158 = getelementptr inbounds %struct.obj_header_data_s, ptr %149, i64 0, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !13
  %160 = zext i32 %159 to i64
  %161 = or disjoint i64 %157, %160
  br label %166

162:                                              ; preds = %147
  %163 = getelementptr inbounds %struct.obj_header_data_s, ptr %149, i64 0, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !13
  %165 = zext i32 %164 to i64
  br label %166

166:                                              ; preds = %162, %153
  %167 = phi i64 [ %161, %153 ], [ %165, %162 ]
  %168 = getelementptr inbounds %struct.obj_header_data_s, ptr %149, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !13
  %170 = icmp eq ptr %169, @st_refs
  br i1 %170, label %171, label %186

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.obj_header_s, ptr %149, i64 1
  %173 = getelementptr inbounds i8, ptr %172, i64 %167
  br label %174

174:                                              ; preds = %184, %171
  %175 = phi ptr [ %172, %171 ], [ %185, %184 ]
  %176 = load i16, ptr %175, align 2, !tbaa !37
  %177 = icmp ugt i16 %176, 16383
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = getelementptr inbounds i16, ptr %175, i64 1
  br label %184

180:                                              ; preds = %174
  %181 = or i16 %176, 2
  store i16 %181, ptr %175, align 8, !tbaa !38
  %182 = getelementptr inbounds i16, ptr %175, i64 8
  %183 = icmp ult ptr %182, %173
  br i1 %183, label %184, label %186

184:                                              ; preds = %180, %178
  %185 = phi ptr [ %179, %178 ], [ %182, %180 ]
  br label %174, !llvm.loop !81

186:                                              ; preds = %180, %166
  %187 = phi i32 [ %148, %166 ], [ 1, %180 ]
  %188 = add nuw nsw i64 %167, 23
  %189 = and i64 %188, 4294967288
  %190 = getelementptr inbounds i8, ptr %149, i64 %189
  %191 = icmp ult ptr %190, %145
  br i1 %191, label %147, label %192, !llvm.loop !45

192:                                              ; preds = %186, %141
  %193 = phi i32 [ 0, %141 ], [ %187, %186 ]
  store i32 %193, ptr %138, align 4, !tbaa !41
  br label %194

194:                                              ; preds = %192, %136
  %195 = getelementptr inbounds %struct.chunk_s, ptr %137, i64 0, i32 9
  %196 = load ptr, ptr %195, align 8, !tbaa !32
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %136, !llvm.loop !46

198:                                              ; preds = %194, %132, %114
  %199 = zext i1 %57 to i32
  ret i32 %199
}

; Function Attrs: nounwind uwtable
define internal fastcc void @restore_space(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.gs_ref_memory_s, align 8
  %3 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 1368, ptr nonnull %2)
  %5 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !32
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %1, %22
  %9 = phi ptr [ %23, %22 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.alloc_change_s, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !37
  %12 = icmp ugt i16 %11, 16383
  %13 = getelementptr inbounds %struct.alloc_change_s, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  br i1 %12, label %15, label %16

15:                                               ; preds = %8
  store i16 %11, ptr %14, align 2, !tbaa !37
  br label %22

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %18 = getelementptr inbounds %struct.alloc_change_s, ptr %9, i64 0, i32 2, i32 1
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %17, align 8
  %20 = load ptr, ptr %13, align 8, !tbaa !33
  %21 = load i32, ptr %10, align 8
  store i32 %21, ptr %20, align 8
  br label %22

22:                                               ; preds = %16, %15
  %23 = load ptr, ptr %9, align 8, !tbaa !32
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !82

25:                                               ; preds = %22, %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1368) %2, ptr noundef nonnull align 8 dereferenceable(1368) %4, i64 1368, i1 false), !tbaa.struct !83
  %26 = getelementptr inbounds i8, ptr %4, i64 1368
  %27 = load ptr, ptr %26, align 8, !tbaa.struct !84
  %28 = getelementptr inbounds i8, ptr %4, i64 1380
  %29 = load i32, ptr %28, align 4, !tbaa.struct !85
  %30 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !58
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %25, %42
  %34 = phi ptr [ %36, %42 ], [ %31, %25 ]
  %35 = getelementptr inbounds %struct.chunk_s, ptr %34, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !86
  %37 = getelementptr inbounds %struct.chunk_s, ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !42
  %39 = getelementptr inbounds i8, ptr %38, i64 16
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  tail call void @alloc_free_chunk(ptr noundef nonnull %34, ptr noundef %0) #10
  br label %42

42:                                               ; preds = %41, %33
  %43 = icmp eq ptr %36, null
  br i1 %43, label %44, label %33, !llvm.loop !87

44:                                               ; preds = %42, %25
  %45 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 18
  %46 = load i32, ptr %45, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1368) %0, ptr noundef nonnull align 8 dereferenceable(1368) %2, i64 1368, i1 false), !tbaa.struct !53
  store i32 %46, ptr %45, align 8, !tbaa !14
  tail call void @alloc_open_chunk(ptr noundef %0) #10
  %47 = icmp eq i32 %29, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  store ptr %0, ptr %27, align 8, !tbaa !61
  %49 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !88
  %51 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %27, i64 0, i32 2
  store i32 %50, ptr %51, align 8, !tbaa !89
  br label %52

52:                                               ; preds = %48, %44
  call void @llvm.lifetime.end.p0(i64 1368, ptr nonnull %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @alloc_restore_all(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.alloc_save_s, align 8
  %3 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 3
  br label %8

8:                                                ; preds = %6, %8
  %9 = load ptr, ptr %7, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = tail call i32 @alloc_restore_state_step(ptr noundef %11), !range !90
  %13 = load i32, ptr %3, align 4, !tbaa !5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %8, !llvm.loop !91

15:                                               ; preds = %8, %1
  %16 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 3
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  tail call void @alloc_close_chunk(ptr noundef %17) #10
  %18 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %17, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  tail call void %19(ptr noundef %17, i32 noundef 0) #10
  %20 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %17, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !32
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %15, %47
  %24 = phi ptr [ %49, %47 ], [ %21, %15 ]
  %25 = getelementptr inbounds %struct.chunk_s, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = getelementptr inbounds %struct.chunk_s, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = icmp ult ptr %26, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %23, %41
  %31 = phi ptr [ %45, %41 ], [ %26, %23 ]
  %32 = getelementptr inbounds %struct.obj_header_data_s, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !13
  %34 = getelementptr inbounds %struct.obj_header_data_s, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !13
  %36 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.obj_header_s, ptr %31, i64 1
  tail call void %37(ptr noundef nonnull %40) #10
  br label %41

41:                                               ; preds = %39, %30
  %42 = add i32 %33, 23
  %43 = and i32 %42, -8
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %31, i64 %44
  %46 = icmp ult ptr %45, %28
  br i1 %46, label %30, label %47, !llvm.loop !78

47:                                               ; preds = %41, %23
  %48 = getelementptr inbounds %struct.chunk_s, ptr %24, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !32
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %23, !llvm.loop !79

51:                                               ; preds = %47, %15
  %52 = load ptr, ptr %18, align 8, !tbaa !75
  tail call void %52(ptr noundef %17, i32 noundef 1) #10
  %53 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  %55 = load ptr, ptr %16, align 8, !tbaa !13
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %97, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %54, i64 0, i32 18
  %59 = load i32, ptr %58, align 8, !tbaa !14
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %97

61:                                               ; preds = %57
  tail call void @alloc_close_chunk(ptr noundef %54) #10
  %62 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %54, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !75
  tail call void %63(ptr noundef %54, i32 noundef 0) #10
  %64 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %54, i64 0, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !32
  %66 = icmp eq ptr %65, null
  br i1 %66, label %95, label %67

67:                                               ; preds = %61, %91
  %68 = phi ptr [ %93, %91 ], [ %65, %61 ]
  %69 = getelementptr inbounds %struct.chunk_s, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !42
  %71 = getelementptr inbounds %struct.chunk_s, ptr %68, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !43
  %73 = icmp ult ptr %70, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %67, %85
  %75 = phi ptr [ %89, %85 ], [ %70, %67 ]
  %76 = getelementptr inbounds %struct.obj_header_data_s, ptr %75, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !13
  %78 = getelementptr inbounds %struct.obj_header_data_s, ptr %75, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !13
  %80 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %79, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !76
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.obj_header_s, ptr %75, i64 1
  tail call void %81(ptr noundef nonnull %84) #10
  br label %85

85:                                               ; preds = %83, %74
  %86 = add i32 %77, 23
  %87 = and i32 %86, -8
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %75, i64 %88
  %90 = icmp ult ptr %89, %72
  br i1 %90, label %74, label %91, !llvm.loop !78

91:                                               ; preds = %85, %67
  %92 = getelementptr inbounds %struct.chunk_s, ptr %68, i64 0, i32 8
  %93 = load ptr, ptr %92, align 8, !tbaa !32
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %67, !llvm.loop !79

95:                                               ; preds = %91, %61
  %96 = load ptr, ptr %62, align 8, !tbaa !75
  tail call void %96(ptr noundef %54, i32 noundef 1) #10
  br label %97

97:                                               ; preds = %95, %57, %51
  %98 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !13
  tail call void @alloc_close_chunk(ptr noundef %99) #10
  %100 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %99, i64 0, i32 19
  %101 = load ptr, ptr %100, align 8, !tbaa !75
  tail call void %101(ptr noundef %99, i32 noundef 0) #10
  %102 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %99, i64 0, i32 9
  %103 = load ptr, ptr %102, align 8, !tbaa !32
  %104 = icmp eq ptr %103, null
  br i1 %104, label %133, label %105

105:                                              ; preds = %97, %129
  %106 = phi ptr [ %131, %129 ], [ %103, %97 ]
  %107 = getelementptr inbounds %struct.chunk_s, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !42
  %109 = getelementptr inbounds %struct.chunk_s, ptr %106, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !43
  %111 = icmp ult ptr %108, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %105, %123
  %113 = phi ptr [ %127, %123 ], [ %108, %105 ]
  %114 = getelementptr inbounds %struct.obj_header_data_s, ptr %113, i64 0, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !13
  %116 = getelementptr inbounds %struct.obj_header_data_s, ptr %113, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !13
  %118 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %117, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !76
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.obj_header_s, ptr %113, i64 1
  tail call void %119(ptr noundef nonnull %122) #10
  br label %123

123:                                              ; preds = %121, %112
  %124 = add i32 %115, 23
  %125 = and i32 %124, -8
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i8, ptr %113, i64 %126
  %128 = icmp ult ptr %127, %110
  br i1 %128, label %112, label %129, !llvm.loop !78

129:                                              ; preds = %123, %105
  %130 = getelementptr inbounds %struct.chunk_s, ptr %106, i64 0, i32 8
  %131 = load ptr, ptr %130, align 8, !tbaa !32
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %105, !llvm.loop !79

133:                                              ; preds = %129, %97
  %134 = load ptr, ptr %100, align 8, !tbaa !75
  tail call void %134(ptr noundef %99, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(i64 1400, ptr nonnull %2) #10
  %135 = getelementptr inbounds %struct.alloc_save_s, ptr %2, i64 0, i32 1
  store ptr %0, ptr %135, align 8, !tbaa !60
  %136 = getelementptr inbounds %struct.alloc_save_s, ptr %2, i64 0, i32 2
  store i32 0, ptr %136, align 8, !tbaa !31
  call void @file_restore(ptr noundef nonnull %2, ptr noundef null) #10
  call void @font_restore(ptr noundef nonnull %2) #10
  %137 = load i32, ptr %136, align 8, !tbaa !31
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  call void @name_restore(ptr noundef nonnull %2) #10
  br label %140

140:                                              ; preds = %133, %139
  call void @llvm.lifetime.end.p0(i64 1400, ptr nonnull %2) #10
  %141 = load ptr, ptr %16, align 8, !tbaa !13
  %142 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %141, i64 0, i32 9
  %143 = load ptr, ptr %142, align 8, !tbaa !58
  %144 = icmp eq ptr %143, null
  br i1 %144, label %156, label %145

145:                                              ; preds = %140, %154
  %146 = phi ptr [ %148, %154 ], [ %143, %140 ]
  %147 = getelementptr inbounds %struct.chunk_s, ptr %146, i64 0, i32 8
  %148 = load ptr, ptr %147, align 8, !tbaa !86
  %149 = getelementptr inbounds %struct.chunk_s, ptr %146, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !42
  %151 = getelementptr inbounds i8, ptr %150, i64 16
  %152 = icmp eq ptr %151, %141
  br i1 %152, label %154, label %153

153:                                              ; preds = %145
  call void @alloc_free_chunk(ptr noundef nonnull %146, ptr noundef %141) #10
  br label %154

154:                                              ; preds = %153, %145
  %155 = icmp eq ptr %148, null
  br i1 %155, label %156, label %145, !llvm.loop !87

156:                                              ; preds = %154, %140
  %157 = load ptr, ptr %53, align 8, !tbaa !13
  %158 = load ptr, ptr %16, align 8, !tbaa !13
  %159 = icmp eq ptr %157, %158
  br i1 %159, label %180, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %157, i64 0, i32 18
  %162 = load i32, ptr %161, align 8, !tbaa !14
  %163 = add nsw i32 %162, -1
  store i32 %163, ptr %161, align 8, !tbaa !14
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %157, i64 0, i32 9
  %167 = load ptr, ptr %166, align 8, !tbaa !58
  %168 = icmp eq ptr %167, null
  br i1 %168, label %180, label %169

169:                                              ; preds = %165, %178
  %170 = phi ptr [ %172, %178 ], [ %167, %165 ]
  %171 = getelementptr inbounds %struct.chunk_s, ptr %170, i64 0, i32 8
  %172 = load ptr, ptr %171, align 8, !tbaa !86
  %173 = getelementptr inbounds %struct.chunk_s, ptr %170, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !42
  %175 = getelementptr inbounds i8, ptr %174, i64 16
  %176 = icmp eq ptr %175, %157
  br i1 %176, label %178, label %177

177:                                              ; preds = %169
  call void @alloc_free_chunk(ptr noundef nonnull %170, ptr noundef %157) #10
  br label %178

178:                                              ; preds = %177, %169
  %179 = icmp eq ptr %172, null
  br i1 %179, label %180, label %169, !llvm.loop !87

180:                                              ; preds = %178, %165, %160, %156
  %181 = load ptr, ptr %98, align 8, !tbaa !13
  %182 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %181, i64 0, i32 9
  %183 = load ptr, ptr %182, align 8, !tbaa !58
  %184 = icmp eq ptr %183, null
  br i1 %184, label %196, label %185

185:                                              ; preds = %180, %194
  %186 = phi ptr [ %188, %194 ], [ %183, %180 ]
  %187 = getelementptr inbounds %struct.chunk_s, ptr %186, i64 0, i32 8
  %188 = load ptr, ptr %187, align 8, !tbaa !86
  %189 = getelementptr inbounds %struct.chunk_s, ptr %186, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !42
  %191 = getelementptr inbounds i8, ptr %190, i64 16
  %192 = icmp eq ptr %191, %181
  br i1 %192, label %194, label %193

193:                                              ; preds = %185
  call void @alloc_free_chunk(ptr noundef nonnull %186, ptr noundef %181) #10
  br label %194

194:                                              ; preds = %193, %185
  %195 = icmp eq ptr %188, null
  br i1 %195, label %196, label %185, !llvm.loop !87

196:                                              ; preds = %194, %180
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @alloc_forget_save(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.alloc_save_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %3, i64 0, i32 1, i32 0, i64 3
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %5, i64 0, i32 20
  %7 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %3, i64 0, i32 3
  %8 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %3, i64 0, i32 3
  %9 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %5, i64 0, i32 19
  br label %10

10:                                               ; preds = %109, %1
  %11 = load ptr, ptr %6, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.alloc_save_s, ptr %11, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !28
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %8, align 4, !tbaa !5
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %8, align 4, !tbaa !5
  br label %18

18:                                               ; preds = %15, %10
  %19 = load i32, ptr %7, align 4, !tbaa !5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %112, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %9, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %11, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !32
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %21, %34
  %27 = phi ptr [ %35, %34 ], [ %24, %21 ]
  %28 = getelementptr inbounds %struct.alloc_change_s, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !33
  %30 = load i16, ptr %29, align 2, !tbaa !37
  %31 = icmp ugt i16 %30, 16383
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = or i16 %30, 2
  store i16 %33, ptr %29, align 8, !tbaa !38
  br label %34

34:                                               ; preds = %32, %26
  %35 = load ptr, ptr %27, align 8, !tbaa !32
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %26, !llvm.loop !39

37:                                               ; preds = %34, %21
  %38 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %11, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !32
  %40 = icmp eq ptr %39, null
  br i1 %40, label %103, label %41

41:                                               ; preds = %37, %99
  %42 = phi ptr [ %101, %99 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.chunk_s, ptr %42, i64 0, i32 12
  %44 = load i32, ptr %43, align 4, !tbaa !41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %99, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.chunk_s, ptr %42, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  %49 = getelementptr inbounds %struct.chunk_s, ptr %42, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = icmp ult ptr %48, %50
  br i1 %51, label %52, label %97

52:                                               ; preds = %46, %91
  %53 = phi i32 [ %92, %91 ], [ 0, %46 ]
  %54 = phi ptr [ %95, %91 ], [ %48, %46 ]
  %55 = load i8, ptr %54, align 8
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = load i32, ptr %54, align 8
  %60 = lshr i32 %59, 3
  %61 = zext nneg i32 %60 to i64
  %62 = shl nuw nsw i64 %61, 32
  %63 = getelementptr inbounds %struct.obj_header_data_s, ptr %54, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !13
  %65 = zext i32 %64 to i64
  %66 = or disjoint i64 %62, %65
  br label %71

67:                                               ; preds = %52
  %68 = getelementptr inbounds %struct.obj_header_data_s, ptr %54, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !13
  %70 = zext i32 %69 to i64
  br label %71

71:                                               ; preds = %67, %58
  %72 = phi i64 [ %66, %58 ], [ %70, %67 ]
  %73 = getelementptr inbounds %struct.obj_header_data_s, ptr %54, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !13
  %75 = icmp eq ptr %74, @st_refs
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.obj_header_s, ptr %54, i64 1
  %78 = getelementptr inbounds i8, ptr %77, i64 %72
  br label %79

79:                                               ; preds = %89, %76
  %80 = phi ptr [ %77, %76 ], [ %90, %89 ]
  %81 = load i16, ptr %80, align 2, !tbaa !37
  %82 = icmp ugt i16 %81, 16383
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = getelementptr inbounds i16, ptr %80, i64 1
  br label %89

85:                                               ; preds = %79
  %86 = or i16 %81, 2
  store i16 %86, ptr %80, align 8, !tbaa !38
  %87 = getelementptr inbounds i16, ptr %80, i64 8
  %88 = icmp ult ptr %87, %78
  br i1 %88, label %89, label %91

89:                                               ; preds = %85, %83
  %90 = phi ptr [ %84, %83 ], [ %87, %85 ]
  br label %79, !llvm.loop !81

91:                                               ; preds = %85, %71
  %92 = phi i32 [ %53, %71 ], [ 1, %85 ]
  %93 = add nuw nsw i64 %72, 23
  %94 = and i64 %93, 4294967288
  %95 = getelementptr inbounds i8, ptr %54, i64 %94
  %96 = icmp ult ptr %95, %50
  br i1 %96, label %52, label %97, !llvm.loop !45

97:                                               ; preds = %91, %46
  %98 = phi i32 [ 0, %46 ], [ %92, %91 ]
  store i32 %98, ptr %43, align 4, !tbaa !41
  br label %99

99:                                               ; preds = %97, %41
  %100 = getelementptr inbounds %struct.chunk_s, ptr %42, i64 0, i32 9
  %101 = load ptr, ptr %100, align 8, !tbaa !32
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %41, !llvm.loop !46

103:                                              ; preds = %99, %37
  %104 = icmp eq ptr %22, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %103, %105
  %106 = phi ptr [ %107, %105 ], [ %22, %103 ]
  %107 = load ptr, ptr %106, align 8, !tbaa !65
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %105, !llvm.loop !92

109:                                              ; preds = %105, %103
  %110 = phi ptr [ %9, %103 ], [ %106, %105 ]
  store ptr %24, ptr %110, align 8, !tbaa !32
  tail call void @file_forget_save(ptr noundef %11) #10
  tail call fastcc void @combine_space(ptr noundef %5)
  %111 = icmp eq ptr %11, %0
  br i1 %111, label %293, label %10, !llvm.loop !93

112:                                              ; preds = %18
  %113 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %5, i64 0, i32 19
  %114 = load ptr, ptr %113, align 8, !tbaa !64
  %115 = icmp eq ptr %114, null
  br i1 %115, label %130, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 11
  br label %118

118:                                              ; preds = %126, %116
  %119 = phi ptr [ %114, %116 ], [ %127, %126 ]
  %120 = getelementptr inbounds %struct.alloc_change_s, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !33
  %122 = load i16, ptr %121, align 2, !tbaa !37
  %123 = icmp ugt i16 %122, 16383
  br i1 %123, label %126, label %124

124:                                              ; preds = %118
  %125 = and i16 %122, 16381
  store i16 %125, ptr %121, align 8, !tbaa !38
  br label %126

126:                                              ; preds = %124, %118
  %127 = load ptr, ptr %119, align 8, !tbaa !65
  %128 = load ptr, ptr %117, align 8, !tbaa !25
  tail call void %128(ptr noundef %5, ptr noundef nonnull %119, ptr noundef nonnull @.str.13) #10
  %129 = icmp eq ptr %127, null
  br i1 %129, label %130, label %118, !llvm.loop !94

130:                                              ; preds = %126, %112
  store ptr null, ptr %113, align 8, !tbaa !64
  %131 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %5, i64 0, i32 8
  %132 = load ptr, ptr %131, align 8, !tbaa !32
  %133 = icmp eq ptr %132, null
  br i1 %133, label %196, label %134

134:                                              ; preds = %130, %192
  %135 = phi ptr [ %194, %192 ], [ %132, %130 ]
  %136 = getelementptr inbounds %struct.chunk_s, ptr %135, i64 0, i32 12
  %137 = load i32, ptr %136, align 4, !tbaa !41
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %192, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.chunk_s, ptr %135, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !42
  %142 = getelementptr inbounds %struct.chunk_s, ptr %135, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !43
  %144 = icmp ult ptr %141, %143
  br i1 %144, label %145, label %190

145:                                              ; preds = %139, %184
  %146 = phi i32 [ %185, %184 ], [ 0, %139 ]
  %147 = phi ptr [ %188, %184 ], [ %141, %139 ]
  %148 = load i8, ptr %147, align 8
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %145
  %152 = load i32, ptr %147, align 8
  %153 = lshr i32 %152, 3
  %154 = zext nneg i32 %153 to i64
  %155 = shl nuw nsw i64 %154, 32
  %156 = getelementptr inbounds %struct.obj_header_data_s, ptr %147, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !13
  %158 = zext i32 %157 to i64
  %159 = or disjoint i64 %155, %158
  br label %164

160:                                              ; preds = %145
  %161 = getelementptr inbounds %struct.obj_header_data_s, ptr %147, i64 0, i32 1
  %162 = load i32, ptr %161, align 4, !tbaa !13
  %163 = zext i32 %162 to i64
  br label %164

164:                                              ; preds = %160, %151
  %165 = phi i64 [ %159, %151 ], [ %163, %160 ]
  %166 = getelementptr inbounds %struct.obj_header_data_s, ptr %147, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !13
  %168 = icmp eq ptr %167, @st_refs
  br i1 %168, label %169, label %184

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.obj_header_s, ptr %147, i64 1
  %171 = getelementptr inbounds i8, ptr %170, i64 %165
  br label %172

172:                                              ; preds = %182, %169
  %173 = phi ptr [ %170, %169 ], [ %183, %182 ]
  %174 = load i16, ptr %173, align 2, !tbaa !37
  %175 = icmp ugt i16 %174, 16383
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = getelementptr inbounds i16, ptr %173, i64 1
  br label %182

178:                                              ; preds = %172
  %179 = and i16 %174, 16381
  store i16 %179, ptr %173, align 8, !tbaa !38
  %180 = getelementptr inbounds i16, ptr %173, i64 8
  %181 = icmp ult ptr %180, %171
  br i1 %181, label %182, label %184

182:                                              ; preds = %178, %176
  %183 = phi ptr [ %177, %176 ], [ %180, %178 ]
  br label %172, !llvm.loop !44

184:                                              ; preds = %178, %164
  %185 = phi i32 [ %146, %164 ], [ 1, %178 ]
  %186 = add nuw nsw i64 %165, 23
  %187 = and i64 %186, 4294967288
  %188 = getelementptr inbounds i8, ptr %147, i64 %187
  %189 = icmp ult ptr %188, %143
  br i1 %189, label %145, label %190, !llvm.loop !45

190:                                              ; preds = %184, %139
  %191 = phi i32 [ 0, %139 ], [ %185, %184 ]
  store i32 %191, ptr %136, align 4, !tbaa !41
  br label %192

192:                                              ; preds = %190, %134
  %193 = getelementptr inbounds %struct.chunk_s, ptr %135, i64 0, i32 9
  %194 = load ptr, ptr %193, align 8, !tbaa !32
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %134, !llvm.loop !46

196:                                              ; preds = %192, %130
  tail call void @file_forget_save(ptr noundef %11) #10
  tail call fastcc void @combine_space(ptr noundef %5)
  %197 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %3, i64 0, i32 1, i32 0, i64 2
  %198 = load ptr, ptr %197, align 8, !tbaa !13
  %199 = load ptr, ptr %4, align 8, !tbaa !13
  %200 = icmp eq ptr %198, %199
  br i1 %200, label %290, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %198, i64 0, i32 20
  %203 = load ptr, ptr %202, align 8, !tbaa !63
  %204 = icmp eq ptr %203, null
  br i1 %204, label %290, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %198, i64 0, i32 19
  %207 = load ptr, ptr %206, align 8, !tbaa !64
  %208 = icmp eq ptr %207, null
  br i1 %208, label %223, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %198, i64 0, i32 11
  br label %211

211:                                              ; preds = %219, %209
  %212 = phi ptr [ %207, %209 ], [ %220, %219 ]
  %213 = getelementptr inbounds %struct.alloc_change_s, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !33
  %215 = load i16, ptr %214, align 2, !tbaa !37
  %216 = icmp ugt i16 %215, 16383
  br i1 %216, label %219, label %217

217:                                              ; preds = %211
  %218 = and i16 %215, 16381
  store i16 %218, ptr %214, align 8, !tbaa !38
  br label %219

219:                                              ; preds = %217, %211
  %220 = load ptr, ptr %212, align 8, !tbaa !65
  %221 = load ptr, ptr %210, align 8, !tbaa !25
  tail call void %221(ptr noundef %198, ptr noundef nonnull %212, ptr noundef nonnull @.str.13) #10
  %222 = icmp eq ptr %220, null
  br i1 %222, label %223, label %211, !llvm.loop !94

223:                                              ; preds = %219, %205
  store ptr null, ptr %206, align 8, !tbaa !64
  %224 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %198, i64 0, i32 8
  %225 = load ptr, ptr %224, align 8, !tbaa !32
  %226 = icmp eq ptr %225, null
  br i1 %226, label %289, label %227

227:                                              ; preds = %223, %285
  %228 = phi ptr [ %287, %285 ], [ %225, %223 ]
  %229 = getelementptr inbounds %struct.chunk_s, ptr %228, i64 0, i32 12
  %230 = load i32, ptr %229, align 4, !tbaa !41
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %285, label %232

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.chunk_s, ptr %228, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !42
  %235 = getelementptr inbounds %struct.chunk_s, ptr %228, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !43
  %237 = icmp ult ptr %234, %236
  br i1 %237, label %238, label %283

238:                                              ; preds = %232, %277
  %239 = phi i32 [ %278, %277 ], [ 0, %232 ]
  %240 = phi ptr [ %281, %277 ], [ %234, %232 ]
  %241 = load i8, ptr %240, align 8
  %242 = and i8 %241, 1
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %253, label %244

244:                                              ; preds = %238
  %245 = load i32, ptr %240, align 8
  %246 = lshr i32 %245, 3
  %247 = zext nneg i32 %246 to i64
  %248 = shl nuw nsw i64 %247, 32
  %249 = getelementptr inbounds %struct.obj_header_data_s, ptr %240, i64 0, i32 1
  %250 = load i32, ptr %249, align 4, !tbaa !13
  %251 = zext i32 %250 to i64
  %252 = or disjoint i64 %248, %251
  br label %257

253:                                              ; preds = %238
  %254 = getelementptr inbounds %struct.obj_header_data_s, ptr %240, i64 0, i32 1
  %255 = load i32, ptr %254, align 4, !tbaa !13
  %256 = zext i32 %255 to i64
  br label %257

257:                                              ; preds = %253, %244
  %258 = phi i64 [ %252, %244 ], [ %256, %253 ]
  %259 = getelementptr inbounds %struct.obj_header_data_s, ptr %240, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !13
  %261 = icmp eq ptr %260, @st_refs
  br i1 %261, label %262, label %277

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.obj_header_s, ptr %240, i64 1
  %264 = getelementptr inbounds i8, ptr %263, i64 %258
  br label %265

265:                                              ; preds = %275, %262
  %266 = phi ptr [ %263, %262 ], [ %276, %275 ]
  %267 = load i16, ptr %266, align 2, !tbaa !37
  %268 = icmp ugt i16 %267, 16383
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = getelementptr inbounds i16, ptr %266, i64 1
  br label %275

271:                                              ; preds = %265
  %272 = and i16 %267, 16381
  store i16 %272, ptr %266, align 8, !tbaa !38
  %273 = getelementptr inbounds i16, ptr %266, i64 8
  %274 = icmp ult ptr %273, %264
  br i1 %274, label %275, label %277

275:                                              ; preds = %271, %269
  %276 = phi ptr [ %270, %269 ], [ %273, %271 ]
  br label %265, !llvm.loop !44

277:                                              ; preds = %271, %257
  %278 = phi i32 [ %239, %257 ], [ 1, %271 ]
  %279 = add nuw nsw i64 %258, 23
  %280 = and i64 %279, 4294967288
  %281 = getelementptr inbounds i8, ptr %240, i64 %280
  %282 = icmp ult ptr %281, %236
  br i1 %282, label %238, label %283, !llvm.loop !45

283:                                              ; preds = %277, %232
  %284 = phi i32 [ 0, %232 ], [ %278, %277 ]
  store i32 %284, ptr %229, align 4, !tbaa !41
  br label %285

285:                                              ; preds = %283, %227
  %286 = getelementptr inbounds %struct.chunk_s, ptr %228, i64 0, i32 9
  %287 = load ptr, ptr %286, align 8, !tbaa !32
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %227, !llvm.loop !46

289:                                              ; preds = %285, %223
  tail call fastcc void @combine_space(ptr noundef %198)
  br label %290

290:                                              ; preds = %289, %201, %196
  %291 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %3, i64 0, i32 5
  store i32 -1, ptr %291, align 8, !tbaa !11
  %292 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %3, i64 0, i32 6
  store i32 0, ptr %292, align 4, !tbaa !12
  br label %293

293:                                              ; preds = %109, %290
  ret void
}

declare void @file_forget_save(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @combine_space(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  tail call void @alloc_close_chunk(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %65, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 11
  %9 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 12, i32 1
  %10 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 1
  br label %11

11:                                               ; preds = %7, %63
  %12 = phi ptr [ %5, %7 ], [ %14, %63 ]
  %13 = getelementptr inbounds %struct.chunk_s, ptr %12, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = getelementptr inbounds %struct.chunk_s, ptr %12, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  tail call void @alloc_link_chunk(ptr noundef nonnull %12, ptr noundef %3) #10
  br label %63

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.chunk_s, ptr %16, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !97
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 8, !tbaa !97
  %23 = load ptr, ptr %8, align 8, !tbaa !24
  %24 = icmp eq ptr %23, %12
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store ptr %16, ptr %8, align 8, !tbaa !24
  br label %26

26:                                               ; preds = %25, %19
  %27 = load ptr, ptr %9, align 8, !tbaa !98
  %28 = icmp eq ptr %27, %12
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store ptr %16, ptr %9, align 8, !tbaa !98
  br label %30

30:                                               ; preds = %29, %26
  %31 = getelementptr inbounds %struct.chunk_s, ptr %16, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = load i8, ptr %32, align 8
  %34 = and i8 %33, -2
  store i8 %34, ptr %32, align 8
  %35 = load ptr, ptr %12, align 8, !tbaa !99
  %36 = getelementptr inbounds %struct.chunk_head_s, ptr %35, i64 1
  %37 = getelementptr inbounds %struct.obj_header_s, ptr %32, i64 1
  %38 = ptrtoint ptr %36 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.obj_header_data_s, ptr %32, i64 0, i32 1
  store i32 %41, ptr %42, align 4, !tbaa !13
  %43 = getelementptr inbounds %struct.obj_header_data_s, ptr %32, i64 0, i32 2
  store ptr @st_bytes, ptr %43, align 8, !tbaa !13
  %44 = getelementptr inbounds %struct.chunk_s, ptr %12, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  store ptr %45, ptr %31, align 8, !tbaa !43
  %46 = getelementptr inbounds %struct.chunk_s, ptr %12, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !100
  %48 = getelementptr inbounds %struct.chunk_s, ptr %16, i64 0, i32 3
  store ptr %47, ptr %48, align 8, !tbaa !100
  %49 = getelementptr inbounds %struct.chunk_s, ptr %12, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !101
  %51 = getelementptr inbounds %struct.chunk_s, ptr %16, i64 0, i32 4
  store ptr %50, ptr %51, align 8, !tbaa !101
  %52 = getelementptr inbounds %struct.chunk_s, ptr %12, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !102
  %54 = getelementptr inbounds %struct.chunk_s, ptr %16, i64 0, i32 5
  store ptr %53, ptr %54, align 8, !tbaa !102
  %55 = getelementptr inbounds %struct.chunk_s, ptr %12, i64 0, i32 12
  %56 = load i32, ptr %55, align 4, !tbaa !41
  %57 = getelementptr inbounds %struct.chunk_s, ptr %16, i64 0, i32 12
  %58 = load i32, ptr %57, align 4, !tbaa !41
  %59 = or i32 %58, %56
  store i32 %59, ptr %57, align 4, !tbaa !41
  %60 = load ptr, ptr %10, align 8, !tbaa !27
  %61 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %60, i64 0, i32 11
  %62 = load ptr, ptr %61, align 8, !tbaa !25
  tail call void %62(ptr noundef %60, ptr noundef nonnull %12, ptr noundef nonnull @.str.11) #10
  br label %63

63:                                               ; preds = %18, %30
  %64 = icmp eq ptr %14, null
  br i1 %64, label %65, label %11, !llvm.loop !103

65:                                               ; preds = %63, %1
  %66 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %3, i64 0, i32 8
  %67 = load ptr, ptr %66, align 8, !tbaa !59
  store ptr %67, ptr %4, align 8, !tbaa !59
  %68 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %3, i64 0, i32 9
  %69 = load ptr, ptr %68, align 8, !tbaa !58
  %70 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 9
  store ptr %69, ptr %70, align 8, !tbaa !58
  %71 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %3, i64 0, i32 13
  %72 = load i64, ptr %71, align 8, !tbaa !104
  %73 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 13
  %74 = load i64, ptr %73, align 8, !tbaa !104
  %75 = add i64 %74, %72
  store i64 %75, ptr %73, align 8, !tbaa !104
  %76 = load i64, ptr %71, align 8, !tbaa !104
  %77 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 15
  %78 = load i64, ptr %77, align 8, !tbaa !105
  %79 = add i64 %78, %76
  store i64 %79, ptr %77, align 8, !tbaa !105
  %80 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %3, i64 0, i32 16
  %81 = load i64, ptr %80, align 8, !tbaa !106
  %82 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 16
  %83 = load i64, ptr %82, align 8, !tbaa !106
  %84 = add i64 %83, %81
  store i64 %84, ptr %82, align 8, !tbaa !106
  %85 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %3, i64 0, i32 16, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !107
  %87 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 16, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !107
  %89 = add i64 %88, %86
  store i64 %89, ptr %87, align 8, !tbaa !107
  %90 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %3, i64 0, i32 16, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !108
  %92 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 16, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !108
  %94 = add i64 %93, %91
  store i64 %94, ptr %92, align 8, !tbaa !108
  %95 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %3, i64 0, i32 20
  %96 = load ptr, ptr %95, align 8, !tbaa !63
  store ptr %96, ptr %2, align 8, !tbaa !63
  %97 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 22
  %98 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %3, i64 0, i32 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef nonnull align 8 dereferenceable(16) %98, i64 16, i1 false), !tbaa.struct !109
  br label %99

99:                                               ; preds = %65, %114
  %100 = phi i64 [ 0, %65 ], [ %115, %114 ]
  %101 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %3, i64 0, i32 23, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !32
  %103 = icmp eq ptr %102, null
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 23, i64 %100
  %106 = load ptr, ptr %105, align 8, !tbaa !32
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %104, %108
  %109 = phi ptr [ %110, %108 ], [ %106, %104 ]
  %110 = load ptr, ptr %109, align 8, !tbaa !32
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %108, !llvm.loop !110

112:                                              ; preds = %108, %104
  %113 = phi ptr [ %105, %104 ], [ %109, %108 ]
  store ptr %102, ptr %113, align 8, !tbaa !32
  br label %114

114:                                              ; preds = %112, %99
  %115 = add nuw nsw i64 %100, 1
  %116 = icmp eq i64 %115, 101
  br i1 %116, label %117, label %99, !llvm.loop !111

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %119 = load ptr, ptr %118, align 8, !tbaa !25
  tail call void %119(ptr noundef %0, ptr noundef %3, ptr noundef nonnull @.str.12) #10
  tail call void @alloc_open_chunk(ptr noundef %0) #10
  ret void
}

declare void @alloc_close_chunk(ptr noundef) local_unnamed_addr #3

declare void @ialloc_reset(ptr noundef) local_unnamed_addr #3

declare void @alloc_init_chunk(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @name_memory() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @save_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_ref_memory, i64 0, i32 4), align 8, !tbaa !112
  %8 = add i32 %2, -1
  %9 = tail call ptr %7(ptr noundef %0, i32 noundef %1, i32 noundef %8, ptr noundef %3) #10
  br label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.alloc_save_s, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  store ptr %12, ptr %3, align 8, !tbaa !32
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ @ptr_struct_procs, %10 ], [ %9, %6 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal void @save_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_ref_memory, i64 0, i32 5), align 8, !tbaa !113
  tail call void %4(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10
  %5 = getelementptr inbounds %struct.alloc_save_s, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %6, ptr noundef %2) #10
  store ptr %7, ptr %5, align 8, !tbaa !30
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @change_clear_marks(ptr nocapture noundef %0, i32 %1) #8 {
  %3 = getelementptr inbounds %struct.alloc_change_s, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !37
  %5 = icmp ugt i16 %4, 16383
  %6 = select i1 %5, i16 -4097, i16 16382
  %7 = and i16 %6, %4
  store i16 %7, ptr %3, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @change_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #8 {
  switch i32 %2, label %25 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %20
  ]

5:                                                ; preds = %4
  %6 = load ptr, ptr %0, align 8, !tbaa !65
  br label %22

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.alloc_change_s, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !66
  %10 = icmp sgt i16 %9, -1
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = zext nneg i16 %9 to i64
  %13 = getelementptr inbounds %struct.alloc_change_s, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = sub nsw i64 0, %12
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  br label %22

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.alloc_change_s, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  br label %22

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.alloc_change_s, ptr %0, i64 0, i32 2
  br label %22

22:                                               ; preds = %5, %11, %17, %20
  %23 = phi ptr [ %21, %20 ], [ %19, %17 ], [ %16, %11 ], [ %6, %5 ]
  %24 = phi ptr [ @ptr_ref_procs, %20 ], [ @ptr_ref_procs, %17 ], [ @ptr_struct_procs, %11 ], [ @ptr_struct_procs, %5 ]
  store ptr %23, ptr %3, align 8, !tbaa !32
  br label %25

25:                                               ; preds = %22, %4
  %26 = phi ptr [ null, %4 ], [ %24, %22 ]
  ret ptr %26
}

; Function Attrs: nounwind uwtable
define internal void @change_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !65
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #10
  store ptr %5, ptr %0, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.alloc_change_s, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !66
  switch i16 %7, label %12 [
    i16 -2, label %22
    i16 -1, label %8
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.alloc_change_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !33
  %11 = tail call ptr @gs_reloc_ref_ptr(ptr noundef %10, ptr noundef %2) #10
  store ptr %11, ptr %9, align 8, !tbaa !33
  br label %22

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.alloc_change_s, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = sext i16 %7 to i64
  %16 = sub nsw i64 0, %15
  %17 = getelementptr inbounds i8, ptr %14, i64 %16
  %18 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %17, ptr noundef %2) #10
  %19 = load i16, ptr %6, align 8, !tbaa !66
  %20 = sext i16 %19 to i64
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  store ptr %21, ptr %13, align 8, !tbaa !33
  br label %22

22:                                               ; preds = %12, %8, %3
  %23 = getelementptr inbounds %struct.alloc_change_s, ptr %0, i64 0, i32 2
  %24 = load i16, ptr %23, align 8, !tbaa !37
  %25 = icmp ugt i16 %24, 16383
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = and i16 %24, -4097
  br label %31

28:                                               ; preds = %22
  tail call void @gs_reloc_refs(ptr noundef nonnull %23, ptr noundef nonnull %6, ptr noundef %2) #10
  %29 = load i16, ptr %23, align 8, !tbaa !114
  %30 = and i16 %29, -2
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i16 [ %30, %28 ], [ %27, %26 ]
  store i16 %32, ptr %23, align 8, !tbaa !37
  ret void
}

declare ptr @gs_reloc_ref_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gs_reloc_refs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @alloc_open_chunk(ptr noundef) local_unnamed_addr #3

declare void @file_restore(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @font_restore(ptr noundef) local_unnamed_addr #3

declare void @name_restore(ptr noundef) local_unnamed_addr #3

declare void @alloc_free_chunk(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @alloc_link_chunk(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 44}
!6 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !10, i64 40, !10, i64 44, !7, i64 48, !10, i64 56, !10, i64 60}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 56}
!12 = !{!6, !10, i64 60}
!13 = !{!8, !8, i64 0}
!14 = !{!15, !10, i64 512}
!15 = !{!"gs_ref_memory_s", !16, i64 0, !7, i64 160, !10, i64 168, !10, i64 172, !7, i64 176, !10, i64 184, !17, i64 192, !18, i64 232, !7, i64 240, !7, i64 248, !19, i64 256, !7, i64 432, !21, i64 440, !18, i64 456, !18, i64 464, !18, i64 472, !22, i64 480, !7, i64 504, !10, i64 512, !7, i64 520, !7, i64 528, !7, i64 536, !23, i64 544, !8, i64 560}
!16 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!17 = !{!"gs_memory_gc_status_s", !18, i64 0, !18, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !18, i64 32}
!18 = !{!"long", !8, i64 0}
!19 = !{!"chunk_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !10, i64 92, !7, i64 96, !20, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168}
!20 = !{!"short", !8, i64 0}
!21 = !{!"chunk_locator_s", !7, i64 0, !7, i64 8}
!22 = !{!"lost_", !18, i64 0, !18, i64 8, !18, i64 16}
!23 = !{!"gs_memory_status_s", !18, i64 0, !18, i64 8}
!24 = !{!15, !7, i64 432}
!25 = !{!26, !7, i64 88}
!26 = !{!"gs_memory_s", !16, i64 0}
!27 = !{!15, !7, i64 160}
!28 = !{!29, !18, i64 1384}
!29 = !{!"alloc_save_s", !15, i64 0, !7, i64 1368, !10, i64 1376, !10, i64 1380, !18, i64 1384, !7, i64 1392}
!30 = !{!29, !7, i64 1392}
!31 = !{!29, !10, i64 1376}
!32 = !{!7, !7, i64 0}
!33 = !{!34, !7, i64 8}
!34 = !{!"alloc_change_s", !7, i64 0, !7, i64 8, !35, i64 16, !20, i64 32}
!35 = !{!"ref_s", !36, i64 0, !8, i64 8}
!36 = !{!"tas_s", !20, i64 0, !20, i64 2}
!37 = !{!20, !20, i64 0}
!38 = !{!35, !20, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!19, !10, i64 92}
!42 = !{!19, !7, i64 8}
!43 = !{!19, !7, i64 16}
!44 = distinct !{!44, !40}
!45 = distinct !{!45, !40}
!46 = distinct !{!46, !40}
!47 = !{!29, !18, i64 456}
!48 = !{!29, !18, i64 464}
!49 = !{!15, !18, i64 464}
!50 = !{!15, !7, i64 296}
!51 = !{!15, !7, i64 272}
!52 = !{!26, !7, i64 16}
!53 = !{i64 0, i64 8, !32, i64 8, i64 8, !32, i64 16, i64 8, !32, i64 24, i64 8, !32, i64 32, i64 8, !32, i64 40, i64 8, !32, i64 48, i64 8, !32, i64 56, i64 8, !32, i64 64, i64 8, !32, i64 72, i64 8, !32, i64 80, i64 8, !32, i64 88, i64 8, !32, i64 96, i64 8, !32, i64 104, i64 8, !32, i64 112, i64 8, !32, i64 120, i64 8, !32, i64 128, i64 8, !32, i64 136, i64 8, !32, i64 144, i64 8, !32, i64 152, i64 8, !32, i64 160, i64 8, !32, i64 168, i64 4, !54, i64 172, i64 4, !54, i64 176, i64 8, !32, i64 184, i64 4, !54, i64 192, i64 8, !55, i64 200, i64 8, !55, i64 208, i64 8, !32, i64 216, i64 4, !54, i64 220, i64 4, !54, i64 224, i64 8, !55, i64 232, i64 8, !55, i64 240, i64 8, !32, i64 248, i64 8, !32, i64 256, i64 8, !32, i64 264, i64 8, !32, i64 272, i64 8, !32, i64 280, i64 8, !32, i64 288, i64 8, !32, i64 296, i64 8, !32, i64 304, i64 8, !32, i64 312, i64 8, !32, i64 320, i64 8, !32, i64 328, i64 8, !32, i64 336, i64 8, !32, i64 344, i64 4, !54, i64 348, i64 4, !54, i64 352, i64 8, !32, i64 360, i64 2, !37, i64 368, i64 8, !32, i64 376, i64 8, !32, i64 384, i64 4, !54, i64 392, i64 8, !32, i64 400, i64 8, !32, i64 408, i64 8, !32, i64 416, i64 8, !32, i64 424, i64 8, !32, i64 432, i64 8, !32, i64 440, i64 8, !32, i64 448, i64 8, !32, i64 456, i64 8, !55, i64 464, i64 8, !55, i64 472, i64 8, !55, i64 480, i64 8, !55, i64 488, i64 8, !55, i64 496, i64 8, !55, i64 504, i64 8, !32, i64 512, i64 4, !54, i64 520, i64 8, !32, i64 528, i64 8, !32, i64 536, i64 8, !32, i64 544, i64 8, !55, i64 552, i64 8, !55, i64 560, i64 808, !13}
!54 = !{!10, !10, i64 0}
!55 = !{!18, !18, i64 0}
!56 = !{!26, !7, i64 144}
!57 = !{i64 0, i64 8, !32, i64 8, i64 8, !32, i64 16, i64 8, !32, i64 24, i64 8, !32, i64 32, i64 8, !32, i64 40, i64 8, !32, i64 48, i64 8, !32, i64 56, i64 8, !32, i64 64, i64 8, !32, i64 72, i64 8, !32, i64 80, i64 8, !32, i64 88, i64 4, !54, i64 92, i64 4, !54, i64 96, i64 8, !32, i64 104, i64 2, !37, i64 112, i64 8, !32, i64 120, i64 8, !32, i64 128, i64 4, !54, i64 136, i64 8, !32, i64 144, i64 8, !32, i64 152, i64 8, !32, i64 160, i64 8, !32, i64 168, i64 8, !32}
!58 = !{!15, !7, i64 248}
!59 = !{!15, !7, i64 240}
!60 = !{!29, !7, i64 1368}
!61 = !{!6, !7, i64 0}
!62 = !{!29, !10, i64 1380}
!63 = !{!15, !7, i64 528}
!64 = !{!15, !7, i64 520}
!65 = !{!34, !7, i64 0}
!66 = !{!34, !20, i64 32}
!67 = distinct !{!67, !40}
!68 = !{!19, !7, i64 56}
!69 = distinct !{!69, !40}
!70 = distinct !{!70, !40}
!71 = distinct !{!71, !40}
!72 = !{!73, !7, i64 8}
!73 = !{!"name_s", !20, i64 0, !10, i64 2, !10, i64 2, !10, i64 2, !7, i64 8, !7, i64 16}
!74 = distinct !{!74, !40}
!75 = !{!26, !7, i64 152}
!76 = !{!77, !7, i64 48}
!77 = !{!"gs_memory_struct_type_s", !10, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!78 = distinct !{!78, !40}
!79 = distinct !{!79, !40}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = distinct !{!82, !40}
!83 = !{i64 0, i64 8, !32, i64 8, i64 8, !32, i64 16, i64 8, !32, i64 24, i64 8, !32, i64 32, i64 8, !32, i64 40, i64 8, !32, i64 48, i64 8, !32, i64 56, i64 8, !32, i64 64, i64 8, !32, i64 72, i64 8, !32, i64 80, i64 8, !32, i64 88, i64 8, !32, i64 96, i64 8, !32, i64 104, i64 8, !32, i64 112, i64 8, !32, i64 120, i64 8, !32, i64 128, i64 8, !32, i64 136, i64 8, !32, i64 144, i64 8, !32, i64 152, i64 8, !32, i64 160, i64 8, !32, i64 168, i64 4, !54, i64 172, i64 4, !54, i64 176, i64 8, !32, i64 184, i64 4, !54, i64 192, i64 8, !55, i64 200, i64 8, !55, i64 208, i64 8, !32, i64 216, i64 4, !54, i64 220, i64 4, !54, i64 224, i64 8, !55, i64 232, i64 8, !55, i64 240, i64 8, !32, i64 248, i64 8, !32, i64 256, i64 8, !32, i64 264, i64 8, !32, i64 272, i64 8, !32, i64 280, i64 8, !32, i64 288, i64 8, !32, i64 296, i64 8, !32, i64 304, i64 8, !32, i64 312, i64 8, !32, i64 320, i64 8, !32, i64 328, i64 8, !32, i64 336, i64 8, !32, i64 344, i64 4, !54, i64 348, i64 4, !54, i64 352, i64 8, !32, i64 360, i64 2, !37, i64 368, i64 8, !32, i64 376, i64 8, !32, i64 384, i64 4, !54, i64 392, i64 8, !32, i64 400, i64 8, !32, i64 408, i64 8, !32, i64 416, i64 8, !32, i64 424, i64 8, !32, i64 432, i64 8, !32, i64 440, i64 8, !32, i64 448, i64 8, !32, i64 456, i64 8, !55, i64 464, i64 8, !55, i64 472, i64 8, !55, i64 480, i64 8, !55, i64 488, i64 8, !55, i64 496, i64 8, !55, i64 504, i64 8, !32, i64 512, i64 4, !54, i64 520, i64 8, !32, i64 528, i64 8, !32, i64 536, i64 8, !32, i64 544, i64 8, !55, i64 552, i64 8, !55, i64 560, i64 808, !13, i64 1368, i64 8, !32, i64 1376, i64 4, !54, i64 1380, i64 4, !54, i64 1384, i64 8, !55, i64 1392, i64 8, !32}
!84 = !{i64 0, i64 8, !32, i64 8, i64 4, !54, i64 12, i64 4, !54, i64 16, i64 8, !55, i64 24, i64 8, !32}
!85 = !{i64 0, i64 4, !54, i64 4, i64 8, !55, i64 12, i64 8, !32}
!86 = !{!19, !7, i64 64}
!87 = distinct !{!87, !40}
!88 = !{!15, !10, i64 184}
!89 = !{!6, !10, i64 40}
!90 = !{i32 0, i32 2}
!91 = distinct !{!91, !40}
!92 = distinct !{!92, !40}
!93 = distinct !{!93, !40}
!94 = distinct !{!94, !40}
!95 = !{!19, !7, i64 72}
!96 = !{!19, !7, i64 80}
!97 = !{!19, !10, i64 88}
!98 = !{!15, !7, i64 448}
!99 = !{!19, !7, i64 0}
!100 = !{!19, !7, i64 24}
!101 = !{!19, !7, i64 32}
!102 = !{!19, !7, i64 40}
!103 = distinct !{!103, !40}
!104 = !{!15, !18, i64 456}
!105 = !{!15, !18, i64 472}
!106 = !{!15, !18, i64 480}
!107 = !{!15, !18, i64 488}
!108 = !{!15, !18, i64 496}
!109 = !{i64 0, i64 8, !55, i64 8, i64 8, !55}
!110 = distinct !{!110, !40}
!111 = distinct !{!111, !40}
!112 = !{!77, !7, i64 32}
!113 = !{!77, !7, i64 40}
!114 = !{!34, !20, i64 16}
