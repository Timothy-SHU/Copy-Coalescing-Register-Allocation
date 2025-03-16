; ModuleID = 'sfilter2.c'
source_filename = "sfilter2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_A85D_state_s = type { ptr, ptr, ptr, i32, i64 }
%struct.stream_BT_state_s = type { ptr, ptr, ptr, [256 x i8] }

@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_A85E_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_stream_state, ptr null, ptr @s_A85E_process, i32 4, i32 6, ptr null, ptr null, ptr null }, align 8
@st_A85D_state = internal constant %struct.gs_memory_struct_type_s { i32 40, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@s_A85D_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_A85D_state, ptr @s_A85D_init, ptr @s_A85D_process, i32 2, i32 4, ptr null, ptr null, ptr null }, align 8
@st_BT_state = internal constant %struct.gs_memory_struct_type_s { i32 280, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@s_BT_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_BT_state, ptr null, ptr @s_BT_process, i32 1, i32 1, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [20 x i8] c"ASCII85Decode state\00", align 1
@scan_char_array = external local_unnamed_addr constant [260 x i8], align 16
@.str.1 = private unnamed_addr constant [33 x i8] c"ByteTranslateEncode/Decode state\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_A85E_process(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = ptrtoint ptr %9 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %11 to i64
  br label %15

15:                                               ; preds = %94, %4
  %16 = phi i32 [ 0, %4 ], [ %96, %94 ]
  %17 = phi ptr [ %7, %4 ], [ %97, %94 ]
  %18 = phi ptr [ %5, %4 ], [ %36, %94 ]
  %19 = ptrtoint ptr %18 to i64
  %20 = sub i64 %12, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, 3
  br i1 %22, label %23, label %99

23:                                               ; preds = %15
  %24 = getelementptr inbounds i8, ptr %18, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !14
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i8, ptr %18, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !14
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %26, 24
  %31 = shl nuw nsw i64 %29, 16
  %32 = getelementptr inbounds i8, ptr %18, i64 3
  %33 = load i8, ptr %32, align 1, !tbaa !14
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 8
  %36 = getelementptr inbounds i8, ptr %18, i64 4
  %37 = load i8, ptr %36, align 1, !tbaa !14
  %38 = zext i8 %37 to i64
  %39 = or disjoint i64 %31, %30
  %40 = or disjoint i64 %39, %38
  %41 = or disjoint i64 %40, %35
  %42 = icmp eq i64 %41, 0
  %43 = ptrtoint ptr %17 to i64
  br i1 %42, label %44, label %49

44:                                               ; preds = %23
  %45 = sub i64 %14, %43
  %46 = icmp slt i64 %45, 2
  br i1 %46, label %94, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 122, ptr %48, align 1, !tbaa !14
  br label %87

49:                                               ; preds = %23
  %50 = sub i64 %13, %43
  %51 = icmp sgt i64 %50, 5
  br i1 %51, label %52, label %83

52:                                               ; preds = %49
  %53 = udiv i64 %41, 614125
  %54 = trunc i64 %53 to i32
  %55 = udiv i32 %54, 85
  %56 = udiv i64 %41, 7225
  %57 = udiv i64 %41, 85
  %58 = trunc i32 %55 to i8
  %59 = add nuw nsw i8 %58, 33
  %60 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %59, ptr %60, align 1, !tbaa !14
  %61 = mul nuw nsw i32 %55, 171
  %62 = add nuw nsw i32 %61, %54
  %63 = trunc i32 %62 to i8
  %64 = add i8 %63, 33
  %65 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %64, ptr %65, align 1, !tbaa !14
  %66 = trunc i64 %56 to i32
  %67 = mul nuw nsw i32 %54, 171
  %68 = add nuw nsw i32 %67, %66
  %69 = trunc i32 %68 to i8
  %70 = add i8 %69, 33
  %71 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 %70, ptr %71, align 1, !tbaa !14
  %72 = trunc i64 %57 to i32
  %73 = mul nuw nsw i32 %66, 171
  %74 = add nuw nsw i32 %73, %72
  %75 = trunc i32 %74 to i8
  %76 = add i8 %75, 33
  %77 = getelementptr inbounds i8, ptr %17, i64 4
  store i8 %76, ptr %77, align 1, !tbaa !14
  %78 = trunc i64 %57 to i8
  %79 = mul i8 %78, -85
  %80 = add i8 %37, 33
  %81 = add i8 %80, %79
  %82 = getelementptr inbounds i8, ptr %17, i64 5
  store i8 %81, ptr %82, align 1, !tbaa !14
  br label %83

83:                                               ; preds = %49, %52
  %84 = phi i32 [ 0, %52 ], [ 2, %49 ]
  %85 = phi i32 [ %16, %52 ], [ 1, %49 ]
  %86 = phi ptr [ %82, %52 ], [ %17, %49 ]
  br i1 %51, label %87, label %94

87:                                               ; preds = %83, %47
  %88 = phi i32 [ %16, %47 ], [ %85, %83 ]
  %89 = phi ptr [ %48, %47 ], [ %86, %83 ]
  %90 = and i32 %21, 60
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = getelementptr inbounds i8, ptr %89, i64 1
  store i8 10, ptr %93, align 1, !tbaa !14
  br label %94

94:                                               ; preds = %87, %92, %44, %83
  %95 = phi i32 [ %84, %83 ], [ 2, %44 ], [ 0, %92 ], [ 0, %87 ]
  %96 = phi i32 [ %85, %83 ], [ 1, %44 ], [ %88, %92 ], [ %88, %87 ]
  %97 = phi ptr [ %86, %83 ], [ %17, %44 ], [ %93, %92 ], [ %89, %87 ]
  %98 = icmp eq i32 %95, 0
  br i1 %98, label %15, label %99, !llvm.loop !15

99:                                               ; preds = %94, %15
  %100 = phi i32 [ %96, %94 ], [ %16, %15 ]
  %101 = phi ptr [ %97, %94 ], [ %17, %15 ]
  %102 = icmp ne i32 %3, 0
  %103 = icmp eq i32 %100, 0
  %104 = select i1 %102, i1 %103, i1 false
  %105 = icmp slt i32 %21, 4
  %106 = and i1 %105, %104
  br i1 %106, label %107, label %160

107:                                              ; preds = %99
  %108 = ptrtoint ptr %11 to i64
  %109 = ptrtoint ptr %101 to i64
  %110 = sub i64 %108, %109
  %111 = icmp eq i32 %21, 0
  %112 = shl i64 %20, 32
  %113 = add i64 %112, 12884901888
  %114 = ashr exact i64 %113, 32
  %115 = select i1 %111, i64 2, i64 %114
  %116 = icmp slt i64 %110, %115
  br i1 %116, label %160, label %117

117:                                              ; preds = %107
  switch i32 %21, label %155 [
    i32 3, label %118
    i32 2, label %123
    i32 1, label %130
  ]

118:                                              ; preds = %117
  %119 = getelementptr inbounds i8, ptr %18, i64 3
  %120 = load i8, ptr %119, align 1, !tbaa !14
  %121 = zext i8 %120 to i64
  %122 = shl nuw nsw i64 %121, 8
  br label %123

123:                                              ; preds = %117, %118
  %124 = phi i64 [ 0, %117 ], [ %122, %118 ]
  %125 = getelementptr inbounds i8, ptr %18, i64 2
  %126 = load i8, ptr %125, align 1, !tbaa !14
  %127 = zext i8 %126 to i64
  %128 = shl nuw nsw i64 %127, 16
  %129 = add nuw nsw i64 %128, %124
  br label %130

130:                                              ; preds = %117, %123
  %131 = phi i64 [ 0, %117 ], [ %129, %123 ]
  %132 = ashr exact i64 %112, 32
  %133 = getelementptr inbounds i8, ptr %18, i64 %132
  %134 = icmp sgt i32 %21, -1
  br i1 %134, label %135, label %155

135:                                              ; preds = %130
  %136 = getelementptr inbounds i8, ptr %18, i64 1
  %137 = load i8, ptr %136, align 1, !tbaa !14
  %138 = zext i8 %137 to i64
  %139 = shl nuw nsw i64 %138, 24
  %140 = add nuw nsw i64 %139, %131
  br label %141

141:                                              ; preds = %135, %141
  %142 = phi i64 [ %153, %141 ], [ 52200625, %135 ]
  %143 = phi i64 [ %152, %141 ], [ %140, %135 ]
  %144 = phi ptr [ %150, %141 ], [ %101, %135 ]
  %145 = phi i32 [ %146, %141 ], [ %21, %135 ]
  %146 = add nsw i32 %145, -1
  %147 = udiv i64 %143, %142
  %148 = trunc i64 %147 to i8
  %149 = add i8 %148, 33
  %150 = getelementptr inbounds i8, ptr %144, i64 1
  store i8 %149, ptr %150, align 1, !tbaa !14
  %151 = mul nuw i64 %147, %142
  %152 = urem i64 %143, %142
  %153 = udiv i64 %142, 85
  %154 = icmp sgt i32 %145, 0
  br i1 %154, label %141, label %155, !llvm.loop !17

155:                                              ; preds = %141, %130, %117
  %156 = phi ptr [ %101, %117 ], [ %101, %130 ], [ %150, %141 ]
  %157 = phi ptr [ %18, %117 ], [ %133, %130 ], [ %133, %141 ]
  %158 = getelementptr inbounds i8, ptr %156, i64 1
  store i8 126, ptr %158, align 1, !tbaa !14
  %159 = getelementptr inbounds i8, ptr %156, i64 2
  store i8 62, ptr %159, align 1, !tbaa !14
  br label %160

160:                                              ; preds = %107, %155, %99
  %161 = phi i32 [ 0, %155 ], [ %100, %99 ], [ 1, %107 ]
  %162 = phi ptr [ %159, %155 ], [ %101, %99 ], [ %101, %107 ]
  %163 = phi ptr [ %157, %155 ], [ %18, %99 ], [ %18, %107 ]
  store ptr %163, ptr %1, align 8, !tbaa !5
  store ptr %162, ptr %6, align 8, !tbaa !10
  ret i32 %161
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @s_A85D_init(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.stream_A85D_state_s, ptr %0, i64 0, i32 4
  store i64 0, ptr %2, align 8, !tbaa !18
  %3 = getelementptr inbounds %struct.stream_A85D_state_s, ptr %0, i64 0, i32 3
  store i32 0, ptr %3, align 8, !tbaa !22
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_A85D_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.stream_A85D_state_s, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.stream_A85D_state_s, ptr %0, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !18
  %16 = ptrtoint ptr %11 to i64
  %17 = icmp eq i32 %3, 0
  %18 = ptrtoint ptr %11 to i64
  %19 = ptrtoint ptr %11 to i64
  br label %20

20:                                               ; preds = %118, %4
  %21 = phi i32 [ %13, %4 ], [ %119, %118 ]
  %22 = phi i64 [ %15, %4 ], [ %120, %118 ]
  %23 = phi i32 [ 0, %4 ], [ %121, %118 ]
  %24 = phi ptr [ %7, %4 ], [ %122, %118 ]
  %25 = phi ptr [ %5, %4 ], [ %123, %118 ]
  %26 = icmp ult ptr %25, %9
  br i1 %26, label %27, label %125

27:                                               ; preds = %20
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !14
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %30, -33
  %32 = icmp ult i32 %31, 85
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = ptrtoint ptr %24 to i64
  %35 = sub i64 %19, %34
  %36 = icmp slt i64 %35, 4
  br i1 %36, label %118, label %37

37:                                               ; preds = %33
  %38 = mul i64 %22, 85
  %39 = zext nneg i32 %31 to i64
  %40 = add i64 %38, %39
  %41 = add nsw i32 %21, 1
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %43, label %118

43:                                               ; preds = %37
  %44 = lshr i64 %40, 24
  %45 = trunc i64 %44 to i8
  %46 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %45, ptr %46, align 1, !tbaa !14
  %47 = lshr i64 %40, 16
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds i8, ptr %24, i64 2
  store i8 %48, ptr %49, align 1, !tbaa !14
  %50 = lshr i64 %40, 8
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds i8, ptr %24, i64 3
  store i8 %51, ptr %52, align 1, !tbaa !14
  %53 = trunc i64 %40 to i8
  %54 = getelementptr inbounds i8, ptr %24, i64 4
  store i8 %53, ptr %54, align 1, !tbaa !14
  br label %118

55:                                               ; preds = %27
  %56 = icmp eq i8 %29, 122
  %57 = icmp eq i32 %21, 0
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = ptrtoint ptr %24 to i64
  %61 = sub i64 %18, %60
  %62 = icmp slt i64 %61, 4
  br i1 %62, label %118, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %24, i64 4
  %65 = getelementptr inbounds i8, ptr %24, i64 1
  store i32 0, ptr %65, align 1
  br label %118

66:                                               ; preds = %55
  %67 = zext i8 %29 to i64
  %68 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !14
  %70 = icmp eq i8 %69, 102
  br i1 %70, label %118, label %71

71:                                               ; preds = %66
  %72 = icmp eq i8 %29, 126
  br i1 %72, label %73, label %118

73:                                               ; preds = %71
  %74 = icmp eq ptr %28, %9
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = select i1 %17, i32 %23, i32 -2
  %77 = select i1 %17, ptr %25, ptr %28
  br label %118

78:                                               ; preds = %73
  %79 = ptrtoint ptr %24 to i64
  %80 = sub i64 %16, %79
  %81 = trunc i64 %80 to i32
  %82 = add nsw i32 %21, -1
  %83 = icmp sgt i32 %82, %81
  br i1 %83, label %118, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds i8, ptr %25, i64 2
  %86 = load i8, ptr %85, align 1, !tbaa !14
  %87 = icmp eq i8 %86, 62
  br i1 %87, label %88, label %118

88:                                               ; preds = %84
  store ptr %24, ptr %6, align 8, !tbaa !10
  switch i32 %21, label %115 [
    i32 4, label %96
    i32 1, label %89
    i32 2, label %90
    i32 3, label %93
  ]

89:                                               ; preds = %88
  br label %115

90:                                               ; preds = %88
  %91 = mul i64 %22, 614125
  %92 = add i64 %91, 16777215
  br label %107

93:                                               ; preds = %88
  %94 = mul i64 %22, 7225
  %95 = add i64 %94, 65535
  br label %102

96:                                               ; preds = %88
  %97 = mul i64 %22, 85
  %98 = add i64 %97, 255
  %99 = lshr i64 %98, 8
  %100 = trunc i64 %99 to i8
  %101 = getelementptr inbounds i8, ptr %24, i64 3
  store i8 %100, ptr %101, align 1, !tbaa !14
  br label %102

102:                                              ; preds = %96, %93
  %103 = phi i64 [ %95, %93 ], [ %98, %96 ]
  %104 = lshr i64 %103, 16
  %105 = trunc i64 %104 to i8
  %106 = getelementptr inbounds i8, ptr %24, i64 2
  store i8 %105, ptr %106, align 1, !tbaa !14
  br label %107

107:                                              ; preds = %102, %90
  %108 = phi i64 [ %103, %102 ], [ %92, %90 ]
  %109 = lshr i64 %108, 24
  %110 = trunc i64 %109 to i8
  %111 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %110, ptr %111, align 1, !tbaa !14
  %112 = sext i32 %21 to i64
  %113 = getelementptr i8, ptr %24, i64 %112
  %114 = getelementptr i8, ptr %113, i64 -1
  store ptr %114, ptr %6, align 8, !tbaa !10
  br label %115

115:                                              ; preds = %88, %89, %107
  %116 = phi i32 [ -1, %88 ], [ -1, %107 ], [ -2, %89 ]
  %117 = load ptr, ptr %6, align 8, !tbaa !10
  br label %118

118:                                              ; preds = %43, %37, %66, %63, %71, %84, %78, %59, %33, %115, %75
  %119 = phi i32 [ %21, %75 ], [ %21, %115 ], [ %21, %33 ], [ 0, %59 ], [ %21, %78 ], [ %21, %84 ], [ %21, %71 ], [ 0, %43 ], [ %41, %37 ], [ 0, %63 ], [ %21, %66 ]
  %120 = phi i64 [ %22, %75 ], [ %22, %115 ], [ %22, %33 ], [ %22, %59 ], [ %22, %78 ], [ %22, %84 ], [ %22, %71 ], [ 0, %43 ], [ %40, %37 ], [ %22, %63 ], [ %22, %66 ]
  %121 = phi i32 [ %76, %75 ], [ %116, %115 ], [ 1, %33 ], [ 1, %59 ], [ 1, %78 ], [ -2, %84 ], [ -2, %71 ], [ %23, %43 ], [ %23, %37 ], [ %23, %63 ], [ %23, %66 ]
  %122 = phi ptr [ %24, %75 ], [ %117, %115 ], [ %24, %33 ], [ %24, %59 ], [ %24, %78 ], [ %24, %84 ], [ %24, %71 ], [ %54, %43 ], [ %24, %37 ], [ %64, %63 ], [ %24, %66 ]
  %123 = phi ptr [ %77, %75 ], [ %85, %115 ], [ %25, %33 ], [ %25, %59 ], [ %25, %78 ], [ %85, %84 ], [ %28, %71 ], [ %28, %43 ], [ %28, %37 ], [ %28, %63 ], [ %28, %66 ]
  %124 = phi i1 [ false, %75 ], [ false, %115 ], [ false, %33 ], [ false, %59 ], [ false, %78 ], [ false, %84 ], [ false, %71 ], [ true, %43 ], [ true, %37 ], [ true, %63 ], [ true, %66 ]
  br i1 %124, label %20, label %125

125:                                              ; preds = %118, %20
  %126 = phi i32 [ %119, %118 ], [ %21, %20 ]
  %127 = phi i64 [ %120, %118 ], [ %22, %20 ]
  %128 = phi i32 [ %121, %118 ], [ %23, %20 ]
  %129 = phi ptr [ %122, %118 ], [ %24, %20 ]
  %130 = phi ptr [ %123, %118 ], [ %25, %20 ]
  store ptr %129, ptr %6, align 8, !tbaa !10
  %131 = icmp eq i32 %128, 0
  %132 = icmp ne i32 %3, 0
  %133 = and i1 %132, %131
  br i1 %133, label %134, label %168

134:                                              ; preds = %125
  %135 = ptrtoint ptr %11 to i64
  %136 = ptrtoint ptr %129 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  %139 = add nsw i32 %126, -1
  %140 = icmp sgt i32 %139, %138
  br i1 %140, label %168, label %141

141:                                              ; preds = %134
  switch i32 %126, label %168 [
    i32 4, label %149
    i32 1, label %142
    i32 2, label %143
    i32 3, label %146
  ]

142:                                              ; preds = %141
  br label %168

143:                                              ; preds = %141
  %144 = mul i64 %127, 614125
  %145 = add i64 %144, 16777215
  br label %160

146:                                              ; preds = %141
  %147 = mul i64 %127, 7225
  %148 = add i64 %147, 65535
  br label %155

149:                                              ; preds = %141
  %150 = mul i64 %127, 85
  %151 = add i64 %150, 255
  %152 = lshr i64 %151, 8
  %153 = trunc i64 %152 to i8
  %154 = getelementptr inbounds i8, ptr %129, i64 3
  store i8 %153, ptr %154, align 1, !tbaa !14
  br label %155

155:                                              ; preds = %149, %146
  %156 = phi i64 [ %148, %146 ], [ %151, %149 ]
  %157 = lshr i64 %156, 16
  %158 = trunc i64 %157 to i8
  %159 = getelementptr inbounds i8, ptr %129, i64 2
  store i8 %158, ptr %159, align 1, !tbaa !14
  br label %160

160:                                              ; preds = %155, %143
  %161 = phi i64 [ %156, %155 ], [ %145, %143 ]
  %162 = lshr i64 %161, 24
  %163 = trunc i64 %162 to i8
  %164 = getelementptr inbounds i8, ptr %129, i64 1
  store i8 %163, ptr %164, align 1, !tbaa !14
  %165 = sext i32 %126 to i64
  %166 = getelementptr i8, ptr %129, i64 %165
  %167 = getelementptr i8, ptr %166, i64 -1
  store ptr %167, ptr %6, align 8, !tbaa !10
  br label %168

168:                                              ; preds = %160, %142, %141, %134, %125
  %169 = phi i32 [ %128, %125 ], [ 1, %134 ], [ -1, %141 ], [ -1, %160 ], [ -2, %142 ]
  store ptr %130, ptr %1, align 8, !tbaa !5
  store i32 %126, ptr %12, align 8, !tbaa !22
  store i64 %127, ptr %14, align 8, !tbaa !18
  ret i32 %169
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_BT_process(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %7 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = tail call i32 @llvm.umin.i32(i32 %13, i32 %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %4, %22
  %23 = phi i32 [ %26, %22 ], [ %20, %4 ]
  %24 = phi ptr [ %27, %22 ], [ %5, %4 ]
  %25 = phi ptr [ %32, %22 ], [ %7, %4 ]
  %26 = add i32 %23, -1
  %27 = getelementptr inbounds i8, ptr %24, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !14
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds %struct.stream_BT_state_s, ptr %0, i64 0, i32 3, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !14
  %32 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %31, ptr %32, align 1, !tbaa !14
  %33 = icmp eq i32 %26, 0
  br i1 %33, label %34, label %22, !llvm.loop !23

34:                                               ; preds = %22, %4
  %35 = phi ptr [ %7, %4 ], [ %32, %22 ]
  %36 = phi ptr [ %5, %4 ], [ %27, %22 ]
  %37 = icmp ugt i32 %13, %19
  %38 = zext i1 %37 to i32
  store ptr %36, ptr %1, align 8, !tbaa !5
  store ptr %35, ptr %6, align 8, !tbaa !10
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 8}
!11 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!12 = !{!6, !7, i64 8}
!13 = !{!11, !7, i64 16}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !16}
!18 = !{!19, !21, i64 32}
!19 = !{!"stream_A85D_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !20, i64 24, !21, i64 32}
!20 = !{!"int", !8, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{!19, !20, i64 24}
!23 = distinct !{!23, !16}
