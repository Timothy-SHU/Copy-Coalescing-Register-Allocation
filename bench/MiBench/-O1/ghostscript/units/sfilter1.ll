; ModuleID = 'sfilter1.c'
source_filename = "sfilter1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.stream_PFBD_state_s = type { ptr, ptr, ptr, i32, i32, i64 }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_SFD_state_s = type { ptr, ptr, ptr, i64, %struct.gs_const_string_s, i32, i32, i32 }
%struct.gs_const_string_s = type { ptr, i32 }

@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_Null_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_stream_state, ptr null, ptr @s_Null_process, i32 1, i32 1, ptr null, ptr null, ptr null }, align 8
@st_PFBD_state = internal constant %struct.gs_memory_struct_type_s { i32 40, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@s_PFBD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_PFBD_state, ptr @s_PFBD_init, ptr @s_PFBD_process, i32 6, i32 2, ptr null, ptr null, ptr null }, align 8
@st_SFD_state = internal constant %struct.gs_memory_struct_type_s { i32 64, ptr @.str.2, ptr null, ptr null, ptr @sfd_enum_ptrs, ptr @sfd_reloc_ptrs, ptr null }, align 8
@s_SFD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_SFD_state, ptr @s_SFD_init, ptr @s_SFD_process, i32 1, i32 1, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [16 x i8] c"PFBDecode state\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SubFileDecode state\00", align 1
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define internal i32 @s_Null_process(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 {
  %5 = tail call i32 @stream_move(ptr noundef %1, ptr noundef %2) #7
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @s_PFBD_init(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.stream_PFBD_state_s, ptr %0, i64 0, i32 4
  store i32 -1, ptr %2, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_PFBD_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #2 {
  %5 = load ptr, ptr %1, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %10 = getelementptr inbounds %struct.stream_PFBD_state_s, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.stream_PFBD_state_s, ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %struct.stream_PFBD_state_s, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.stream_PFBD_state_s, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %struct.stream_PFBD_state_s, ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %struct.stream_PFBD_state_s, ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %struct.stream_PFBD_state_s, ptr %0, i64 0, i32 5
  br label %17

17:                                               ; preds = %152, %4
  %18 = phi ptr [ %147, %152 ], [ %7, %4 ]
  %19 = phi ptr [ %148, %152 ], [ %5, %4 ]
  %20 = phi i32 [ %149, %152 ], [ 0, %4 ]
  %21 = load ptr, ptr %8, align 8, !tbaa !16
  %22 = ptrtoint ptr %21 to i64
  %23 = load ptr, ptr %9, align 8, !tbaa !17
  %24 = load i32, ptr %10, align 4, !tbaa !5
  br label %25

25:                                               ; preds = %17, %43
  %26 = phi i32 [ %40, %43 ], [ %24, %17 ]
  %27 = phi ptr [ %57, %43 ], [ %19, %17 ]
  %28 = ptrtoint ptr %27 to i64
  %29 = sub i64 %22, %28
  %30 = trunc i64 %29 to i32
  switch i32 %26, label %146 [
    i32 -1, label %31
    i32 1, label %62
    i32 2, label %90
  ]

31:                                               ; preds = %25
  %32 = icmp slt i32 %30, 2
  br i1 %32, label %157, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, ptr %27, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !18
  %36 = icmp eq i8 %35, -128
  br i1 %36, label %37, label %157

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %27, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !18
  %40 = zext i8 %39 to i32
  switch i8 %39, label %153 [
    i8 1, label %41
    i8 2, label %41
    i8 3, label %155
  ]

41:                                               ; preds = %37, %37
  %42 = icmp slt i32 %30, 6
  br i1 %42, label %157, label %43

43:                                               ; preds = %41
  store i32 %40, ptr %10, align 4, !tbaa !5
  %44 = getelementptr inbounds i8, ptr %27, i64 3
  %45 = load i8, ptr %44, align 1, !tbaa !18
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i8, ptr %27, i64 4
  %48 = load i8, ptr %47, align 1, !tbaa !18
  %49 = zext i8 %48 to i64
  %50 = shl nuw nsw i64 %49, 8
  %51 = or disjoint i64 %50, %46
  %52 = getelementptr inbounds i8, ptr %27, i64 5
  %53 = load i8, ptr %52, align 1, !tbaa !18
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 16
  %56 = or disjoint i64 %51, %55
  %57 = getelementptr inbounds i8, ptr %27, i64 6
  %58 = load i8, ptr %57, align 1, !tbaa !18
  %59 = zext i8 %58 to i64
  %60 = shl nuw nsw i64 %59, 24
  %61 = or disjoint i64 %56, %60
  store i64 %61, ptr %11, align 8, !tbaa !19
  br label %25

62:                                               ; preds = %25
  %63 = ptrtoint ptr %23 to i64
  %64 = ptrtoint ptr %18 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = icmp slt i32 %66, %30
  %68 = select i1 %67, i32 1, i32 %20
  %69 = tail call i32 @llvm.smin.i32(i32 %66, i32 %30)
  %70 = sext i32 %69 to i64
  %71 = load i64, ptr %15, align 8, !tbaa !19
  %72 = icmp ult i64 %71, %70
  %73 = trunc i64 %71 to i32
  %74 = select i1 %72, i32 0, i32 %68
  %75 = select i1 %72, i32 %73, i32 %69
  %76 = sext i32 %75 to i64
  %77 = sub i64 %71, %76
  store i64 %77, ptr %15, align 8, !tbaa !19
  %78 = icmp eq i32 %75, 0
  br i1 %78, label %146, label %79

79:                                               ; preds = %62, %79
  %80 = phi i32 [ %88, %79 ], [ %75, %62 ]
  %81 = phi ptr [ %83, %79 ], [ %27, %62 ]
  %82 = phi ptr [ %87, %79 ], [ %18, %62 ]
  %83 = getelementptr inbounds i8, ptr %81, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !18
  %85 = icmp eq i8 %84, 13
  %86 = select i1 %85, i8 10, i8 %84
  %87 = getelementptr inbounds i8, ptr %82, i64 1
  store i8 %86, ptr %87, align 1, !tbaa !18
  %88 = add nsw i32 %80, -1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %146, label %79, !llvm.loop !20

90:                                               ; preds = %25
  %91 = ptrtoint ptr %23 to i64
  %92 = ptrtoint ptr %18 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = load i32, ptr %12, align 8, !tbaa !22
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %130, label %97

97:                                               ; preds = %90
  %98 = ashr i32 %94, 1
  %99 = icmp slt i32 %98, %30
  %100 = select i1 %99, i32 1, i32 %20
  %101 = tail call i32 @llvm.smin.i32(i32 %98, i32 %30)
  %102 = sext i32 %101 to i64
  %103 = load i64, ptr %13, align 8, !tbaa !19
  %104 = icmp ult i64 %103, %102
  %105 = trunc i64 %103 to i32
  %106 = select i1 %104, i32 0, i32 %100
  %107 = select i1 %104, i32 %105, i32 %101
  %108 = sext i32 %107 to i64
  %109 = sub i64 %103, %108
  store i64 %109, ptr %13, align 8, !tbaa !19
  %110 = icmp eq i32 %107, 0
  br i1 %110, label %146, label %111

111:                                              ; preds = %97, %111
  %112 = phi i32 [ %128, %111 ], [ %107, %97 ]
  %113 = phi ptr [ %115, %111 ], [ %27, %97 ]
  %114 = phi ptr [ %127, %111 ], [ %18, %97 ]
  %115 = getelementptr inbounds i8, ptr %113, i64 1
  %116 = load i8, ptr %115, align 1, !tbaa !18
  %117 = zext i8 %116 to i32
  %118 = lshr i32 %117, 4
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr @.str.1, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !18
  %122 = getelementptr inbounds i8, ptr %114, i64 1
  store i8 %121, ptr %122, align 1, !tbaa !18
  %123 = and i32 %117, 15
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds i8, ptr @.str.1, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !18
  %127 = getelementptr inbounds i8, ptr %114, i64 2
  store i8 %126, ptr %127, align 1, !tbaa !18
  %128 = add nsw i32 %112, -1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %146, label %111, !llvm.loop !23

130:                                              ; preds = %90
  %131 = icmp slt i32 %94, %30
  %132 = select i1 %131, i32 1, i32 %20
  %133 = tail call i32 @llvm.smin.i32(i32 %94, i32 %30)
  %134 = sext i32 %133 to i64
  %135 = load i64, ptr %14, align 8, !tbaa !19
  %136 = icmp ult i64 %135, %134
  %137 = trunc i64 %135 to i32
  %138 = select i1 %136, i32 0, i32 %132
  %139 = select i1 %136, i32 %137, i32 %133
  %140 = sext i32 %139 to i64
  %141 = sub i64 %135, %140
  store i64 %141, ptr %14, align 8, !tbaa !19
  %142 = getelementptr inbounds i8, ptr %18, i64 1
  %143 = getelementptr inbounds i8, ptr %27, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %142, ptr nonnull align 1 %143, i64 %140, i1 false)
  %144 = getelementptr inbounds i8, ptr %27, i64 %140
  %145 = getelementptr inbounds i8, ptr %18, i64 %140
  br label %146

146:                                              ; preds = %25, %111, %79, %97, %62, %130
  %147 = phi ptr [ %145, %130 ], [ %18, %62 ], [ %18, %97 ], [ %87, %79 ], [ %127, %111 ], [ %18, %25 ]
  %148 = phi ptr [ %144, %130 ], [ %27, %62 ], [ %27, %97 ], [ %83, %79 ], [ %115, %111 ], [ %27, %25 ]
  %149 = phi i32 [ %138, %130 ], [ %74, %62 ], [ %106, %97 ], [ %74, %79 ], [ %106, %111 ], [ %20, %25 ]
  %150 = load i64, ptr %16, align 8, !tbaa !19
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  store i32 -1, ptr %10, align 4, !tbaa !5
  br label %17

153:                                              ; preds = %37
  %154 = getelementptr inbounds i8, ptr %27, i64 2
  br label %157

155:                                              ; preds = %37
  %156 = getelementptr inbounds i8, ptr %27, i64 2
  br label %157

157:                                              ; preds = %146, %41, %31, %33, %155, %153
  %158 = phi ptr [ %154, %153 ], [ %156, %155 ], [ %27, %33 ], [ %27, %31 ], [ %27, %41 ], [ %148, %146 ]
  %159 = phi ptr [ %18, %153 ], [ %18, %155 ], [ %18, %33 ], [ %18, %31 ], [ %18, %41 ], [ %147, %146 ]
  %160 = phi i32 [ -2, %153 ], [ -1, %155 ], [ %20, %41 ], [ %20, %31 ], [ -2, %33 ], [ %149, %146 ]
  store ptr %158, ptr %1, align 8, !tbaa !12
  store ptr %159, ptr %6, align 8, !tbaa !14
  ret i32 %160
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @s_SFD_init(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %2, align 8, !tbaa !24
  %3 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %3, align 4, !tbaa !27
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_SFD_process(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 4, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !28
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !29
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call i32 @stream_move(ptr noundef nonnull %1, ptr noundef %2) #7
  br label %151

22:                                               ; preds = %16
  %23 = ptrtoint ptr %9 to i64
  %24 = ptrtoint ptr %5 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = ptrtoint ptr %11 to i64
  %28 = ptrtoint ptr %7 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = tail call i32 @llvm.smin.i32(i32 %26, i32 %30)
  %32 = sext i32 %31 to i64
  %33 = icmp sgt i64 %18, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = sub nsw i64 %18, %32
  store i64 %35, ptr %17, align 8, !tbaa !29
  %36 = tail call i32 @stream_move(ptr noundef nonnull %1, ptr noundef %2) #7
  br label %151

37:                                               ; preds = %22
  %38 = getelementptr inbounds i8, ptr %7, i64 1
  %39 = getelementptr inbounds i8, ptr %5, i64 1
  %40 = shl i64 %18, 32
  %41 = ashr exact i64 %40, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %38, ptr nonnull align 1 %39, i64 %41, i1 false)
  %42 = getelementptr inbounds i8, ptr %5, i64 %41
  store ptr %42, ptr %1, align 8, !tbaa !12
  %43 = getelementptr inbounds i8, ptr %7, i64 %41
  store ptr %43, ptr %6, align 8, !tbaa !14
  br label %151

44:                                               ; preds = %4
  %45 = load ptr, ptr %12, align 8, !tbaa !30
  %46 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !24
  %48 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 6
  %49 = ptrtoint ptr %11 to i64
  %50 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 7
  %51 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 3
  %52 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 7
  %53 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 3
  %54 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 7
  br label %55

55:                                               ; preds = %138, %44
  %56 = phi i32 [ 0, %44 ], [ %140, %138 ]
  %57 = phi i32 [ %47, %44 ], [ %141, %138 ]
  %58 = phi ptr [ %7, %44 ], [ %142, %138 ]
  %59 = phi ptr [ %5, %44 ], [ %143, %138 ]
  %60 = load i32, ptr %48, align 4, !tbaa !27
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %90, label %62

62:                                               ; preds = %55
  %63 = ptrtoint ptr %58 to i64
  %64 = sub i64 %49, %63
  %65 = zext i32 %60 to i64
  %66 = tail call i64 @llvm.smin.i64(i64 %64, i64 %65)
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds i8, ptr %58, i64 1
  %69 = load ptr, ptr %12, align 8, !tbaa !30
  %70 = load i32, ptr %50, align 8, !tbaa !31
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %69, i64 %71
  %73 = shl i64 %66, 32
  %74 = ashr exact i64 %73, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %68, ptr align 1 %72, i64 %74, i1 false)
  %75 = load i32, ptr %48, align 4, !tbaa !27
  %76 = sub i32 %75, %67
  store i32 %76, ptr %48, align 4, !tbaa !27
  %77 = load i32, ptr %50, align 8, !tbaa !31
  %78 = add i32 %77, %67
  store i32 %78, ptr %50, align 8, !tbaa !31
  %79 = getelementptr inbounds i8, ptr %58, i64 %74
  %80 = icmp eq i32 %75, %67
  br i1 %80, label %81, label %86

81:                                               ; preds = %62
  %82 = load i64, ptr %51, align 8, !tbaa !29
  %83 = icmp slt i64 %82, 0
  %84 = select i1 %83, i32 3, i32 0
  %85 = select i1 %83, i32 -1, i32 %56
  br label %86

86:                                               ; preds = %81, %62
  %87 = phi i32 [ 3, %62 ], [ %84, %81 ]
  %88 = phi i32 [ 1, %62 ], [ %85, %81 ]
  %89 = icmp eq i32 %87, 0
  br i1 %89, label %90, label %146

90:                                               ; preds = %86, %55
  %91 = phi i32 [ %88, %86 ], [ %56, %55 ]
  %92 = phi ptr [ %79, %86 ], [ %58, %55 ]
  %93 = icmp ult ptr %59, %9
  br i1 %93, label %94, label %146

94:                                               ; preds = %90, %144
  %95 = phi ptr [ %143, %144 ], [ %59, %90 ]
  %96 = phi ptr [ %142, %144 ], [ %92, %90 ]
  %97 = phi i32 [ %141, %144 ], [ %57, %90 ]
  %98 = phi i32 [ %140, %144 ], [ %91, %90 ]
  %99 = getelementptr inbounds i8, ptr %95, i64 1
  %100 = load i8, ptr %99, align 1, !tbaa !18
  %101 = zext i32 %97 to i64
  %102 = getelementptr inbounds i8, ptr %45, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !18
  %104 = icmp eq i8 %100, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %94
  %106 = add i32 %97, 1
  %107 = load i32, ptr %13, align 8, !tbaa !28
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %138, !llvm.loop !32

109:                                              ; preds = %105
  %110 = load i64, ptr %53, align 8, !tbaa !29
  switch i64 %110, label %111 [
    i64 0, label %138
    i64 1, label %113
  ]

111:                                              ; preds = %109
  %112 = add nsw i64 %110, -1
  br label %113

113:                                              ; preds = %109, %111
  %114 = phi i64 [ %112, %111 ], [ -1, %109 ]
  store i64 %114, ptr %53, align 8, !tbaa !29
  store i32 0, ptr %54, align 8, !tbaa !31
  store i32 %106, ptr %48, align 4, !tbaa !27
  br label %138

115:                                              ; preds = %94
  %116 = icmp eq i32 %97, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %115
  %118 = sext i32 %97 to i64
  %119 = getelementptr inbounds i8, ptr %45, i64 %118
  %120 = zext i32 %97 to i64
  br label %121

121:                                              ; preds = %117, %121
  %122 = phi i64 [ %120, %117 ], [ %124, %121 ]
  %123 = add nsw i64 %122, -1
  %124 = add nsw i64 %122, -1
  %125 = sub nsw i64 1, %122
  %126 = getelementptr inbounds i8, ptr %119, i64 %125
  %127 = tail call i32 @bcmp(ptr %45, ptr nonnull %126, i64 %123)
  %128 = icmp ne i32 %127, 0
  %129 = icmp ne i64 %123, 0
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %121, label %131, !llvm.loop !33

131:                                              ; preds = %121
  %132 = trunc i64 %123 to i32
  store i32 0, ptr %52, align 8, !tbaa !31
  %133 = sub i32 %97, %132
  store i32 %133, ptr %48, align 4, !tbaa !27
  br label %138

134:                                              ; preds = %115
  %135 = icmp eq ptr %96, %11
  br i1 %135, label %138, label %136

136:                                              ; preds = %134
  %137 = getelementptr inbounds i8, ptr %96, i64 1
  store i8 %100, ptr %137, align 1, !tbaa !18
  br label %138

138:                                              ; preds = %134, %105, %109, %136, %131, %113
  %139 = phi i32 [ 2, %113 ], [ 2, %131 ], [ 0, %136 ], [ 3, %109 ], [ 4, %105 ], [ 5, %134 ]
  %140 = phi i32 [ %98, %113 ], [ %98, %131 ], [ %98, %136 ], [ -1, %109 ], [ %98, %105 ], [ 1, %134 ]
  %141 = phi i32 [ 0, %113 ], [ %132, %131 ], [ 0, %136 ], [ %106, %109 ], [ %106, %105 ], [ 0, %134 ]
  %142 = phi ptr [ %96, %113 ], [ %96, %131 ], [ %137, %136 ], [ %96, %109 ], [ %96, %105 ], [ %96, %134 ]
  %143 = phi ptr [ %99, %113 ], [ %95, %131 ], [ %99, %136 ], [ %99, %109 ], [ %99, %105 ], [ %95, %134 ]
  switch i32 %139, label %153 [
    i32 0, label %144
    i32 2, label %55
    i32 4, label %144
    i32 5, label %146
    i32 3, label %146
  ], !llvm.loop !32

144:                                              ; preds = %138, %138
  %145 = icmp ult ptr %143, %9
  br i1 %145, label %94, label %146

146:                                              ; preds = %86, %90, %138, %138, %144
  %147 = phi i32 [ %140, %144 ], [ %140, %138 ], [ %140, %138 ], [ %88, %86 ], [ %91, %90 ]
  %148 = phi i32 [ %141, %144 ], [ %141, %138 ], [ %141, %138 ], [ %57, %90 ], [ %57, %86 ]
  %149 = phi ptr [ %142, %144 ], [ %142, %138 ], [ %142, %138 ], [ %79, %86 ], [ %92, %90 ]
  %150 = phi ptr [ %143, %144 ], [ %143, %138 ], [ %143, %138 ], [ %59, %90 ], [ %59, %86 ]
  store ptr %150, ptr %1, align 8, !tbaa !12
  store ptr %149, ptr %6, align 8, !tbaa !14
  store i32 %148, ptr %46, align 8, !tbaa !24
  br label %151

151:                                              ; preds = %20, %34, %37, %146
  %152 = phi i32 [ %147, %146 ], [ %21, %20 ], [ %36, %34 ], [ -1, %37 ]
  ret i32 %152

153:                                              ; preds = %138
  unreachable
}

declare i32 @stream_move(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef ptr @sfd_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 4
  store ptr %7, ptr %3, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ @ptr_const_string_procs, %6 ], [ null, %4 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal void @sfd_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %0, i64 0, i32 4
  tail call void @gs_reloc_const_string(ptr noundef nonnull %4, ptr noundef %2) #7
  ret void
}

declare void @gs_reloc_const_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 28}
!6 = !{!"stream_PFBD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !11, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!14 = !{!15, !7, i64 8}
!15 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!16 = !{!13, !7, i64 8}
!17 = !{!15, !7, i64 16}
!18 = !{!8, !8, i64 0}
!19 = !{!6, !11, i64 32}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!6, !10, i64 24}
!23 = distinct !{!23, !21}
!24 = !{!25, !10, i64 48}
!25 = !{!"stream_SFD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !26, i64 32, !10, i64 48, !10, i64 52, !10, i64 56}
!26 = !{!"gs_const_string_s", !7, i64 0, !10, i64 8}
!27 = !{!25, !10, i64 52}
!28 = !{!25, !10, i64 40}
!29 = !{!25, !11, i64 24}
!30 = !{!25, !7, i64 32}
!31 = !{!25, !10, i64 56}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!34 = !{!7, !7, i64 0}
