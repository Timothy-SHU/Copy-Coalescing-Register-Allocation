; ModuleID = 'idebug.c'
source_filename = "idebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.attr_print_mask_s = type { i16, i16, i8 }
%struct.op_array_table_s = type { %struct.ref_s, ptr, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gs_debug_out = external local_unnamed_addr global ptr, align 8
@debug_dump_one_ref.apm = internal unnamed_addr constant [21 x %struct.attr_print_mask_s] [%struct.attr_print_mask_s { i16 1, i16 1, i8 109 }, %struct.attr_print_mask_s { i16 1, i16 0, i8 45 }, %struct.attr_print_mask_s { i16 2, i16 2, i8 110 }, %struct.attr_print_mask_s { i16 2, i16 0, i8 45 }, %struct.attr_print_mask_s { i16 12, i16 0, i8 70 }, %struct.attr_print_mask_s { i16 12, i16 4, i8 83 }, %struct.attr_print_mask_s { i16 12, i16 8, i8 71 }, %struct.attr_print_mask_s { i16 12, i16 12, i8 76 }, %struct.attr_print_mask_s { i16 16, i16 16, i8 119 }, %struct.attr_print_mask_s { i16 16, i16 0, i8 45 }, %struct.attr_print_mask_s { i16 32, i16 32, i8 114 }, %struct.attr_print_mask_s { i16 32, i16 0, i8 45 }, %struct.attr_print_mask_s { i16 64, i16 64, i8 120 }, %struct.attr_print_mask_s { i16 64, i16 0, i8 45 }, %struct.attr_print_mask_s { i16 128, i16 128, i8 101 }, %struct.attr_print_mask_s { i16 128, i16 0, i8 45 }, %struct.attr_print_mask_s { i16 16384, i16 16384, i8 63 }, %struct.attr_print_mask_s { i16 16384, i16 0, i8 45 }, %struct.attr_print_mask_s { i16 -32768, i16 -32768, i8 63 }, %struct.attr_print_mask_s { i16 -32768, i16 0, i8 45 }, %struct.attr_print_mask_s zeroinitializer], align 16
@tx_next_index = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"0x%02x?? \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"opr* \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@type_strings = internal unnamed_addr constant [21 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.26, ptr @.str.53, ptr @.str.29, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], align 16
@.str.4 = private unnamed_addr constant [16 x i8] c" 0x%04x 0x%08lx\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"--nostringval--\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" = %s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s at 0x%lx:\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"..%04x: 0x%04x \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"0x%lx: 0x%02x \00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%s at 0x%lx isn't an array.\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"..%04x%c 0x%02x \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"<op_name>\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"<int> %d\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"<lit_name>\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"<exec_name>\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"(0x%lx#%u)\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"<packed_%d?>0x%x\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"(%x)\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"array(%u)0x%lx\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"boolean %x\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"device 0x%lx\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"dict(%u/%u)0x%lx\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"file 0x%lx\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"int %ld\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"mixed packedarray(%u)0x%lx\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"name(0x%lx#%u)\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"op_array(%u)0x%lx:\00", align 1
@op_array_table_local = external local_unnamed_addr global %struct.op_array_table_s, align 8
@op_array_table_global = external local_unnamed_addr global %struct.op_array_table_s, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"op(%u\00", align 1
@op_def_count = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@op_def_table = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [7 x i8] c")0x%lx\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"real %f\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"save %lu\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"short packedarray(%u)0x%lx\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"string(%u)0x%lx\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"struct %s 0x%lx\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"-foreign-\00", align 1
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.40 = private unnamed_addr constant [10 x i8] c"type 0x%x\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"INVL\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"arry\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"mpry\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"spry\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"u?ry\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"STRC\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"ASTR\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"int \00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"oper\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"str \00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"devc\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"opry\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @debug_print_name(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @name_string_ref(ptr noundef %0, ptr noundef nonnull %2) #6
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.tas_s, ptr %2, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !8
  %7 = zext i16 %6 to i32
  call void @debug_print_string(ptr noundef %4, i32 noundef %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @debug_print_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @debug_print_ref(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  %7 = load i16, ptr %0, align 2, !tbaa !12
  %8 = icmp ugt i16 %7, 16383
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = and i16 %7, 4095
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %11 = lshr i16 %7, 13
  switch i16 %11, label %39 [
    i16 2, label %12
    i16 3, label %16
    i16 6, label %21
    i16 7, label %24
  ]

12:                                               ; preds = %9
  %13 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %14 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 9, i64 1, ptr %13)
  %15 = zext nneg i16 %10 to i32
  call void @op_index_ref(i32 noundef %15, ptr noundef nonnull %6) #6
  call void @debug_print_ref(ptr noundef nonnull %6)
  br label %44

16:                                               ; preds = %9
  %17 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %18 = zext nneg i16 %10 to i32
  %19 = add nsw i32 %18, -2048
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef %19)
  br label %44

21:                                               ; preds = %9
  %22 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %23 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 10, i64 1, ptr %22)
  br label %27

