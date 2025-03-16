; ModuleID = 'iname.c'
source_filename = "iname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.name_table_s = type { i32, i32, i32, i32, ptr, [1024 x i32], [512 x ptr] }
%struct.name_s = type { i16, i16, ptr, ptr }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t }
%union._f = type { %struct._l }
%struct._l = type { i32 }
%union._t = type { ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_const_string_s = type { ptr, i32 }

@name_max_string = dso_local local_unnamed_addr constant i32 16383, align 4
@st_name_table = internal constant %struct.gs_memory_struct_type_s { i32 8216, ptr @.str.3, ptr null, ptr null, ptr @name_table_enum_ptrs, ptr @name_table_reloc_ptrs, ptr null }, align 8
@.str = private unnamed_addr constant [14 x i8] c"name_init(nt)\00", align 1
@the_nt = internal global ptr null, align 8
@nt_1char_names = internal constant [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F", align 16
@the_nt_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"name table\00", align 1
@hash_permutation = internal unnamed_addr constant [256 x i8] c"\01W1\0C\B0\B2f\A6y\C1\06T\F9\E6,\A3\0E\C5\D5\B5\A1U\DAP@\EF\18\E2\EC\8E&\C8n\B1hg\8D\FD\FF2MeQ\12-`\1F\DE\19k\BEFV\ED\F0\22H\F2\14\D6\F4\E3\95\EBa\EA9\16<\FAR\AF\D0\05\7F\C7o>\87\F8\AE\A9\D3:B\9Aj\C3\F5\AB\11\BB\B6\B3\00\F3\848\94K\80\85\9Ed\82~[\0D\99\F6\D8\DBwD\DFNSX\C9cz\0B\\ \88r4\0A\8A\1E0\B7\9C#=\1A\8FJ\FB^\81\A2?\98\AA\07s\A7\F1\CE\03\967;\97\DCZ5\17\83}\AD\0F\EEO_Y\10i\89\E1\E0\D9\A0%{vI\02\9D.t\09\91\86\E4\CF\D4\CA\D7E\E5\1B\BCC|\A8\FC*\04\1Dl\15\F7\13\CD'\CB\E9(\BA\93\C6\C0\9B!\A4\BFb\CC\A5\B4uL\8C$\D2\AC)6\9F\08\B9\E8q\C4\E7/\92x3A\1C\90\FE\DD]\BD\C2\8Bp+Gm\B8\D1", align 16
@.str.2 = private unnamed_addr constant [17 x i8] c"name_ref(string)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"name_table\00", align 1
@st_name_sub_table = internal constant %struct.gs_memory_struct_type_s { i32 3072, ptr @.str.5, ptr null, ptr null, ptr @name_sub_enum_ptrs, ptr @name_sub_reloc_ptrs, ptr null }, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"name_alloc_sub\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"name_sub_table\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"name_scan_sub\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @name_init(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %0, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = add i64 %0, -65537
  %6 = icmp ult i64 %5, -65536
  br i1 %6, label %107, label %7

7:                                                ; preds = %2, %4
  %8 = phi i64 [ %0, %4 ], [ 65536, %2 ]
  %9 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call ptr %10(ptr noundef %1, ptr noundef nonnull @st_name_table, ptr noundef nonnull @.str) #18
  store ptr %11, ptr @the_nt, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8216) %11, i8 0, i64 8216, i1 false)
  %12 = add i64 %8, 549755813887
  %13 = lshr i64 %12, 7
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.name_table_s, ptr %11, i64 0, i32 3
  store i32 %14, ptr %15, align 4, !tbaa !12
  %16 = getelementptr inbounds %struct.name_table_s, ptr %11, i64 0, i32 4
  store ptr %1, ptr %16, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.name_table_s, ptr %11, i64 0, i32 1
  %18 = getelementptr inbounds %struct.name_table_s, ptr %11, i64 0, i32 2
  br label %19

19:                                               ; preds = %7, %70
  %20 = phi i32 [ 0, %7 ], [ %71, %70 ]
  %21 = load i32, ptr %17, align 4, !tbaa !16
  %22 = load i32, ptr %15, align 4, !tbaa !12
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %70, label %24

24:                                               ; preds = %19, %30
  %25 = phi i32 [ %31, %30 ], [ %21, %19 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.name_table_s, ptr %11, i64 0, i32 6, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = add i32 %25, 1
  %32 = icmp ugt i32 %31, %22
  br i1 %32, label %70, label %24, !llvm.loop !17

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.name_table_s, ptr %11, i64 0, i32 6, i64 %26
  %35 = add i32 %25, 1
  store i32 %35, ptr %17, align 4, !tbaa !16
  %36 = load i32, ptr %18, align 8, !tbaa !19
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 %35, ptr %18, align 8, !tbaa !19
  br label %39

39:                                               ; preds = %38, %33
  %40 = load ptr, ptr %16, align 8, !tbaa !15
  %41 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = tail call ptr %42(ptr noundef %40, ptr noundef nonnull @st_name_sub_table, ptr noundef nonnull @.str.4) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %70, label %45

45:                                               ; preds = %39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3072) %43, i8 0, i64 3072, i1 false)
  store ptr %43, ptr %34, align 8, !tbaa !11
  %46 = shl i32 %25, 7
  %47 = or disjoint i32 %46, 127
  %48 = load i32, ptr %11, align 8, !tbaa !20
  %49 = tail call i32 @llvm.umax.i32(i32 %46, i32 1)
  br label %50

