; ModuleID = 'src/tif_open.c'
source_filename = "src/tif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [15 x i8] c"\22%s\22: Bad mode\00", align 1
@TIFFClientOpen.module = internal constant [15 x i8] c"TIFFClientOpen\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: Out of memory (TIFF structure)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cannot read TIFF header\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error writing TIFF header\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Not a TIFF file, bad magic number %d (0x%x)\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Not a TIFF file, bad version number %d (0x%x)\00", align 1
@typemask = internal constant [13 x i64] [i64 0, i64 255, i64 4294967295, i64 65535, i64 4294967295, i64 4294967295, i64 255, i64 255, i64 65535, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295], align 16
@bigTypeshift = internal constant [13 x i32] [i32 0, i32 24, i32 0, i32 16, i32 0, i32 0, i32 24, i32 24, i32 16, i32 0, i32 0, i32 0, i32 0], align 16
@litTypeshift = internal constant [13 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @_TIFFgetMode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !5
  switch i8 %3, label %12 [
    i8 114, label %4
    i8 119, label %9
    i8 97, label %9
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 43
  %8 = select i1 %7, i32 2, i32 0
  br label %13

9:                                                ; preds = %2, %2
  %10 = icmp eq i8 %3, 119
  %11 = select i1 %10, i32 578, i32 66
  br label %13

12:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %0) #5
  br label %13

13:                                               ; preds = %9, %12, %4
  %14 = phi i32 [ -1, %12 ], [ %8, %4 ], [ %11, %9 ]
  ret i32 %14
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @TIFFClientOpen(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = load i8, ptr %1, align 1, !tbaa !5
  switch i8 %11, label %20 [
    i8 114, label %12
    i8 119, label %17
    i8 97, label %17
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, ptr %1, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 43
  %16 = select i1 %15, i32 2, i32 0
  br label %21

17:                                               ; preds = %10, %10
  %18 = icmp eq i8 %11, 119
  %19 = select i1 %18, i32 578, i32 66
  br label %21

20:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFClientOpen.module, ptr noundef nonnull @.str, ptr noundef nonnull %1) #5
  br label %21

21:                                               ; preds = %12, %17, %20
  %22 = phi i32 [ -1, %20 ], [ %16, %12 ], [ %19, %17 ]
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %189, label %24

24:                                               ; preds = %21
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #6
  %26 = trunc i64 %25 to i32
  %27 = add i32 %26, 881
  %28 = tail call ptr @_TIFFmalloc(i32 noundef %27) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFClientOpen.module, ptr noundef nonnull @.str.1, ptr noundef %0) #5
  br label %189

31:                                               ; preds = %24
  tail call void @_TIFFmemset(ptr noundef %28, i32 noundef 0, i32 noundef 880) #5
  %32 = getelementptr inbounds i8, ptr %28, i64 880
  store ptr %32, ptr %28, align 8, !tbaa !8
  %33 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) %0) #5
  %34 = and i32 %22, -577
  %35 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 2
  store i32 %34, ptr %35, align 4, !tbaa !17
  %36 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 12
  store i16 -1, ptr %36, align 4, !tbaa !18
  %37 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 14
  store i32 0, ptr %37, align 4, !tbaa !19
  %38 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 13
  store i32 -1, ptr %38, align 8, !tbaa !20
  %39 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 11
  store i32 -1, ptr %39, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 48
  store ptr %2, ptr %40, align 8, !tbaa !22
  %41 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 49
  store ptr %3, ptr %41, align 8, !tbaa !23
  %42 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 50
  store ptr %4, ptr %42, align 8, !tbaa !24
  %43 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 51
  store ptr %5, ptr %43, align 8, !tbaa !25
  %44 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 52
  store ptr %6, ptr %44, align 8, !tbaa !26
  %45 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 53
  store ptr %7, ptr %45, align 8, !tbaa !27
  %46 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 46
  store ptr %8, ptr %46, align 8, !tbaa !28
  %47 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 47
  store ptr %9, ptr %47, align 8, !tbaa !29
  tail call void @_TIFFSetDefaultCompressionState(ptr noundef nonnull %28) #5
  %48 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 3
  %49 = icmp eq i32 %22, 0
  %50 = select i1 %49, i32 34817, i32 1
  store i32 %50, ptr %48, align 8, !tbaa !30
  %51 = and i32 %22, 64
  %52 = icmp eq i32 %51, 0
  br label %53