24:                                               ; preds = %9
  %25 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %26 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 11, i64 1, ptr %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = zext nneg i16 %10 to i32
  call void @name_index_ref(i32 noundef %28, ptr noundef nonnull %6) #6
  %29 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = ptrtoint ptr %31 to i64
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.17, i64 noundef %32, i32 noundef %28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @name_string_ref(ptr noundef nonnull %6, ptr noundef nonnull %2) #6
  %34 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.tas_s, ptr %2, i64 0, i32 1
  %37 = load i16, ptr %36, align 2, !tbaa !8
  %38 = zext i16 %37 to i32
  call void @debug_print_string(ptr noundef %35, i32 noundef %38) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  br label %44

39:                                               ; preds = %9
  %40 = zext nneg i16 %11 to i32
  %41 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %42 = zext nneg i16 %10 to i32
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.18, i32 noundef %40, i32 noundef %42)
  br label %44

44:                                               ; preds = %12, %16, %27, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br label %205

45:                                               ; preds = %1
  %46 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %47 = load i16, ptr %46, align 2, !tbaa !8
  %48 = zext i16 %47 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %49 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %50 = zext nneg i16 %7 to i32
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.19, i32 noundef %50)
  %52 = getelementptr inbounds i8, ptr %0, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !5
  switch i8 %53, label %200 [
    i8 4, label %54
    i8 9, label %183
    i8 1, label %60
    i8 19, label %66
    i8 2, label %72
    i8 3, label %80
    i8 10, label %183
    i8 11, label %86
    i8 12, label %91
    i8 5, label %94
    i8 13, label %100
    i8 14, label %112
    i8 20, label %115
    i8 15, label %138
    i8 16, label %160
    i8 17, label %166
    i8 6, label %171
    i8 18, label %177
    i8 8, label %183
  ]

54:                                               ; preds = %45
  %55 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %56 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = ptrtoint ptr %57 to i64
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.20, i32 noundef %48, i64 noundef %58)
  br label %204

60:                                               ; preds = %45
  %61 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %62 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %63 = load i16, ptr %62, align 8, !tbaa !5
  %64 = zext i16 %63 to i32
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.21, i32 noundef %64)
  br label %204

66:                                               ; preds = %45
  %67 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %68 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = ptrtoint ptr %69 to i64
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.22, i64 noundef %70)
  br label %204

72:                                               ; preds = %45
  %73 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %74 = tail call i32 @dict_length(ptr noundef nonnull %0) #6
  %75 = tail call i32 @dict_maxlength(ptr noundef nonnull %0) #6
  %76 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = ptrtoint ptr %77 to i64
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.23, i32 noundef %74, i32 noundef %75, i64 noundef %78)
  br label %204

80:                                               ; preds = %45
  %81 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %82 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = ptrtoint ptr %83 to i64
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.24, i64 noundef %84)
  br label %204

86:                                               ; preds = %45
  %87 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %88 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !5
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.25, i64 noundef %89)
  br label %204

91:                                               ; preds = %45
  %92 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %93 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 4, i64 1, ptr %92)
  br label %204

94:                                               ; preds = %45
  %95 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %96 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = ptrtoint ptr %97 to i64
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.27, i32 noundef %48, i64 noundef %98)
  br label %204

100:                                              ; preds = %45
  %101 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %102 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = ptrtoint ptr %103 to i64
  %105 = tail call i32 @name_index(ptr noundef nonnull %0) #6
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.28, i64 noundef %104, i32 noundef %105)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @name_string_ref(ptr noundef nonnull %0, ptr noundef nonnull %4) #6
  %107 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !5
  %109 = getelementptr inbounds %struct.tas_s, ptr %4, i64 0, i32 1
  %110 = load i16, ptr %109, align 2, !tbaa !8
  %111 = zext i16 %110 to i32
  call void @debug_print_string(ptr noundef %108, i32 noundef %111) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %204

