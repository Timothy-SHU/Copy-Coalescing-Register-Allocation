; ModuleID = 'igc.c'
source_filename = "igc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.op_array_table_s = type { %struct.ref_s, ptr, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t }
%union._f = type { %struct._l }
%struct._l = type { i32 }
%union._t = type { ptr }
%struct.chunk_head_s = type { ptr, %struct.obj_header_s }
%struct.gs_string_s = type { ptr, i32 }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gc_state_s = type { %struct.chunk_locator_s, %union.vm_spaces_s, i32, i32 }
%struct.chunk_locator_s = type { ptr, ptr }
%struct._msd = type { %struct.gc_mark_stack_s, [100 x %struct.ms_entry] }
%struct.gc_mark_stack_s = type { ptr, ptr, i32, i32, [1 x %struct.ms_entry] }
%struct.ms_entry = type { ptr, i32, i32 }
%struct.gs_memory_status_s = type { i64, i64 }
%struct._ssn = type { ptr, ptr, ptr, ptr }
%struct.gs_ref_memory_s = type { %struct.gs_memory_procs_s, ptr, i32, i32, ptr, i32, %struct.gs_memory_gc_status_s, i64, ptr, ptr, %struct.chunk_s, ptr, %struct.chunk_locator_s, i64, i64, i64, %struct.lost_, ptr, i32, ptr, ptr, ptr, %struct.gs_memory_status_s, [101 x ptr] }
%struct.gs_memory_gc_status_s = type { i64, i64, ptr, i32, i32, i64 }
%struct.chunk_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i16, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.lost_ = type { i64, i64, i64 }
%struct.name_s = type { i16, i16, ptr, ptr }
%struct.struct_shared_procs_s = type { ptr, ptr, ptr }

@ptr_struct_procs = dso_local constant %struct.gs_ptr_procs_s { ptr @ptr_struct_unmark, ptr @ptr_struct_mark, ptr @gs_reloc_struct_ptr }, align 8
@ptr_string_procs = dso_local local_unnamed_addr constant %struct.gs_ptr_procs_s { ptr @ptr_string_unmark, ptr @ptr_string_mark, ptr null }, align 8
@ptr_const_string_procs = dso_local local_unnamed_addr constant %struct.gs_ptr_procs_s { ptr @ptr_string_unmark, ptr @ptr_string_mark, ptr null }, align 8
@ptr_ref_procs = dso_local constant %struct.gs_ptr_procs_s { ptr @ptr_ref_unmark, ptr @ptr_ref_mark, ptr null }, align 8
@.str = private unnamed_addr constant [13 x i8] c"gc_top_level\00", align 1
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"gc mark stack\00", align 1
@op_array_table_global = external local_unnamed_addr global %struct.op_array_table_s, align 8
@op_array_table_local = external local_unnamed_addr global %struct.op_array_table_s, align 8
@st_refs = external constant %struct.gs_memory_struct_type_s, align 8
@st_free = external constant %struct.gs_memory_struct_type_s, align 8
@gs_stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"igc.c\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"mark stack overflowed while outside collectible space at 0x%lx!\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ptr_struct_unmark(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj_header_s, ptr %0, i64 -1
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  %9 = load i32, ptr %5, align 8
  %10 = select i1 %8, i32 -2, i32 6
  %11 = or i32 %9, %10
  store i32 %11, ptr %5, align 8
  br label %12

12:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ptr_struct_mark(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj_header_s, ptr %0, i64 -1
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  %9 = load i32, ptr %5, align 8
  br i1 %8, label %13, label %10

10:                                               ; preds = %4
  %11 = and i32 %9, 6
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %15, label %19

13:                                               ; preds = %4
  %14 = icmp ugt i32 %9, -3
  br i1 %14, label %15, label %19

15:                                               ; preds = %13, %10
  %16 = phi i32 [ 1, %13 ], [ -7, %10 ]
  %17 = load i32, ptr %5, align 8
  %18 = and i32 %17, %16
  store i32 %18, ptr %5, align 8
  br label %19

19:                                               ; preds = %10, %13, %2, %15
  %20 = phi i32 [ 1, %15 ], [ 0, %2 ], [ 0, %13 ], [ 0, %10 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gs_reloc_struct_ptr(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj_header_s, ptr %0, i64 -1
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 8
  %11 = and i32 %10, -2
  %12 = icmp eq i32 %11, -4
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = zext i32 %11 to i64
  %15 = sub nsw i64 0, %14
  %16 = getelementptr inbounds i8, ptr %5, i64 %15
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, -2
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds i8, ptr %16, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.chunk_head_s, ptr %21, i64 1
  %24 = ptrtoint ptr %0 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = getelementptr inbounds %struct.obj_header_data_s, ptr %16, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !11
  %28 = zext i32 %27 to i64
  %29 = add i64 %28, %25
  %30 = sub i64 %24, %29
  %31 = getelementptr inbounds i8, ptr %22, i64 %30
  br label %32

32:                                               ; preds = %4, %9, %13, %2
  %33 = phi ptr [ null, %2 ], [ %0, %4 ], [ %31, %13 ], [ %0, %9 ]
  ret ptr %33
}

; Function Attrs: nounwind uwtable
define internal void @ptr_string_unmark(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.gs_string_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !15
  %6 = tail call i32 @gc_string_mark(ptr noundef %3, i32 noundef %5, i32 noundef 0, ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ptr_string_mark(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.gs_string_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !15
  %6 = tail call i32 @gc_string_mark(ptr noundef %3, i32 noundef %5, i32 noundef 1, ptr noundef %1) #10
  ret i32 %6
}

declare void @ptr_ref_unmark(ptr noundef, ptr noundef) #3

declare i32 @ptr_ref_mark(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @gs_reclaim(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.gs_gc_root_s, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gs_gc_root_s, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %union.vm_spaces_s, align 8
  %8 = alloca [4 x %struct.gs_gc_root_s], align 16
  %9 = alloca %struct.gc_state_s, align 8
  %10 = alloca %struct._msd, align 8
  %11 = alloca %struct.gs_memory_status_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 1640, ptr nonnull %10) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !16
  %12 = getelementptr inbounds %struct._ssn, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct._ssn, ptr %7, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = icmp eq ptr %13, %15
  %17 = select i1 %16, i32 2, i32 3
  %18 = icmp eq i32 %1, 0
  %19 = select i1 %18, i32 %17, i32 1
  store ptr %13, ptr %9, align 8, !tbaa !18
  %20 = getelementptr inbounds %struct.chunk_locator_s, ptr %9, i64 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !21
  %21 = getelementptr inbounds %struct.gc_state_s, ptr %9, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %22 = shl nuw nsw i32 %19, 2
  %23 = getelementptr inbounds %struct.gc_state_s, ptr %9, i64 0, i32 2
  store i32 %22, ptr %23, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.gc_state_s, ptr %9, i64 0, i32 3
  store i32 0, ptr %24, align 4, !tbaa !23
  %25 = add nuw nsw i32 %17, 1
  %26 = zext nneg i32 %25 to i64
  br label %27

27:                                               ; preds = %2, %27
  %28 = phi i64 [ 1, %2 ], [ %34, %27 ]
  %29 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %30, i64 0, i32 16
  %32 = load ptr, ptr %31, align 8, !tbaa !24
  %33 = getelementptr inbounds [4 x %struct.gs_gc_root_s], ptr %8, i64 0, i64 %28
  call void %32(ptr noundef %30, ptr noundef nonnull %33, ptr noundef nonnull @ptr_struct_procs, ptr noundef nonnull %29, ptr noundef nonnull @.str) #10
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %36, label %27, !llvm.loop !27

36:                                               ; preds = %27
  %37 = zext nneg i32 %19 to i64
  %38 = call i32 @llvm.umax.i32(i32 %19, i32 %17)
  %39 = add nuw nsw i32 %38, 1
  %40 = zext nneg i32 %39 to i64
  br label %41

41:                                               ; preds = %36, %89
  %42 = phi i64 [ %37, %36 ], [ %90, %89 ]
  %43 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %89, label %46

46:                                               ; preds = %41, %85
  %47 = phi ptr [ %87, %85 ], [ %44, %41 ]
  %48 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %47, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %85, label %51

51:                                               ; preds = %46, %81
  %52 = phi ptr [ %83, %81 ], [ %49, %46 ]
  %53 = getelementptr inbounds %struct.chunk_s, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !29
  %55 = getelementptr inbounds %struct.chunk_s, ptr %52, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !32
  %57 = icmp ult ptr %54, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %51, %75
  %59 = phi ptr [ %79, %75 ], [ %54, %51 ]
  %60 = load i8, ptr %59, align 8
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  %63 = getelementptr inbounds %struct.obj_header_data_s, ptr %59, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !11
  %65 = getelementptr inbounds %struct.obj_header_data_s, ptr %59, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  %67 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !33
  %69 = load i32, ptr %59, align 8
  %70 = select i1 %62, i32 -2, i32 6
  %71 = or i32 %69, %70
  store i32 %71, ptr %59, align 8
  %72 = icmp eq ptr %68, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.obj_header_s, ptr %59, i64 1
  call void %68(ptr noundef nonnull %74, i32 noundef %64) #10
  br label %75

75:                                               ; preds = %73, %58
  %76 = add i32 %64, 23
  %77 = and i32 %76, -8
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %59, i64 %78
  %80 = icmp ult ptr %79, %56
  br i1 %80, label %58, label %81, !llvm.loop !35

81:                                               ; preds = %75, %51
  call void @gc_strings_set_marks(ptr noundef nonnull %52, i32 noundef 0) #10
  %82 = getelementptr inbounds %struct.chunk_s, ptr %52, i64 0, i32 9
  %83 = load ptr, ptr %82, align 8, !tbaa !17
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %51, !llvm.loop !36

85:                                               ; preds = %81, %46
  %86 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %47, i64 0, i32 20
  %87 = load ptr, ptr %86, align 8, !tbaa !11
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %46, !llvm.loop !37

89:                                               ; preds = %85, %41
  %90 = add nuw nsw i64 %42, 1
  %91 = icmp eq i64 %90, %40
  br i1 %91, label %92, label %41, !llvm.loop !38

92:                                               ; preds = %89
  %93 = zext nneg i32 %25 to i64
  br label %94

94:                                               ; preds = %92, %111
  %95 = phi i64 [ 1, %92 ], [ %112, %111 ]
  %96 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !11
  %98 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %97, i64 0, i32 17
  %99 = load ptr, ptr %98, align 8, !tbaa !17
  %100 = icmp eq ptr %99, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %94, %101
  %102 = phi ptr [ %109, %101 ], [ %99, %94 ]
  %103 = getelementptr inbounds %struct.gs_gc_root_s, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !39
  %105 = load ptr, ptr %104, align 8, !tbaa !17
  %106 = getelementptr inbounds %struct.gs_gc_root_s, ptr %102, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !41
  %108 = load ptr, ptr %107, align 8, !tbaa !42
  call void %108(ptr noundef %105, ptr noundef nonnull %9) #10
  %109 = load ptr, ptr %102, align 8, !tbaa !17
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %101, !llvm.loop !44

111:                                              ; preds = %101, %94
  %112 = add nuw nsw i64 %95, 1
  %113 = icmp eq i64 %112, %93
  br i1 %113, label %114, label %94, !llvm.loop !45

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %10, i64 0, i32 1
  br i1 %18, label %150, label %116

116:                                              ; preds = %114
  call void @name_unmark_all() #10
  %117 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 2), align 8, !tbaa !46
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %122, %116
  %120 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 2), align 8, !tbaa !46
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %150, label %136

122:                                              ; preds = %116, %122
  %123 = phi i64 [ %132, %122 ], [ 0, %116 ]
  %124 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 1), align 8, !tbaa !50
  %125 = getelementptr inbounds i16, ptr %124, i64 %123
  %126 = load i16, ptr %125, align 2, !tbaa !51
  %127 = zext i16 %126 to i32
  %128 = call ptr @name_index_ptr(i32 noundef %127) #10
  %129 = getelementptr inbounds %struct.name_s, ptr %128, i64 0, i32 1
  %130 = load i16, ptr %129, align 2
  %131 = or i16 %130, 2
  store i16 %131, ptr %129, align 2
  %132 = add nuw nsw i64 %123, 1
  %133 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 2), align 8, !tbaa !46
  %134 = zext i32 %133 to i64
  %135 = icmp ult i64 %132, %134
  br i1 %135, label %122, label %119, !llvm.loop !52

136:                                              ; preds = %119, %136
  %137 = phi i64 [ %146, %136 ], [ 0, %119 ]
  %138 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 1), align 8, !tbaa !50
  %139 = getelementptr inbounds i16, ptr %138, i64 %137
  %140 = load i16, ptr %139, align 2, !tbaa !51
  %141 = zext i16 %140 to i32
  %142 = call ptr @name_index_ptr(i32 noundef %141) #10
  %143 = getelementptr inbounds %struct.name_s, ptr %142, i64 0, i32 1
  %144 = load i16, ptr %143, align 2
  %145 = or i16 %144, 2
  store i16 %145, ptr %143, align 2
  %146 = add nuw nsw i64 %137, 1
  %147 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 2), align 8, !tbaa !46
  %148 = zext i32 %147 to i64
  %149 = icmp ult i64 %146, %148
  br i1 %149, label %136, label %150, !llvm.loop !53

150:                                              ; preds = %136, %119, %114
  store ptr null, ptr %115, align 8, !tbaa !54
  %151 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %10, i64 0, i32 2
  store i32 100, ptr %151, align 8, !tbaa !56
  store ptr null, ptr %10, align 8, !tbaa !57
  %152 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %10, i64 0, i32 3
  %153 = zext nneg i32 %25 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %152, i8 0, i64 20, i1 false)
  br label %154

154:                                              ; preds = %150, %201
  %155 = phi i64 [ 1, %150 ], [ %202, %201 ]
  %156 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !11
  %158 = icmp eq ptr %157, null
  br i1 %158, label %201, label %159

159:                                              ; preds = %154, %197
  %160 = phi ptr [ %199, %197 ], [ %157, %154 ]
  %161 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %160, i64 0, i32 8
  %162 = load ptr, ptr %161, align 8, !tbaa !17
  %163 = icmp eq ptr %162, null
  br i1 %163, label %197, label %164

164:                                              ; preds = %159, %187
  %165 = phi ptr [ %195, %187 ], [ %162, %159 ]
  %166 = getelementptr inbounds %struct.chunk_s, ptr %165, i64 0, i32 5
  %167 = load ptr, ptr %166, align 8, !tbaa !59
  %168 = getelementptr inbounds %struct.chunk_s, ptr %165, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !32
  %170 = ptrtoint ptr %167 to i64
  %171 = ptrtoint ptr %169 to i64
  %172 = sub i64 %170, %171
  %173 = and i64 %172, 4294967295
  %174 = icmp ugt i64 %173, 839
  br i1 %174, label %175, label %187

175:                                              ; preds = %164
  %176 = getelementptr inbounds %struct.chunk_s, ptr %165, i64 0, i32 11
  %177 = load i32, ptr %176, align 8, !tbaa !60
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = add nuw nsw i64 %173, 68719476696
  %181 = lshr i64 %180, 4
  %182 = trunc i64 %181 to i32
  %183 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %169, i64 0, i32 1
  store ptr null, ptr %183, align 8, !tbaa !54
  %184 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %169, i64 0, i32 2
  store i32 %182, ptr %184, align 8, !tbaa !56
  %185 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %169, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %185, i8 0, i64 16, i1 false)
  store ptr %169, ptr %115, align 8, !tbaa !54
  store ptr %10, ptr %169, align 8, !tbaa !61
  %186 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %169, i64 0, i32 3
  store i32 0, ptr %186, align 4, !tbaa !62
  br label %187

