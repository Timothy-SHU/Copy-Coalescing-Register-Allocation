; ModuleID = 'ibnum.c'
source_filename = "ibnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }

@enc_num_bytes = dso_local local_unnamed_addr constant [17 x i8] c"\04\04\02\04\00\00\00\00\04\04\02\04\00\00\00\00\10", align 16
@binary_scale = internal unnamed_addr constant [32 x double] [double 1.000000e+00, double 5.000000e-01, double 2.500000e-01, double 1.250000e-01, double 6.250000e-02, double 3.125000e-02, double 1.562500e-02, double 7.812500e-03, double 3.906250e-03, double 0x3F60000000000000, double 0x3F50000000000000, double 0x3F40000000000000, double 0x3F30000000000000, double 0x3F20000000000000, double 0x3F10000000000000, double 0x3F00000000000000, double 0x3EF0000000000000, double 0x3EE0000000000000, double 0x3ED0000000000000, double 0x3EC0000000000000, double 0x3EB0000000000000, double 0x3EA0000000000000, double 0x3E90000000000000, double 0x3E80000000000000, double 0x3E70000000000000, double 0x3E60000000000000, double 0x3E50000000000000, double 0x3E40000000000000, double 0x3E30000000000000, double 0x3E20000000000000, double 0x3E10000000000000, double 0x3E00000000000000], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @num_array_format(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %3, label %44 [
    i8 18, label %4
    i8 4, label %45
    i8 5, label %45
    i8 6, label %45
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !8
  %12 = icmp ult i16 %11, 4
  br i1 %12, label %45, label %13

13:                                               ; preds = %4
  %14 = load i8, ptr %6, align 1, !tbaa !5
  %15 = icmp eq i8 %14, -107
  %16 = and i32 %9, 126
  %17 = icmp ult i32 %16, 50
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %45

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %6, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %6, i64 3
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = zext i8 %24 to i32
  %26 = icmp slt i8 %8, 0
  %27 = shl nuw nsw i32 %25, 8
  %28 = or disjoint i32 %27, %22
  %29 = shl nuw nsw i32 %22, 8
  %30 = or disjoint i32 %29, %25
  %31 = select i1 %26, i32 %28, i32 %30
  %32 = shl nuw i32 %31, 16
  %33 = ashr exact i32 %32, 16
  %34 = zext i16 %11 to i32
  %35 = add nsw i32 %34, -4
  %36 = lshr i32 %9, 4
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [17 x i8], ptr @enc_num_bytes, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !5
  %40 = zext i8 %39 to i32
  %41 = sdiv i32 %35, %40
  %42 = icmp eq i32 %41, %33
  %43 = select i1 %42, i32 %9, i32 -15
  br label %45

44:                                               ; preds = %1
  br label %45

45:                                               ; preds = %1, %1, %1, %13, %4, %19, %44
  %46 = phi i32 [ -20, %44 ], [ -15, %13 ], [ -15, %4 ], [ %43, %19 ], [ 256, %1 ], [ 256, %1 ], [ 256, %1 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext i16 @sdecodeshort(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i8, ptr %0, align 1, !tbaa !5
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = zext i8 %6 to i32
  %8 = icmp sgt i32 %1, 127
  %9 = shl nuw nsw i32 %7, 8
  %10 = or disjoint i32 %9, %4
  %11 = shl nuw nsw i32 %4, 8
  %12 = or disjoint i32 %11, %7
  %13 = select i1 %8, i32 %10, i32 %12
  %14 = trunc i32 %13 to i16
  ret i16 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @num_array_size(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 256
  %4 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !8
  %6 = zext i16 %5 to i32
  br i1 %3, label %15, label %7

7:                                                ; preds = %2
  %8 = add nsw i32 %6, -4
  %9 = ashr i32 %1, 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [17 x i8], ptr @enc_num_bytes, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = sdiv i32 %8, %13
  br label %15

15:                                               ; preds = %2, %7
  %16 = phi i32 [ %14, %7 ], [ %6, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @num_array_get(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq i32 %1, 256
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  %8 = tail call i32 @array_get(ptr noundef %0, i64 noundef %7, ptr noundef %3) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %3, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = icmp eq i8 %12, 16
  %14 = select i1 %13, i32 16, i32 -15
  %15 = icmp eq i8 %12, 11
  %16 = select i1 %15, i32 11, i32 %14
  br label %37

17:                                               ; preds = %4
  %18 = ashr i32 %1, 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [17 x i8], ptr @enc_num_bytes, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !8
  %25 = zext i16 %24 to i32
  %26 = add nsw i32 %25, -4
  %27 = udiv i32 %26, %22
  %28 = icmp ugt i32 %27, %2
  br i1 %28, label %29, label %37

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds i8, ptr %31, i64 4
  %33 = mul i32 %22, %2
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %32, i64 %34
  %36 = tail call i32 @sdecode_number(ptr noundef nonnull %35, i32 noundef %1, ptr noundef %3), !range !12
  br label %37

37:                                               ; preds = %29, %17, %6, %10
  %38 = phi i32 [ 14, %6 ], [ %16, %10 ], [ %36, %29 ], [ 14, %17 ]
  ret i32 %38
}

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @sdecode_number(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = lshr i32 %1, 4
  %5 = and i32 %4, 23
  switch i32 %5, label %154 [
    i32 0, label %6
    i32 1, label %6
    i32 2, label %81
    i32 3, label %109
  ]

6:                                                ; preds = %3, %3
  %7 = and i32 %1, 31
  %8 = icmp eq i32 %7, 0
  %9 = load i8, ptr %0, align 1, !tbaa !5
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = getelementptr inbounds i8, ptr %0, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = getelementptr inbounds i8, ptr %0, i64 3
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = icmp sgt i32 %1, 127
  br i1 %8, label %17, label %46

17:                                               ; preds = %6
  br i1 %16, label %18, label %29

18:                                               ; preds = %17
  %19 = zext i8 %11 to i64
  %20 = zext i8 %15 to i64
  %21 = shl nuw nsw i64 %20, 24
  %22 = zext i8 %13 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = shl nuw nsw i64 %19, 8
  %25 = zext i8 %9 to i64
  %26 = or disjoint i64 %24, %25
  %27 = or disjoint i64 %26, %23
  %28 = or disjoint i64 %27, %21
  br label %40

29:                                               ; preds = %17
  %30 = zext i8 %13 to i64
  %31 = zext i8 %9 to i64
  %32 = shl nuw nsw i64 %31, 24
  %33 = zext i8 %11 to i64
  %34 = shl nuw nsw i64 %33, 16
  %35 = or disjoint i64 %34, %32
  %36 = shl nuw nsw i64 %30, 8
  %37 = or disjoint i64 %35, %36
  %38 = zext i8 %15 to i64
  %39 = or disjoint i64 %37, %38
  br label %40

40:                                               ; preds = %18, %29
  %41 = phi i64 [ %28, %18 ], [ %39, %29 ]
  %42 = and i64 %41, 2147483647
  %43 = and i64 %41, 2147483648
  %44 = sub nsw i64 %42, %43
  %45 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  store i64 %44, ptr %45, align 8, !tbaa !5
  br label %154

46:                                               ; preds = %6
  br i1 %16, label %47, label %58

47:                                               ; preds = %46
  %48 = zext i8 %11 to i64
  %49 = zext i8 %15 to i64
  %50 = shl nuw nsw i64 %49, 24
  %51 = zext i8 %13 to i64
  %52 = shl nuw nsw i64 %51, 16
  %53 = shl nuw nsw i64 %48, 8
  %54 = zext i8 %9 to i64
  %55 = or disjoint i64 %53, %54
  %56 = or disjoint i64 %55, %52
  %57 = or disjoint i64 %56, %50
  br label %69

58:                                               ; preds = %46
  %59 = zext i8 %13 to i64
  %60 = zext i8 %9 to i64
  %61 = shl nuw nsw i64 %60, 24
  %62 = zext i8 %11 to i64
  %63 = shl nuw nsw i64 %62, 16
  %64 = or disjoint i64 %63, %61
  %65 = shl nuw nsw i64 %59, 8
  %66 = or disjoint i64 %64, %65
  %67 = zext i8 %15 to i64
  %68 = or disjoint i64 %66, %67
  br label %69

69:                                               ; preds = %47, %58
  %70 = phi i64 [ %57, %47 ], [ %68, %58 ]
  %71 = and i64 %70, 2147483647
  %72 = and i64 %70, 2147483648
  %73 = sub nsw i64 %71, %72
  %74 = sitofp i64 %73 to double
  %75 = zext nneg i32 %7 to i64
  %76 = getelementptr inbounds [32 x double], ptr @binary_scale, i64 0, i64 %75
  %77 = load double, ptr %76, align 8, !tbaa !13
  %78 = fmul double %77, %74
  %79 = fptrunc double %78 to float
  %80 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  store float %79, ptr %80, align 8, !tbaa !5
  br label %154

81:                                               ; preds = %3
  %82 = and i32 %1, 15
  %83 = icmp eq i32 %82, 0
  %84 = load i8, ptr %0, align 1, !tbaa !5
  %85 = zext i8 %84 to i32
  %86 = getelementptr inbounds i8, ptr %0, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !5
  %88 = zext i8 %87 to i32
  %89 = icmp sgt i32 %1, 127
  %90 = shl nuw nsw i32 %88, 8
  %91 = or disjoint i32 %90, %85
  %92 = shl nuw nsw i32 %85, 8
  %93 = or disjoint i32 %92, %88
  %94 = select i1 %89, i32 %91, i32 %93
  br i1 %83, label %95, label %100

95:                                               ; preds = %81
  %96 = zext nneg i32 %94 to i64
  %97 = shl nuw i64 %96, 48
  %98 = ashr exact i64 %97, 48
  %99 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  store i64 %98, ptr %99, align 8, !tbaa !5
  br label %154

100:                                              ; preds = %81
  %101 = trunc i32 %94 to i16
  %102 = sitofp i16 %101 to double
  %103 = zext nneg i32 %82 to i64
  %104 = getelementptr inbounds [32 x double], ptr @binary_scale, i64 0, i64 %103
  %105 = load double, ptr %104, align 8, !tbaa !13
  %106 = fmul double %105, %102
  %107 = fptrunc double %106 to float
  %108 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  store float %107, ptr %108, align 8, !tbaa !5
  br label %154

109:                                              ; preds = %3
  %110 = icmp eq i32 %1, 49
  br i1 %110, label %149, label %111

111:                                              ; preds = %109
  %112 = load i8, ptr %0, align 1, !tbaa !5
  %113 = getelementptr inbounds i8, ptr %0, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = getelementptr inbounds i8, ptr %0, i64 2
  %116 = load i8, ptr %115, align 1, !tbaa !5
  %117 = getelementptr inbounds i8, ptr %0, i64 3
  %118 = load i8, ptr %117, align 1, !tbaa !5
  %119 = icmp sgt i32 %1, 127
  br i1 %119, label %120, label %131

120:                                              ; preds = %111
  %121 = zext i8 %114 to i64
  %122 = zext i8 %118 to i64
  %123 = shl nuw nsw i64 %122, 24
  %124 = zext i8 %116 to i64
  %125 = shl nuw nsw i64 %124, 16
  %126 = shl nuw nsw i64 %121, 8
  %127 = zext i8 %112 to i64
  %128 = or disjoint i64 %126, %127
  %129 = or disjoint i64 %128, %125
  %130 = or disjoint i64 %129, %123
  br label %142

131:                                              ; preds = %111
  %132 = zext i8 %116 to i64
  %133 = zext i8 %112 to i64
  %134 = shl nuw nsw i64 %133, 24
  %135 = zext i8 %114 to i64
  %136 = shl nuw nsw i64 %135, 16
  %137 = or disjoint i64 %136, %134
  %138 = shl nuw nsw i64 %132, 8
  %139 = or disjoint i64 %137, %138
  %140 = zext i8 %118 to i64
  %141 = or disjoint i64 %139, %140
  br label %142

142:                                              ; preds = %131, %120
  %143 = phi i64 [ %130, %120 ], [ %141, %131 ]
  %144 = and i64 %143, 2147483647
  %145 = and i64 %143, 2147483648
  %146 = sub nsw i64 %144, %145
  %147 = trunc i64 %146 to i32
  %148 = bitcast i32 %147 to float
  br label %151

149:                                              ; preds = %109
  %150 = load float, ptr %0, align 1
  br label %151

151:                                              ; preds = %142, %149
  %152 = phi float [ %148, %142 ], [ %150, %149 ]
  %153 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  store float %152, ptr %153, align 8, !tbaa !5
  br label %154

154:                                              ; preds = %3, %151, %100, %95, %69, %40
  %155 = phi i32 [ 16, %151 ], [ 11, %95 ], [ 16, %100 ], [ 11, %40 ], [ 16, %69 ], [ -18, %3 ]
  ret i32 %155
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @sdecodelong(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i8, ptr %0, align 1, !tbaa !5
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = getelementptr inbounds i8, ptr %0, i64 2
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = getelementptr inbounds i8, ptr %0, i64 3
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp sgt i32 %1, 127
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = zext i8 %5 to i64
  %13 = zext i8 %9 to i64
  %14 = shl nuw nsw i64 %13, 24
  %15 = zext i8 %7 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %12, 8
  %18 = zext i8 %3 to i64
  %19 = or disjoint i64 %17, %18
  %20 = or disjoint i64 %19, %16
  %21 = or disjoint i64 %20, %14
  br label %33

22:                                               ; preds = %2
  %23 = zext i8 %7 to i64
  %24 = zext i8 %3 to i64
  %25 = shl nuw nsw i64 %24, 24
  %26 = zext i8 %5 to i64
  %27 = shl nuw nsw i64 %26, 16
  %28 = or disjoint i64 %27, %25
  %29 = shl nuw nsw i64 %23, 8
  %30 = or disjoint i64 %28, %29
  %31 = zext i8 %9 to i64
  %32 = or disjoint i64 %30, %31
  br label %33

33:                                               ; preds = %22, %11
  %34 = phi i64 [ %21, %11 ], [ %32, %22 ]
  %35 = and i64 %34, 2147483647
  %36 = and i64 %34, 2147483648
  %37 = sub nsw i64 %35, %36
  ret i64 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @sdecodefloat(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 49
  br i1 %3, label %42, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1, !tbaa !5
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = getelementptr inbounds i8, ptr %0, i64 2
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = getelementptr inbounds i8, ptr %0, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = icmp sgt i32 %1, 127
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = zext i8 %7 to i64
  %15 = zext i8 %11 to i64
  %16 = shl nuw nsw i64 %15, 24
  %17 = zext i8 %9 to i64
  %18 = shl nuw nsw i64 %17, 16
  %19 = shl nuw nsw i64 %14, 8
  %20 = zext i8 %5 to i64
  %21 = or disjoint i64 %19, %20
  %22 = or disjoint i64 %21, %18
  %23 = or disjoint i64 %22, %16
  br label %35

24:                                               ; preds = %4
  %25 = zext i8 %9 to i64
  %26 = zext i8 %5 to i64
  %27 = shl nuw nsw i64 %26, 24
  %28 = zext i8 %7 to i64
  %29 = shl nuw nsw i64 %28, 16
  %30 = or disjoint i64 %29, %27
  %31 = shl nuw nsw i64 %25, 8
  %32 = or disjoint i64 %30, %31
  %33 = zext i8 %11 to i64
  %34 = or disjoint i64 %32, %33
  br label %35

35:                                               ; preds = %13, %24
  %36 = phi i64 [ %23, %13 ], [ %34, %24 ]
  %37 = and i64 %36, 2147483647
  %38 = and i64 %36, 2147483648
  %39 = sub nsw i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = bitcast i32 %40 to float
  br label %44

42:                                               ; preds = %2
  %43 = load float, ptr %0, align 1
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi float [ %41, %35 ], [ %43, %42 ]
  ret float %45
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!12 = !{i32 -18, i32 17}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !6, i64 0}
