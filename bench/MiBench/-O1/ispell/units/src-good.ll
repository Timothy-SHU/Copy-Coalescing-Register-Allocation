; ModuleID = 'src/good.c'
source_filename = "src/good.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.success = type { ptr, ptr, ptr }
%struct.dent = type { ptr, ptr, [1 x i64] }
%struct.flagent = type { ptr, ptr, i16, i16, i16, i16, i16, [228 x i8] }

@hashheader = external local_unnamed_addr global %struct.hashheader, align 4
@numhits = external local_unnamed_addr global i32, align 4
@cflag = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@orig_word = internal unnamed_addr global ptr null, align 8
@hits = external global [10 x %struct.success], align 16
@compoundflag = external local_unnamed_addr global i32, align 4
@outfile1 = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @good(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #6
  %7 = load i8, ptr %0, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %5, %9
  %10 = phi i8 [ %18, %9 ], [ %7, %5 ]
  %11 = phi ptr [ %13, %9 ], [ %0, %5 ]
  %12 = phi ptr [ %17, %9 ], [ %6, %5 ]
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %16, ptr %12, align 1, !tbaa !5
  %18 = load i8, ptr %13, align 1, !tbaa !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !8

20:                                               ; preds = %9, %5
  %21 = phi ptr [ %6, %5 ], [ %17, %9 ]
  store i8 0, ptr %21, align 1, !tbaa !5
  %22 = ptrtoint ptr %21 to i64
  %23 = ptrtoint ptr %6 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 0, ptr @numhits, align 4, !tbaa !10
  %26 = load i32, ptr @cflag, align 4, !tbaa !10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = call ptr @ichartosstr(ptr noundef nonnull %0, i32 noundef 0) #6
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %29)
  store ptr %0, ptr @orig_word, align 8, !tbaa !12
  br label %59

31:                                               ; preds = %20
  %32 = call ptr @lookup(ptr noundef nonnull %6, i32 noundef 1) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %31
  store ptr %32, ptr @hits, align 16, !tbaa !14
  %35 = icmp eq i32 %2, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 1), i8 0, i64 16, i1 false)
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = call i32 @cap_ok(ptr noundef nonnull %0, ptr noundef nonnull @hits, i32 noundef %25), !range !16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %34
  store i32 1, ptr @numhits, align 4, !tbaa !10
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, ptr @compoundflag, align 4, !tbaa !10
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = or i32 %4, %3
  %45 = and i32 %44, 2
  %46 = icmp ne i32 %45, 0
  %47 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 5), align 2
  %48 = icmp sgt i16 %47, -1
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = sext i16 %47 to i64
  %52 = getelementptr inbounds %struct.dent, ptr %32, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !17
  %54 = and i64 %51, 4294967295
  %55 = shl nuw i64 1, %54
  %56 = and i64 %53, %55
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, ptr @numhits, align 4, !tbaa !10
  br label %59