187:                                              ; preds = %179, %175, %164
  %188 = getelementptr inbounds %struct.chunk_s, ptr %165, i64 0, i32 7
  %189 = load ptr, ptr %188, align 8, !tbaa !63
  %190 = getelementptr inbounds %struct.chunk_s, ptr %165, i64 0, i32 21
  store ptr %189, ptr %190, align 8, !tbaa !64
  %191 = getelementptr inbounds %struct.chunk_s, ptr %165, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !29
  %193 = getelementptr inbounds %struct.chunk_s, ptr %165, i64 0, i32 22
  store ptr %192, ptr %193, align 8, !tbaa !65
  %194 = getelementptr inbounds %struct.chunk_s, ptr %165, i64 0, i32 9
  %195 = load ptr, ptr %194, align 8, !tbaa !17
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %164, !llvm.loop !66

197:                                              ; preds = %187, %159
  %198 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %160, i64 0, i32 20
  %199 = load ptr, ptr %198, align 8, !tbaa !11
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %159, !llvm.loop !67

201:                                              ; preds = %197, %154
  %202 = add nuw nsw i64 %155, 1
  %203 = icmp eq i64 %202, %153
  br i1 %203, label %204, label %154, !llvm.loop !68

204:                                              ; preds = %201
  %205 = zext nneg i32 %25 to i64
  br label %206

206:                                              ; preds = %204, %221
  %207 = phi i64 [ 1, %204 ], [ %223, %221 ]
  %208 = phi i32 [ 0, %204 ], [ %222, %221 ]
  %209 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %207
  %210 = load ptr, ptr %209, align 8, !tbaa !11
  %211 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %210, i64 0, i32 17
  %212 = load ptr, ptr %211, align 8, !tbaa !17
  %213 = icmp eq ptr %212, null
  br i1 %213, label %221, label %214