50:                                               ; preds = %65, %45
  %51 = phi i32 [ %47, %45 ], [ %68, %65 ]
  %52 = phi i32 [ %48, %45 ], [ %66, %65 ]
  %53 = mul i32 %51, 59
  %54 = and i32 %53, 127
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds [128 x %struct.name_s], ptr %43, i64 0, i64 %55, i32 1
  %57 = load i16, ptr %56, align 2
  %58 = and i16 %57, 2
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = getelementptr inbounds [128 x %struct.name_s], ptr %43, i64 0, i64 %55
  %62 = and i32 %51, -128
  %63 = or disjoint i32 %54, %62
  %64 = trunc i32 %52 to i16
  store i16 %64, ptr %61, align 8, !tbaa !21
  br label %65

65:                                               ; preds = %60, %50
  %66 = phi i32 [ %63, %60 ], [ %52, %50 ]
  %67 = icmp eq i32 %51, %49
  %68 = add i32 %51, -1
  br i1 %67, label %69, label %50, !llvm.loop !24

69:                                               ; preds = %65
  store i32 %66, ptr %11, align 8, !tbaa !20
  br label %70

70:                                               ; preds = %30, %19, %39, %69
  %71 = add nuw nsw i32 %20, 128
  %72 = icmp eq i32 %20, 0
  br i1 %72, label %19, label %73, !llvm.loop !25

73:                                               ; preds = %70, %97
  %74 = phi i32 [ %102, %97 ], [ -1, %70 ]
  %75 = add nsw i32 %74, 2
  %76 = mul nuw nsw i32 %75, 59
  %77 = and i32 %76, 127
  %78 = lshr i32 %75, 7
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds %struct.name_table_s, ptr %11, i64 0, i32 6, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !11
  %82 = zext nneg i32 %77 to i64
  %83 = icmp slt i32 %74, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.name_s, ptr %81, i64 %82, i32 2
  store ptr @nt_1char_names, ptr %85, align 8, !tbaa !26
  %86 = getelementptr inbounds %struct.name_s, ptr %81, i64 %82, i32 1
  %87 = load i16, ptr %86, align 2
  %88 = and i16 %87, 3
  store i16 %88, ptr %86, align 2
  br label %97

89:                                               ; preds = %73
  %90 = zext nneg i32 %74 to i64
  %91 = getelementptr inbounds i8, ptr @nt_1char_names, i64 %90
  %92 = getelementptr inbounds %struct.name_s, ptr %81, i64 %82, i32 2
  store ptr %91, ptr %92, align 8, !tbaa !26
  %93 = getelementptr inbounds %struct.name_s, ptr %81, i64 %82, i32 1
  %94 = load i16, ptr %93, align 2
  %95 = and i16 %94, 3
  %96 = or disjoint i16 %95, 4
  store i16 %96, ptr %93, align 2
  br label %97

97:                                               ; preds = %89, %84
  %98 = getelementptr inbounds %struct.name_s, ptr %81, i64 %82, i32 1
  %99 = load i16, ptr %98, align 2
  %100 = or i16 %99, 3
  store i16 %100, ptr %98, align 2
  %101 = getelementptr inbounds %struct.name_s, ptr %81, i64 %82, i32 3
  store ptr null, ptr %101, align 8, !tbaa !27
  %102 = add nsw i32 %74, 1
  %103 = icmp eq i32 %102, 128
  br i1 %103, label %104, label %73, !llvm.loop !28

104:                                              ; preds = %97
  store i32 0, ptr %11, align 8, !tbaa !20
  tail call void @name_trace_finish(ptr noundef null)
  %105 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 16
  %106 = load ptr, ptr %105, align 8, !tbaa !29
  tail call void %106(ptr noundef %1, ptr noundef nonnull @the_nt_root, ptr noundef nonnull @ptr_struct_procs, ptr noundef nonnull @the_nt, ptr noundef nonnull @.str.1) #18
  br label %107