59:                                               ; preds = %31, %58, %50, %43, %40, %28
  %60 = load i32, ptr @numhits, align 4, !tbaa !10
  %61 = icmp eq i32 %60, 0
  %62 = icmp ne i32 %2, 0
  %63 = or i1 %62, %61
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  call void @chk_aff(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %25, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #6
  %65 = load i32, ptr @cflag, align 4, !tbaa !10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr @stdout, align 8, !tbaa !12
  %69 = call i32 @putc(i32 noundef 10, ptr noundef %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, ptr @numhits, align 4, !tbaa !10
  br label %72

72:                                               ; preds = %59, %70
  %73 = phi i32 [ %71, %70 ], [ 1, %59 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #6
  ret i32 %73
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare ptr @ichartosstr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @cap_ok(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #6
  %5 = tail call i64 @whatcap(ptr noundef %0) #6
  switch i64 %5, label %27 [
    i64 268435456, label %208
    i64 805306368, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 4
  %12 = load i16, ptr %11, align 4, !tbaa !20
  %13 = sext i16 %12 to i64
  %14 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !23
  %16 = sext i16 %15 to i64
  br label %17

17:                                               ; preds = %6, %10
  %18 = phi i64 [ %13, %10 ], [ 0, %6 ]
  %19 = phi i64 [ %16, %10 ], [ 0, %6 ]
  %20 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !24
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.flagent, ptr %21, i64 0, i32 4
  %25 = load i16, ptr %24, align 4, !tbaa !20
  %26 = sext i16 %25 to i64
  br label %27

27:                                               ; preds = %23, %17, %3
  %28 = phi i64 [ 0, %3 ], [ %18, %17 ], [ %18, %23 ]
  %29 = phi i64 [ 0, %3 ], [ %19, %17 ], [ %19, %23 ]
  %30 = phi i64 [ 0, %3 ], [ 0, %17 ], [ %26, %23 ]
  %31 = icmp eq i64 %5, 536870912
  %32 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 1
  %33 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 2
  %34 = icmp eq i64 %5, 805306368
  %35 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 1
  %36 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 2
  %37 = getelementptr inbounds i8, ptr %0, i64 %28
  %38 = getelementptr inbounds i8, ptr %4, i64 %29
  %39 = icmp sgt i64 %28, 0
  %40 = icmp sgt i64 %28, 0
  %41 = sext i32 %2 to i64
  %42 = getelementptr inbounds i8, ptr %38, i64 %41
  %43 = sub nsw i64 0, %28
  %44 = getelementptr inbounds i8, ptr %42, i64 %43
  %45 = sub nsw i64 0, %30
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  %47 = getelementptr inbounds i8, ptr %46, i64 -1
  %48 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 1
  %49 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 2
  br label %50

50:                                               ; preds = %204, %27
  %51 = phi ptr [ %1, %27 ], [ %52, %204 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !12
  %53 = getelementptr inbounds %struct.dent, ptr %52, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !17
  %55 = and i64 %54, 805306368
  %56 = icmp eq i64 %55, %5
  br i1 %56, label %82, label %57

57:                                               ; preds = %50
  %58 = icmp eq i64 %55, 0
  %59 = and i1 %31, %58
  br i1 %59, label %60, label %204

60:                                               ; preds = %57
  %61 = load ptr, ptr %32, align 8, !tbaa !19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.flagent, ptr %61, i64 0, i32 2
  %65 = load i16, ptr %64, align 8, !tbaa !25
  %66 = sext i16 %65 to i64
  %67 = and i64 %66, 4294967295
  %68 = shl nuw i64 1, %67
  %69 = and i64 %68, %54
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %204, label %71

71:                                               ; preds = %63, %60
  %72 = load ptr, ptr %33, align 8, !tbaa !24
  %73 = icmp eq ptr %72, null
  br i1 %73, label %208, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.flagent, ptr %72, i64 0, i32 2
  %76 = load i16, ptr %75, align 8, !tbaa !25
  %77 = sext i16 %76 to i64
  %78 = and i64 %77, 4294967295
  %79 = shl nuw i64 1, %78
  %80 = and i64 %79, %54
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %204, label %208

82:                                               ; preds = %50
  br i1 %34, label %105, label %83

83:                                               ; preds = %82
  %84 = load ptr, ptr %35, align 8, !tbaa !19
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.flagent, ptr %84, i64 0, i32 2
  %88 = load i16, ptr %87, align 8, !tbaa !25
  %89 = sext i16 %88 to i64
  %90 = and i64 %89, 4294967295
  %91 = shl nuw i64 1, %90
  %92 = and i64 %91, %54
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %204, label %94

94:                                               ; preds = %86, %83
  %95 = load ptr, ptr %36, align 8, !tbaa !24
  %96 = icmp eq ptr %95, null
  br i1 %96, label %208, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.flagent, ptr %95, i64 0, i32 2
  %99 = load i16, ptr %98, align 8, !tbaa !25
  %100 = sext i16 %99 to i64
  %101 = and i64 %100, 4294967295
  %102 = shl nuw i64 1, %101
  %103 = and i64 %102, %54
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %204, label %208

105:                                              ; preds = %82
  %106 = getelementptr inbounds %struct.dent, ptr %52, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !26
  %108 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %107, i32 noundef 100, i32 noundef 1) #6
  %109 = load i8, ptr %38, align 1, !tbaa !5
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !5
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %105
  br i1 %39, label %116, label %136

115:                                              ; preds = %105
  br i1 %40, label %126, label %136

116:                                              ; preds = %114, %123
  %117 = phi ptr [ %124, %123 ], [ %0, %114 ]
  %118 = load i8, ptr %117, align 1, !tbaa !5
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !5
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %204

123:                                              ; preds = %116
  %124 = getelementptr inbounds i8, ptr %117, i64 1
  %125 = icmp ult ptr %124, %37
  br i1 %125, label %116, label %136, !llvm.loop !28

126:                                              ; preds = %115, %133
  %127 = phi ptr [ %134, %133 ], [ %0, %115 ]
  %128 = load i8, ptr %127, align 1, !tbaa !5
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !5
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %204

133:                                              ; preds = %126
  %134 = getelementptr inbounds i8, ptr %127, i64 1
  %135 = icmp ult ptr %134, %37
  br i1 %135, label %126, label %136, !llvm.loop !29

136:                                              ; preds = %123, %133, %114, %115
  %137 = phi ptr [ %0, %114 ], [ %0, %115 ], [ %134, %133 ], [ %124, %123 ]
  br label %138

138:                                              ; preds = %136, %142
  %139 = phi ptr [ %145, %142 ], [ %137, %136 ]
  %140 = phi ptr [ %143, %142 ], [ %38, %136 ]
  %141 = icmp ult ptr %140, %46
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = getelementptr inbounds i8, ptr %140, i64 1
  %144 = load i8, ptr %140, align 1, !tbaa !5
  %145 = getelementptr inbounds i8, ptr %139, i64 1
  %146 = load i8, ptr %139, align 1, !tbaa !5
  %147 = icmp eq i8 %144, %146
  br i1 %147, label %138, label %204, !llvm.loop !30

148:                                              ; preds = %138
  %149 = load i8, ptr %47, align 1, !tbaa !5
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !5
  %153 = icmp eq i8 %152, 0
  %154 = load i8, ptr %139, align 1, !tbaa !5
  %155 = icmp eq i8 %154, 0
  br i1 %153, label %157, label %156

156:                                              ; preds = %148
  br i1 %155, label %180, label %162

157:                                              ; preds = %148
  br i1 %155, label %180, label %173

158:                                              ; preds = %162
  %159 = getelementptr inbounds i8, ptr %164, i64 1
  %160 = load i8, ptr %159, align 1, !tbaa !5
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %180, label %162, !llvm.loop !31

162:                                              ; preds = %156, %158
  %163 = phi i8 [ %160, %158 ], [ %154, %156 ]
  %164 = phi ptr [ %159, %158 ], [ %139, %156 ]
  %165 = zext i8 %163 to i64
  %166 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !5
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %158, label %204

169:                                              ; preds = %173
  %170 = getelementptr inbounds i8, ptr %175, i64 1
  %171 = load i8, ptr %170, align 1, !tbaa !5
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %180, label %173, !llvm.loop !32

173:                                              ; preds = %157, %169
  %174 = phi i8 [ %171, %169 ], [ %154, %157 ]
  %175 = phi ptr [ %170, %169 ], [ %139, %157 ]
  %176 = zext i8 %174 to i64
  %177 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !5
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %169, label %204

180:                                              ; preds = %158, %169, %156, %157
  %181 = load ptr, ptr %48, align 8, !tbaa !19
  %182 = icmp eq ptr %181, null
  br i1 %182, label %192, label %183

183:                                              ; preds = %180
  %184 = load i64, ptr %53, align 8, !tbaa !17
  %185 = getelementptr inbounds %struct.flagent, ptr %181, i64 0, i32 2
  %186 = load i16, ptr %185, align 8, !tbaa !25
  %187 = sext i16 %186 to i64
  %188 = and i64 %187, 4294967295
  %189 = shl nuw i64 1, %188
  %190 = and i64 %189, %184
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %204, label %192

192:                                              ; preds = %183, %180
  %193 = load ptr, ptr %49, align 8, !tbaa !24
  %194 = icmp eq ptr %193, null
  br i1 %194, label %208, label %195

195:                                              ; preds = %192
  %196 = load i64, ptr %53, align 8, !tbaa !17
  %197 = getelementptr inbounds %struct.flagent, ptr %193, i64 0, i32 2
  %198 = load i16, ptr %197, align 8, !tbaa !25
  %199 = sext i16 %198 to i64
  %200 = and i64 %199, 4294967295
  %201 = shl nuw i64 1, %200
  %202 = and i64 %201, %196
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %116, %126, %142, %162, %173, %195, %183, %97, %86, %74, %63, %57
  %205 = load i64, ptr %53, align 8, !tbaa !17
  %206 = and i64 %205, 1073741824
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %50, !llvm.loop !33

208:                                              ; preds = %192, %195, %94, %97, %71, %74, %204, %3
  %209 = phi i32 [ 1, %3 ], [ 0, %204 ], [ 1, %74 ], [ 1, %71 ], [ 1, %97 ], [ 1, %94 ], [ 1, %195 ], [ 1, %192 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #6
  ret i32 %209
}

declare void @chk_aff(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i64 @whatcap(ptr noundef) local_unnamed_addr #3

declare i32 @strtoichar(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @flagpr(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @orig_word, align 8, !tbaa !12
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #7
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %6
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 0
  %19 = icmp sgt i32 %3, 0
  br i1 %18, label %21, label %20

20:                                               ; preds = %11
  br i1 %19, label %25, label %42

21:                                               ; preds = %11
  br i1 %19, label %35, label %42

22:                                               ; preds = %25
  %23 = getelementptr inbounds i8, ptr %26, i64 1
  %24 = icmp ult ptr %23, %13
  br i1 %24, label %25, label %42, !llvm.loop !34

25:                                               ; preds = %20, %22
  %26 = phi ptr [ %23, %22 ], [ %7, %20 ]
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !5
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %22, label %184

32:                                               ; preds = %35
  %33 = getelementptr inbounds i8, ptr %36, i64 1
  %34 = icmp ult ptr %33, %13
  br i1 %34, label %35, label %42, !llvm.loop !35

35:                                               ; preds = %21, %32
  %36 = phi ptr [ %33, %32 ], [ %7, %21 ]
  %37 = load i8, ptr %36, align 1, !tbaa !5
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %32, label %184

42:                                               ; preds = %22, %32, %20, %21, %6
  %43 = icmp sgt i32 %4, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %42
  %45 = shl i64 %8, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds i8, ptr %7, i64 %46
  %48 = sext i32 %5 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  %51 = getelementptr inbounds i8, ptr %50, i64 -1
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !5
  %56 = icmp eq i8 %55, 0
  %57 = load i8, ptr %50, align 1, !tbaa !5
  %58 = icmp eq i8 %57, 0
  br i1 %56, label %60, label %59

59:                                               ; preds = %44
  br i1 %58, label %83, label %65

60:                                               ; preds = %44
  br i1 %58, label %83, label %76

61:                                               ; preds = %65
  %62 = getelementptr inbounds i8, ptr %67, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !5
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %83, label %65, !llvm.loop !36

65:                                               ; preds = %59, %61
  %66 = phi i8 [ %63, %61 ], [ %57, %59 ]
  %67 = phi ptr [ %62, %61 ], [ %50, %59 ]
  %68 = zext i8 %66 to i64
  %69 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !5
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %61, label %184

72:                                               ; preds = %76
  %73 = getelementptr inbounds i8, ptr %78, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %83, label %76, !llvm.loop !37

76:                                               ; preds = %60, %72
  %77 = phi i8 [ %74, %72 ], [ %57, %60 ]
  %78 = phi ptr [ %73, %72 ], [ %50, %60 ]
  %79 = zext i8 %77 to i64
  %80 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !5
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %72, label %184

83:                                               ; preds = %61, %72, %59, %60, %42
  %84 = load ptr, ptr @stdout, align 8, !tbaa !12
  %85 = tail call i32 @putc(i32 noundef 32, ptr noundef %84)
  %86 = load ptr, ptr @orig_word, align 8, !tbaa !12
  %87 = sext i32 %3 to i64
  %88 = getelementptr inbounds i8, ptr %86, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !5
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !5
  %93 = icmp eq i8 %92, 0
  %94 = icmp sgt i32 %2, 0
  br i1 %93, label %96, label %95

95:                                               ; preds = %83
  br i1 %94, label %97, label %122

96:                                               ; preds = %83
  br i1 %94, label %108, label %122

97:                                               ; preds = %95, %97
  %98 = phi ptr [ %101, %97 ], [ %0, %95 ]
  %99 = phi i32 [ %100, %97 ], [ %2, %95 ]
  %100 = add nsw i32 %99, -1
  %101 = getelementptr inbounds i8, ptr %98, i64 1
  %102 = load i8, ptr %98, align 1, !tbaa !5
  %103 = zext i8 %102 to i32
  %104 = tail call ptr @printichar(i32 noundef %103) #6
  %105 = load ptr, ptr @outfile1, align 8, !tbaa !12
  %106 = tail call i32 @fputs(ptr noundef %104, ptr noundef %105)
  %107 = icmp sgt i32 %99, 1
  br i1 %107, label %97, label %122, !llvm.loop !38

108:                                              ; preds = %96, %108
  %109 = phi ptr [ %112, %108 ], [ %0, %96 ]
  %110 = phi i32 [ %111, %108 ], [ %2, %96 ]
  %111 = add nsw i32 %110, -1
  %112 = getelementptr inbounds i8, ptr %109, i64 1
  %113 = load i8, ptr %109, align 1, !tbaa !5
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !5
  %117 = zext i8 %116 to i32
  %118 = tail call ptr @printichar(i32 noundef %117) #6
  %119 = load ptr, ptr @outfile1, align 8, !tbaa !12
  %120 = tail call i32 @fputs(ptr noundef %118, ptr noundef %119)
  %121 = icmp sgt i32 %110, 1
  br i1 %121, label %108, label %122, !llvm.loop !39

122:                                              ; preds = %97, %108, %95, %96
  %123 = phi ptr [ %0, %96 ], [ %0, %95 ], [ %112, %108 ], [ %101, %97 ]
  %124 = add i32 %5, %3
  %125 = sub i32 %9, %124
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %122, %127
  %128 = phi ptr [ %138, %127 ], [ %123, %122 ]
  %129 = phi ptr [ %132, %127 ], [ %88, %122 ]
  %130 = phi i32 [ %131, %127 ], [ %125, %122 ]
  %131 = add nsw i32 %130, -1
  %132 = getelementptr inbounds i8, ptr %129, i64 1
  %133 = load i8, ptr %129, align 1, !tbaa !5
  %134 = zext i8 %133 to i32
  %135 = tail call ptr @printichar(i32 noundef %134) #6
  %136 = load ptr, ptr @outfile1, align 8, !tbaa !12
  %137 = tail call i32 @fputs(ptr noundef %135, ptr noundef %136)
  %138 = getelementptr inbounds i8, ptr %128, i64 1
  %139 = icmp sgt i32 %130, 1
  br i1 %139, label %127, label %140, !llvm.loop !40

140:                                              ; preds = %127, %122
  %141 = phi ptr [ %88, %122 ], [ %132, %127 ]
  %142 = phi ptr [ %123, %122 ], [ %138, %127 ]
  %143 = load ptr, ptr @orig_word, align 8, !tbaa !12
  %144 = icmp ugt ptr %141, %143
  %145 = sext i1 %144 to i64
  %146 = getelementptr inbounds i8, ptr %141, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !5
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !5
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load i8, ptr %142, align 1, !tbaa !5
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %172, label %159

155:                                              ; preds = %140
  %156 = tail call ptr @ichartosstr(ptr noundef %142, i32 noundef 0) #6
  %157 = load ptr, ptr @outfile1, align 8, !tbaa !12
  %158 = tail call i32 @fputs(ptr noundef %156, ptr noundef %157)
  br label %172

159:                                              ; preds = %152, %159
  %160 = phi i8 [ %170, %159 ], [ %153, %152 ]
  %161 = phi ptr [ %162, %159 ], [ %142, %152 ]
  %162 = getelementptr inbounds i8, ptr %161, i64 1
  %163 = zext i8 %160 to i64
  %164 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !5
  %166 = zext i8 %165 to i32
  %167 = tail call ptr @printichar(i32 noundef %166) #6
  %168 = load ptr, ptr @outfile1, align 8, !tbaa !12
  %169 = tail call i32 @fputs(ptr noundef %167, ptr noundef %168)
  %170 = load i8, ptr %162, align 1, !tbaa !5
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %159, !llvm.loop !41

172:                                              ; preds = %159, %152, %155
  %173 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !42
  %174 = sext i8 %173 to i32
  %175 = load ptr, ptr @stdout, align 8, !tbaa !12
  %176 = tail call i32 @putc(i32 noundef %174, ptr noundef %175)
  br i1 %10, label %177, label %180

177:                                              ; preds = %172
  %178 = load ptr, ptr @stdout, align 8, !tbaa !12
  %179 = tail call i32 @putc(i32 noundef %1, ptr noundef %178)
  br label %180

180:                                              ; preds = %177, %172
  br i1 %43, label %181, label %184

181:                                              ; preds = %180
  %182 = load ptr, ptr @stdout, align 8, !tbaa !12
  %183 = tail call i32 @putc(i32 noundef %4, ptr noundef %182)
  br label %184

184:                                              ; preds = %25, %35, %65, %76, %180, %181
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

declare ptr @printichar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !13, i64 0}
!15 = !{!"success", !13, i64 0, !13, i64 8, !13, i64 16}
!16 = !{i32 0, i32 2}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!15, !13, i64 8}
!20 = !{!21, !22, i64 20}
!21 = !{!"flagent", !13, i64 0, !13, i64 8, !22, i64 16, !22, i64 18, !22, i64 20, !22, i64 22, !22, i64 24, !6, i64 26}
!22 = !{!"short", !6, i64 0}
!23 = !{!21, !22, i64 18}
!24 = !{!15, !13, i64 16}
!25 = !{!21, !22, i64 16}
!26 = !{!27, !13, i64 8}
!27 = !{!"dent", !13, i64 0, !13, i64 8, !6, i64 16}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = !{!43, !6, i64 68}
!43 = !{!"hashheader", !22, i64 0, !22, i64 2, !22, i64 4, !22, i64 6, !22, i64 8, !22, i64 10, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !6, i64 48, !6, i64 53, !6, i64 66, !6, i64 67, !6, i64 68, !6, i64 70, !6, i64 526, !6, i64 754, !6, i64 982, !6, i64 1210, !6, i64 1438, !6, i64 1666, !6, i64 1894, !6, i64 2022, !6, i64 3124, !6, i64 3524, !22, i64 3924}