112:                                              ; preds = %45
  %113 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %114 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 4, i64 1, ptr %113)
  br label %204

115:                                              ; preds = %45
  %116 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %117 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !5
  %119 = ptrtoint ptr %118 to i64
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.30, i32 noundef %48, i64 noundef %119)
  %121 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 3), align 4
  %122 = icmp ugt i32 %121, %48
  %123 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 1), align 8
  %124 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 1), align 8
  %125 = select i1 %122, ptr %123, ptr %124
  %126 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 3), align 4
  %127 = select i1 %122, i32 %126, i32 %121
  %128 = sub i32 %48, %127
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i16, ptr %125, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !12
  %132 = zext i16 %131 to i32
  call void @name_index_ref(i32 noundef %132, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @name_string_ref(ptr noundef nonnull %5, ptr noundef nonnull %3) #6
  %133 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !5
  %135 = getelementptr inbounds %struct.tas_s, ptr %3, i64 0, i32 1
  %136 = load i16, ptr %135, align 2, !tbaa !8
  %137 = zext i16 %136 to i32
  call void @debug_print_string(ptr noundef %134, i32 noundef %137) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %204

138:                                              ; preds = %45
  %139 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.31, i32 noundef %48)
  %141 = icmp ne i16 %47, 0
  %142 = load i32, ptr @op_def_count, align 4
  %143 = icmp ugt i32 %142, %48
  %144 = select i1 %141, i1 %143, i1 false
  br i1 %144, label %145, label %154

145:                                              ; preds = %138
  %146 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %147 = load ptr, ptr @op_def_table, align 8, !tbaa !13
  %148 = zext i16 %47 to i64
  %149 = getelementptr inbounds ptr, ptr %147, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !13
  %151 = load ptr, ptr %150, align 8, !tbaa !15
  %152 = getelementptr inbounds i8, ptr %151, i64 1
  %153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef nonnull @.str.32, ptr noundef nonnull %152)
  br label %154

154:                                              ; preds = %145, %138
  %155 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %156 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !5
  %158 = ptrtoint ptr %157 to i64
  %159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.33, i64 noundef %158)
  br label %204

160:                                              ; preds = %45
  %161 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %162 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %163 = load float, ptr %162, align 8, !tbaa !5
  %164 = fpext float %163 to double
  %165 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef nonnull @.str.34, double noundef %164)
  br label %204

166:                                              ; preds = %45
  %167 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %168 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %169 = load i64, ptr %168, align 8, !tbaa !5
  %170 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef nonnull @.str.35, i64 noundef %169)
  br label %204

171:                                              ; preds = %45
  %172 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %173 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !5
  %175 = ptrtoint ptr %174 to i64
  %176 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef nonnull @.str.36, i32 noundef %48, i64 noundef %175)
  br label %204

177:                                              ; preds = %45
  %178 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %179 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !5
  %181 = ptrtoint ptr %180 to i64
  %182 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %178, ptr noundef nonnull @.str.37, i32 noundef %48, i64 noundef %181)
  br label %204

183:                                              ; preds = %45, %45, %45
  %184 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !5
  %186 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %187 = load i16, ptr %0, align 8, !tbaa !17
  %188 = and i16 %187, 12
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %183
  %191 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %192 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %191, i64 0, i32 10
  %193 = load ptr, ptr %192, align 8, !tbaa !21
  %194 = tail call ptr %193(ptr noundef %191, ptr noundef %185) #6
  %195 = tail call ptr @gs_struct_type_name(ptr noundef %194) #6
  br label %196

196:                                              ; preds = %190, %183
  %197 = phi ptr [ %195, %190 ], [ @.str.39, %183 ]
  %198 = ptrtoint ptr %185 to i64
  %199 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef nonnull @.str.38, ptr noundef %197, i64 noundef %198)
  br label %204

200:                                              ; preds = %45
  %201 = zext i8 %53 to i32
  %202 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %203 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %202, ptr noundef nonnull @.str.40, i32 noundef %201)
  br label %204

204:                                              ; preds = %54, %60, %66, %72, %80, %86, %91, %94, %100, %112, %115, %154, %160, %166, %171, %177, %196, %200
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br label %205