107:                                              ; preds = %4, %104
  %108 = phi ptr [ %11, %104 ], [ null, %4 ]
  ret ptr %108
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @name_trace_finish(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @the_nt, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 5
  br label %4

4:                                                ; preds = %1, %37
  %5 = phi ptr [ %3, %1 ], [ %39, %37 ]
  %6 = phi i32 [ 0, %1 ], [ %40, %37 ]
  %7 = phi ptr [ undef, %1 ], [ %38, %37 ]
  %8 = load i32, ptr %5, align 4, !tbaa !30
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %4, %33
  %11 = phi i32 [ %35, %33 ], [ 0, %4 ]
  %12 = phi i32 [ %22, %33 ], [ %8, %4 ]
  %13 = phi ptr [ %34, %33 ], [ %7, %4 ]
  %14 = lshr i32 %12, 7
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 6, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = and i32 %12, 127
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds %struct.name_s, ptr %17, i64 %19
  %21 = load i16, ptr %20, align 8, !tbaa !21
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.name_s, ptr %17, i64 %19, i32 1
  %24 = load i16, ptr %23, align 2
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.name_s, ptr %17, i64 %19, i32 2
  store ptr null, ptr %28, align 8, !tbaa !26
  %29 = and i16 %24, 1
  store i16 %29, ptr %23, align 2
  %30 = icmp eq i32 %11, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 %22, ptr %5, align 4, !tbaa !30
  br label %33

32:                                               ; preds = %27
  store i16 %21, ptr %13, align 8, !tbaa !21
  br label %33

33:                                               ; preds = %10, %31, %32
  %34 = phi ptr [ %13, %31 ], [ %13, %32 ], [ %20, %10 ]
  %35 = phi i32 [ 0, %31 ], [ %11, %32 ], [ %12, %10 ]
  %36 = icmp eq i16 %21, 0
  br i1 %36, label %37, label %10, !llvm.loop !31

37:                                               ; preds = %33, %4
  %38 = phi ptr [ %7, %4 ], [ %34, %33 ]
  %39 = getelementptr inbounds i32, ptr %5, i64 1
  %40 = add nuw nsw i32 %6, 1
  %41 = icmp eq i32 %40, 1024
  br i1 %41, label %42, label %4, !llvm.loop !32

42:                                               ; preds = %37
  store i32 0, ptr %2, align 8, !tbaa !20
  %43 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !19
  %45 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 4
  %46 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 1
  %47 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 1
  %48 = icmp ne ptr %0, null
  %49 = zext i32 %44 to i64
  br label %50

50:                                               ; preds = %126, %42
  %51 = phi i64 [ %52, %126 ], [ %49, %42 ]
  %52 = add nsw i64 %51, -1
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i64 %51, 0
  br i1 %54, label %128, label %55

55:                                               ; preds = %50
  %56 = and i64 %52, 4294967295
  %57 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 6, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %126, label %60

60:                                               ; preds = %55
  %61 = shl i32 %53, 7
  %62 = or disjoint i32 %61, 127
  %63 = load i32, ptr %2, align 8, !tbaa !20
  %64 = icmp eq i32 %61, 0
  %65 = tail call i32 @llvm.umax.i32(i32 %61, i32 1)
  %66 = zext i1 %64 to i32
  br label %67

67:                                               ; preds = %83, %60
  %68 = phi i32 [ %62, %60 ], [ %87, %83 ]
  %69 = phi i32 [ %66, %60 ], [ %84, %83 ]
  %70 = phi i32 [ %63, %60 ], [ %85, %83 ]
  %71 = mul i32 %68, 59
  %72 = and i32 %71, 127
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [128 x %struct.name_s], ptr %58, i64 0, i64 %73, i32 1
  %75 = load i16, ptr %74, align 2
  %76 = and i16 %75, 2
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = getelementptr inbounds [128 x %struct.name_s], ptr %58, i64 0, i64 %73
  %80 = and i32 %68, -128
  %81 = or disjoint i32 %72, %80
  %82 = trunc i32 %70 to i16
  store i16 %82, ptr %79, align 8, !tbaa !21
  br label %83

83:                                               ; preds = %78, %67
  %84 = phi i32 [ %69, %78 ], [ 1, %67 ]
  %85 = phi i32 [ %81, %78 ], [ %70, %67 ]
  %86 = icmp eq i32 %68, %65
  %87 = add i32 %68, -1
  br i1 %86, label %88, label %67, !llvm.loop !24

88:                                               ; preds = %83
  %89 = icmp eq i32 %84, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %88
  store i32 %85, ptr %2, align 8, !tbaa !20
  br label %114

91:                                               ; preds = %88
  %92 = load ptr, ptr %45, align 8, !tbaa !15
  %93 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %92, i64 0, i32 11
  %94 = load ptr, ptr %93, align 8, !tbaa !33
  tail call void %94(ptr noundef %92, ptr noundef nonnull %58, ptr noundef nonnull @.str.6) #18
  store ptr null, ptr %57, align 8, !tbaa !11
  %95 = load i32, ptr %43, align 8, !tbaa !19
  %96 = zext i32 %95 to i64
  %97 = icmp eq i64 %51, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %91, %98
  %99 = phi i32 [ %100, %98 ], [ %53, %91 ]
  %100 = add i32 %99, -1
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 6, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !11
  %104 = icmp eq ptr %103, null
  br i1 %104, label %98, label %105, !llvm.loop !34

105:                                              ; preds = %98
  store i32 %99, ptr %43, align 8, !tbaa !19
  %106 = load i32, ptr %47, align 4, !tbaa !16
  %107 = icmp ugt i32 %106, %100
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  store i32 %100, ptr %47, align 4, !tbaa !16
  br label %114

109:                                              ; preds = %91
  %110 = load i32, ptr %46, align 4, !tbaa !16
  %111 = icmp eq i32 %110, %53
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = add i32 %110, -1
  store i32 %113, ptr %46, align 4, !tbaa !16
  br label %114

114:                                              ; preds = %90, %105, %108, %109, %112
  %115 = load ptr, ptr %57, align 8, !tbaa !11
  %116 = icmp eq ptr %115, null
  %117 = and i1 %48, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.obj_header_s, ptr %58, i64 -1
  %120 = load i8, ptr %119, align 8
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  %123 = load i32, ptr %119, align 8
  %124 = select i1 %122, i32 -2, i32 6
  %125 = or i32 %123, %124
  store i32 %125, ptr %119, align 8
  br label %126

126:                                              ; preds = %118, %114, %55
  %127 = icmp eq i32 %53, 0
  br i1 %127, label %128, label %50

128:                                              ; preds = %126, %50
  %129 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 1
  store i32 0, ptr %129, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @the_name_table() local_unnamed_addr #3 {
  %1 = load ptr, ptr @the_nt, align 8, !tbaa !11
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @name_memory() local_unnamed_addr #4 {
  %1 = load ptr, ptr @the_nt, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.name_table_s, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @name_ref(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @the_nt, align 8, !tbaa !11
  switch i32 %1, label %26 [
    i32 0, label %6
    i32 1, label %10
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.name_table_s, ptr %5, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.name_s, ptr %8, i64 59
  br label %57

10:                                               ; preds = %4
  %11 = load i8, ptr %0, align 1, !tbaa !35
  %12 = icmp sgt i8 %11, -1
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = add nuw i8 %11, 2
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 128
  %17 = mul nuw nsw i32 %15, 59
  %18 = and i32 %17, 127
  %19 = or disjoint i32 %18, %16
  %20 = lshr i32 %15, 7
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds %struct.name_table_s, ptr %5, i64 0, i32 6, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds %struct.name_s, ptr %23, i64 %24
  br label %57

26:                                               ; preds = %10, %4
  %27 = load i8, ptr %0, align 1, !tbaa !35
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i8], ptr @hash_permutation, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !35
  %31 = zext i8 %30 to i32
  %32 = add i32 %1, -1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %26, %34
  %35 = phi i32 [ %49, %34 ], [ %32, %26 ]
  %36 = phi ptr [ %38, %34 ], [ %0, %26 ]
  %37 = phi i32 [ %48, %34 ], [ %31, %26 ]
  %38 = getelementptr inbounds i8, ptr %36, i64 1
  %39 = shl i32 %37, 8
  %40 = and i32 %37, 255
  %41 = load i8, ptr %38, align 1, !tbaa !35
  %42 = zext i8 %41 to i32
  %43 = xor i32 %40, %42
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [256 x i8], ptr @hash_permutation, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !35
  %47 = zext i8 %46 to i32
  %48 = or disjoint i32 %39, %47
  %49 = add i32 %35, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %34, !llvm.loop !36

51:                                               ; preds = %34, %26
  %52 = phi i32 [ %31, %26 ], [ %48, %34 ]
  %53 = getelementptr inbounds %struct.name_table_s, ptr %5, i64 0, i32 5
  %54 = and i32 %52, 1023
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %53, i64 %55
  br label %57

57:                                               ; preds = %13, %6, %51
  %58 = phi i32 [ undef, %51 ], [ %19, %13 ], [ 59, %6 ]
  %59 = phi ptr [ %56, %51 ], [ undef, %13 ], [ undef, %6 ]
  %60 = phi i32 [ 0, %51 ], [ 3, %13 ], [ 3, %6 ]
  %61 = phi ptr [ undef, %51 ], [ %25, %13 ], [ %9, %6 ]
  switch i32 %60, label %210 [
    i32 0, label %62
    i32 3, label %204
  ]

62:                                               ; preds = %57
  %63 = load i32, ptr %59, align 4, !tbaa !30
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %90, label %65

65:                                               ; preds = %62
  %66 = zext nneg i32 %1 to i64
  br label %67

67:                                               ; preds = %65, %86
  %68 = phi i32 [ %63, %65 ], [ %88, %86 ]
  %69 = lshr i32 %68, 7
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds %struct.name_table_s, ptr %5, i64 0, i32 6, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !11
  %73 = and i32 %68, 127
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds %struct.name_s, ptr %72, i64 %74
  %76 = getelementptr inbounds %struct.name_s, ptr %72, i64 %74, i32 1
  %77 = load i16, ptr %76, align 2
  %78 = lshr i16 %77, 2
  %79 = zext nneg i16 %78 to i32
  %80 = icmp eq i32 %79, %1
  br i1 %80, label %81, label %86

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.name_s, ptr %72, i64 %74, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !26
  %84 = tail call i32 @bcmp(ptr %0, ptr %83, i64 %66)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %204, label %86

86:                                               ; preds = %67, %81
  %87 = load i16, ptr %75, align 8, !tbaa !21
  %88 = zext i16 %87 to i32
  %89 = icmp eq i16 %87, 0
  br i1 %89, label %90, label %67, !llvm.loop !37

90:                                               ; preds = %86, %62
  %91 = icmp slt i32 %3, 0
  br i1 %91, label %210, label %92

92:                                               ; preds = %90
  %93 = icmp ugt i32 %1, 16383
  br i1 %93, label %210, label %94

94:                                               ; preds = %92
  %95 = load i32, ptr %5, align 8, !tbaa !20
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %158

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.name_table_s, ptr %5, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !16
  %100 = getelementptr inbounds %struct.name_table_s, ptr %5, i64 0, i32 3
  %101 = load i32, ptr %100, align 4, !tbaa !12
  %102 = icmp ugt i32 %99, %101
  br i1 %102, label %151, label %103

103:                                              ; preds = %97, %109
  %104 = phi i32 [ %110, %109 ], [ %99, %97 ]
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.name_table_s, ptr %5, i64 0, i32 6, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !11
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = add i32 %104, 1
  %111 = icmp ugt i32 %110, %101
  br i1 %111, label %151, label %103, !llvm.loop !17

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.name_table_s, ptr %5, i64 0, i32 6, i64 %105
  %114 = add i32 %104, 1
  store i32 %114, ptr %98, align 4, !tbaa !16
  %115 = getelementptr inbounds %struct.name_table_s, ptr %5, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !19
  %117 = icmp ugt i32 %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 %114, ptr %115, align 8, !tbaa !19
  br label %119

119:                                              ; preds = %118, %112
  %120 = getelementptr inbounds %struct.name_table_s, ptr %5, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !15
  %122 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %124 = tail call ptr %123(ptr noundef %121, ptr noundef nonnull @st_name_sub_table, ptr noundef nonnull @.str.4) #18
  %125 = icmp eq ptr %124, null
  br i1 %125, label %151, label %126

126:                                              ; preds = %119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3072) %124, i8 0, i64 3072, i1 false)
  store ptr %124, ptr %113, align 8, !tbaa !11
  %127 = shl i32 %104, 7
  %128 = or disjoint i32 %127, 127
  %129 = load i32, ptr %5, align 8, !tbaa !20
  %130 = tail call i32 @llvm.umax.i32(i32 %127, i32 1)
  br label %131