214:                                              ; preds = %206, %214
  %215 = phi ptr [ %219, %214 ], [ %212, %206 ]
  %216 = phi i32 [ %218, %214 ], [ %208, %206 ]
  %217 = call fastcc i32 @gc_trace(ptr noundef nonnull %215, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %218 = or i32 %217, %216
  %219 = load ptr, ptr %215, align 8, !tbaa !17
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %214, !llvm.loop !69

221:                                              ; preds = %214, %206
  %222 = phi i32 [ %208, %206 ], [ %218, %214 ]
  %223 = add nuw nsw i64 %207, 1
  %224 = icmp eq i64 %223, %205
  br i1 %224, label %225, label %206, !llvm.loop !70

225:                                              ; preds = %221
  br i1 %18, label %226, label %353

226:                                              ; preds = %225
  %227 = getelementptr inbounds %struct.gs_gc_root_s, ptr %5, i64 0, i32 2
  %228 = getelementptr inbounds %struct.gs_gc_root_s, ptr %5, i64 0, i32 1
  %229 = call i32 @llvm.umax.i32(i32 %19, i32 2)
  %230 = zext nneg i32 %229 to i64
  br label %231

231:                                              ; preds = %226, %349
  %232 = phi i64 [ 1, %226 ], [ %351, %349 ]
  %233 = phi i32 [ %222, %226 ], [ %350, %349 ]
  %234 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %232
  %235 = load ptr, ptr %234, align 8, !tbaa !11
  %236 = icmp eq ptr %235, null
  br i1 %236, label %349, label %237

237:                                              ; preds = %231, %344
  %238 = phi ptr [ %347, %344 ], [ %235, %231 ]
  %239 = phi i32 [ %345, %344 ], [ %233, %231 ]
  %240 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %238, i64 0, i32 8
  %241 = load ptr, ptr %240, align 8, !tbaa !17
  %242 = icmp eq ptr %241, null
  br i1 %242, label %344, label %243

243:                                              ; preds = %237, %338
  %244 = phi ptr [ %342, %338 ], [ %241, %237 ]
  %245 = phi i32 [ %340, %338 ], [ %239, %237 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %246 = load i32, ptr %23, align 8, !tbaa !22
  store ptr %6, ptr %227, align 8, !tbaa !39
  %247 = getelementptr inbounds %struct.chunk_s, ptr %244, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !29
  %249 = getelementptr inbounds %struct.chunk_s, ptr %244, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !32
  %251 = icmp ult ptr %248, %250
  br i1 %251, label %252, label %338

252:                                              ; preds = %243, %332
  %253 = phi i32 [ %333, %332 ], [ 0, %243 ]
  %254 = phi ptr [ %336, %332 ], [ %248, %243 ]
  %255 = load i8, ptr %254, align 8
  %256 = and i8 %255, 1
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %267, label %258

258:                                              ; preds = %252
  %259 = load i32, ptr %254, align 8
  %260 = lshr i32 %259, 3
  %261 = zext nneg i32 %260 to i64
  %262 = shl nuw nsw i64 %261, 32
  %263 = getelementptr inbounds %struct.obj_header_data_s, ptr %254, i64 0, i32 1
  %264 = load i32, ptr %263, align 4, !tbaa !11
  %265 = zext i32 %264 to i64
  %266 = or disjoint i64 %262, %265
  br label %271

267:                                              ; preds = %252
  %268 = getelementptr inbounds %struct.obj_header_data_s, ptr %254, i64 0, i32 1
  %269 = load i32, ptr %268, align 4, !tbaa !11
  %270 = zext i32 %269 to i64
  br label %271

271:                                              ; preds = %267, %258
  %272 = phi i64 [ %266, %258 ], [ %270, %267 ]
  %273 = getelementptr inbounds %struct.obj_header_data_s, ptr %254, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !11
  %275 = icmp eq ptr %274, @st_refs
  br i1 %275, label %276, label %300

276:                                              ; preds = %271
  %277 = add nuw nsw i64 %272, 16
  %278 = getelementptr inbounds i8, ptr %254, i64 %277
  store ptr @ptr_ref_procs, ptr %228, align 8, !tbaa !41
  %279 = icmp sgt i64 %272, 0
  br i1 %279, label %280, label %332

280:                                              ; preds = %276
  %281 = getelementptr inbounds i8, ptr %254, i64 16
  br label %282

282:                                              ; preds = %295, %280
  %283 = phi i32 [ %297, %295 ], [ %253, %280 ]
  %284 = phi ptr [ %298, %295 ], [ %281, %280 ]
  store ptr %284, ptr %6, align 8, !tbaa !17
  %285 = load i16, ptr %284, align 2, !tbaa !51
  %286 = icmp ugt i16 %285, 16383
  br i1 %286, label %295, label %287

287:                                              ; preds = %282
  %288 = and i16 %285, 12
  %289 = zext nneg i16 %288 to i32
  %290 = icmp ugt i32 %246, %289
  br i1 %290, label %295, label %291

291:                                              ; preds = %287
  %292 = and i16 %285, 16382
  store i16 %292, ptr %284, align 8, !tbaa !71
  %293 = call fastcc i32 @gc_trace(ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %294 = or i32 %293, %283
  br label %295

295:                                              ; preds = %287, %291, %282
  %296 = phi i64 [ 1, %282 ], [ 8, %291 ], [ 8, %287 ]
  %297 = phi i32 [ %283, %282 ], [ %294, %291 ], [ %283, %287 ]
  %298 = getelementptr inbounds i16, ptr %284, i64 %296
  %299 = icmp ult ptr %298, %278
  br i1 %299, label %282, label %332, !llvm.loop !72

300:                                              ; preds = %271
  %301 = load i32, ptr %254, align 8
  br i1 %257, label %305, label %302

302:                                              ; preds = %300
  %303 = and i32 %301, 6
  %304 = icmp eq i32 %303, 6
  br i1 %304, label %332, label %307

305:                                              ; preds = %300
  %306 = icmp ugt i32 %301, -3
  br i1 %306, label %332, label %307

307:                                              ; preds = %305, %302
  %308 = load i32, ptr %254, align 8
  br i1 %257, label %312, label %309

309:                                              ; preds = %307
  %310 = and i32 %308, 6
  %311 = icmp eq i32 %310, 4
  br i1 %311, label %319, label %315

312:                                              ; preds = %307
  %313 = and i32 %308, -2
  %314 = icmp eq i32 %313, -4
  br i1 %314, label %319, label %315

315:                                              ; preds = %312, %309
  %316 = phi i32 [ -2, %312 ], [ 6, %309 ]
  %317 = load i32, ptr %254, align 8
  %318 = or i32 %317, %316
  store i32 %318, ptr %254, align 8
  br label %319

319:                                              ; preds = %315, %312, %309
  %320 = load ptr, ptr %273, align 8, !tbaa !11
  %321 = icmp eq ptr %320, @st_free
  br i1 %321, label %332, label %322

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %320, i64 0, i32 3
  %324 = load ptr, ptr %323, align 8, !tbaa !33
  store ptr @ptr_struct_procs, ptr %228, align 8, !tbaa !41
  %325 = getelementptr inbounds %struct.obj_header_s, ptr %254, i64 1
  store ptr %325, ptr %6, align 8, !tbaa !17
  %326 = icmp eq ptr %324, null
  br i1 %326, label %329, label %327

327:                                              ; preds = %322
  %328 = trunc i64 %272 to i32
  call void %324(ptr noundef nonnull %325, i32 noundef %328) #10
  br label %329

329:                                              ; preds = %327, %322
  %330 = call fastcc i32 @gc_trace(ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %331 = or i32 %330, %253
  br label %332

332:                                              ; preds = %295, %329, %319, %305, %302, %276
  %333 = phi i32 [ %253, %302 ], [ %331, %329 ], [ %253, %319 ], [ %253, %305 ], [ %253, %276 ], [ %297, %295 ]
  %334 = add nuw nsw i64 %272, 23
  %335 = and i64 %334, 4294967288
  %336 = getelementptr inbounds i8, ptr %254, i64 %335
  %337 = icmp ult ptr %336, %250
  br i1 %337, label %252, label %338, !llvm.loop !73

338:                                              ; preds = %332, %243
  %339 = phi i32 [ 0, %243 ], [ %333, %332 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  %340 = or i32 %339, %245
  %341 = getelementptr inbounds %struct.chunk_s, ptr %244, i64 0, i32 9
  %342 = load ptr, ptr %341, align 8, !tbaa !17
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %243, !llvm.loop !74

344:                                              ; preds = %338, %237
  %345 = phi i32 [ %239, %237 ], [ %340, %338 ]
  %346 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %238, i64 0, i32 20
  %347 = load ptr, ptr %346, align 8, !tbaa !11
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %237, !llvm.loop !75

349:                                              ; preds = %344, %231
  %350 = phi i32 [ %233, %231 ], [ %345, %344 ]
  %351 = add nuw nsw i64 %232, 1
  %352 = icmp eq i64 %351, %230
  br i1 %352, label %353, label %231, !llvm.loop !76

353:                                              ; preds = %349, %225
  %354 = phi i32 [ %222, %225 ], [ %350, %349 ]
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %357, label %356

356:                                              ; preds = %361, %353
  br label %503

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.gs_gc_root_s, ptr %3, i64 0, i32 2
  %359 = getelementptr inbounds %struct.gs_gc_root_s, ptr %3, i64 0, i32 1
  %360 = zext nneg i32 %25 to i64
  br label %363

361:                                              ; preds = %499
  %362 = icmp slt i32 %500, 0
  br i1 %362, label %363, label %356, !llvm.loop !77

363:                                              ; preds = %357, %361
  br label %364

364:                                              ; preds = %363, %499
  %365 = phi i64 [ 1, %363 ], [ %501, %499 ]
  %366 = phi i32 [ 0, %363 ], [ %500, %499 ]
  %367 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %365
  %368 = load ptr, ptr %367, align 8, !tbaa !11
  %369 = icmp eq ptr %368, null
  br i1 %369, label %499, label %370

370:                                              ; preds = %364, %494
  %371 = phi ptr [ %497, %494 ], [ %368, %364 ]
  %372 = phi i32 [ %495, %494 ], [ %366, %364 ]
  %373 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %371, i64 0, i32 8
  %374 = load ptr, ptr %373, align 8, !tbaa !17
  %375 = icmp eq ptr %374, null
  br i1 %375, label %494, label %376

376:                                              ; preds = %370, %488
  %377 = phi ptr [ %492, %488 ], [ %374, %370 ]
  %378 = phi i32 [ %490, %488 ], [ %372, %370 ]
  %379 = getelementptr inbounds %struct.chunk_s, ptr %377, i64 0, i32 21
  %380 = load ptr, ptr %379, align 8, !tbaa !64
  %381 = getelementptr inbounds %struct.chunk_s, ptr %377, i64 0, i32 22
  %382 = load ptr, ptr %381, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %383 = icmp ugt ptr %380, %382
  br i1 %383, label %488, label %384

384:                                              ; preds = %376
  store ptr %4, ptr %358, align 8, !tbaa !39
  %385 = getelementptr inbounds %struct.chunk_s, ptr %377, i64 0, i32 7
  %386 = load ptr, ptr %385, align 8, !tbaa !63
  store ptr %386, ptr %379, align 8, !tbaa !64
  %387 = getelementptr inbounds %struct.chunk_s, ptr %377, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !29
  store ptr %388, ptr %381, align 8, !tbaa !65
  %389 = getelementptr inbounds %struct.chunk_s, ptr %377, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !32
  %391 = icmp ult ptr %388, %390
  br i1 %391, label %392, label %488

392:                                              ; preds = %384, %482
  %393 = phi i32 [ %483, %482 ], [ 0, %384 ]
  %394 = phi ptr [ %486, %482 ], [ %388, %384 ]
  %395 = load i8, ptr %394, align 8
  %396 = and i8 %395, 1
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %407, label %398

398:                                              ; preds = %392
  %399 = load i32, ptr %394, align 8
  %400 = lshr i32 %399, 3
  %401 = zext nneg i32 %400 to i64
  %402 = shl nuw nsw i64 %401, 32
  %403 = getelementptr inbounds %struct.obj_header_data_s, ptr %394, i64 0, i32 1
  %404 = load i32, ptr %403, align 4, !tbaa !11
  %405 = zext i32 %404 to i64
  %406 = or disjoint i64 %402, %405
  br label %411

407:                                              ; preds = %392
  %408 = getelementptr inbounds %struct.obj_header_data_s, ptr %394, i64 0, i32 1
  %409 = load i32, ptr %408, align 4, !tbaa !11
  %410 = zext i32 %409 to i64
  br label %411

411:                                              ; preds = %407, %398
  %412 = phi i64 [ %406, %398 ], [ %410, %407 ]
  %413 = getelementptr inbounds i8, ptr %394, i64 16
  %414 = add nuw nsw i64 %412, 16
  %415 = getelementptr inbounds i8, ptr %394, i64 %414
  %416 = icmp ult ptr %415, %380
  br i1 %416, label %482, label %417

417:                                              ; preds = %411
  %418 = icmp ugt ptr %413, %382
  br i1 %418, label %488, label %419

419:                                              ; preds = %417
  %420 = getelementptr inbounds %struct.obj_header_data_s, ptr %394, i64 0, i32 2
  %421 = load ptr, ptr %420, align 8, !tbaa !11
  %422 = icmp eq ptr %421, @st_refs
  br i1 %422, label %423, label %450

423:                                              ; preds = %419
  store ptr @ptr_ref_procs, ptr %359, align 8, !tbaa !41
  %424 = icmp sgt i64 %412, 0
  br i1 %424, label %425, label %482

425:                                              ; preds = %423, %445
  %426 = phi i32 [ %447, %445 ], [ %393, %423 ]
  %427 = phi ptr [ %448, %445 ], [ %413, %423 ]
  store ptr %427, ptr %4, align 8, !tbaa !17
  %428 = load i16, ptr %427, align 2, !tbaa !51
  %429 = zext i16 %428 to i32
  %430 = icmp ugt i16 %428, 16383
  br i1 %430, label %431, label %436

431:                                              ; preds = %425
  %432 = and i32 %429, 4096
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %445, label %434

434:                                              ; preds = %431
  %435 = and i16 %428, -4097
  store i16 %435, ptr %427, align 2, !tbaa !51
  br label %441

436:                                              ; preds = %425
  %437 = and i32 %429, 1
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %445, label %439

439:                                              ; preds = %436
  %440 = and i16 %428, 16382
  store i16 %440, ptr %427, align 8, !tbaa !71
  br label %441

441:                                              ; preds = %434, %439
  %442 = phi i64 [ 8, %439 ], [ 1, %434 ]
  %443 = call fastcc i32 @gc_trace(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %444 = or i32 %443, %426
  br label %445

445:                                              ; preds = %441, %436, %431
  %446 = phi i64 [ 1, %431 ], [ 8, %436 ], [ %442, %441 ]
  %447 = phi i32 [ %426, %431 ], [ %426, %436 ], [ %444, %441 ]
  %448 = getelementptr inbounds i16, ptr %427, i64 %446
  %449 = icmp ult ptr %448, %415
  br i1 %449, label %425, label %482, !llvm.loop !78

450:                                              ; preds = %419
  %451 = load i32, ptr %394, align 8
  br i1 %397, label %455, label %452

452:                                              ; preds = %450
  %453 = and i32 %451, 6
  %454 = icmp eq i32 %453, 6
  br i1 %454, label %482, label %457

455:                                              ; preds = %450
  %456 = icmp ugt i32 %451, -3
  br i1 %456, label %482, label %457

457:                                              ; preds = %455, %452
  %458 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %421, i64 0, i32 3
  %459 = load ptr, ptr %458, align 8, !tbaa !33
  store ptr @ptr_struct_procs, ptr %359, align 8, !tbaa !41
  store ptr %413, ptr %4, align 8, !tbaa !17
  %460 = load i8, ptr %394, align 8
  %461 = and i8 %460, 1
  %462 = icmp eq i8 %461, 0
  %463 = load i32, ptr %394, align 8
  br i1 %462, label %467, label %464

464:                                              ; preds = %457
  %465 = and i32 %463, 6
  %466 = icmp eq i32 %465, 4
  br i1 %466, label %474, label %470

467:                                              ; preds = %457
  %468 = and i32 %463, -2
  %469 = icmp eq i32 %468, -4
  br i1 %469, label %474, label %470

470:                                              ; preds = %467, %464
  %471 = phi i32 [ -2, %467 ], [ 6, %464 ]
  %472 = load i32, ptr %394, align 8
  %473 = or i32 %472, %471
  store i32 %473, ptr %394, align 8
  br label %474

474:                                              ; preds = %470, %467, %464
  %475 = icmp eq ptr %459, null
  br i1 %475, label %479, label %476

476:                                              ; preds = %474
  %477 = load ptr, ptr %4, align 8, !tbaa !17
  %478 = trunc i64 %412 to i32
  call void %459(ptr noundef %477, i32 noundef %478) #10
  br label %479

479:                                              ; preds = %476, %474
  %480 = call fastcc i32 @gc_trace(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %481 = or i32 %480, %393
  br label %482

482:                                              ; preds = %445, %479, %455, %452, %423, %411
  %483 = phi i32 [ %393, %411 ], [ %393, %452 ], [ %481, %479 ], [ %393, %455 ], [ %393, %423 ], [ %447, %445 ]
  %484 = add nuw nsw i64 %412, 23
  %485 = and i64 %484, 4294967288
  %486 = getelementptr inbounds i8, ptr %394, i64 %485
  %487 = icmp ult ptr %486, %390
  br i1 %487, label %392, label %488, !llvm.loop !79

488:                                              ; preds = %417, %482, %376, %384
  %489 = phi i32 [ 0, %376 ], [ 0, %384 ], [ %483, %482 ], [ %393, %417 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  %490 = or i32 %489, %378
  %491 = getelementptr inbounds %struct.chunk_s, ptr %377, i64 0, i32 9
  %492 = load ptr, ptr %491, align 8, !tbaa !17
  %493 = icmp eq ptr %492, null
  br i1 %493, label %494, label %376, !llvm.loop !80

494:                                              ; preds = %488, %370
  %495 = phi i32 [ %372, %370 ], [ %490, %488 ]
  %496 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %371, i64 0, i32 20
  %497 = load ptr, ptr %496, align 8, !tbaa !11
  %498 = icmp eq ptr %497, null
  br i1 %498, label %499, label %370, !llvm.loop !81

499:                                              ; preds = %494, %364
  %500 = phi i32 [ %366, %364 ], [ %495, %494 ]
  %501 = add nuw nsw i64 %365, 1
  %502 = icmp eq i64 %501, %360
  br i1 %502, label %361, label %364, !llvm.loop !82

503:                                              ; preds = %356, %503
  %504 = phi ptr [ %506, %503 ], [ %10, %356 ]
  %505 = phi ptr [ %507, %503 ], [ %115, %356 ]
  %506 = load ptr, ptr %505, align 8, !tbaa !54
  %507 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %506, i64 0, i32 1
  %508 = icmp eq ptr %506, null
  br i1 %508, label %509, label %503, !llvm.loop !83

509:                                              ; preds = %503, %517
  %510 = phi ptr [ %511, %517 ], [ %504, %503 ]
  %511 = load ptr, ptr %510, align 8, !tbaa !61
  %512 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %510, i64 0, i32 3
  %513 = load i32, ptr %512, align 4, !tbaa !62
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %517, label %515

515:                                              ; preds = %509
  %516 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !84
  call void %516(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull %510, ptr noundef nonnull @.str.1) #10
  br label %517

517:                                              ; preds = %509, %515
  %518 = icmp eq ptr %511, null
  br i1 %518, label %519, label %509, !llvm.loop !85

519:                                              ; preds = %517
  br i1 %18, label %561, label %520

520:                                              ; preds = %519
  %521 = call i32 @name_next_valid_index(i32 noundef 0) #10
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %560, label %523

523:                                              ; preds = %520, %557
  %524 = phi i32 [ %558, %557 ], [ %521, %520 ]
  %525 = call ptr @name_index_ptr(i32 noundef %524) #10
  %526 = getelementptr inbounds %struct.name_s, ptr %525, i64 0, i32 1
  %527 = load i16, ptr %526, align 2
  %528 = and i16 %527, 2
  %529 = icmp eq i16 %528, 0
  br i1 %529, label %557, label %530

530:                                              ; preds = %523
  %531 = and i16 %527, 1
  %532 = icmp eq i16 %531, 0
  br i1 %532, label %533, label %539

533:                                              ; preds = %530
  %534 = getelementptr inbounds %struct.name_s, ptr %525, i64 0, i32 2
  %535 = load ptr, ptr %534, align 8, !tbaa !86
  %536 = lshr i16 %527, 2
  %537 = zext nneg i16 %536 to i32
  %538 = call i32 @gc_string_mark(ptr noundef %535, i32 noundef %537, i32 noundef 1, ptr noundef nonnull %9) #10
  br label %539

539:                                              ; preds = %533, %530
  %540 = call ptr @name_index_ptr_sub_table(i32 noundef %524, ptr noundef %525) #10
  %541 = icmp eq ptr %540, null
  br i1 %541, label %557, label %542

542:                                              ; preds = %539
  %543 = getelementptr inbounds %struct.obj_header_s, ptr %540, i64 -1
  %544 = load i8, ptr %543, align 8
  %545 = and i8 %544, 1
  %546 = icmp eq i8 %545, 0
  %547 = load i32, ptr %543, align 8
  br i1 %546, label %551, label %548

548:                                              ; preds = %542
  %549 = and i32 %547, 6
  %550 = icmp eq i32 %549, 6
  br i1 %550, label %553, label %557

551:                                              ; preds = %542
  %552 = icmp ugt i32 %547, -3
  br i1 %552, label %553, label %557

553:                                              ; preds = %551, %548
  %554 = phi i32 [ 1, %551 ], [ -7, %548 ]
  %555 = load i32, ptr %543, align 8
  %556 = and i32 %555, %554
  store i32 %556, ptr %543, align 8
  br label %557

557:                                              ; preds = %539, %548, %551, %553, %523
  %558 = call i32 @name_next_valid_index(i32 noundef %524) #10
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %523, !llvm.loop !88

560:                                              ; preds = %557, %520
  call void @name_trace_finish(ptr noundef nonnull %9) #10
  br i1 %18, label %561, label %618

561:                                              ; preds = %519, %560
  %562 = call i32 @llvm.umax.i32(i32 %19, i32 2)
  %563 = zext nneg i32 %562 to i64
  br label %567

564:                                              ; preds = %615
  br i1 %18, label %565, label %618

565:                                              ; preds = %564
  %566 = zext nneg i32 %562 to i64
  br label %620

567:                                              ; preds = %561, %615
  %568 = phi i64 [ 1, %561 ], [ %616, %615 ]
  %569 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %568
  %570 = load ptr, ptr %569, align 8, !tbaa !11
  %571 = icmp eq ptr %570, null
  br i1 %571, label %615, label %572

572:                                              ; preds = %567, %611
  %573 = phi ptr [ %613, %611 ], [ %570, %567 ]
  %574 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %573, i64 0, i32 8
  %575 = load ptr, ptr %574, align 8, !tbaa !17
  %576 = icmp eq ptr %575, null
  br i1 %576, label %611, label %577

577:                                              ; preds = %572, %607
  %578 = phi ptr [ %609, %607 ], [ %575, %572 ]
  %579 = getelementptr inbounds %struct.chunk_s, ptr %578, i64 0, i32 1
  %580 = load ptr, ptr %579, align 8, !tbaa !29
  %581 = getelementptr inbounds %struct.chunk_s, ptr %578, i64 0, i32 2
  %582 = load ptr, ptr %581, align 8, !tbaa !32
  %583 = icmp ult ptr %580, %582
  br i1 %583, label %584, label %607

584:                                              ; preds = %577, %601
  %585 = phi ptr [ %605, %601 ], [ %580, %577 ]
  %586 = load i8, ptr %585, align 8
  %587 = and i8 %586, 1
  %588 = icmp eq i8 %587, 0
  %589 = getelementptr inbounds %struct.obj_header_data_s, ptr %585, i64 0, i32 1
  %590 = load i32, ptr %589, align 4, !tbaa !11
  %591 = getelementptr inbounds %struct.obj_header_data_s, ptr %585, i64 0, i32 2
  %592 = load ptr, ptr %591, align 8, !tbaa !11
  %593 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %592, i64 0, i32 3
  %594 = load ptr, ptr %593, align 8, !tbaa !33
  %595 = load i32, ptr %585, align 8
  %596 = select i1 %588, i32 -2, i32 6
  %597 = or i32 %595, %596
  store i32 %597, ptr %585, align 8
  %598 = icmp eq ptr %594, null
  br i1 %598, label %601, label %599

599:                                              ; preds = %584
  %600 = getelementptr inbounds %struct.obj_header_s, ptr %585, i64 1
  call void %594(ptr noundef nonnull %600, i32 noundef %590) #10
  br label %601

601:                                              ; preds = %599, %584
  %602 = add i32 %590, 23
  %603 = and i32 %602, -8
  %604 = zext i32 %603 to i64
  %605 = getelementptr inbounds i8, ptr %585, i64 %604
  %606 = icmp ult ptr %605, %582
  br i1 %606, label %584, label %607, !llvm.loop !35

607:                                              ; preds = %601, %577
  %608 = getelementptr inbounds %struct.chunk_s, ptr %578, i64 0, i32 9
  %609 = load ptr, ptr %608, align 8, !tbaa !17
  %610 = icmp eq ptr %609, null
  br i1 %610, label %611, label %577, !llvm.loop !89

611:                                              ; preds = %607, %572
  %612 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %573, i64 0, i32 20
  %613 = load ptr, ptr %612, align 8, !tbaa !11
  %614 = icmp eq ptr %613, null
  br i1 %614, label %615, label %572, !llvm.loop !90

615:                                              ; preds = %611, %567
  %616 = add nuw nsw i64 %568, 1
  %617 = icmp eq i64 %616, %563
  br i1 %617, label %564, label %567, !llvm.loop !91

618:                                              ; preds = %692, %560, %564
  %619 = zext nneg i32 %39 to i64
  br label %695

620:                                              ; preds = %565, %692
  %621 = phi i64 [ 1, %565 ], [ %693, %692 ]
  %622 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %621
  %623 = load ptr, ptr %622, align 8, !tbaa !11
  %624 = icmp eq ptr %623, null
  br i1 %624, label %692, label %625

625:                                              ; preds = %620, %688
  %626 = phi ptr [ %690, %688 ], [ %623, %620 ]
  %627 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %626, i64 0, i32 8
  %628 = load ptr, ptr %627, align 8, !tbaa !17
  %629 = icmp eq ptr %628, null
  br i1 %629, label %688, label %630

630:                                              ; preds = %625, %684
  %631 = phi ptr [ %686, %684 ], [ %628, %625 ]
  %632 = load ptr, ptr %631, align 8, !tbaa !92
  %633 = getelementptr inbounds %struct.chunk_head_s, ptr %632, i64 0, i32 1
  %634 = getelementptr inbounds %struct.chunk_s, ptr %631, i64 0, i32 1
  %635 = load ptr, ptr %634, align 8, !tbaa !29
  store ptr %635, ptr %632, align 8, !tbaa !5
  %636 = load i32, ptr %633, align 8
  %637 = and i32 %636, 1
  %638 = or disjoint i32 %637, 8
  store i32 %638, ptr %633, align 8
  %639 = getelementptr inbounds %struct.chunk_head_s, ptr %632, i64 0, i32 1, i32 0, i32 0, i32 1
  store i32 16, ptr %639, align 4, !tbaa !11
  %640 = getelementptr inbounds %struct.chunk_head_s, ptr %632, i64 0, i32 1, i32 0, i32 0, i32 2
  store i32 0, ptr %640, align 8, !tbaa !11
  %641 = load ptr, ptr %634, align 8, !tbaa !29
  %642 = getelementptr inbounds %struct.chunk_s, ptr %631, i64 0, i32 2
  %643 = load ptr, ptr %642, align 8, !tbaa !32
  %644 = icmp ult ptr %641, %643
  br i1 %644, label %645, label %684

645:                                              ; preds = %630
  %646 = ptrtoint ptr %633 to i64
  br label %647

647:                                              ; preds = %678, %645
  %648 = phi ptr [ %641, %645 ], [ %682, %678 ]
  %649 = getelementptr inbounds %struct.obj_header_data_s, ptr %648, i64 0, i32 1
  %650 = load i32, ptr %649, align 4, !tbaa !11
  %651 = getelementptr inbounds %struct.obj_header_data_s, ptr %648, i64 0, i32 2
  %652 = load ptr, ptr %651, align 8, !tbaa !11
  %653 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %652, i64 0, i32 2
  %654 = load ptr, ptr %653, align 8, !tbaa !93
  %655 = icmp eq ptr %654, null
  br i1 %655, label %658, label %656

656:                                              ; preds = %647
  %657 = load ptr, ptr %654, align 8, !tbaa !94
  call void %657(ptr noundef nonnull %648, i32 noundef %650) #10
  br label %658

658:                                              ; preds = %656, %647
  %659 = load i8, ptr %648, align 8
  %660 = and i8 %659, 1
  %661 = icmp eq i8 %660, 0
  %662 = load i32, ptr %648, align 8
  %663 = select i1 %661, i32 1, i32 -7
  %664 = select i1 %661, i32 -4, i32 4
  %665 = and i32 %662, %663
  %666 = or disjoint i32 %665, %664
  store i32 %666, ptr %648, align 8
  %667 = load i8, ptr %648, align 8
  %668 = and i8 %667, 1
  %669 = icmp eq i8 %668, 0
  br i1 %669, label %670, label %678

670:                                              ; preds = %658
  %671 = ptrtoint ptr %648 to i64
  %672 = sub i64 %671, %646
  %673 = trunc i64 %672 to i32
  %674 = and i32 %673, -2
  %675 = load i32, ptr %648, align 8
  %676 = and i32 %675, 1
  %677 = or disjoint i32 %676, %674
  store i32 %677, ptr %648, align 8
  br label %678

678:                                              ; preds = %670, %658
  %679 = add i32 %650, 23
  %680 = and i32 %679, -8
  %681 = zext i32 %680 to i64
  %682 = getelementptr inbounds i8, ptr %648, i64 %681
  %683 = icmp ult ptr %682, %643
  br i1 %683, label %647, label %684, !llvm.loop !96

684:                                              ; preds = %678, %630
  call void @gc_strings_set_marks(ptr noundef nonnull %631, i32 noundef 1) #10
  call void @gc_strings_clear_reloc(ptr noundef nonnull %631) #10
  %685 = getelementptr inbounds %struct.chunk_s, ptr %631, i64 0, i32 9
  %686 = load ptr, ptr %685, align 8, !tbaa !17
  %687 = icmp eq ptr %686, null
  br i1 %687, label %688, label %630, !llvm.loop !97

688:                                              ; preds = %684, %625
  %689 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %626, i64 0, i32 20
  %690 = load ptr, ptr %689, align 8, !tbaa !11
  %691 = icmp eq ptr %690, null
  br i1 %691, label %692, label %625, !llvm.loop !98

692:                                              ; preds = %688, %620
  %693 = add nuw nsw i64 %621, 1
  %694 = icmp eq i64 %693, %566
  br i1 %694, label %618, label %620, !llvm.loop !99

695:                                              ; preds = %618, %695
  %696 = phi i64 [ %37, %618 ], [ %701, %695 ]
  %697 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %696
  %698 = load ptr, ptr %697, align 8, !tbaa !11
  %699 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %698, i64 0, i32 19
  %700 = load ptr, ptr %699, align 8, !tbaa !100
  call void %700(ptr noundef %698, i32 noundef 0) #10
  %701 = add nuw nsw i64 %696, 1
  %702 = icmp eq i64 %701, %619
  br i1 %702, label %703, label %695, !llvm.loop !101

703:                                              ; preds = %695
  %704 = zext nneg i32 %39 to i64
  br label %705

705:                                              ; preds = %703, %819
  %706 = phi i64 [ %37, %703 ], [ %820, %819 ]
  %707 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %706
  %708 = load ptr, ptr %707, align 8, !tbaa !11
  %709 = icmp eq ptr %708, null
  br i1 %709, label %819, label %710

710:                                              ; preds = %705, %815
  %711 = phi ptr [ %817, %815 ], [ %708, %705 ]
  %712 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %711, i64 0, i32 8
  %713 = load ptr, ptr %712, align 8, !tbaa !17
  %714 = icmp eq ptr %713, null
  br i1 %714, label %815, label %715

715:                                              ; preds = %710, %811
  %716 = phi ptr [ %813, %811 ], [ %713, %710 ]
  %717 = load ptr, ptr %716, align 8, !tbaa !92
  %718 = getelementptr inbounds %struct.chunk_head_s, ptr %717, i64 0, i32 1
  %719 = getelementptr inbounds %struct.chunk_s, ptr %716, i64 0, i32 1
  %720 = load ptr, ptr %719, align 8, !tbaa !29
  store ptr %720, ptr %717, align 8, !tbaa !5
  %721 = load i32, ptr %718, align 8
  %722 = and i32 %721, 1
  %723 = or disjoint i32 %722, 8
  store i32 %723, ptr %718, align 8
  %724 = getelementptr inbounds %struct.chunk_head_s, ptr %717, i64 0, i32 1, i32 0, i32 0, i32 1
  store i32 16, ptr %724, align 4, !tbaa !11
  %725 = getelementptr inbounds %struct.chunk_head_s, ptr %717, i64 0, i32 1, i32 0, i32 0, i32 2
  store i32 0, ptr %725, align 8, !tbaa !11
  %726 = load ptr, ptr %719, align 8, !tbaa !29
  %727 = getelementptr inbounds %struct.chunk_s, ptr %716, i64 0, i32 2
  %728 = load ptr, ptr %727, align 8, !tbaa !32
  %729 = icmp ult ptr %726, %728
  br i1 %729, label %730, label %811

730:                                              ; preds = %715
  %731 = ptrtoint ptr %717 to i64
  br label %732

732:                                              ; preds = %803, %730
  %733 = phi i32 [ 0, %730 ], [ %805, %803 ]
  %734 = phi ptr [ %718, %730 ], [ %804, %803 ]
  %735 = phi ptr [ %726, %730 ], [ %809, %803 ]
  %736 = getelementptr inbounds %struct.obj_header_data_s, ptr %735, i64 0, i32 1
  %737 = load i32, ptr %736, align 4, !tbaa !11
  %738 = getelementptr inbounds %struct.obj_header_data_s, ptr %735, i64 0, i32 2
  %739 = load ptr, ptr %738, align 8, !tbaa !11
  %740 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %739, i64 0, i32 2
  %741 = load ptr, ptr %740, align 8, !tbaa !93
  %742 = icmp eq ptr %741, null
  br i1 %742, label %743, label %753

743:                                              ; preds = %732
  %744 = load i8, ptr %735, align 8
  %745 = and i8 %744, 1
  %746 = icmp eq i8 %745, 0
  %747 = load i32, ptr %735, align 8
  br i1 %746, label %751, label %748

748:                                              ; preds = %743
  %749 = and i32 %747, 6
  %750 = icmp eq i32 %749, 6
  br i1 %750, label %758, label %784

751:                                              ; preds = %743
  %752 = icmp ugt i32 %747, -3
  br i1 %752, label %758, label %784

753:                                              ; preds = %732
  %754 = getelementptr inbounds %struct.struct_shared_procs_s, ptr %741, i64 0, i32 1
  %755 = load ptr, ptr %754, align 8, !tbaa !102
  %756 = call i32 %755(ptr noundef nonnull %735, i32 noundef %733, i32 noundef %737) #10
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %784

758:                                              ; preds = %753, %751, %748
  %759 = add i32 %737, 7
  %760 = and i32 %759, -8
  %761 = add i32 %733, 16
  %762 = add i32 %761, %760
  %763 = load ptr, ptr %738, align 8, !tbaa !11
  %764 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %763, i64 0, i32 6
  %765 = load ptr, ptr %764, align 8, !tbaa !103
  %766 = icmp eq ptr %765, null
  br i1 %766, label %769, label %767

767:                                              ; preds = %758
  %768 = getelementptr inbounds %struct.obj_header_s, ptr %735, i64 1
  call void %765(ptr noundef nonnull %768) #10
  br label %769

769:                                              ; preds = %767, %758
  %770 = load i8, ptr %735, align 8
  %771 = and i8 %770, 1
  %772 = icmp eq i8 %771, 0
  br i1 %772, label %776, label %773

773:                                              ; preds = %769
  %774 = load i32, ptr %735, align 8
  %775 = or i32 %774, 6
  store i32 %775, ptr %735, align 8
  br label %803

776:                                              ; preds = %769
  %777 = ptrtoint ptr %735 to i64
  %778 = sub i64 %777, %731
  %779 = trunc i64 %778 to i32
  %780 = and i32 %779, -2
  %781 = load i32, ptr %735, align 8
  %782 = and i32 %781, 1
  %783 = or disjoint i32 %782, %780
  store i32 %783, ptr %735, align 8
  store i32 %762, ptr %738, align 8, !tbaa !11
  br label %803

784:                                              ; preds = %753, %751, %748
  %785 = load i8, ptr %735, align 8
  %786 = and i8 %785, 1
  %787 = icmp eq i8 %786, 0
  br i1 %787, label %794, label %788

788:                                              ; preds = %784
  %789 = load i32, ptr %735, align 8
  %790 = and i32 %789, 6
  %791 = icmp eq i32 %790, 6
  br i1 %791, label %792, label %803

792:                                              ; preds = %788
  %793 = and i32 %789, -7
  store i32 %793, ptr %735, align 8
  br label %803

794:                                              ; preds = %784
  %795 = ptrtoint ptr %735 to i64
  %796 = ptrtoint ptr %734 to i64
  %797 = sub i64 %795, %796
  %798 = trunc i64 %797 to i32
  %799 = and i32 %798, -2
  %800 = load i32, ptr %735, align 8
  %801 = and i32 %800, 1
  %802 = or disjoint i32 %801, %799
  store i32 %802, ptr %735, align 8
  br label %803

803:                                              ; preds = %794, %792, %788, %776, %773
  %804 = phi ptr [ %734, %773 ], [ %735, %776 ], [ %734, %792 ], [ %734, %788 ], [ %734, %794 ]
  %805 = phi i32 [ %762, %773 ], [ %762, %776 ], [ %733, %792 ], [ %733, %788 ], [ %733, %794 ]
  %806 = add i32 %737, 23
  %807 = and i32 %806, -8
  %808 = zext i32 %807 to i64
  %809 = getelementptr inbounds i8, ptr %735, i64 %808
  %810 = icmp ult ptr %809, %728
  br i1 %810, label %732, label %811, !llvm.loop !104

811:                                              ; preds = %803, %715
  call void @gc_strings_set_reloc(ptr noundef nonnull %716) #10
  %812 = getelementptr inbounds %struct.chunk_s, ptr %716, i64 0, i32 9
  %813 = load ptr, ptr %812, align 8, !tbaa !17
  %814 = icmp eq ptr %813, null
  br i1 %814, label %815, label %715, !llvm.loop !105

815:                                              ; preds = %811, %710
  %816 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %711, i64 0, i32 20
  %817 = load ptr, ptr %816, align 8, !tbaa !11
  %818 = icmp eq ptr %817, null
  br i1 %818, label %819, label %710, !llvm.loop !106

819:                                              ; preds = %815, %705
  %820 = add nuw nsw i64 %706, 1
  %821 = icmp eq i64 %820, %704
  br i1 %821, label %822, label %705, !llvm.loop !107

822:                                              ; preds = %819
  %823 = zext nneg i32 %39 to i64
  br label %824

824:                                              ; preds = %822, %824
  %825 = phi i64 [ %37, %822 ], [ %830, %824 ]
  %826 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %825
  %827 = load ptr, ptr %826, align 8, !tbaa !11
  %828 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %827, i64 0, i32 19
  %829 = load ptr, ptr %828, align 8, !tbaa !100
  call void %829(ptr noundef %827, i32 noundef 1) #10
  %830 = add nuw nsw i64 %825, 1
  %831 = icmp eq i64 %830, %823
  br i1 %831, label %832, label %824, !llvm.loop !108

832:                                              ; preds = %824
  store i32 1, ptr %24, align 4, !tbaa !23
  br i1 %18, label %833, label %906

833:                                              ; preds = %832
  %834 = call i32 @llvm.umax.i32(i32 %19, i32 2)
  %835 = zext nneg i32 %834 to i64
  br label %836

836:                                              ; preds = %833, %903
  %837 = phi i64 [ 1, %833 ], [ %904, %903 ]
  %838 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %837
  %839 = load ptr, ptr %838, align 8, !tbaa !11
  %840 = icmp eq ptr %839, null
  br i1 %840, label %903, label %841

841:                                              ; preds = %836, %899
  %842 = phi ptr [ %901, %899 ], [ %839, %836 ]
  %843 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %842, i64 0, i32 8
  %844 = load ptr, ptr %843, align 8, !tbaa !17
  %845 = icmp eq ptr %844, null
  br i1 %845, label %899, label %846

846:                                              ; preds = %841, %895
  %847 = phi ptr [ %897, %895 ], [ %844, %841 ]
  %848 = getelementptr inbounds %struct.chunk_s, ptr %847, i64 0, i32 1
  %849 = load ptr, ptr %848, align 8, !tbaa !29
  %850 = getelementptr inbounds %struct.chunk_s, ptr %847, i64 0, i32 2
  %851 = load ptr, ptr %850, align 8, !tbaa !32
  %852 = icmp ult ptr %849, %851
  br i1 %852, label %853, label %895

853:                                              ; preds = %846
  %854 = load ptr, ptr %847, align 8, !tbaa !92
  %855 = ptrtoint ptr %854 to i64
  br label %856

856:                                              ; preds = %889, %853
  %857 = phi ptr [ %849, %853 ], [ %893, %889 ]
  %858 = load i8, ptr %857, align 8
  %859 = and i8 %858, 1
  %860 = icmp eq i8 %859, 0
  %861 = getelementptr inbounds %struct.obj_header_data_s, ptr %857, i64 0, i32 1
  %862 = load i32, ptr %861, align 4, !tbaa !11
  %863 = load i32, ptr %857, align 8
  br i1 %860, label %867, label %864

864:                                              ; preds = %856
  %865 = and i32 %863, 6
  %866 = icmp eq i32 %865, 4
  br i1 %866, label %881, label %870

867:                                              ; preds = %856
  %868 = and i32 %863, -2
  %869 = icmp eq i32 %868, -4
  br i1 %869, label %881, label %870

870:                                              ; preds = %867, %864
  %871 = load i32, ptr %857, align 8
  br i1 %860, label %875, label %872

872:                                              ; preds = %870
  %873 = and i32 %871, 6
  %874 = icmp eq i32 %873, 6
  br i1 %874, label %889, label %881

875:                                              ; preds = %870
  %876 = and i32 %871, -2
  %877 = sext i32 %876 to i64
  %878 = ptrtoint ptr %857 to i64
  %879 = sub i64 %878, %855
  %880 = icmp eq i64 %879, %877
  br i1 %880, label %889, label %881

881:                                              ; preds = %875, %872, %867, %864
  %882 = getelementptr inbounds %struct.obj_header_data_s, ptr %857, i64 0, i32 2
  %883 = load ptr, ptr %882, align 8, !tbaa !11
  %884 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %883, i64 0, i32 5
  %885 = load ptr, ptr %884, align 8, !tbaa !109
  %886 = icmp eq ptr %885, null
  br i1 %886, label %889, label %887

887:                                              ; preds = %881
  %888 = getelementptr inbounds %struct.obj_header_s, ptr %857, i64 1
  call void %885(ptr noundef nonnull %888, i32 noundef %862, ptr noundef nonnull %9) #10
  br label %889

889:                                              ; preds = %887, %881, %875, %872
  %890 = add i32 %862, 23
  %891 = and i32 %890, -8
  %892 = zext i32 %891 to i64
  %893 = getelementptr inbounds i8, ptr %857, i64 %892
  %894 = icmp ult ptr %893, %851
  br i1 %894, label %856, label %895, !llvm.loop !110

895:                                              ; preds = %889, %846
  %896 = getelementptr inbounds %struct.chunk_s, ptr %847, i64 0, i32 9
  %897 = load ptr, ptr %896, align 8, !tbaa !17
  %898 = icmp eq ptr %897, null
  br i1 %898, label %899, label %846, !llvm.loop !111

899:                                              ; preds = %895, %841
  %900 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %842, i64 0, i32 20
  %901 = load ptr, ptr %900, align 8, !tbaa !11
  %902 = icmp eq ptr %901, null
  br i1 %902, label %903, label %841, !llvm.loop !112

903:                                              ; preds = %899, %836
  %904 = add nuw nsw i64 %837, 1
  %905 = icmp eq i64 %904, %835
  br i1 %905, label %906, label %836, !llvm.loop !113

906:                                              ; preds = %903, %832
  store i32 0, ptr %24, align 4, !tbaa !23
  %907 = zext nneg i32 %39 to i64
  br label %908

908:                                              ; preds = %906, %975
  %909 = phi i64 [ %37, %906 ], [ %976, %975 ]
  %910 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %909
  %911 = load ptr, ptr %910, align 8, !tbaa !11
  %912 = icmp eq ptr %911, null
  br i1 %912, label %975, label %913

913:                                              ; preds = %908, %971
  %914 = phi ptr [ %973, %971 ], [ %911, %908 ]
  %915 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %914, i64 0, i32 8
  %916 = load ptr, ptr %915, align 8, !tbaa !17
  %917 = icmp eq ptr %916, null
  br i1 %917, label %971, label %918

918:                                              ; preds = %913, %967
  %919 = phi ptr [ %969, %967 ], [ %916, %913 ]
  %920 = getelementptr inbounds %struct.chunk_s, ptr %919, i64 0, i32 1
  %921 = load ptr, ptr %920, align 8, !tbaa !29
  %922 = getelementptr inbounds %struct.chunk_s, ptr %919, i64 0, i32 2
  %923 = load ptr, ptr %922, align 8, !tbaa !32
  %924 = icmp ult ptr %921, %923
  br i1 %924, label %925, label %967

925:                                              ; preds = %918
  %926 = load ptr, ptr %919, align 8, !tbaa !92
  %927 = ptrtoint ptr %926 to i64
  br label %928

928:                                              ; preds = %961, %925
  %929 = phi ptr [ %921, %925 ], [ %965, %961 ]
  %930 = load i8, ptr %929, align 8
  %931 = and i8 %930, 1
  %932 = icmp eq i8 %931, 0
  %933 = getelementptr inbounds %struct.obj_header_data_s, ptr %929, i64 0, i32 1
  %934 = load i32, ptr %933, align 4, !tbaa !11
  %935 = load i32, ptr %929, align 8
  br i1 %932, label %939, label %936

936:                                              ; preds = %928
  %937 = and i32 %935, 6
  %938 = icmp eq i32 %937, 4
  br i1 %938, label %953, label %942

939:                                              ; preds = %928
  %940 = and i32 %935, -2
  %941 = icmp eq i32 %940, -4
  br i1 %941, label %953, label %942

942:                                              ; preds = %939, %936
  %943 = load i32, ptr %929, align 8
  br i1 %932, label %947, label %944

944:                                              ; preds = %942
  %945 = and i32 %943, 6
  %946 = icmp eq i32 %945, 6
  br i1 %946, label %961, label %953

947:                                              ; preds = %942
  %948 = and i32 %943, -2
  %949 = sext i32 %948 to i64
  %950 = ptrtoint ptr %929 to i64
  %951 = sub i64 %950, %927
  %952 = icmp eq i64 %951, %949
  br i1 %952, label %961, label %953

953:                                              ; preds = %947, %944, %939, %936
  %954 = getelementptr inbounds %struct.obj_header_data_s, ptr %929, i64 0, i32 2
  %955 = load ptr, ptr %954, align 8, !tbaa !11
  %956 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %955, i64 0, i32 5
  %957 = load ptr, ptr %956, align 8, !tbaa !109
  %958 = icmp eq ptr %957, null
  br i1 %958, label %961, label %959

959:                                              ; preds = %953
  %960 = getelementptr inbounds %struct.obj_header_s, ptr %929, i64 1
  call void %957(ptr noundef nonnull %960, i32 noundef %934, ptr noundef nonnull %9) #10
  br label %961

961:                                              ; preds = %959, %953, %947, %944
  %962 = add i32 %934, 23
  %963 = and i32 %962, -8
  %964 = zext i32 %963 to i64
  %965 = getelementptr inbounds i8, ptr %929, i64 %964
  %966 = icmp ult ptr %965, %923
  br i1 %966, label %928, label %967, !llvm.loop !110

967:                                              ; preds = %961, %918
  %968 = getelementptr inbounds %struct.chunk_s, ptr %919, i64 0, i32 9
  %969 = load ptr, ptr %968, align 8, !tbaa !17
  %970 = icmp eq ptr %969, null
  br i1 %970, label %971, label %918, !llvm.loop !114

971:                                              ; preds = %967, %913
  %972 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %914, i64 0, i32 20
  %973 = load ptr, ptr %972, align 8, !tbaa !11
  %974 = icmp eq ptr %973, null
  br i1 %974, label %975, label %913, !llvm.loop !115

975:                                              ; preds = %971, %908
  %976 = add nuw nsw i64 %909, 1
  %977 = icmp eq i64 %976, %907
  br i1 %977, label %978, label %908, !llvm.loop !116

978:                                              ; preds = %975
  %979 = zext nneg i32 %25 to i64
  br label %980

980:                                              ; preds = %978, %1008
  %981 = phi i64 [ 1, %978 ], [ %1009, %1008 ]
  %982 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %981
  %983 = load ptr, ptr %982, align 8, !tbaa !11
  %984 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %983, i64 0, i32 17
  %985 = load ptr, ptr %984, align 8, !tbaa !17
  %986 = icmp eq ptr %985, null
  br i1 %986, label %1008, label %987

987:                                              ; preds = %980, %1005
  %988 = phi ptr [ %1006, %1005 ], [ %985, %980 ]
  %989 = getelementptr inbounds %struct.gs_gc_root_s, ptr %988, i64 0, i32 1
  %990 = load ptr, ptr %989, align 8, !tbaa !41
  %991 = icmp eq ptr %990, @ptr_ref_procs
  br i1 %991, label %992, label %997

992:                                              ; preds = %987
  %993 = getelementptr inbounds %struct.gs_gc_root_s, ptr %988, i64 0, i32 2
  %994 = load ptr, ptr %993, align 8, !tbaa !39
  %995 = load ptr, ptr %994, align 8, !tbaa !17
  %996 = getelementptr inbounds %struct.ref_s, ptr %995, i64 1
  call void @gs_reloc_refs(ptr noundef %995, ptr noundef nonnull %996, ptr noundef nonnull %9) #10
  br label %1005

997:                                              ; preds = %987
  %998 = getelementptr inbounds %struct.gs_ptr_procs_s, ptr %990, i64 0, i32 2
  %999 = load ptr, ptr %998, align 8, !tbaa !117
  %1000 = getelementptr inbounds %struct.gs_gc_root_s, ptr %988, i64 0, i32 2
  %1001 = load ptr, ptr %1000, align 8, !tbaa !39
  %1002 = load ptr, ptr %1001, align 8, !tbaa !17
  %1003 = call ptr %999(ptr noundef %1002, ptr noundef nonnull %9) #10
  %1004 = load ptr, ptr %1000, align 8, !tbaa !39
  store ptr %1003, ptr %1004, align 8, !tbaa !17
  br label %1005

1005:                                             ; preds = %997, %992
  %1006 = load ptr, ptr %988, align 8, !tbaa !17
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1008, label %987, !llvm.loop !118

1008:                                             ; preds = %1005, %980
  %1009 = add nuw nsw i64 %981, 1
  %1010 = icmp eq i64 %1009, %979
  br i1 %1010, label %1011, label %980, !llvm.loop !119

1011:                                             ; preds = %1008
  %1012 = zext nneg i32 %39 to i64
  br label %1013

1013:                                             ; preds = %1011, %1118
  %1014 = phi i64 [ %37, %1011 ], [ %1119, %1118 ]
  %1015 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %1014
  %1016 = load ptr, ptr %1015, align 8, !tbaa !11
  %1017 = icmp eq ptr %1016, null
  br i1 %1017, label %1118, label %1018

1018:                                             ; preds = %1013, %1112
  %1019 = phi ptr [ %1116, %1112 ], [ %1016, %1013 ]
  %1020 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1019, i64 0, i32 8
  %1021 = load ptr, ptr %1020, align 8, !tbaa !17
  %1022 = icmp eq ptr %1021, null
  br i1 %1022, label %1112, label %1023

1023:                                             ; preds = %1018
  %1024 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1019, i64 0, i32 11
  %1025 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1019, i64 0, i32 10
  br label %1026

1026:                                             ; preds = %1023, %1108
  %1027 = phi ptr [ %1021, %1023 ], [ %1110, %1108 ]
  %1028 = load ptr, ptr %1027, align 8, !tbaa !92
  %1029 = load ptr, ptr %1028, align 8, !tbaa !5
  %1030 = getelementptr inbounds %struct.chunk_s, ptr %1027, i64 0, i32 1
  %1031 = load ptr, ptr %1030, align 8, !tbaa !29
  %1032 = getelementptr inbounds %struct.chunk_s, ptr %1027, i64 0, i32 2
  %1033 = load ptr, ptr %1032, align 8, !tbaa !32
  %1034 = icmp ult ptr %1031, %1033
  br i1 %1034, label %1035, label %1092

1035:                                             ; preds = %1026
  %1036 = ptrtoint ptr %1028 to i64
  br label %1037

1037:                                             ; preds = %1086, %1035
  %1038 = phi ptr [ %1029, %1035 ], [ %1087, %1086 ]
  %1039 = phi ptr [ %1031, %1035 ], [ %1090, %1086 ]
  %1040 = load i8, ptr %1039, align 8
  %1041 = and i8 %1040, 1
  %1042 = icmp eq i8 %1041, 0
  br i1 %1042, label %1052, label %1043

1043:                                             ; preds = %1037
  %1044 = load i32, ptr %1039, align 8
  %1045 = lshr i32 %1044, 3
  %1046 = zext nneg i32 %1045 to i64
  %1047 = shl nuw nsw i64 %1046, 32
  %1048 = getelementptr inbounds %struct.obj_header_data_s, ptr %1039, i64 0, i32 1
  %1049 = load i32, ptr %1048, align 4, !tbaa !11
  %1050 = zext i32 %1049 to i64
  %1051 = or disjoint i64 %1047, %1050
  br label %1056

1052:                                             ; preds = %1037
  %1053 = getelementptr inbounds %struct.obj_header_data_s, ptr %1039, i64 0, i32 1
  %1054 = load i32, ptr %1053, align 4, !tbaa !11
  %1055 = zext i32 %1054 to i64
  br label %1056

1056:                                             ; preds = %1052, %1043
  %1057 = phi i64 [ %1051, %1043 ], [ %1055, %1052 ]
  %1058 = load i32, ptr %1039, align 8
  br i1 %1042, label %1062, label %1059

1059:                                             ; preds = %1056
  %1060 = and i32 %1058, 6
  %1061 = icmp eq i32 %1060, 6
  br i1 %1061, label %1086, label %1068

1062:                                             ; preds = %1056
  %1063 = and i32 %1058, -2
  %1064 = sext i32 %1063 to i64
  %1065 = ptrtoint ptr %1039 to i64
  %1066 = sub i64 %1065, %1036
  %1067 = icmp eq i64 %1066, %1064
  br i1 %1067, label %1086, label %1068

1068:                                             ; preds = %1062, %1059
  %1069 = getelementptr inbounds %struct.obj_header_data_s, ptr %1039, i64 0, i32 2
  %1070 = load ptr, ptr %1069, align 8, !tbaa !11
  %1071 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %1070, i64 0, i32 2
  %1072 = load ptr, ptr %1071, align 8, !tbaa !93
  %1073 = icmp eq ptr %1072, null
  br i1 %1073, label %1074, label %1078

1074:                                             ; preds = %1068
  %1075 = icmp eq ptr %1038, %1039
  br i1 %1075, label %1082, label %1076

1076:                                             ; preds = %1074
  %1077 = add nuw nsw i64 %1057, 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1038, ptr noundef nonnull align 8 dereferenceable(1) %1039, i64 %1077, i1 false)
  br label %1082

1078:                                             ; preds = %1068
  %1079 = getelementptr inbounds %struct.struct_shared_procs_s, ptr %1072, i64 0, i32 2
  %1080 = load ptr, ptr %1079, align 8, !tbaa !120
  %1081 = trunc i64 %1057 to i32
  call void %1080(ptr noundef nonnull %1039, ptr noundef %1038, i32 noundef %1081) #10
  br label %1082

1082:                                             ; preds = %1078, %1076, %1074
  %1083 = add nuw nsw i64 %1057, 23
  %1084 = and i64 %1083, 4294967288
  %1085 = getelementptr inbounds i8, ptr %1038, i64 %1084
  br label %1086

1086:                                             ; preds = %1082, %1062, %1059
  %1087 = phi ptr [ %1038, %1059 ], [ %1085, %1082 ], [ %1038, %1062 ]
  %1088 = add nuw nsw i64 %1057, 23
  %1089 = and i64 %1088, 4294967288
  %1090 = getelementptr inbounds i8, ptr %1039, i64 %1089
  %1091 = icmp ult ptr %1090, %1033
  br i1 %1091, label %1037, label %1092, !llvm.loop !121

1092:                                             ; preds = %1086, %1026
  %1093 = phi ptr [ %1029, %1026 ], [ %1087, %1086 ]
  %1094 = getelementptr inbounds %struct.chunk_s, ptr %1027, i64 0, i32 10
  %1095 = load ptr, ptr %1094, align 8, !tbaa !122
  %1096 = icmp eq ptr %1095, null
  br i1 %1096, label %1097, label %1102

1097:                                             ; preds = %1092
  %1098 = load ptr, ptr %1028, align 8, !tbaa !5
  %1099 = load ptr, ptr %1030, align 8, !tbaa !29
  %1100 = icmp eq ptr %1098, %1099
  %1101 = select i1 %1100, ptr %1093, ptr %1099
  br label %1102

1102:                                             ; preds = %1092, %1097
  %1103 = phi ptr [ %1093, %1092 ], [ %1101, %1097 ]
  store ptr %1103, ptr %1032, align 8, !tbaa !32
  %1104 = getelementptr inbounds %struct.chunk_s, ptr %1027, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1104, i8 0, i64 16, i1 false)
  call void @gc_strings_compact(ptr noundef nonnull %1027) #10
  %1105 = load ptr, ptr %1024, align 8, !tbaa !123
  %1106 = icmp eq ptr %1105, %1027
  br i1 %1106, label %1107, label %1108

1107:                                             ; preds = %1102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %1025, ptr noundef nonnull align 8 dereferenceable(176) %1027, i64 176, i1 false), !tbaa.struct !129
  br label %1108

1108:                                             ; preds = %1102, %1107
  %1109 = getelementptr inbounds %struct.chunk_s, ptr %1027, i64 0, i32 9
  %1110 = load ptr, ptr %1109, align 8, !tbaa !17
  %1111 = icmp eq ptr %1110, null
  br i1 %1111, label %1112, label %1026, !llvm.loop !131

1112:                                             ; preds = %1108, %1018
  %1113 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1019, i64 0, i32 21
  %1114 = load ptr, ptr %1113, align 8, !tbaa !132
  %1115 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1019, i64 0, i32 20
  store ptr %1114, ptr %1115, align 8, !tbaa !133
  call void @ialloc_reset_free(ptr noundef nonnull %1019) #10
  %1116 = load ptr, ptr %1115, align 8, !tbaa !11
  %1117 = icmp eq ptr %1116, null
  br i1 %1117, label %1118, label %1018, !llvm.loop !134

1118:                                             ; preds = %1112, %1013
  %1119 = add nuw nsw i64 %1014, 1
  %1120 = icmp eq i64 %1119, %1012
  br i1 %1120, label %1121, label %1013, !llvm.loop !135

1121:                                             ; preds = %1118
  %1122 = zext nneg i32 %39 to i64
  br label %1125

1123:                                             ; preds = %1170
  %1124 = zext nneg i32 %39 to i64
  br label %1173

1125:                                             ; preds = %1121, %1170
  %1126 = phi i64 [ %37, %1121 ], [ %1171, %1170 ]
  %1127 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %1126
  %1128 = load ptr, ptr %1127, align 8, !tbaa !11
  %1129 = icmp eq ptr %1128, null
  br i1 %1129, label %1170, label %1130

1130:                                             ; preds = %1125, %1166
  %1131 = phi ptr [ %1168, %1166 ], [ %1128, %1125 ]
  %1132 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1131, i64 0, i32 9
  %1133 = load ptr, ptr %1132, align 8, !tbaa !136
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %1166, label %1135

1135:                                             ; preds = %1130
  %1136 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1131, i64 0, i32 11
  br label %1137

1137:                                             ; preds = %1164, %1135
  %1138 = phi ptr [ %1133, %1135 ], [ %1140, %1164 ]
  %1139 = getelementptr inbounds %struct.chunk_s, ptr %1138, i64 0, i32 8
  %1140 = load ptr, ptr %1139, align 8, !tbaa !137
  %1141 = getelementptr inbounds %struct.chunk_s, ptr %1138, i64 0, i32 2
  %1142 = load ptr, ptr %1141, align 8, !tbaa !32
  %1143 = getelementptr inbounds %struct.chunk_s, ptr %1138, i64 0, i32 1
  %1144 = load ptr, ptr %1143, align 8, !tbaa !29
  %1145 = icmp eq ptr %1142, %1144
  br i1 %1145, label %1146, label %1164

1146:                                             ; preds = %1137
  %1147 = getelementptr inbounds %struct.chunk_s, ptr %1138, i64 0, i32 5
  %1148 = load ptr, ptr %1147, align 8, !tbaa !59
  %1149 = getelementptr inbounds %struct.chunk_s, ptr %1138, i64 0, i32 6
  %1150 = load ptr, ptr %1149, align 8, !tbaa !138
  %1151 = icmp eq ptr %1148, %1150
  br i1 %1151, label %1152, label %1164

1152:                                             ; preds = %1146
  %1153 = getelementptr inbounds %struct.chunk_s, ptr %1138, i64 0, i32 10
  %1154 = load ptr, ptr %1153, align 8, !tbaa !122
  %1155 = icmp eq ptr %1154, null
  br i1 %1155, label %1156, label %1164

1156:                                             ; preds = %1152
  %1157 = getelementptr inbounds %struct.chunk_s, ptr %1138, i64 0, i32 11
  %1158 = load i32, ptr %1157, align 8, !tbaa !60
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1160, label %1164

1160:                                             ; preds = %1156
  call void @alloc_free_chunk(ptr noundef nonnull %1138, ptr noundef nonnull %1131) #10
  %1161 = load ptr, ptr %1136, align 8, !tbaa !123
  %1162 = icmp eq ptr %1161, %1138
  br i1 %1162, label %1163, label %1164

1163:                                             ; preds = %1160
  store ptr null, ptr %1136, align 8, !tbaa !123
  br label %1164

1164:                                             ; preds = %1163, %1160, %1156, %1152, %1146, %1137
  %1165 = icmp eq ptr %1140, null
  br i1 %1165, label %1166, label %1137, !llvm.loop !139

1166:                                             ; preds = %1164, %1130
  %1167 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1131, i64 0, i32 20
  %1168 = load ptr, ptr %1167, align 8, !tbaa !11
  %1169 = icmp eq ptr %1168, null
  br i1 %1169, label %1170, label %1130, !llvm.loop !140

1170:                                             ; preds = %1166, %1125
  %1171 = add nuw nsw i64 %1126, 1
  %1172 = icmp eq i64 %1171, %1122
  br i1 %1172, label %1123, label %1125, !llvm.loop !141

1173:                                             ; preds = %1123, %1205
  %1174 = phi i64 [ %37, %1123 ], [ %1213, %1205 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #10
  %1175 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %1174
  %1176 = load ptr, ptr %1175, align 8, !tbaa !11
  %1177 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1176, i64 0, i32 20
  %1178 = load ptr, ptr %1177, align 8, !tbaa !133
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1186, label %1180

1180:                                             ; preds = %1173, %1180
  %1181 = phi ptr [ %1182, %1180 ], [ null, %1173 ]
  %1182 = phi ptr [ %1184, %1180 ], [ %1178, %1173 ]
  %1183 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1182, i64 0, i32 20
  %1184 = load ptr, ptr %1183, align 8, !tbaa !142
  store ptr %1181, ptr %1183, align 8, !tbaa !142
  %1185 = icmp eq ptr %1184, null
  br i1 %1185, label %1186, label %1180, !llvm.loop !144

1186:                                             ; preds = %1180, %1173
  %1187 = phi ptr [ null, %1173 ], [ %1182, %1180 ]
  %1188 = icmp eq ptr %1187, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br i1 %1188, label %1205, label %1189

1189:                                             ; preds = %1186, %1189
  %1190 = phi ptr [ %1191, %1189 ], [ null, %1186 ]
  %1191 = phi ptr [ %1193, %1189 ], [ %1187, %1186 ]
  %1192 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1191, i64 0, i32 20
  %1193 = load ptr, ptr %1192, align 8, !tbaa !133
  store ptr %1190, ptr %1192, align 8, !tbaa !133
  %1194 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1191, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1194, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !145
  %1195 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1191, i64 0, i32 18
  %1196 = load ptr, ptr %1195, align 8, !tbaa !147
  call void %1196(ptr noundef nonnull %1191, ptr noundef nonnull %11) #10
  %1197 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1191, i64 0, i32 13
  %1198 = load i64, ptr %1197, align 8, !tbaa !148
  %1199 = load i64, ptr %11, align 8, !tbaa !149
  %1200 = add i64 %1199, %1198
  %1201 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1191, i64 0, i32 15
  store i64 %1200, ptr %1201, align 8, !tbaa !150
  %1202 = sub i64 0, %1198
  %1203 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1191, i64 0, i32 14
  store i64 %1202, ptr %1203, align 8, !tbaa !151
  %1204 = icmp eq ptr %1193, null
  br i1 %1204, label %1205, label %1189, !llvm.loop !152

1205:                                             ; preds = %1189, %1186
  %1206 = load ptr, ptr %1175, align 8, !tbaa !11
  %1207 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1206, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1207, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !145
  %1208 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1206, i64 0, i32 13
  %1209 = load i64, ptr %1208, align 8, !tbaa !148
  %1210 = load i64, ptr %11, align 8, !tbaa !149
  %1211 = add i64 %1210, %1209
  %1212 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1206, i64 0, i32 15
  store i64 %1211, ptr %1212, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #10
  %1213 = add nuw nsw i64 %1174, 1
  %1214 = icmp eq i64 %1213, %1124
  br i1 %1214, label %1215, label %1173, !llvm.loop !153

1215:                                             ; preds = %1205
  %1216 = zext nneg i32 %25 to i64
  br label %1217

1217:                                             ; preds = %1215, %1217
  %1218 = phi i64 [ 1, %1215 ], [ %1224, %1217 ]
  %1219 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %1218
  %1220 = load ptr, ptr %1219, align 8, !tbaa !11
  %1221 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1220, i64 0, i32 17
  %1222 = load ptr, ptr %1221, align 8, !tbaa !154
  %1223 = getelementptr inbounds [4 x %struct.gs_gc_root_s], ptr %8, i64 0, i64 %1218
  call void %1222(ptr noundef %1220, ptr noundef nonnull %1223, ptr noundef nonnull @.str) #10
  %1224 = add nuw nsw i64 %1218, 1
  %1225 = icmp eq i64 %1224, %1216
  br i1 %1225, label %1226, label %1217, !llvm.loop !155

1226:                                             ; preds = %1217
  call void @llvm.lifetime.end.p0(i64 1640, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @gc_strings_set_marks(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gc_trace(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.gc_state_s, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %2, i64 1
  %8 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %2, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !56
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ms_entry, ptr %7, i64 %10
  %12 = getelementptr inbounds %struct.ms_entry, ptr %11, i64 -2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %13 = getelementptr inbounds %struct.gs_gc_root_s, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  store ptr %15, ptr %4, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %405, label %17

17:                                               ; preds = %3
  store ptr %15, ptr %7, align 8, !tbaa !156
  %18 = getelementptr inbounds %struct.gs_gc_root_s, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = icmp eq ptr %19, @ptr_ref_procs
  %21 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %2, i64 1, i32 1
  %22 = getelementptr inbounds i8, ptr %2, i64 52
  br i1 %20, label %23, label %24

23:                                               ; preds = %17
  store i32 1, ptr %21, align 8, !tbaa !158
  store i32 1, ptr %22, align 4, !tbaa !159
  br label %30

24:                                               ; preds = %17
  store i32 0, ptr %21, align 8, !tbaa !158
  store i32 0, ptr %22, align 4, !tbaa !159
  %25 = getelementptr inbounds %struct.gs_ptr_procs_s, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !160
  %27 = tail call i32 %26(ptr noundef nonnull %15, ptr noundef %1) #10
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %24, %23
  %31 = phi i32 [ 0, %23 ], [ %29, %24 ]
  br label %32

32:                                               ; preds = %30, %397
  %33 = phi ptr [ %399, %397 ], [ undef, %30 ]
  %34 = phi i32 [ %400, %397 ], [ %31, %30 ]
  %35 = phi ptr [ %401, %397 ], [ %12, %30 ]
  %36 = phi ptr [ %402, %397 ], [ %7, %30 ]
  %37 = phi ptr [ %403, %397 ], [ %2, %30 ]
  %38 = getelementptr inbounds %struct.ms_entry, ptr %36, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !159
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %151

41:                                               ; preds = %293, %32
  %42 = phi ptr [ %33, %32 ], [ %295, %293 ]
  %43 = phi i32 [ %34, %32 ], [ %296, %293 ]
  %44 = phi ptr [ %35, %32 ], [ %154, %293 ]
  %45 = phi ptr [ %36, %32 ], [ %297, %293 ]
  %46 = phi ptr [ %37, %32 ], [ %156, %293 ]
  br label %47

47:                                               ; preds = %41, %144
  %48 = phi ptr [ %146, %144 ], [ %42, %41 ]
  %49 = phi i32 [ %147, %144 ], [ %43, %41 ]
  %50 = phi ptr [ %148, %144 ], [ %44, %41 ]
  %51 = phi ptr [ %149, %144 ], [ %45, %41 ]
  %52 = phi ptr [ %150, %144 ], [ %46, %41 ]
  %53 = load ptr, ptr %51, align 8, !tbaa !156
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %47
  %56 = getelementptr %struct.obj_header_s, ptr %53, i64 -1, i32 0, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %57, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !161
  %60 = icmp eq ptr %59, null
  br i1 %60, label %83, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.ms_entry, ptr %51, i64 0, i32 1
  %63 = getelementptr inbounds %struct.ms_entry, ptr %51, i64 1, i32 1
  %64 = getelementptr inbounds %struct.ms_entry, ptr %51, i64 1, i32 2
  %65 = icmp eq ptr %51, %50
  %66 = getelementptr %struct.obj_header_s, ptr %53, i64 -1, i32 0, i32 0, i32 1
  br label %141

67:                                               ; preds = %47
  %68 = load ptr, ptr %52, align 8, !tbaa !61
  %69 = icmp eq ptr %68, null
  br i1 %69, label %144, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %68, i64 0, i32 4
  %72 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %68, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !56
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ms_entry, ptr %71, i64 %74
  %76 = getelementptr inbounds %struct.ms_entry, ptr %75, i64 -1
  br label %144, !llvm.loop !162

77:                                               ; preds = %141, %114
  %78 = phi ptr [ %142, %141 ], [ %117, %114 ]
  %79 = load i32, ptr %66, align 4, !tbaa !11
  %80 = load i32, ptr %62, align 8, !tbaa !158
  %81 = call ptr %78(ptr noundef nonnull %53, i32 noundef %79, i32 noundef %80, ptr noundef nonnull %4) #10
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %129, %77, %114, %55
  %84 = phi i32 [ %49, %55 ], [ %143, %114 ], [ %143, %77 ], [ %136, %129 ]
  %85 = phi ptr [ %48, %55 ], [ null, %77 ], [ @ptr_struct_procs, %114 ], [ %81, %129 ]
  %86 = getelementptr inbounds %struct.ms_entry, ptr %51, i64 -1
  br label %144, !llvm.loop !162

87:                                               ; preds = %77
  %88 = load i32, ptr %62, align 8, !tbaa !158
  %89 = add i32 %88, 1
  store i32 %89, ptr %62, align 8, !tbaa !158
  %90 = icmp eq ptr %81, @ptr_struct_procs
  br i1 %90, label %91, label %119

91:                                               ; preds = %87
  store i32 0, ptr %63, align 8, !tbaa !158
  store i32 0, ptr %64, align 4, !tbaa !159
  br i1 %65, label %144, label %92

92:                                               ; preds = %91
  %93 = load ptr, ptr %4, align 8, !tbaa !17
  %94 = icmp eq ptr %93, null
  br i1 %94, label %114, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.obj_header_s, ptr %93, i64 -1
  %97 = load i8, ptr %96, align 8
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  %100 = load i32, ptr %96, align 8
  br i1 %99, label %104, label %101

101:                                              ; preds = %95
  %102 = and i32 %100, 6
  %103 = icmp eq i32 %102, 6
  br i1 %103, label %106, label %114

104:                                              ; preds = %95
  %105 = icmp ugt i32 %100, -3
  br i1 %105, label %106, label %114

106:                                              ; preds = %104, %101
  %107 = phi i32 [ 1, %104 ], [ -7, %101 ]
  %108 = getelementptr inbounds %struct.obj_header_s, ptr %93, i64 -1
  %109 = getelementptr inbounds %struct.ms_entry, ptr %51, i64 1
  %110 = load i32, ptr %108, align 8
  %111 = and i32 %110, %107
  store i32 %111, ptr %108, align 8
  %112 = or i32 %143, 1
  %113 = load ptr, ptr %4, align 8, !tbaa !17
  store ptr %113, ptr %109, align 8, !tbaa !156
  br label %144

114:                                              ; preds = %92, %101, %104
  %115 = load ptr, ptr %56, align 8, !tbaa !11
  %116 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %115, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !161
  %118 = icmp eq ptr %117, null
  br i1 %118, label %83, label %77

119:                                              ; preds = %87
  %120 = icmp eq ptr %81, @ptr_ref_procs
  br i1 %120, label %121, label %129

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.ms_entry, ptr %51, i64 1, i32 1
  store i32 1, ptr %122, align 8, !tbaa !158
  %123 = getelementptr inbounds %struct.ms_entry, ptr %51, i64 1, i32 2
  store i32 1, ptr %123, align 4, !tbaa !159
  %124 = icmp eq ptr %51, %50
  br i1 %124, label %144, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.ms_entry, ptr %51, i64 1
  %127 = or i32 %143, 1
  %128 = load ptr, ptr %4, align 8, !tbaa !17
  store ptr %128, ptr %126, align 8, !tbaa !156
  br label %144

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.gs_ptr_procs_s, ptr %81, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !160
  %132 = load ptr, ptr %4, align 8, !tbaa !17
  %133 = call i32 %131(ptr noundef %132, ptr noundef %1) #10
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = or i32 %143, %135
  %137 = load ptr, ptr %56, align 8, !tbaa !11
  %138 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %137, i64 0, i32 4
  %139 = load ptr, ptr %138, align 8, !tbaa !161
  %140 = icmp eq ptr %139, null
  br i1 %140, label %83, label %141

141:                                              ; preds = %61, %129
  %142 = phi ptr [ %59, %61 ], [ %139, %129 ]
  %143 = phi i32 [ %49, %61 ], [ %136, %129 ]
  br label %77

144:                                              ; preds = %91, %121, %67, %125, %106, %83, %70
  %145 = phi i32 [ 3, %70 ], [ 3, %83 ], [ 5, %106 ], [ 4, %125 ], [ 2, %67 ], [ 15, %121 ], [ 15, %91 ]
  %146 = phi ptr [ %48, %70 ], [ %85, %83 ], [ @ptr_struct_procs, %106 ], [ @ptr_ref_procs, %125 ], [ %48, %67 ], [ @ptr_ref_procs, %121 ], [ @ptr_struct_procs, %91 ]
  %147 = phi i32 [ %49, %70 ], [ %84, %83 ], [ %112, %106 ], [ %127, %125 ], [ %49, %67 ], [ %143, %121 ], [ %143, %91 ]
  %148 = phi ptr [ %76, %70 ], [ %50, %83 ], [ %50, %106 ], [ %50, %125 ], [ %50, %67 ], [ %50, %121 ], [ %50, %91 ]
  %149 = phi ptr [ %76, %70 ], [ %86, %83 ], [ %109, %106 ], [ %126, %125 ], [ %51, %67 ], [ %51, %121 ], [ %51, %91 ]
  %150 = phi ptr [ %68, %70 ], [ %52, %83 ], [ %52, %106 ], [ %52, %125 ], [ null, %67 ], [ %52, %121 ], [ %52, %91 ]
  switch i32 %145, label %397 [
    i32 5, label %47
    i32 4, label %151
    i32 15, label %298
  ]

151:                                              ; preds = %144, %32
  %152 = phi ptr [ %33, %32 ], [ %146, %144 ]
  %153 = phi i32 [ %34, %32 ], [ %147, %144 ]
  %154 = phi ptr [ %35, %32 ], [ %148, %144 ]
  %155 = phi ptr [ %36, %32 ], [ %149, %144 ]
  %156 = phi ptr [ %37, %32 ], [ %150, %144 ]
  br label %157

157:                                              ; preds = %151, %293
  %158 = phi ptr [ %295, %293 ], [ %152, %151 ]
  %159 = phi i32 [ %296, %293 ], [ %153, %151 ]
  %160 = phi ptr [ %297, %293 ], [ %155, %151 ]
  %161 = getelementptr inbounds %struct.ms_entry, ptr %160, i64 0, i32 1
  %162 = load i32, ptr %161, align 8, !tbaa !158
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %157
  %165 = load ptr, ptr %160, align 8, !tbaa !156
  %166 = getelementptr inbounds %struct.ms_entry, ptr %160, i64 1, i32 1
  %167 = getelementptr inbounds %struct.ms_entry, ptr %160, i64 1, i32 2
  %168 = getelementptr inbounds %struct.ms_entry, ptr %160, i64 1, i32 1
  %169 = icmp eq ptr %160, %154
  br label %170

170:                                              ; preds = %164, %205
  %171 = phi i32 [ %162, %164 ], [ %208, %205 ]
  %172 = phi ptr [ %165, %164 ], [ %207, %205 ]
  %173 = phi i32 [ %159, %164 ], [ %206, %205 ]
  br label %178

174:                                              ; preds = %213
  store i32 0, ptr %161, align 8, !tbaa !158
  br label %175

175:                                              ; preds = %205, %157, %174
  %176 = phi i32 [ %173, %174 ], [ %159, %157 ], [ %206, %205 ]
  %177 = getelementptr inbounds %struct.ms_entry, ptr %160, i64 -1
  br label %293, !llvm.loop !162

178:                                              ; preds = %170, %213
  %179 = phi ptr [ %172, %170 ], [ %214, %213 ]
  %180 = phi i32 [ %171, %170 ], [ %181, %213 ]
  %181 = add i32 %180, -1
  %182 = load i16, ptr %179, align 2, !tbaa !51
  %183 = zext i16 %182 to i32
  %184 = icmp ugt i16 %182, 16383
  br i1 %184, label %185, label %210

185:                                              ; preds = %178
  store i32 %181, ptr %161, align 8, !tbaa !158
  %186 = and i32 %183, 4096
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %185
  %189 = or i16 %182, 4096
  store i16 %189, ptr %179, align 2, !tbaa !51
  %190 = or i32 %173, 1
  %191 = icmp ugt i16 %189, -16385
  br i1 %191, label %192, label %202

192:                                              ; preds = %188
  %193 = and i16 %182, 4095
  %194 = zext nneg i16 %193 to i32
  %195 = call ptr @name_index_ptr(i32 noundef %194) #10
  %196 = getelementptr inbounds %struct.name_s, ptr %195, i64 0, i32 1
  %197 = load i16, ptr %196, align 2
  %198 = and i16 %197, 2
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = or disjoint i16 %197, 2
  store i16 %201, ptr %196, align 2
  br label %202

202:                                              ; preds = %192, %200, %188, %185
  %203 = phi i32 [ %173, %185 ], [ %190, %188 ], [ %190, %200 ], [ %190, %192 ]
  %204 = getelementptr inbounds i16, ptr %179, i64 1
  br label %205

205:                                              ; preds = %216, %264, %283, %276, %223, %285, %230, %239, %242, %202
  %206 = phi i32 [ %203, %202 ], [ %218, %242 ], [ %218, %239 ], [ %218, %230 ], [ %218, %285 ], [ %218, %223 ], [ %218, %276 ], [ %218, %283 ], [ %218, %264 ], [ %218, %216 ]
  %207 = phi ptr [ %204, %202 ], [ %222, %242 ], [ %222, %239 ], [ %222, %230 ], [ %222, %285 ], [ %222, %223 ], [ %222, %276 ], [ %222, %283 ], [ %222, %264 ], [ %222, %216 ]
  %208 = load i32, ptr %161, align 8, !tbaa !158
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %175, label %170

210:                                              ; preds = %178
  %211 = and i32 %183, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.ref_s, ptr %179, i64 1
  %215 = icmp eq i32 %181, 0
  br i1 %215, label %174, label %178

216:                                              ; preds = %210
  store i32 %181, ptr %161, align 8, !tbaa !158
  %217 = or i16 %182, 1
  store i16 %217, ptr %179, align 8, !tbaa !71
  %218 = or i32 %173, 1
  %219 = and i16 %182, 12
  %220 = zext nneg i16 %219 to i32
  %221 = icmp ugt i32 %6, %220
  %222 = getelementptr inbounds %struct.ref_s, ptr %179, i64 1
  br i1 %221, label %205, label %223

223:                                              ; preds = %216
  store ptr %222, ptr %160, align 8, !tbaa !156
  %224 = getelementptr inbounds i8, ptr %179, i64 1
  %225 = load i8, ptr %224, align 1, !tbaa !11
  switch i8 %225, label %205 [
    i8 3, label %226
    i8 19, label %251
    i8 10, label %254
    i8 8, label %254
    i8 9, label %254
    i8 2, label %265
    i8 4, label %257
    i8 5, label %257
    i8 6, label %257
    i8 13, label %276
    i8 18, label %285
    i8 20, label %292
  ]

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.ref_s, ptr %179, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !11
  store ptr %228, ptr %4, align 8, !tbaa !17
  br label %229

229:                                              ; preds = %254, %251, %226
  store i32 0, ptr %167, align 4, !tbaa !159
  store i32 0, ptr %168, align 8, !tbaa !158
  br i1 %169, label %293, label %230

230:                                              ; preds = %229
  %231 = load ptr, ptr %4, align 8, !tbaa !17
  %232 = icmp eq ptr %231, null
  br i1 %232, label %205, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.obj_header_s, ptr %231, i64 -1
  %235 = load i8, ptr %234, align 8
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  %238 = load i32, ptr %234, align 8
  br i1 %237, label %242, label %239

239:                                              ; preds = %233
  %240 = and i32 %238, 6
  %241 = icmp eq i32 %240, 6
  br i1 %241, label %244, label %205

242:                                              ; preds = %233
  %243 = icmp ugt i32 %238, -3
  br i1 %243, label %244, label %205

244:                                              ; preds = %242, %239
  %245 = phi i32 [ 1, %242 ], [ -7, %239 ]
  %246 = getelementptr inbounds %struct.obj_header_s, ptr %231, i64 -1
  %247 = getelementptr inbounds %struct.ms_entry, ptr %160, i64 1
  %248 = load i32, ptr %246, align 8
  %249 = and i32 %248, %245
  store i32 %249, ptr %246, align 8
  %250 = load ptr, ptr %4, align 8, !tbaa !17
  store ptr %250, ptr %247, align 8, !tbaa !156
  br label %293

251:                                              ; preds = %223
  %252 = getelementptr inbounds %struct.ref_s, ptr %179, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !11
  store ptr %253, ptr %4, align 8, !tbaa !17
  br label %229

254:                                              ; preds = %223, %223, %223
  %255 = getelementptr inbounds %struct.ref_s, ptr %179, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !11
  store ptr %256, ptr %4, align 8, !tbaa !17
  br label %229

257:                                              ; preds = %223, %223, %223
  %258 = getelementptr inbounds %struct.ref_s, ptr %179, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !11
  store ptr %259, ptr %4, align 8, !tbaa !17
  %260 = getelementptr inbounds %struct.tas_s, ptr %179, i64 0, i32 1
  %261 = load i16, ptr %260, align 2, !tbaa !163
  %262 = zext i16 %261 to i32
  store i32 %262, ptr %166, align 8, !tbaa !158
  %263 = icmp eq i16 %261, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %257
  store ptr null, ptr %258, align 8, !tbaa !11
  br label %205

265:                                              ; preds = %223, %292
  %266 = phi i32 [ 1, %292 ], [ 4, %223 ]
  %267 = getelementptr inbounds %struct.ref_s, ptr %179, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !11
  store ptr %268, ptr %4, align 8, !tbaa !17
  %269 = getelementptr inbounds %struct.ms_entry, ptr %160, i64 1, i32 1
  store i32 %266, ptr %269, align 8, !tbaa !158
  br label %270

270:                                              ; preds = %257, %265
  %271 = getelementptr inbounds %struct.ms_entry, ptr %160, i64 1, i32 2
  store i32 1, ptr %271, align 4, !tbaa !159
  %272 = icmp eq ptr %160, %154
  br i1 %272, label %293, label %273

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.ms_entry, ptr %160, i64 1
  %275 = load ptr, ptr %4, align 8, !tbaa !17
  store ptr %275, ptr %274, align 8, !tbaa !156
  br label %293

276:                                              ; preds = %223
  %277 = getelementptr inbounds %struct.ref_s, ptr %179, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !11
  %279 = getelementptr inbounds %struct.name_s, ptr %278, i64 0, i32 1
  %280 = load i16, ptr %279, align 2
  %281 = and i16 %280, 2
  %282 = icmp eq i16 %281, 0
  br i1 %282, label %283, label %205

283:                                              ; preds = %276
  %284 = or disjoint i16 %280, 2
  store i16 %284, ptr %279, align 2
  br label %205

285:                                              ; preds = %223
  %286 = getelementptr inbounds %struct.ref_s, ptr %179, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !11
  %288 = getelementptr inbounds %struct.tas_s, ptr %179, i64 0, i32 1
  %289 = load i16, ptr %288, align 2, !tbaa !163
  %290 = zext i16 %289 to i32
  %291 = call i32 @gc_string_mark(ptr noundef %287, i32 noundef %290, i32 noundef 1, ptr noundef %1) #10
  br label %205

292:                                              ; preds = %223
  br label %265

293:                                              ; preds = %229, %270, %273, %244, %175
  %294 = phi i32 [ 4, %273 ], [ 5, %244 ], [ 3, %175 ], [ 0, %270 ], [ 0, %229 ]
  %295 = phi ptr [ %158, %273 ], [ %158, %244 ], [ %158, %175 ], [ %158, %270 ], [ @ptr_struct_procs, %229 ]
  %296 = phi i32 [ %218, %273 ], [ %218, %244 ], [ %176, %175 ], [ %218, %270 ], [ %218, %229 ]
  %297 = phi ptr [ %274, %273 ], [ %247, %244 ], [ %177, %175 ], [ %160, %270 ], [ %160, %229 ]
  switch i32 %294, label %397 [
    i32 0, label %298
    i32 5, label %41
    i32 4, label %157
  ]

298:                                              ; preds = %144, %293
  %299 = phi ptr [ %295, %293 ], [ %146, %144 ]
  %300 = phi i32 [ %296, %293 ], [ %147, %144 ]
  %301 = phi ptr [ %154, %293 ], [ %148, %144 ]
  %302 = phi ptr [ %297, %293 ], [ %149, %144 ]
  %303 = phi ptr [ %156, %293 ], [ %150, %144 ]
  %304 = icmp eq ptr %302, %301
  br i1 %304, label %305, label %377

305:                                              ; preds = %298
  %306 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %303, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !54
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %355

309:                                              ; preds = %305, %316
  %310 = phi i32 [ %317, %316 ], [ 4083, %305 ]
  %311 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !164
  %312 = shl nuw nsw i32 %310, 4
  %313 = add nuw nsw i32 %312, 40
  %314 = call ptr %311(ptr noundef nonnull @gs_memory_default, i32 noundef 1, i32 noundef %313, ptr noundef nonnull @.str.1) #10
  store ptr %314, ptr %306, align 8, !tbaa !54
  %315 = icmp eq ptr %314, null
  br i1 %315, label %316, label %319

316:                                              ; preds = %309
  %317 = lshr i32 %310, 1
  %318 = icmp ugt i32 %310, 99
  br i1 %318, label %309, label %319, !llvm.loop !165

319:                                              ; preds = %316, %309
  %320 = phi i32 [ %310, %309 ], [ %317, %316 ]
  br i1 %315, label %321, label %347

321:                                              ; preds = %319
  %322 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %303, i64 0, i32 4
  %323 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %303, i64 0, i32 2
  %324 = load i32, ptr %323, align 8, !tbaa !56
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds %struct.ms_entry, ptr %322, i64 %325
  %327 = getelementptr inbounds %struct.ms_entry, ptr %326, i64 -1
  %328 = load ptr, ptr %327, align 8, !tbaa !156
  %329 = call ptr @gc_locate(ptr noundef %328, ptr noundef %1) #10
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %336

331:                                              ; preds = %321
  %332 = load ptr, ptr @gs_stderr, align 8, !tbaa !17
  call void @lprintf_file_and_line(ptr noundef %332, ptr noundef nonnull @.str.2, i32 noundef 956) #10
  %333 = load ptr, ptr @gs_stderr, align 8, !tbaa !17
  %334 = ptrtoint ptr %328 to i64
  %335 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %333, ptr noundef nonnull @.str.3, i64 noundef %334)
  call void @gs_exit(i32 noundef 1) #10
  br label %336

336:                                              ; preds = %331, %321
  %337 = getelementptr inbounds %struct.chunk_s, ptr %329, i64 0, i32 21
  %338 = load ptr, ptr %337, align 8, !tbaa !64
  %339 = icmp ult ptr %328, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %336
  store ptr %328, ptr %337, align 8, !tbaa !64
  br label %341

341:                                              ; preds = %340, %336
  %342 = phi i32 [ -1, %340 ], [ 1, %336 ]
  %343 = getelementptr inbounds %struct.chunk_s, ptr %329, i64 0, i32 22
  %344 = load ptr, ptr %343, align 8, !tbaa !65
  %345 = icmp ugt ptr %328, %344
  br i1 %345, label %346, label %353

346:                                              ; preds = %341
  store ptr %328, ptr %343, align 8, !tbaa !65
  br label %353

347:                                              ; preds = %319
  %348 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %314, i64 0, i32 1
  store ptr null, ptr %348, align 8, !tbaa !54
  %349 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %314, i64 0, i32 2
  store i32 %320, ptr %349, align 8, !tbaa !56
  %350 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %314, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %350, i8 0, i64 16, i1 false)
  %351 = load ptr, ptr %306, align 8, !tbaa !54
  store ptr %303, ptr %351, align 8, !tbaa !61
  %352 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %351, i64 0, i32 3
  store i32 1, ptr %352, align 4, !tbaa !62
  br label %353

353:                                              ; preds = %347, %346, %341
  %354 = phi i32 [ undef, %347 ], [ -1, %346 ], [ %342, %341 ]
  br i1 %315, label %356, label %355

355:                                              ; preds = %353, %305
  br label %356

356:                                              ; preds = %353, %355
  %357 = phi i32 [ %354, %353 ], [ 0, %355 ]
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %361, label %359

359:                                              ; preds = %356
  %360 = or i32 %357, %300
  br label %371, !llvm.loop !162

361:                                              ; preds = %356
  %362 = load ptr, ptr %306, align 8, !tbaa !54
  %363 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %362, i64 0, i32 4
  %364 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %362, i64 0, i32 2
  %365 = load i32, ptr %364, align 8, !tbaa !56
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds %struct.ms_entry, ptr %363, i64 %366
  %368 = getelementptr inbounds %struct.ms_entry, ptr %367, i64 -1
  %369 = getelementptr inbounds %struct.gc_mark_stack_s, ptr %362, i64 1
  %370 = getelementptr inbounds %struct.ms_entry, ptr %302, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %369, ptr noundef nonnull align 8 dereferenceable(16) %370, i64 16, i1 false), !tbaa.struct !166
  br label %371

371:                                              ; preds = %361, %359
  %372 = phi i32 [ 3, %359 ], [ 0, %361 ]
  %373 = phi i32 [ %360, %359 ], [ %300, %361 ]
  %374 = phi ptr [ %301, %359 ], [ %368, %361 ]
  %375 = phi ptr [ %302, %359 ], [ %363, %361 ]
  %376 = phi ptr [ %303, %359 ], [ %362, %361 ]
  br i1 %358, label %377, label %397

377:                                              ; preds = %371, %298
  %378 = phi i32 [ %373, %371 ], [ %300, %298 ]
  %379 = phi ptr [ %374, %371 ], [ %301, %298 ]
  %380 = phi ptr [ %375, %371 ], [ %302, %298 ]
  %381 = phi ptr [ %376, %371 ], [ %303, %298 ]
  %382 = getelementptr inbounds %struct.ms_entry, ptr %380, i64 1
  %383 = getelementptr inbounds %struct.ms_entry, ptr %380, i64 1, i32 2
  %384 = load i32, ptr %383, align 4, !tbaa !159
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %394

386:                                              ; preds = %377
  %387 = getelementptr inbounds %struct.gs_ptr_procs_s, ptr %299, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !160
  %389 = load ptr, ptr %4, align 8, !tbaa !17
  %390 = call i32 %388(ptr noundef %389, ptr noundef %1) #10
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %397, label %392, !llvm.loop !162

392:                                              ; preds = %386
  %393 = or i32 %378, 1
  br label %394

394:                                              ; preds = %392, %377
  %395 = phi i32 [ %378, %377 ], [ %393, %392 ]
  %396 = load ptr, ptr %4, align 8, !tbaa !17
  store ptr %396, ptr %382, align 8, !tbaa !156
  br label %397

397:                                              ; preds = %144, %293, %386, %371, %394
  %398 = phi i32 [ 0, %394 ], [ %372, %371 ], [ 3, %386 ], [ %294, %293 ], [ %145, %144 ]
  %399 = phi ptr [ %299, %394 ], [ %299, %371 ], [ %299, %386 ], [ %295, %293 ], [ %146, %144 ]
  %400 = phi i32 [ %395, %394 ], [ %373, %371 ], [ %378, %386 ], [ %296, %293 ], [ %147, %144 ]
  %401 = phi ptr [ %379, %394 ], [ %374, %371 ], [ %379, %386 ], [ %154, %293 ], [ %148, %144 ]
  %402 = phi ptr [ %382, %394 ], [ %375, %371 ], [ %380, %386 ], [ %297, %293 ], [ %149, %144 ]
  %403 = phi ptr [ %381, %394 ], [ %376, %371 ], [ %381, %386 ], [ %156, %293 ], [ %150, %144 ]
  %404 = icmp eq i32 %398, 2
  br i1 %404, label %405, label %32

405:                                              ; preds = %397, %3
  %406 = phi i32 [ 0, %3 ], [ %400, %397 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %406
}

declare void @name_trace_finish(ptr noundef) local_unnamed_addr #3

declare void @gc_strings_set_reloc(ptr noundef) local_unnamed_addr #3

declare void @gs_reloc_refs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gc_strings_compact(ptr noundef) local_unnamed_addr #3

declare void @ialloc_reset_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @print_reloc_proc(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef readnone returned %2) local_unnamed_addr #6 {
  ret ptr %2
}

declare i32 @gc_string_mark(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @name_unmark_all() local_unnamed_addr #3

declare ptr @name_index_ptr(i32 noundef) local_unnamed_addr #3

declare ptr @gc_locate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lprintf_file_and_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare void @gs_exit(i32 noundef) local_unnamed_addr #3

declare i32 @name_next_valid_index(i32 noundef) local_unnamed_addr #3

declare ptr @name_index_ptr_sub_table(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gc_strings_clear_reloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

declare void @alloc_free_chunk(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"chunk_head_s", !7, i64 0, !10, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"obj_header_s", !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"gs_string_s", !7, i64 0, !14, i64 8}
!14 = !{!"int", !8, i64 0}
!15 = !{!13, !14, i64 8}
!16 = !{i64 0, i64 32, !11, i64 0, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !17, i64 24, i64 8, !17}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !7, i64 0}
!19 = !{!"gc_state_s", !20, i64 0, !8, i64 16, !14, i64 48, !14, i64 52}
!20 = !{!"chunk_locator_s", !7, i64 0, !7, i64 8}
!21 = !{!19, !7, i64 8}
!22 = !{!19, !14, i64 48}
!23 = !{!19, !14, i64 52}
!24 = !{!25, !7, i64 128}
!25 = !{!"gs_memory_s", !26, i64 0}
!26 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!30, !7, i64 8}
!30 = !{!"chunk_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !14, i64 88, !14, i64 92, !7, i64 96, !31, i64 104, !7, i64 112, !7, i64 120, !14, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168}
!31 = !{!"short", !8, i64 0}
!32 = !{!30, !7, i64 16}
!33 = !{!34, !7, i64 24}
!34 = !{!"gs_memory_struct_type_s", !14, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!35 = distinct !{!35, !28}
!36 = distinct !{!36, !28}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !28}
!39 = !{!40, !7, i64 16}
!40 = !{!"gs_gc_root_s", !7, i64 0, !7, i64 8, !7, i64 16}
!41 = !{!40, !7, i64 8}
!42 = !{!43, !7, i64 0}
!43 = !{!"gs_ptr_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !28}
!46 = !{!47, !14, i64 24}
!47 = !{!"op_array_table_s", !48, i64 0, !7, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !7, i64 40}
!48 = !{!"ref_s", !49, i64 0, !8, i64 8}
!49 = !{!"tas_s", !31, i64 0, !31, i64 2}
!50 = !{!47, !7, i64 16}
!51 = !{!31, !31, i64 0}
!52 = distinct !{!52, !28}
!53 = distinct !{!53, !28}
!54 = !{!55, !7, i64 8}
!55 = !{!"gc_mark_stack_s", !7, i64 0, !7, i64 8, !14, i64 16, !14, i64 20, !8, i64 24}
!56 = !{!55, !14, i64 16}
!57 = !{!58, !7, i64 0}
!58 = !{!"_msd", !55, i64 0, !8, i64 40}
!59 = !{!30, !7, i64 40}
!60 = !{!30, !14, i64 88}
!61 = !{!55, !7, i64 0}
!62 = !{!55, !14, i64 20}
!63 = !{!30, !7, i64 56}
!64 = !{!30, !7, i64 160}
!65 = !{!30, !7, i64 168}
!66 = distinct !{!66, !28}
!67 = distinct !{!67, !28}
!68 = distinct !{!68, !28}
!69 = distinct !{!69, !28}
!70 = distinct !{!70, !28}
!71 = !{!48, !31, i64 0}
!72 = distinct !{!72, !28}
!73 = distinct !{!73, !28}
!74 = distinct !{!74, !28}
!75 = distinct !{!75, !28}
!76 = distinct !{!76, !28}
!77 = distinct !{!77, !28}
!78 = distinct !{!78, !28}
!79 = distinct !{!79, !28}
!80 = distinct !{!80, !28}
!81 = distinct !{!81, !28}
!82 = distinct !{!82, !28}
!83 = distinct !{!83, !28}
!84 = !{!25, !7, i64 88}
!85 = distinct !{!85, !28}
!86 = !{!87, !7, i64 8}
!87 = !{!"name_s", !31, i64 0, !14, i64 2, !14, i64 2, !14, i64 2, !7, i64 8, !7, i64 16}
!88 = distinct !{!88, !28}
!89 = distinct !{!89, !28}
!90 = distinct !{!90, !28}
!91 = distinct !{!91, !28}
!92 = !{!30, !7, i64 0}
!93 = !{!34, !7, i64 16}
!94 = !{!95, !7, i64 0}
!95 = !{!"struct_shared_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!96 = distinct !{!96, !28}
!97 = distinct !{!97, !28}
!98 = distinct !{!98, !28}
!99 = distinct !{!99, !28}
!100 = !{!25, !7, i64 152}
!101 = distinct !{!101, !28}
!102 = !{!95, !7, i64 8}
!103 = !{!34, !7, i64 48}
!104 = distinct !{!104, !28}
!105 = distinct !{!105, !28}
!106 = distinct !{!106, !28}
!107 = distinct !{!107, !28}
!108 = distinct !{!108, !28}
!109 = !{!34, !7, i64 40}
!110 = distinct !{!110, !28}
!111 = distinct !{!111, !28}
!112 = distinct !{!112, !28}
!113 = distinct !{!113, !28}
!114 = distinct !{!114, !28}
!115 = distinct !{!115, !28}
!116 = distinct !{!116, !28}
!117 = !{!43, !7, i64 16}
!118 = distinct !{!118, !28}
!119 = distinct !{!119, !28}
!120 = !{!95, !7, i64 16}
!121 = distinct !{!121, !28}
!122 = !{!30, !7, i64 80}
!123 = !{!124, !7, i64 432}
!124 = !{!"gs_ref_memory_s", !26, i64 0, !7, i64 160, !14, i64 168, !14, i64 172, !7, i64 176, !14, i64 184, !125, i64 192, !126, i64 232, !7, i64 240, !7, i64 248, !30, i64 256, !7, i64 432, !20, i64 440, !126, i64 456, !126, i64 464, !126, i64 472, !127, i64 480, !7, i64 504, !14, i64 512, !7, i64 520, !7, i64 528, !7, i64 536, !128, i64 544, !8, i64 560}
!125 = !{!"gs_memory_gc_status_s", !126, i64 0, !126, i64 8, !7, i64 16, !14, i64 24, !14, i64 28, !126, i64 32}
!126 = !{!"long", !8, i64 0}
!127 = !{!"lost_", !126, i64 0, !126, i64 8, !126, i64 16}
!128 = !{!"gs_memory_status_s", !126, i64 0, !126, i64 8}
!129 = !{i64 0, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !17, i64 24, i64 8, !17, i64 32, i64 8, !17, i64 40, i64 8, !17, i64 48, i64 8, !17, i64 56, i64 8, !17, i64 64, i64 8, !17, i64 72, i64 8, !17, i64 80, i64 8, !17, i64 88, i64 4, !130, i64 92, i64 4, !130, i64 96, i64 8, !17, i64 104, i64 2, !51, i64 112, i64 8, !17, i64 120, i64 8, !17, i64 128, i64 4, !130, i64 136, i64 8, !17, i64 144, i64 8, !17, i64 152, i64 8, !17, i64 160, i64 8, !17, i64 168, i64 8, !17}
!130 = !{!14, !14, i64 0}
!131 = distinct !{!131, !28}
!132 = !{!124, !7, i64 536}
!133 = !{!124, !7, i64 528}
!134 = distinct !{!134, !28}
!135 = distinct !{!135, !28}
!136 = !{!124, !7, i64 248}
!137 = !{!30, !7, i64 64}
!138 = !{!30, !7, i64 48}
!139 = distinct !{!139, !28}
!140 = distinct !{!140, !28}
!141 = distinct !{!141, !28}
!142 = !{!143, !7, i64 528}
!143 = !{!"alloc_save_s", !124, i64 0, !7, i64 1368, !14, i64 1376, !14, i64 1380, !126, i64 1384, !7, i64 1392}
!144 = distinct !{!144, !28}
!145 = !{i64 0, i64 8, !146, i64 8, i64 8, !146}
!146 = !{!126, !126, i64 0}
!147 = !{!25, !7, i64 144}
!148 = !{!124, !126, i64 456}
!149 = !{!128, !126, i64 0}
!150 = !{!124, !126, i64 472}
!151 = !{!124, !126, i64 464}
!152 = distinct !{!152, !28}
!153 = distinct !{!153, !28}
!154 = !{!25, !7, i64 136}
!155 = distinct !{!155, !28}
!156 = !{!157, !7, i64 0}
!157 = !{!"", !7, i64 0, !14, i64 8, !14, i64 12}
!158 = !{!157, !14, i64 8}
!159 = !{!157, !14, i64 12}
!160 = !{!43, !7, i64 8}
!161 = !{!34, !7, i64 32}
!162 = distinct !{!162, !28}
!163 = !{!48, !31, i64 2}
!164 = !{!25, !7, i64 32}
!165 = distinct !{!165, !28}
!166 = !{i64 0, i64 8, !17, i64 8, i64 4, !130, i64 12, i64 4, !130}