205:                                              ; preds = %204, %44
  %206 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %207 = call i32 @fflush(ptr noundef %206)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @debug_dump_one_ref(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [31 x i8], align 16
  %3 = alloca i32, align 4
  %4 = load i16, ptr %0, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = zext i8 %6 to i32
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %8 = load i32, ptr @tx_next_index, align 4, !tbaa !24
  %9 = icmp ugt i32 %8, %7
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef %7)
  br label %23

13:                                               ; preds = %1
  %14 = icmp ugt i8 %6, 20
  %15 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  br i1 %14, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 5, i64 1, ptr %15)
  br label %23

18:                                               ; preds = %13
  %19 = zext nneg i8 %6 to i64
  %20 = getelementptr inbounds [21 x ptr], ptr @type_strings, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef %21)
  br label %23

23:                                               ; preds = %16, %18, %10
  br label %24

24:                                               ; preds = %23, %37
  %25 = phi i16 [ %39, %37 ], [ 1, %23 ]
  %26 = phi ptr [ %38, %37 ], [ @debug_dump_one_ref.apm, %23 ]
  %27 = and i16 %25, %4
  %28 = getelementptr inbounds %struct.attr_print_mask_s, ptr %26, i64 0, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !25
  %30 = icmp eq i16 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %33 = getelementptr inbounds %struct.attr_print_mask_s, ptr %26, i64 0, i32 2
  %34 = load i8, ptr %33, align 2, !tbaa !27
  %35 = sext i8 %34 to i32
  %36 = tail call i32 @fputc(i32 %35, ptr %32)
  br label %37

37:                                               ; preds = %24, %31
  %38 = getelementptr inbounds %struct.attr_print_mask_s, ptr %26, i64 1
  %39 = load i16, ptr %38, align 2, !tbaa !28
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %24, !llvm.loop !29

41:                                               ; preds = %37
  %42 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %43 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %44 = load i16, ptr %43, align 2, !tbaa !8
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !31
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.4, i32 noundef %45, i64 noundef %47)
  %49 = call i32 @obj_cvp(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 30, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #6
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %60

51:                                               ; preds = %41
  %52 = load i32, ptr %3, align 4, !tbaa !24
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [31 x i8], ptr %2, i64 0, i64 %53
  store i8 0, ptr %54, align 1, !tbaa !5
  %55 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %2, ptr noundef nonnull dereferenceable(16) @.str.5, i64 16)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.6, ptr noundef nonnull %2)
  br label %60

60:                                               ; preds = %57, %51, %41
  %61 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %62 = call i32 @fflush(ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare i32 @obj_cvp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @debug_dump_refs(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne i32 %1, 0
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %9 = ptrtoint ptr %0 to i64
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.7, ptr noundef nonnull %2, i64 noundef %9)
  br label %11

11:                                               ; preds = %7, %3
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %11, %13
  %14 = phi i32 [ %16, %13 ], [ %1, %11 ]
  %15 = phi ptr [ %26, %13 ], [ %0, %11 ]
  %16 = add i32 %14, -1
  %17 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %18 = ptrtoint ptr %15 to i64
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  %21 = load i16, ptr %15, align 8, !tbaa !17
  %22 = zext i16 %21 to i32
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.8, i32 noundef %20, i32 noundef %22)
  tail call void @debug_dump_one_ref(ptr noundef nonnull %15)
  %24 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %25 = tail call i32 @fputc(i32 10, ptr %24)
  %26 = getelementptr inbounds %struct.ref_s, ptr %15, i64 1
  %27 = icmp eq i32 %16, 0
  br i1 %27, label %28, label %13, !llvm.loop !33

28:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_dump_stack(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @ref_stack_count(ptr noundef %0) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %0 to i64
  %7 = zext i32 %3 to i64
  br label %8

8:                                                ; preds = %5, %18
  %9 = phi i64 [ %7, %5 ], [ %12, %18 ]
  %10 = phi ptr [ %1, %5 ], [ null, %18 ]
  %11 = add nsw i64 %9, -1
  %12 = add nsw i64 %9, -1
  %13 = tail call ptr @ref_stack_index(ptr noundef %0, i64 noundef %11) #6
  %14 = icmp eq ptr %10, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.7, ptr noundef nonnull %10, i64 noundef %6)
  br label %18

18:                                               ; preds = %15, %8
  %19 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %20 = ptrtoint ptr %13 to i64
  %21 = getelementptr inbounds i8, ptr %13, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = zext i8 %22 to i32
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.9, i64 noundef %20, i32 noundef %23)
  tail call void @debug_dump_one_ref(ptr noundef %13)
  %25 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %26 = tail call i32 @fputc(i32 10, ptr %25)
  %27 = icmp eq i64 %11, 0
  br i1 %27, label %28, label %8, !llvm.loop !34