131:                                              ; preds = %146, %126
  %132 = phi i32 [ %128, %126 ], [ %149, %146 ]
  %133 = phi i32 [ %129, %126 ], [ %147, %146 ]
  %134 = mul i32 %132, 59
  %135 = and i32 %134, 127
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds [128 x %struct.name_s], ptr %124, i64 0, i64 %136, i32 1
  %138 = load i16, ptr %137, align 2
  %139 = and i16 %138, 2
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %131
  %142 = getelementptr inbounds [128 x %struct.name_s], ptr %124, i64 0, i64 %136
  %143 = and i32 %132, -128
  %144 = or disjoint i32 %135, %143
  %145 = trunc i32 %133 to i16
  store i16 %145, ptr %142, align 8, !tbaa !21
  br label %146

146:                                              ; preds = %141, %131
  %147 = phi i32 [ %144, %141 ], [ %133, %131 ]
  %148 = icmp eq i32 %132, %130
  %149 = add i32 %132, -1
  br i1 %148, label %150, label %131, !llvm.loop !24

150:                                              ; preds = %146
  store i32 %147, ptr %5, align 8, !tbaa !20
  br label %151

151:                                              ; preds = %109, %97, %119, %150
  %152 = phi i1 [ false, %119 ], [ true, %150 ], [ false, %97 ], [ false, %109 ]
  %153 = phi i32 [ -25, %119 ], [ 0, %150 ], [ -13, %97 ], [ -13, %109 ]
  br i1 %152, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, ptr %5, align 8, !tbaa !20
  br label %156