53:                                               ; preds = %90, %31
  %54 = phi ptr [ %1, %31 ], [ %91, %90 ]
  %55 = load i8, ptr %54, align 1, !tbaa !5
  switch i8 %55, label %90 [
    i8 0, label %92
    i8 98, label %56
    i8 99, label %84
    i8 66, label %60
    i8 76, label %64
    i8 72, label %68
    i8 77, label %72
    i8 109, label %76
    i8 67, label %80
  ]

56:                                               ; preds = %53
  br i1 %52, label %90, label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %48, align 8, !tbaa !30
  %59 = or i32 %58, 128
  br label %88

60:                                               ; preds = %53
  %61 = load i32, ptr %48, align 8, !tbaa !30
  %62 = and i32 %61, -4
  %63 = or disjoint i32 %62, 1
  br label %88

64:                                               ; preds = %53
  %65 = load i32, ptr %48, align 8, !tbaa !30
  %66 = and i32 %65, -4
  %67 = or disjoint i32 %66, 2
  br label %88

68:                                               ; preds = %53
  %69 = load i32, ptr %48, align 8, !tbaa !30
  %70 = and i32 %69, -4
  %71 = or disjoint i32 %70, 1
  br label %88

72:                                               ; preds = %53
  br i1 %49, label %73, label %90

73:                                               ; preds = %72
  %74 = load i32, ptr %48, align 8, !tbaa !30
  %75 = or i32 %74, 2048
  br label %88

76:                                               ; preds = %53
  br i1 %49, label %77, label %90

77:                                               ; preds = %76
  %78 = load i32, ptr %48, align 8, !tbaa !30
  %79 = and i32 %78, -2049
  br label %88

80:                                               ; preds = %53
  br i1 %49, label %81, label %90

81:                                               ; preds = %80
  %82 = load i32, ptr %48, align 8, !tbaa !30
  %83 = or i32 %82, 32768
  br label %88

84:                                               ; preds = %53
  br i1 %49, label %85, label %90

85:                                               ; preds = %84
  %86 = load i32, ptr %48, align 8, !tbaa !30
  %87 = and i32 %86, -32769
  br label %88

88:                                               ; preds = %85, %81, %77, %73, %57, %68, %64, %60
  %89 = phi i32 [ %63, %60 ], [ %67, %64 ], [ %71, %68 ], [ %59, %57 ], [ %75, %73 ], [ %79, %77 ], [ %83, %81 ], [ %87, %85 ]
  store i32 %89, ptr %48, align 8, !tbaa !30
  br label %90

90:                                               ; preds = %88, %53, %56, %72, %76, %80, %84
  %91 = getelementptr inbounds i8, ptr %54, i64 1
  br label %53, !llvm.loop !31

92:                                               ; preds = %53
  %93 = load ptr, ptr %41, align 8, !tbaa !23
  %94 = load ptr, ptr %40, align 8, !tbaa !22
  %95 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 7
  %96 = tail call i32 %93(ptr noundef %94, ptr noundef nonnull %95, i32 noundef 8) #5
  %97 = icmp eq i32 %96, 8
  br i1 %97, label %130, label %98

98:                                               ; preds = %92
  %99 = load i32, ptr %35, align 4, !tbaa !17
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  br label %188

102:                                              ; preds = %98
  %103 = load i32, ptr %48, align 8, !tbaa !30
  %104 = and i32 %103, 128
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, i16 18761, i16 19789
  store i16 %106, ptr %95, align 8, !tbaa !33
  %107 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 7, i32 1
  store i16 42, ptr %107, align 2, !tbaa !34
  br i1 %105, label %109, label %108

108:                                              ; preds = %102
  tail call void @TIFFSwabShort(ptr noundef nonnull %107) #5
  br label %109

109:                                              ; preds = %108, %102
  %110 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 7, i32 2
  store i32 0, ptr %110, align 4, !tbaa !35
  %111 = load ptr, ptr %42, align 8, !tbaa !24
  %112 = load ptr, ptr %40, align 8, !tbaa !22
  %113 = tail call i32 %111(ptr noundef %112, ptr noundef nonnull %95, i32 noundef 8) #5
  %114 = icmp eq i32 %113, 8
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  br label %188

116:                                              ; preds = %109
  %117 = load i16, ptr %95, align 8, !tbaa !33
  %118 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 10
  store ptr @typemask, ptr %118, align 8, !tbaa !36
  %119 = icmp eq i16 %117, 19789
  %120 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 9
  br i1 %119, label %121, label %124

121:                                              ; preds = %116
  store ptr @bigTypeshift, ptr %120, align 8, !tbaa !37
  %122 = load i32, ptr %48, align 8, !tbaa !30
  %123 = or i32 %122, 128
  store i32 %123, ptr %48, align 8, !tbaa !30
  br label %125