28:                                               ; preds = %18, %2
  ret void
}

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #2

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @debug_dump_array(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ref_s, align 8
  br label %3

3:                                                ; preds = %18, %1
  %4 = phi ptr [ %0, %1 ], [ %20, %18 ]
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !5
  switch i8 %6, label %7 [
    i8 20, label %18
    i8 4, label %21
    i8 5, label %21
    i8 6, label %21
  ]

7:                                                ; preds = %3
  %8 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %9 = icmp ult i8 %6, 21
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = zext nneg i8 %6 to i64
  %12 = getelementptr inbounds [21 x ptr], ptr @type_strings, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  br label %14

14:                                               ; preds = %7, %10
  %15 = phi ptr [ %13, %10 ], [ @.str.11, %7 ]
  %16 = ptrtoint ptr %4 to i64
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.10, ptr noundef %15, i64 noundef %16)
  br label %51

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  br label %3

21:                                               ; preds = %3, %3, %3
  %22 = getelementptr inbounds %struct.tas_s, ptr %4, i64 0, i32 1
  %23 = load i16, ptr %22, align 2, !tbaa !8
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %21
  %26 = zext i16 %23 to i32
  %27 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds i8, ptr %2, i64 1
  br label %30

30:                                               ; preds = %25, %30
  %31 = phi i32 [ %26, %25 ], [ %45, %30 ]
  %32 = phi ptr [ %28, %25 ], [ %49, %30 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @packed_get(ptr noundef %32, ptr noundef nonnull %2) #6
  %33 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %34 = ptrtoint ptr %32 to i64
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 65535
  %37 = load i16, ptr %32, align 2, !tbaa !12
  %38 = icmp ugt i16 %37, 16383
  %39 = select i1 %38, i32 42, i32 58
  %40 = load i8, ptr %29, align 1, !tbaa !5
  %41 = zext i8 %40 to i32
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.12, i32 noundef %36, i32 noundef %39, i32 noundef %41)
  call void @debug_dump_one_ref(ptr noundef nonnull %2)
  %43 = load ptr, ptr @gs_debug_out, align 8, !tbaa !13
  %44 = call i32 @fputc(i32 10, ptr %43)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  %45 = add nsw i32 %31, -1
  %46 = load i16, ptr %32, align 2, !tbaa !12
  %47 = icmp ugt i16 %46, 16383
  %48 = select i1 %47, i64 1, i64 8
  %49 = getelementptr inbounds i16, ptr %32, i64 %48
  %50 = icmp eq i32 %45, 0
  br i1 %50, label %51, label %30, !llvm.loop !35

51:                                               ; preds = %30, %21, %14
  ret void
}

declare void @packed_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @op_index_ref(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @name_index_ref(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dict_length(ptr noundef) local_unnamed_addr #2

declare i32 @dict_maxlength(ptr noundef) local_unnamed_addr #2

declare i32 @name_index(ptr noundef) local_unnamed_addr #2

declare ptr @gs_struct_type_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 2}
!9 = !{!"ref_s", !10, i64 0, !6, i64 8}
!10 = !{!"tas_s", !11, i64 0, !11, i64 2}
!11 = !{!"short", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!16, !14, i64 0}
!16 = !{!"", !14, i64 0, !14, i64 8}
!17 = !{!9, !11, i64 0}
!18 = !{!19, !14, i64 0}
!19 = !{!"gs_dual_memory_s", !14, i64 0, !6, i64 8, !20, i64 40, !20, i64 44, !14, i64 48, !20, i64 56, !20, i64 60}
!20 = !{!"int", !6, i64 0}
!21 = !{!22, !14, i64 80}
!22 = !{!"gs_memory_s", !23, i64 0}
!23 = !{!"gs_memory_procs_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152}
!24 = !{!20, !20, i64 0}
!25 = !{!26, !11, i64 2}
!26 = !{!"attr_print_mask_s", !11, i64 0, !11, i64 2, !6, i64 4}
!27 = !{!26, !6, i64 4}
!28 = !{!26, !11, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!32, !32, i64 0}
!32 = !{!"long", !6, i64 0}
!33 = distinct !{!33, !30}
!34 = distinct !{!34, !30}
!35 = distinct !{!35, !30}