156:                                              ; preds = %151, %154
  %157 = phi i32 [ %155, %154 ], [ 0, %151 ]
  br i1 %152, label %158, label %210

158:                                              ; preds = %156, %94
  %159 = phi i32 [ %157, %156 ], [ %95, %94 ]
  %160 = phi i32 [ %153, %156 ], [ undef, %94 ]
  %161 = lshr i32 %159, 7
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds %struct.name_table_s, ptr %5, i64 0, i32 6, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !11
  %165 = and i32 %159, 127
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds %struct.name_s, ptr %164, i64 %166
  %168 = icmp eq i32 %3, 1
  br i1 %168, label %169, label %184

169:                                              ; preds = %158
  %170 = getelementptr inbounds %struct.name_table_s, ptr %5, i64 0, i32 4
  %171 = load ptr, ptr %170, align 8, !tbaa !15
  %172 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %171, i64 0, i32 12
  %173 = load ptr, ptr %172, align 8, !tbaa !38
  %174 = tail call ptr %173(ptr noundef %171, i32 noundef %1, ptr noundef nonnull @.str.2) #18
  %175 = icmp eq ptr %174, null
  br i1 %175, label %182, label %176

176:                                              ; preds = %169
  %177 = zext nneg i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %174, ptr align 1 %0, i64 %177, i1 false)
  %178 = getelementptr inbounds %struct.name_s, ptr %164, i64 %166, i32 2
  store ptr %174, ptr %178, align 8, !tbaa !26
  %179 = getelementptr inbounds %struct.name_s, ptr %164, i64 %166, i32 1
  %180 = load i16, ptr %179, align 2
  %181 = and i16 %180, -2
  store i16 %181, ptr %179, align 2
  br label %182