124:                                              ; preds = %116
  store ptr @litTypeshift, ptr %120, align 8, !tbaa !37
  br label %125

125:                                              ; preds = %121, %124
  %126 = tail call i32 @TIFFDefaultDirectory(ptr noundef nonnull %28) #5
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %188, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 4
  store i32 0, ptr %129, align 4, !tbaa !38
  br label %191

130:                                              ; preds = %92
  %131 = load i16, ptr %95, align 8, !tbaa !33
  switch i16 %131, label %132 [
    i16 19789, label %134
    i16 18761, label %134
  ]

132:                                              ; preds = %130
  %133 = zext i16 %131 to i32
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %133, i32 noundef %133) #5
  br label %188

134:                                              ; preds = %130, %130
  %135 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 10
  store ptr @typemask, ptr %135, align 8, !tbaa !36
  %136 = icmp eq i16 %131, 19789
  %137 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 9
  br i1 %136, label %138, label %141

138:                                              ; preds = %134
  store ptr @bigTypeshift, ptr %137, align 8, !tbaa !37
  %139 = load i32, ptr %48, align 8, !tbaa !30
  %140 = or i32 %139, 128
  store i32 %140, ptr %48, align 8, !tbaa !30
  br label %142

141:                                              ; preds = %134
  store ptr @litTypeshift, ptr %137, align 8, !tbaa !37
  br label %142

142:                                              ; preds = %138, %141
  %143 = load i32, ptr %48, align 8, !tbaa !30
  %144 = and i32 %143, 128
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 7, i32 1
  tail call void @TIFFSwabShort(ptr noundef nonnull %147) #5
  %148 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 7, i32 2
  tail call void @TIFFSwabLong(ptr noundef nonnull %148) #5
  br label %149

149:                                              ; preds = %146, %142
  %150 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 7, i32 1
  %151 = load i16, ptr %150, align 2, !tbaa !34
  %152 = icmp eq i16 %151, 42
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = zext i16 %151 to i32
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %154, i32 noundef %154) #5
  br label %188

155:                                              ; preds = %149
  %156 = load i32, ptr %48, align 8, !tbaa !30
  %157 = or i32 %156, 512
  store i32 %157, ptr %48, align 8, !tbaa !30
  %158 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 40
  store ptr null, ptr %158, align 8, !tbaa !39
  %159 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 42
  store ptr null, ptr %159, align 8, !tbaa !40
  %160 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 41
  store i32 0, ptr %160, align 8, !tbaa !41
  %161 = load i8, ptr %1, align 1, !tbaa !5
  switch i8 %161, label %188 [
    i8 114, label %162
    i8 97, label %185
  ]

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 7, i32 2
  %164 = load i32, ptr %163, align 4, !tbaa !35
  %165 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 5
  store i32 %164, ptr %165, align 8, !tbaa !42
  %166 = and i32 %156, 2048
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %178, label %168

168:                                              ; preds = %162
  %169 = load ptr, ptr %46, align 8, !tbaa !28
  %170 = load ptr, ptr %40, align 8, !tbaa !22
  %171 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 44
  %172 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 45
  %173 = tail call i32 %169(ptr noundef %170, ptr noundef nonnull %171, ptr noundef nonnull %172) #5
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load i32, ptr %48, align 8, !tbaa !30
  %177 = and i32 %176, -2049
  store i32 %177, ptr %48, align 8, !tbaa !30
  br label %178

178:                                              ; preds = %175, %168, %162
  %179 = tail call i32 @TIFFReadDirectory(ptr noundef nonnull %28) #5
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 43
  store i32 -1, ptr %182, align 8, !tbaa !43
  %183 = load i32, ptr %48, align 8, !tbaa !30
  %184 = or i32 %183, 16
  store i32 %184, ptr %48, align 8, !tbaa !30
  br label %191

185:                                              ; preds = %155
  %186 = tail call i32 @TIFFDefaultDirectory(ptr noundef nonnull %28) #5
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %155, %178, %185, %125, %153, %132, %115, %101
  store i32 0, ptr %35, align 4, !tbaa !17
  tail call void @TIFFClose(ptr noundef nonnull %28) #5
  br label %191

189:                                              ; preds = %21, %30
  %190 = tail call i32 %6(ptr noundef %2) #5
  br label %191

191:                                              ; preds = %185, %189, %188, %181, %128
  %192 = phi ptr [ null, %189 ], [ null, %188 ], [ %28, %181 ], [ %28, %128 ], [ %28, %185 ]
  ret ptr %192
}

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

declare void @_TIFFSetDefaultCompressionState(ptr noundef) local_unnamed_addr #1

declare void @TIFFSwabShort(ptr noundef) local_unnamed_addr #1

declare i32 @TIFFDefaultDirectory(ptr noundef) local_unnamed_addr #1

declare void @TIFFSwabLong(ptr noundef) local_unnamed_addr #1

declare i32 @TIFFReadDirectory(ptr noundef) local_unnamed_addr #1

declare void @TIFFClose(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @TIFFFileName(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFFileno(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !44
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFGetMode(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !17
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFIsTiled(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !30
  %4 = lshr i32 %3, 10
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFCurrentRow(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !21
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i16 @TIFFCurrentDirectory(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 12
  %3 = load i16, ptr %2, align 4, !tbaa !18
  ret i16 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFCurrentStrip(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !20
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFCurrentTile(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 19
  %3 = load i32, ptr %2, align 8, !tbaa !45
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFIsByteSwapped(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !30
  %4 = lshr i32 %3, 7
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFIsUpSampled(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !30
  %4 = lshr i32 %3, 14
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFIsMSB2LSB(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !30
  %4 = and i32 %3, 1
  ret i32 %4
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"tiff", !10, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !12, i64 32, !16, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !11, i64 536, !13, i64 540, !11, i64 544, !11, i64 548, !11, i64 552, !13, i64 556, !11, i64 560, !11, i64 564, !11, i64 568, !11, i64 572, !10, i64 576, !10, i64 584, !10, i64 592, !10, i64 600, !10, i64 608, !10, i64 616, !10, i64 624, !10, i64 632, !10, i64 640, !10, i64 648, !10, i64 656, !10, i64 664, !10, i64 672, !10, i64 680, !10, i64 688, !10, i64 696, !10, i64 704, !11, i64 712, !11, i64 716, !10, i64 720, !11, i64 728, !10, i64 736, !11, i64 744, !10, i64 752, !11, i64 760, !10, i64 768, !10, i64 776, !10, i64 784, !10, i64 792, !10, i64 800, !10, i64 808, !10, i64 816, !10, i64 824, !10, i64 832, !10, i64 840, !11, i64 848, !10, i64 856, !10, i64 864, !10, i64 872}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!"", !6, i64 0, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !13, i64 52, !13, i64 54, !13, i64 56, !13, i64 58, !13, i64 60, !13, i64 62, !13, i64 64, !13, i64 66, !11, i64 68, !13, i64 72, !13, i64 74, !14, i64 80, !14, i64 88, !15, i64 96, !15, i64 100, !13, i64 104, !13, i64 106, !15, i64 108, !15, i64 112, !6, i64 116, !6, i64 120, !6, i64 144, !13, i64 148, !10, i64 152, !14, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !11, i64 240, !11, i64 244, !10, i64 248, !10, i64 256, !13, i64 264, !10, i64 272, !10, i64 280, !6, i64 288, !13, i64 292, !10, i64 296, !10, i64 304, !10, i64 312, !6, i64 320, !13, i64 344, !13, i64 346, !6, i64 348, !11, i64 352, !10, i64 360, !10, i64 368, !11, i64 376, !10, i64 384, !11, i64 392, !10, i64 400, !11, i64 408, !10, i64 416, !11, i64 424, !11, i64 428, !10, i64 432, !10, i64 440, !15, i64 448, !10, i64 456, !10, i64 464}
!13 = !{!"short", !6, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = !{!"float", !6, i64 0}
!16 = !{!"", !13, i64 0, !13, i64 2, !11, i64 4}
!17 = !{!9, !11, i64 12}
!18 = !{!9, !13, i64 540}
!19 = !{!9, !11, i64 548}
!20 = !{!9, !11, i64 544}
!21 = !{!9, !11, i64 536}
!22 = !{!9, !10, i64 784}
!23 = !{!9, !10, i64 792}
!24 = !{!9, !10, i64 800}
!25 = !{!9, !10, i64 808}
!26 = !{!9, !10, i64 816}
!27 = !{!9, !10, i64 824}
!28 = !{!9, !10, i64 768}
!29 = !{!9, !10, i64 776}
!30 = !{!9, !11, i64 16}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!9, !13, i64 504}
!34 = !{!9, !13, i64 506}
!35 = !{!9, !11, i64 508}
!36 = !{!9, !10, i64 528}
!37 = !{!9, !10, i64 520}
!38 = !{!9, !11, i64 20}
!39 = !{!9, !10, i64 720}
!40 = !{!9, !10, i64 736}
!41 = !{!9, !11, i64 728}
!42 = !{!9, !11, i64 24}
!43 = !{!9, !11, i64 744}
!44 = !{!9, !11, i64 8}
!45 = !{!9, !11, i64 568}