182:                                              ; preds = %169, %176
  %183 = phi i32 [ %160, %176 ], [ -25, %169 ]
  br i1 %175, label %210, label %192

184:                                              ; preds = %158
  %185 = getelementptr inbounds %struct.name_s, ptr %164, i64 %166, i32 2
  store ptr %0, ptr %185, align 8, !tbaa !26
  %186 = icmp eq i32 %3, 0
  %187 = getelementptr inbounds %struct.name_s, ptr %164, i64 %166, i32 1
  %188 = zext i1 %186 to i16
  %189 = load i16, ptr %187, align 2
  %190 = and i16 %189, -2
  %191 = or disjoint i16 %190, %188
  store i16 %191, ptr %187, align 2
  br label %192

192:                                              ; preds = %182, %184
  %193 = getelementptr inbounds %struct.name_s, ptr %164, i64 %166, i32 1
  %194 = trunc i32 %1 to i16
  %195 = load i16, ptr %193, align 2
  %196 = shl nuw i16 %194, 2
  %197 = and i16 %195, 3
  %198 = or disjoint i16 %197, %196
  store i16 %198, ptr %193, align 2
  %199 = getelementptr inbounds %struct.name_s, ptr %164, i64 %166, i32 3
  store ptr null, ptr %199, align 8, !tbaa !27
  %200 = load i16, ptr %167, align 8, !tbaa !21
  %201 = zext i16 %200 to i32
  store i32 %201, ptr %5, align 8, !tbaa !20
  %202 = load i32, ptr %59, align 4, !tbaa !30
  %203 = trunc i32 %202 to i16
  store i16 %203, ptr %167, align 8, !tbaa !21
  store i32 %159, ptr %59, align 4, !tbaa !30
  br label %204

204:                                              ; preds = %81, %192, %57
  %205 = phi i32 [ %58, %57 ], [ %159, %192 ], [ %68, %81 ]
  %206 = phi ptr [ %61, %57 ], [ %167, %192 ], [ %75, %81 ]
  %207 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  store ptr %206, ptr %207, align 8, !tbaa !35
  store i16 3332, ptr %2, align 8, !tbaa !39
  %208 = trunc i32 %205 to i16
  %209 = getelementptr inbounds %struct.tas_s, ptr %2, i64 0, i32 1
  store i16 %208, ptr %209, align 2, !tbaa !42
  br label %210

210:                                              ; preds = %92, %90, %156, %182, %204, %57
  %211 = phi i32 [ undef, %57 ], [ 0, %204 ], [ %183, %182 ], [ %153, %156 ], [ -21, %90 ], [ -13, %92 ]
  ret i32 %211
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @name_string_ref(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = load ptr, ptr @the_nt, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.name_s, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  %8 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.name_s, ptr %4, i64 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.name_table_s, ptr %5, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = tail call i32 @imemory_space(ptr noundef %15) #18
  %17 = trunc i32 %16 to i16
  %18 = or i16 %17, 96
  %19 = add i16 %18, 4608
  br label %20

20:                                               ; preds = %2, %13
  %21 = phi i16 [ %19, %13 ], [ 4704, %2 ]
  store i16 %21, ptr %1, align 8, !tbaa !39
  %22 = load i16, ptr %9, align 2
  %23 = lshr i16 %22, 2
  %24 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  store i16 %23, ptr %24, align 2, !tbaa !42
  ret void
}

declare i32 @imemory_space(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @name_from_string(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i16, ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !42
  %8 = zext i16 %7 to i32
  %9 = tail call i32 @name_ref(ptr noundef %5, i32 noundef %8, ptr noundef %1, i32 noundef 1)
  %10 = icmp slt i32 %9, 0
  %11 = and i16 %3, 128
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i16, ptr %1, align 8, !tbaa !39
  %16 = or i16 %15, 128
  store i16 %16, ptr %1, align 8, !tbaa !39
  br label %17

17:                                               ; preds = %14, %2
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @name_enter_string(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 @name_ref(ptr noundef %0, i32 noundef %4, ptr noundef %1, i32 noundef 0)
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @name_invalidate_value_cache(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.name_s, ptr %3, i64 0, i32 3
  store ptr inttoptr (i64 1 to ptr), ptr %4, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @name_index(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 2, !tbaa !42
  %4 = zext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @name_index_ref(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = load ptr, ptr @the_nt, align 8, !tbaa !11
  %4 = lshr i32 %0, 7
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds %struct.name_table_s, ptr %3, i64 0, i32 6, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = and i32 %0, 127
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.name_s, ptr %7, i64 %9
  %11 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !35
  store i16 3332, ptr %1, align 8, !tbaa !39
  %12 = trunc i32 %0 to i16
  %13 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  store i16 %12, ptr %13, align 2, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @name_index_ptr(i32 noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @the_nt, align 8, !tbaa !11
  %3 = lshr i32 %0, 7
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 6, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = and i32 %0, 127
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds %struct.name_s, ptr %6, i64 %8
  ret ptr %9
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @name_next_valid_index(i32 noundef %0) local_unnamed_addr #11 {
  %2 = load ptr, ptr @the_nt, align 8, !tbaa !11
  %3 = lshr i32 %0, 7
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 6, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 2
  br label %8

8:                                                ; preds = %29, %1
  %9 = phi i32 [ %0, %1 ], [ %30, %29 ]
  %10 = phi ptr [ %6, %1 ], [ %31, %29 ]
  %11 = add i32 %9, 1
  %12 = and i32 %11, 127
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load i32, ptr %7, align 8, !tbaa !19
  %16 = lshr exact i32 %11, 7
  %17 = icmp ult i32 %16, %15
  br i1 %17, label %18, label %37

18:                                               ; preds = %14, %25
  %19 = phi i32 [ %27, %25 ], [ %16, %14 ]
  %20 = phi i32 [ %26, %25 ], [ %11, %14 ]
  %21 = zext nneg i32 %19 to i64
  %22 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 6, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = add i32 %20, 128
  %27 = lshr exact i32 %26, 7
  %28 = icmp ult i32 %27, %15
  br i1 %28, label %18, label %37, !llvm.loop !43

29:                                               ; preds = %18, %8
  %30 = phi i32 [ %11, %8 ], [ %20, %18 ]
  %31 = phi ptr [ %10, %8 ], [ %23, %18 ]
  %32 = and i32 %30, 127
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [128 x %struct.name_s], ptr %31, i64 0, i64 %33, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !26
  %36 = icmp eq ptr %35, null
  br i1 %36, label %8, label %37, !llvm.loop !44

37:                                               ; preds = %29, %14, %25
  %38 = phi i32 [ 0, %25 ], [ %30, %29 ], [ 0, %14 ]
  ret i32 %38
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @name_unmark_all() local_unnamed_addr #12 {
  %1 = load ptr, ptr @the_nt, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.name_table_s, ptr %1, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %0, %17
  %6 = phi i64 [ %18, %17 ], [ 0, %0 ]
  %7 = getelementptr inbounds %struct.name_table_s, ptr %1, i64 0, i32 6, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %5, %10
  %11 = phi i64 [ %15, %10 ], [ 0, %5 ]
  %12 = getelementptr inbounds [128 x %struct.name_s], ptr %8, i64 0, i64 %11, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, -3
  store i16 %14, ptr %12, align 2
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, 128
  br i1 %16, label %17, label %10, !llvm.loop !45

17:                                               ; preds = %10, %5
  %18 = add nuw nsw i64 %6, 1
  %19 = load i32, ptr %2, align 8, !tbaa !19
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %5, label %22, !llvm.loop !46

22:                                               ; preds = %17, %0
  br label %23

23:                                               ; preds = %22, %23
  %24 = phi i32 [ %36, %23 ], [ 1, %22 ]
  %25 = mul nuw nsw i32 %24, 59
  %26 = and i32 %25, 127
  %27 = load ptr, ptr @the_nt, align 8, !tbaa !11
  %28 = lshr i32 %24, 7
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds %struct.name_table_s, ptr %27, i64 0, i32 6, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = zext nneg i32 %26 to i64
  %33 = getelementptr inbounds %struct.name_s, ptr %31, i64 %32, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = or i16 %34, 2
  store i16 %35, ptr %33, align 2
  %36 = add nuw nsw i32 %24, 1
  %37 = icmp eq i32 %36, 129
  br i1 %37, label %38, label %23, !llvm.loop !47

38:                                               ; preds = %23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @name_mark_index(i32 noundef %0) local_unnamed_addr #13 {
  %2 = load ptr, ptr @the_nt, align 8, !tbaa !11
  %3 = lshr i32 %0, 7
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 6, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = and i32 %0, 127
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds %struct.name_s, ptr %6, i64 %8, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = or disjoint i16 %10, 2
  store i16 %14, ptr %9, align 2
  br label %15

15:                                               ; preds = %1, %13
  %16 = phi i32 [ 1, %13 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @name_ref_sub_table(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !42
  %6 = and i16 %5, 127
  %7 = zext nneg i16 %6 to i64
  %8 = sub nsw i64 0, %7
  %9 = getelementptr inbounds %struct.name_s, ptr %3, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @name_index_ptr_sub_table(i32 noundef %0, ptr noundef readnone %1) local_unnamed_addr #14 {
  %3 = and i32 %0, 127
  %4 = zext nneg i32 %3 to i64
  %5 = sub nsw i64 0, %4
  %6 = getelementptr inbounds %struct.name_s, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local void @name_restore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @the_nt, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %45, label %6

6:                                                ; preds = %1, %40
  %7 = phi i64 [ %41, %40 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %6
  %12 = and i64 %7, 33554431
  %13 = getelementptr inbounds %struct.name_table_s, ptr %2, i64 0, i32 6, i64 %12
  br label %14

14:                                               ; preds = %11, %36
  %15 = phi i64 [ 0, %11 ], [ %38, %36 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.name_s, ptr %16, i64 %15, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !26
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.name_s, ptr %16, i64 %15, i32 1
  %21 = load i16, ptr %20, align 2
  br i1 %19, label %22, label %24

22:                                               ; preds = %14
  %23 = and i16 %21, -3
  br label %36

24:                                               ; preds = %14
  %25 = and i16 %21, 1
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = or i16 %21, 2
  br label %36

29:                                               ; preds = %24
  %30 = tail call i32 @alloc_is_since_save(ptr noundef nonnull %18, ptr noundef %0) #18
  %31 = icmp eq i32 %30, 0
  %32 = load i16, ptr %20, align 2
  %33 = select i1 %31, i16 2, i16 0
  %34 = and i16 %32, -3
  %35 = or disjoint i16 %34, %33
  br label %36

36:                                               ; preds = %27, %29, %22
  %37 = phi i16 [ %28, %27 ], [ %35, %29 ], [ %23, %22 ]
  store i16 %37, ptr %20, align 2
  %38 = add nuw nsw i64 %15, 1
  %39 = icmp eq i64 %38, 128
  br i1 %39, label %40, label %14, !llvm.loop !48

40:                                               ; preds = %36, %6
  %41 = add nuw nsw i64 %7, 1
  %42 = load i32, ptr %3, align 8, !tbaa !19
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %6, label %45, !llvm.loop !49

45:                                               ; preds = %40, %1
  tail call void @name_trace_finish(ptr noundef null)
  ret void
}

declare i32 @alloc_is_since_save(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @name_table_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #15 {
  %5 = getelementptr inbounds %struct.name_table_s, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds %struct.name_table_s, ptr %0, i64 0, i32 6, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  store ptr %11, ptr %3, align 8, !tbaa !11
  br label %12

12:                                               ; preds = %4, %8
  %13 = phi ptr [ @ptr_struct_procs, %8 ], [ null, %4 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @name_table_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.name_table_s, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.name_table_s, ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i32 [ %14, %9 ], [ 0, %7 ]
  %11 = phi ptr [ %15, %9 ], [ %8, %7 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %12, ptr noundef %2) #18
  store ptr %13, ptr %11, align 8, !tbaa !11
  %14 = add nuw i32 %10, 1
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  %16 = icmp eq i32 %14, %5
  br i1 %16, label %17, label %9, !llvm.loop !50

17:                                               ; preds = %9, %3
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @name_sub_enum_ptrs(ptr nocapture readnone %0, i32 %1, i32 %2, ptr nocapture readnone %3) #14 {
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal void @name_sub_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = alloca %struct.gs_const_string_s, align 8
  %5 = getelementptr inbounds %struct.gs_const_string_s, ptr %4, i64 0, i32 1
  br label %6

6:                                                ; preds = %3, %21
  %7 = phi i32 [ 0, %3 ], [ %23, %21 ]
  %8 = phi ptr [ %0, %3 ], [ %22, %21 ]
  %9 = getelementptr inbounds %struct.name_s, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.name_s, ptr %8, i64 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  store ptr %10, ptr %4, align 8, !tbaa !51
  %18 = lshr i16 %14, 2
  %19 = zext nneg i16 %18 to i32
  store i32 %19, ptr %5, align 8, !tbaa !53
  call void @gs_reloc_const_string(ptr noundef nonnull %4, ptr noundef %2) #18
  %20 = load ptr, ptr %4, align 8, !tbaa !51
  store ptr %20, ptr %9, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  br label %21

21:                                               ; preds = %6, %12, %17
  %22 = getelementptr inbounds %struct.name_s, ptr %8, i64 1
  %23 = add nuw nsw i32 %7, 1
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %6, !llvm.loop !54

25:                                               ; preds = %21
  ret void
}

declare void @gs_reloc_const_string(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 16}
!6 = !{!"gs_memory_s", !7, i64 0}
!7 = !{!"gs_memory_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!8, !8, i64 0}
!12 = !{!13, !14, i64 12}
!13 = !{!"name_table_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !8, i64 16, !9, i64 24, !9, i64 4120}
!14 = !{!"int", !9, i64 0}
!15 = !{!13, !8, i64 16}
!16 = !{!13, !14, i64 4}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!13, !14, i64 8}
!20 = !{!13, !14, i64 0}
!21 = !{!22, !23, i64 0}
!22 = !{!"name_s", !23, i64 0, !14, i64 2, !14, i64 2, !14, i64 2, !8, i64 8, !8, i64 16}
!23 = !{!"short", !9, i64 0}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = !{!22, !8, i64 8}
!27 = !{!22, !8, i64 16}
!28 = distinct !{!28, !18}
!29 = !{!6, !8, i64 128}
!30 = !{!14, !14, i64 0}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = !{!6, !8, i64 88}
!34 = distinct !{!34, !18}
!35 = !{!9, !9, i64 0}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = !{!6, !8, i64 96}
!39 = !{!40, !23, i64 0}
!40 = !{!"ref_s", !41, i64 0, !9, i64 8}
!41 = !{!"tas_s", !23, i64 0, !23, i64 2}
!42 = !{!40, !23, i64 2}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = !{!52, !8, i64 0}
!52 = !{!"gs_const_string_s", !8, i64 0, !14, i64 8}
!53 = !{!52, !14, i64 8}
!54 = distinct !{!54, !18}
