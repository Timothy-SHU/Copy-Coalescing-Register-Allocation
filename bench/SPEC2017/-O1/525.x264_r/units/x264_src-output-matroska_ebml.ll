; ModuleID = 'x264_src/output/matroska_ebml.c'
source_filename = "x264_src/output/matroska_ebml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mk_writer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i8, i8, i8, i8 }
%struct.mk_context = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Haali Matroska Writer b0\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @mk_create_writer(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(104) ptr @malloc(i64 noundef 104) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %63, label %4

4:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 0, i64 104, i1 false)
  %5 = getelementptr inbounds %struct.mk_writer, ptr %2, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !41
  store ptr %9, ptr %5, align 8, !tbaa !34
  br label %14

10:                                               ; preds = %4
  %11 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i64 56, i1 false)
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi ptr [ %6, %8 ], [ %11, %13 ]
  %16 = getelementptr inbounds %struct.mk_context, ptr %15, i64 0, i32 2
  store ptr null, ptr %16, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.mk_context, ptr %15, i64 0, i32 3
  store ptr %2, ptr %17, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.mk_context, ptr %15, i64 0, i32 4
  store i32 0, ptr %18, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.mk_writer, ptr %2, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.mk_context, ptr %20, i64 0, i32 1
  store ptr %15, ptr %23, align 8, !tbaa !47
  br label %24

24:                                               ; preds = %22, %14
  store ptr %20, ptr %15, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct.mk_context, ptr %15, i64 0, i32 1
  store ptr %19, ptr %25, align 8, !tbaa !47
  store ptr %15, ptr %19, align 8, !tbaa !46
  br label %26

26:                                               ; preds = %10, %24
  %27 = phi ptr [ %15, %24 ], [ null, %10 ]
  %28 = getelementptr inbounds %struct.mk_writer, ptr %2, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !48
  %29 = icmp eq ptr %27, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @free(ptr noundef %2) #11
  br label %63

31:                                               ; preds = %26
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load ptr, ptr @stdout, align 8, !tbaa !49
  br label %38

36:                                               ; preds = %31
  %37 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.1)
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ]
  store ptr %39, ptr %2, align 8, !tbaa !50
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load ptr, ptr %5, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %48, %41
  %45 = getelementptr inbounds %struct.mk_writer, ptr %2, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %54

48:                                               ; preds = %41, %48
  %49 = phi ptr [ %50, %48 ], [ %42, %41 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !41
  %51 = getelementptr inbounds %struct.mk_context, ptr %49, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !51
  tail call void @free(ptr noundef %52) #11
  tail call void @free(ptr noundef %49) #11
  %53 = icmp eq ptr %50, null
  br i1 %53, label %44, label %48, !llvm.loop !52

54:                                               ; preds = %44, %54
  %55 = phi ptr [ %56, %54 ], [ %46, %44 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !41
  %57 = getelementptr inbounds %struct.mk_context, ptr %55, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !51
  tail call void @free(ptr noundef %58) #11
  tail call void @free(ptr noundef %55) #11
  %59 = icmp eq ptr %56, null
  br i1 %59, label %60, label %54, !llvm.loop !55

60:                                               ; preds = %54, %44
  store ptr null, ptr %28, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @free(ptr noundef %2) #11
  br label %63

61:                                               ; preds = %38
  %62 = getelementptr inbounds %struct.mk_writer, ptr %2, i64 0, i32 8
  store i64 1000000, ptr %62, align 8, !tbaa !56
  br label %63

63:                                               ; preds = %1, %61, %60, %30
  %64 = phi ptr [ %2, %61 ], [ null, %60 ], [ null, %30 ], [ null, %1 ]
  ret ptr %64
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mk_writeHeader(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = alloca [8 x i8], align 4
  %13 = alloca [8 x i8], align 4
  %14 = alloca [8 x i8], align 4
  %15 = alloca [8 x i8], align 4
  %16 = alloca [8 x i8], align 1
  %17 = alloca [8 x i8], align 8
  %18 = alloca [8 x i8], align 1
  %19 = alloca [8 x i8], align 1
  %20 = alloca [8 x i8], align 1
  %21 = alloca [8 x i8], align 1
  %22 = alloca [8 x i8], align 1
  %23 = alloca [8 x i8], align 1
  %24 = alloca [8 x i8], align 1
  %25 = alloca [8 x i8], align 1
  %26 = alloca [8 x i8], align 1
  %27 = alloca [8 x i8], align 1
  %28 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 12
  %29 = load i8, ptr %28, align 8, !tbaa !57
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %1871

31:                                               ; preds = %11
  %32 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 8
  store i64 %6, ptr %32, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 7
  store i64 %5, ptr %33, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %37, align 8, !tbaa !41
  store ptr %40, ptr %36, align 8, !tbaa !34
  br label %45

41:                                               ; preds = %31
  %42 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %42, i8 0, i64 56, i1 false)
  br label %45

45:                                               ; preds = %44, %39
  %46 = phi ptr [ %37, %39 ], [ %42, %44 ]
  %47 = getelementptr inbounds %struct.mk_context, ptr %46, i64 0, i32 2
  store ptr %35, ptr %47, align 8, !tbaa !43
  %48 = getelementptr inbounds %struct.mk_context, ptr %46, i64 0, i32 3
  store ptr %0, ptr %48, align 8, !tbaa !44
  %49 = getelementptr inbounds %struct.mk_context, ptr %46, i64 0, i32 4
  store i32 440786851, ptr %49, align 8, !tbaa !45
  %50 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.mk_context, ptr %51, i64 0, i32 1
  store ptr %46, ptr %54, align 8, !tbaa !47
  br label %55

55:                                               ; preds = %53, %45
  store ptr %51, ptr %46, align 8, !tbaa !41
  %56 = getelementptr inbounds %struct.mk_context, ptr %46, i64 0, i32 1
  store ptr %50, ptr %56, align 8, !tbaa !47
  store ptr %46, ptr %50, align 8, !tbaa !46
  br label %57

57:                                               ; preds = %41, %55
  %58 = phi ptr [ %46, %55 ], [ null, %41 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %1871, label %60

60:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #11
  %61 = getelementptr inbounds i8, ptr %27, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %27, i8 0, i64 7, i1 false)
  store i8 1, ptr %61, align 1, !tbaa !59
  %62 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 6
  %63 = load i32, ptr %62, align 8, !tbaa !60
  %64 = add i32 %63, 2
  %65 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 7
  %66 = load i32, ptr %65, align 4, !tbaa !61
  %67 = icmp ugt i32 %64, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %60
  %69 = icmp eq i32 %66, 0
  %70 = shl i32 %66, 1
  %71 = select i1 %69, i32 16, i32 %70
  br label %72

72:                                               ; preds = %72, %68
  %73 = phi i32 [ %71, %68 ], [ %75, %72 ]
  %74 = icmp ugt i32 %64, %73
  %75 = shl i32 %73, 1
  br i1 %74, label %72, label %76, !llvm.loop !62

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !51
  %79 = zext i32 %73 to i64
  %80 = tail call ptr @realloc(ptr noundef %78, i64 noundef %79) #13
  %81 = icmp eq ptr %80, null
  br i1 %81, label %1855, label %82

82:                                               ; preds = %76
  store ptr %80, ptr %77, align 8, !tbaa !51
  store i32 %73, ptr %65, align 4, !tbaa !61
  br label %83

83:                                               ; preds = %82, %60
  %84 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !51
  %86 = load i32, ptr %62, align 8, !tbaa !60
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %85, i64 %87
  store i8 66, ptr %88, align 1
  %89 = getelementptr inbounds i8, ptr %88, i64 1
  store i8 -122, ptr %89, align 1
  store i32 %64, ptr %62, align 8, !tbaa !60
  br label %90

90:                                               ; preds = %83, %95
  %91 = phi i64 [ %96, %95 ], [ 0, %83 ]
  %92 = getelementptr inbounds [8 x i8], ptr %27, i64 0, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !59
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = add nuw nsw i64 %91, 1
  %97 = icmp eq i64 %96, 7
  br i1 %97, label %100, label %90, !llvm.loop !63

98:                                               ; preds = %90
  %99 = trunc i64 %91 to i32
  br label %100

100:                                              ; preds = %95, %98
  %101 = phi i32 [ %99, %98 ], [ 7, %95 ]
  %102 = sub nsw i32 8, %101
  %103 = tail call fastcc i32 @mk_write_size(ptr noundef %58, i32 noundef %102), !range !64
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %1855, label %105

105:                                              ; preds = %100
  %106 = zext nneg i32 %101 to i64
  %107 = getelementptr inbounds i8, ptr %27, i64 %106
  %108 = load i32, ptr %62, align 8, !tbaa !60
  %109 = add i32 %108, %102
  %110 = load i32, ptr %65, align 4, !tbaa !61
  %111 = icmp ugt i32 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %105
  %113 = icmp eq i32 %110, 0
  %114 = shl i32 %110, 1
  %115 = select i1 %113, i32 16, i32 %114
  br label %116

116:                                              ; preds = %116, %112
  %117 = phi i32 [ %115, %112 ], [ %119, %116 ]
  %118 = icmp ugt i32 %109, %117
  %119 = shl i32 %117, 1
  br i1 %118, label %116, label %120, !llvm.loop !62

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %122 = load ptr, ptr %121, align 8, !tbaa !51
  %123 = zext i32 %117 to i64
  %124 = tail call ptr @realloc(ptr noundef %122, i64 noundef %123) #13
  %125 = icmp eq ptr %124, null
  br i1 %125, label %1855, label %126

126:                                              ; preds = %120
  store ptr %124, ptr %121, align 8, !tbaa !51
  store i32 %117, ptr %65, align 4, !tbaa !61
  br label %127

127:                                              ; preds = %126, %105
  %128 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !51
  %130 = load i32, ptr %62, align 8, !tbaa !60
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %129, i64 %131
  %133 = zext i32 %102 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %132, ptr nonnull align 1 %107, i64 %133, i1 false)
  store i32 %109, ptr %62, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #11
  %134 = getelementptr inbounds i8, ptr %26, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %26, i8 0, i64 7, i1 false)
  store i8 1, ptr %134, align 1, !tbaa !59
  %135 = add i32 %109, 2
  %136 = load i32, ptr %65, align 4, !tbaa !61
  %137 = icmp ugt i32 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %127
  %139 = icmp eq i32 %136, 0
  %140 = shl i32 %136, 1
  %141 = select i1 %139, i32 16, i32 %140
  br label %142

142:                                              ; preds = %142, %138
  %143 = phi i32 [ %141, %138 ], [ %145, %142 ]
  %144 = icmp ugt i32 %135, %143
  %145 = shl i32 %143, 1
  br i1 %144, label %142, label %146, !llvm.loop !62

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %148 = load ptr, ptr %147, align 8, !tbaa !51
  %149 = zext i32 %143 to i64
  %150 = tail call ptr @realloc(ptr noundef %148, i64 noundef %149) #13
  %151 = icmp eq ptr %150, null
  br i1 %151, label %1856, label %152

152:                                              ; preds = %146
  store ptr %150, ptr %147, align 8, !tbaa !51
  store i32 %143, ptr %65, align 4, !tbaa !61
  br label %153

153:                                              ; preds = %152, %127
  %154 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %155 = load ptr, ptr %154, align 8, !tbaa !51
  %156 = load i32, ptr %62, align 8, !tbaa !60
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %155, i64 %157
  store i8 66, ptr %158, align 1
  %159 = getelementptr inbounds i8, ptr %158, i64 1
  store i8 -9, ptr %159, align 1
  store i32 %135, ptr %62, align 8, !tbaa !60
  br label %160

160:                                              ; preds = %153, %165
  %161 = phi i64 [ %166, %165 ], [ 0, %153 ]
  %162 = getelementptr inbounds [8 x i8], ptr %26, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !59
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = add nuw nsw i64 %161, 1
  %167 = icmp eq i64 %166, 7
  br i1 %167, label %170, label %160, !llvm.loop !63

168:                                              ; preds = %160
  %169 = trunc i64 %161 to i32
  br label %170

170:                                              ; preds = %165, %168
  %171 = phi i32 [ %169, %168 ], [ 7, %165 ]
  %172 = sub nsw i32 8, %171
  %173 = tail call fastcc i32 @mk_write_size(ptr noundef %58, i32 noundef %172), !range !64
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %1856, label %175

175:                                              ; preds = %170
  %176 = zext nneg i32 %171 to i64
  %177 = getelementptr inbounds i8, ptr %26, i64 %176
  %178 = load i32, ptr %62, align 8, !tbaa !60
  %179 = add i32 %178, %172
  %180 = load i32, ptr %65, align 4, !tbaa !61
  %181 = icmp ugt i32 %179, %180
  br i1 %181, label %182, label %197

182:                                              ; preds = %175
  %183 = icmp eq i32 %180, 0
  %184 = shl i32 %180, 1
  %185 = select i1 %183, i32 16, i32 %184
  br label %186

186:                                              ; preds = %186, %182
  %187 = phi i32 [ %185, %182 ], [ %189, %186 ]
  %188 = icmp ugt i32 %179, %187
  %189 = shl i32 %187, 1
  br i1 %188, label %186, label %190, !llvm.loop !62

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %192 = load ptr, ptr %191, align 8, !tbaa !51
  %193 = zext i32 %187 to i64
  %194 = tail call ptr @realloc(ptr noundef %192, i64 noundef %193) #13
  %195 = icmp eq ptr %194, null
  br i1 %195, label %1856, label %196

196:                                              ; preds = %190
  store ptr %194, ptr %191, align 8, !tbaa !51
  store i32 %187, ptr %65, align 4, !tbaa !61
  br label %197

197:                                              ; preds = %196, %175
  %198 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %199 = load ptr, ptr %198, align 8, !tbaa !51
  %200 = load i32, ptr %62, align 8, !tbaa !60
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %199, i64 %201
  %203 = zext i32 %172 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %202, ptr nonnull align 1 %177, i64 %203, i1 false)
  store i32 %179, ptr %62, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #11
  %204 = getelementptr inbounds i8, ptr %25, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %25, i8 0, i64 7, i1 false)
  store i8 4, ptr %204, align 1, !tbaa !59
  %205 = add i32 %179, 2
  %206 = load i32, ptr %65, align 4, !tbaa !61
  %207 = icmp ugt i32 %205, %206
  br i1 %207, label %208, label %223

208:                                              ; preds = %197
  %209 = icmp eq i32 %206, 0
  %210 = shl i32 %206, 1
  %211 = select i1 %209, i32 16, i32 %210
  br label %212

212:                                              ; preds = %212, %208
  %213 = phi i32 [ %211, %208 ], [ %215, %212 ]
  %214 = icmp ugt i32 %205, %213
  %215 = shl i32 %213, 1
  br i1 %214, label %212, label %216, !llvm.loop !62

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %218 = load ptr, ptr %217, align 8, !tbaa !51
  %219 = zext i32 %213 to i64
  %220 = tail call ptr @realloc(ptr noundef %218, i64 noundef %219) #13
  %221 = icmp eq ptr %220, null
  br i1 %221, label %1857, label %222

222:                                              ; preds = %216
  store ptr %220, ptr %217, align 8, !tbaa !51
  store i32 %213, ptr %65, align 4, !tbaa !61
  br label %223

223:                                              ; preds = %222, %197
  %224 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %225 = load ptr, ptr %224, align 8, !tbaa !51
  %226 = load i32, ptr %62, align 8, !tbaa !60
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i8, ptr %225, i64 %227
  store i8 66, ptr %228, align 1
  %229 = getelementptr inbounds i8, ptr %228, i64 1
  store i8 -14, ptr %229, align 1
  store i32 %205, ptr %62, align 8, !tbaa !60
  br label %230

230:                                              ; preds = %223, %235
  %231 = phi i64 [ %236, %235 ], [ 0, %223 ]
  %232 = getelementptr inbounds [8 x i8], ptr %25, i64 0, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !59
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = add nuw nsw i64 %231, 1
  %237 = icmp eq i64 %236, 7
  br i1 %237, label %240, label %230, !llvm.loop !63

238:                                              ; preds = %230
  %239 = trunc i64 %231 to i32
  br label %240

240:                                              ; preds = %235, %238
  %241 = phi i32 [ %239, %238 ], [ 7, %235 ]
  %242 = sub nsw i32 8, %241
  %243 = tail call fastcc i32 @mk_write_size(ptr noundef %58, i32 noundef %242), !range !64
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %1857, label %245

245:                                              ; preds = %240
  %246 = zext nneg i32 %241 to i64
  %247 = getelementptr inbounds i8, ptr %25, i64 %246
  %248 = load i32, ptr %62, align 8, !tbaa !60
  %249 = add i32 %248, %242
  %250 = load i32, ptr %65, align 4, !tbaa !61
  %251 = icmp ugt i32 %249, %250
  br i1 %251, label %252, label %267

252:                                              ; preds = %245
  %253 = icmp eq i32 %250, 0
  %254 = shl i32 %250, 1
  %255 = select i1 %253, i32 16, i32 %254
  br label %256

256:                                              ; preds = %256, %252
  %257 = phi i32 [ %255, %252 ], [ %259, %256 ]
  %258 = icmp ugt i32 %249, %257
  %259 = shl i32 %257, 1
  br i1 %258, label %256, label %260, !llvm.loop !62

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %262 = load ptr, ptr %261, align 8, !tbaa !51
  %263 = zext i32 %257 to i64
  %264 = tail call ptr @realloc(ptr noundef %262, i64 noundef %263) #13
  %265 = icmp eq ptr %264, null
  br i1 %265, label %1857, label %266

266:                                              ; preds = %260
  store ptr %264, ptr %261, align 8, !tbaa !51
  store i32 %257, ptr %65, align 4, !tbaa !61
  br label %267

267:                                              ; preds = %266, %245
  %268 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %269 = load ptr, ptr %268, align 8, !tbaa !51
  %270 = load i32, ptr %62, align 8, !tbaa !60
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i8, ptr %269, i64 %271
  %273 = zext i32 %242 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %272, ptr nonnull align 1 %247, i64 %273, i1 false)
  store i32 %249, ptr %62, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #11
  %274 = getelementptr inbounds i8, ptr %24, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %24, i8 0, i64 7, i1 false)
  store i8 8, ptr %274, align 1, !tbaa !59
  %275 = add i32 %249, 2
  %276 = load i32, ptr %65, align 4, !tbaa !61
  %277 = icmp ugt i32 %275, %276
  br i1 %277, label %278, label %293

278:                                              ; preds = %267
  %279 = icmp eq i32 %276, 0
  %280 = shl i32 %276, 1
  %281 = select i1 %279, i32 16, i32 %280
  br label %282

282:                                              ; preds = %282, %278
  %283 = phi i32 [ %281, %278 ], [ %285, %282 ]
  %284 = icmp ugt i32 %275, %283
  %285 = shl i32 %283, 1
  br i1 %284, label %282, label %286, !llvm.loop !62

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %288 = load ptr, ptr %287, align 8, !tbaa !51
  %289 = zext i32 %283 to i64
  %290 = tail call ptr @realloc(ptr noundef %288, i64 noundef %289) #13
  %291 = icmp eq ptr %290, null
  br i1 %291, label %1858, label %292

292:                                              ; preds = %286
  store ptr %290, ptr %287, align 8, !tbaa !51
  store i32 %283, ptr %65, align 4, !tbaa !61
  br label %293

293:                                              ; preds = %292, %267
  %294 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %295 = load ptr, ptr %294, align 8, !tbaa !51
  %296 = load i32, ptr %62, align 8, !tbaa !60
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds i8, ptr %295, i64 %297
  store i8 66, ptr %298, align 1
  %299 = getelementptr inbounds i8, ptr %298, i64 1
  store i8 -13, ptr %299, align 1
  store i32 %275, ptr %62, align 8, !tbaa !60
  br label %300

300:                                              ; preds = %293, %305
  %301 = phi i64 [ %306, %305 ], [ 0, %293 ]
  %302 = getelementptr inbounds [8 x i8], ptr %24, i64 0, i64 %301
  %303 = load i8, ptr %302, align 1, !tbaa !59
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %300
  %306 = add nuw nsw i64 %301, 1
  %307 = icmp eq i64 %306, 7
  br i1 %307, label %310, label %300, !llvm.loop !63

308:                                              ; preds = %300
  %309 = trunc i64 %301 to i32
  br label %310

310:                                              ; preds = %305, %308
  %311 = phi i32 [ %309, %308 ], [ 7, %305 ]
  %312 = sub nsw i32 8, %311
  %313 = tail call fastcc i32 @mk_write_size(ptr noundef %58, i32 noundef %312), !range !64
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %1858, label %315

315:                                              ; preds = %310
  %316 = zext nneg i32 %311 to i64
  %317 = getelementptr inbounds i8, ptr %24, i64 %316
  %318 = load i32, ptr %62, align 8, !tbaa !60
  %319 = add i32 %318, %312
  %320 = load i32, ptr %65, align 4, !tbaa !61
  %321 = icmp ugt i32 %319, %320
  br i1 %321, label %322, label %337

322:                                              ; preds = %315
  %323 = icmp eq i32 %320, 0
  %324 = shl i32 %320, 1
  %325 = select i1 %323, i32 16, i32 %324
  br label %326

326:                                              ; preds = %326, %322
  %327 = phi i32 [ %325, %322 ], [ %329, %326 ]
  %328 = icmp ugt i32 %319, %327
  %329 = shl i32 %327, 1
  br i1 %328, label %326, label %330, !llvm.loop !62

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %332 = load ptr, ptr %331, align 8, !tbaa !51
  %333 = zext i32 %327 to i64
  %334 = tail call ptr @realloc(ptr noundef %332, i64 noundef %333) #13
  %335 = icmp eq ptr %334, null
  br i1 %335, label %1858, label %336

336:                                              ; preds = %330
  store ptr %334, ptr %331, align 8, !tbaa !51
  store i32 %327, ptr %65, align 4, !tbaa !61
  br label %337

337:                                              ; preds = %336, %315
  %338 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %339 = load ptr, ptr %338, align 8, !tbaa !51
  %340 = load i32, ptr %62, align 8, !tbaa !60
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds i8, ptr %339, i64 %341
  %343 = zext i32 %312 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %342, ptr nonnull align 1 %317, i64 %343, i1 false)
  store i32 %319, ptr %62, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #11
  %344 = add i32 %319, 2
  %345 = load i32, ptr %65, align 4, !tbaa !61
  %346 = icmp ugt i32 %344, %345
  br i1 %346, label %347, label %362

347:                                              ; preds = %337
  %348 = icmp eq i32 %345, 0
  %349 = shl i32 %345, 1
  %350 = select i1 %348, i32 16, i32 %349
  br label %351

351:                                              ; preds = %351, %347
  %352 = phi i32 [ %350, %347 ], [ %354, %351 ]
  %353 = icmp ugt i32 %344, %352
  %354 = shl i32 %352, 1
  br i1 %353, label %351, label %355, !llvm.loop !62

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %357 = load ptr, ptr %356, align 8, !tbaa !51
  %358 = zext i32 %352 to i64
  %359 = tail call ptr @realloc(ptr noundef %357, i64 noundef %358) #13
  %360 = icmp eq ptr %359, null
  br i1 %360, label %1871, label %361

361:                                              ; preds = %355
  store ptr %359, ptr %356, align 8, !tbaa !51
  store i32 %352, ptr %65, align 4, !tbaa !61
  br label %362

362:                                              ; preds = %361, %337
  %363 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %364 = load ptr, ptr %363, align 8, !tbaa !51
  %365 = load i32, ptr %62, align 8, !tbaa !60
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds i8, ptr %364, i64 %366
  store i8 66, ptr %367, align 1
  %368 = getelementptr inbounds i8, ptr %367, i64 1
  store i8 -126, ptr %368, align 1
  store i32 %344, ptr %62, align 8, !tbaa !60
  %369 = tail call fastcc i32 @mk_write_size(ptr noundef %58, i32 noundef 8), !range !64
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %1871, label %371

371:                                              ; preds = %362
  %372 = load i32, ptr %62, align 8, !tbaa !60
  %373 = add i32 %372, 8
  %374 = load i32, ptr %65, align 4, !tbaa !61
  %375 = icmp ugt i32 %373, %374
  br i1 %375, label %376, label %391

376:                                              ; preds = %371
  %377 = icmp eq i32 %374, 0
  %378 = shl i32 %374, 1
  %379 = select i1 %377, i32 16, i32 %378
  br label %380

380:                                              ; preds = %380, %376
  %381 = phi i32 [ %379, %376 ], [ %383, %380 ]
  %382 = icmp ugt i32 %373, %381
  %383 = shl i32 %381, 1
  br i1 %382, label %380, label %384, !llvm.loop !62

384:                                              ; preds = %380
  %385 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %386 = load ptr, ptr %385, align 8, !tbaa !51
  %387 = zext i32 %381 to i64
  %388 = tail call ptr @realloc(ptr noundef %386, i64 noundef %387) #13
  %389 = icmp eq ptr %388, null
  br i1 %389, label %1871, label %390

390:                                              ; preds = %384
  store ptr %388, ptr %385, align 8, !tbaa !51
  store i32 %381, ptr %65, align 4, !tbaa !61
  br label %391

391:                                              ; preds = %390, %371
  %392 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %393 = load ptr, ptr %392, align 8, !tbaa !51
  %394 = load i32, ptr %62, align 8, !tbaa !60
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds i8, ptr %393, i64 %395
  store i64 7019831366685843821, ptr %396, align 1
  store i32 %373, ptr %62, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #11
  %397 = getelementptr inbounds i8, ptr %23, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %23, i8 0, i64 7, i1 false)
  store i8 2, ptr %397, align 1, !tbaa !59
  %398 = add i32 %372, 10
  %399 = load i32, ptr %65, align 4, !tbaa !61
  %400 = icmp ugt i32 %398, %399
  br i1 %400, label %401, label %416

401:                                              ; preds = %391
  %402 = icmp eq i32 %399, 0
  %403 = shl i32 %399, 1
  %404 = select i1 %402, i32 16, i32 %403
  br label %405

405:                                              ; preds = %405, %401
  %406 = phi i32 [ %404, %401 ], [ %408, %405 ]
  %407 = icmp ugt i32 %398, %406
  %408 = shl i32 %406, 1
  br i1 %407, label %405, label %409, !llvm.loop !62

409:                                              ; preds = %405
  %410 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %411 = load ptr, ptr %410, align 8, !tbaa !51
  %412 = zext i32 %406 to i64
  %413 = tail call ptr @realloc(ptr noundef %411, i64 noundef %412) #13
  %414 = icmp eq ptr %413, null
  br i1 %414, label %1859, label %415

415:                                              ; preds = %409
  store ptr %413, ptr %410, align 8, !tbaa !51
  store i32 %406, ptr %65, align 4, !tbaa !61
  br label %416

416:                                              ; preds = %415, %391
  %417 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %418 = load ptr, ptr %417, align 8, !tbaa !51
  %419 = load i32, ptr %62, align 8, !tbaa !60
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds i8, ptr %418, i64 %420
  store i8 66, ptr %421, align 1
  %422 = getelementptr inbounds i8, ptr %421, i64 1
  store i8 -121, ptr %422, align 1
  store i32 %398, ptr %62, align 8, !tbaa !60
  br label %423

423:                                              ; preds = %416, %428
  %424 = phi i64 [ %429, %428 ], [ 0, %416 ]
  %425 = getelementptr inbounds [8 x i8], ptr %23, i64 0, i64 %424
  %426 = load i8, ptr %425, align 1, !tbaa !59
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %423
  %429 = add nuw nsw i64 %424, 1
  %430 = icmp eq i64 %429, 7
  br i1 %430, label %433, label %423, !llvm.loop !63

431:                                              ; preds = %423
  %432 = trunc i64 %424 to i32
  br label %433

433:                                              ; preds = %428, %431
  %434 = phi i32 [ %432, %431 ], [ 7, %428 ]
  %435 = sub nsw i32 8, %434
  %436 = tail call fastcc i32 @mk_write_size(ptr noundef %58, i32 noundef %435), !range !64
  %437 = icmp slt i32 %436, 0
  br i1 %437, label %1859, label %438

438:                                              ; preds = %433
  %439 = zext nneg i32 %434 to i64
  %440 = getelementptr inbounds i8, ptr %23, i64 %439
  %441 = load i32, ptr %62, align 8, !tbaa !60
  %442 = add i32 %441, %435
  %443 = load i32, ptr %65, align 4, !tbaa !61
  %444 = icmp ugt i32 %442, %443
  br i1 %444, label %445, label %460

445:                                              ; preds = %438
  %446 = icmp eq i32 %443, 0
  %447 = shl i32 %443, 1
  %448 = select i1 %446, i32 16, i32 %447
  br label %449

449:                                              ; preds = %449, %445
  %450 = phi i32 [ %448, %445 ], [ %452, %449 ]
  %451 = icmp ugt i32 %442, %450
  %452 = shl i32 %450, 1
  br i1 %451, label %449, label %453, !llvm.loop !62

453:                                              ; preds = %449
  %454 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %455 = load ptr, ptr %454, align 8, !tbaa !51
  %456 = zext i32 %450 to i64
  %457 = tail call ptr @realloc(ptr noundef %455, i64 noundef %456) #13
  %458 = icmp eq ptr %457, null
  br i1 %458, label %1859, label %459

459:                                              ; preds = %453
  store ptr %457, ptr %454, align 8, !tbaa !51
  store i32 %450, ptr %65, align 4, !tbaa !61
  br label %460

460:                                              ; preds = %459, %438
  %461 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %462 = load ptr, ptr %461, align 8, !tbaa !51
  %463 = load i32, ptr %62, align 8, !tbaa !60
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds i8, ptr %462, i64 %464
  %466 = zext i32 %435 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %465, ptr nonnull align 1 %440, i64 %466, i1 false)
  store i32 %442, ptr %62, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #11
  %467 = getelementptr inbounds i8, ptr %22, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %22, i8 0, i64 7, i1 false)
  store i8 2, ptr %467, align 1, !tbaa !59
  %468 = add i32 %442, 2
  %469 = load i32, ptr %65, align 4, !tbaa !61
  %470 = icmp ugt i32 %468, %469
  br i1 %470, label %471, label %486

471:                                              ; preds = %460
  %472 = icmp eq i32 %469, 0
  %473 = shl i32 %469, 1
  %474 = select i1 %472, i32 16, i32 %473
  br label %475

475:                                              ; preds = %475, %471
  %476 = phi i32 [ %474, %471 ], [ %478, %475 ]
  %477 = icmp ugt i32 %468, %476
  %478 = shl i32 %476, 1
  br i1 %477, label %475, label %479, !llvm.loop !62

479:                                              ; preds = %475
  %480 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %481 = load ptr, ptr %480, align 8, !tbaa !51
  %482 = zext i32 %476 to i64
  %483 = tail call ptr @realloc(ptr noundef %481, i64 noundef %482) #13
  %484 = icmp eq ptr %483, null
  br i1 %484, label %1860, label %485

485:                                              ; preds = %479
  store ptr %483, ptr %480, align 8, !tbaa !51
  store i32 %476, ptr %65, align 4, !tbaa !61
  br label %486

486:                                              ; preds = %485, %460
  %487 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %488 = load ptr, ptr %487, align 8, !tbaa !51
  %489 = load i32, ptr %62, align 8, !tbaa !60
  %490 = zext i32 %489 to i64
  %491 = getelementptr inbounds i8, ptr %488, i64 %490
  store i8 66, ptr %491, align 1
  %492 = getelementptr inbounds i8, ptr %491, i64 1
  store i8 -123, ptr %492, align 1
  store i32 %468, ptr %62, align 8, !tbaa !60
  br label %493

493:                                              ; preds = %486, %498
  %494 = phi i64 [ %499, %498 ], [ 0, %486 ]
  %495 = getelementptr inbounds [8 x i8], ptr %22, i64 0, i64 %494
  %496 = load i8, ptr %495, align 1, !tbaa !59
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %493
  %499 = add nuw nsw i64 %494, 1
  %500 = icmp eq i64 %499, 7
  br i1 %500, label %503, label %493, !llvm.loop !63

501:                                              ; preds = %493
  %502 = trunc i64 %494 to i32
  br label %503

503:                                              ; preds = %498, %501
  %504 = phi i32 [ %502, %501 ], [ 7, %498 ]
  %505 = sub nsw i32 8, %504
  %506 = tail call fastcc i32 @mk_write_size(ptr noundef %58, i32 noundef %505), !range !64
  %507 = icmp slt i32 %506, 0
  br i1 %507, label %1860, label %508

508:                                              ; preds = %503
  %509 = zext nneg i32 %504 to i64
  %510 = getelementptr inbounds i8, ptr %22, i64 %509
  %511 = load i32, ptr %62, align 8, !tbaa !60
  %512 = add i32 %511, %505
  %513 = load i32, ptr %65, align 4, !tbaa !61
  %514 = icmp ugt i32 %512, %513
  br i1 %514, label %515, label %530

515:                                              ; preds = %508
  %516 = icmp eq i32 %513, 0
  %517 = shl i32 %513, 1
  %518 = select i1 %516, i32 16, i32 %517
  br label %519

519:                                              ; preds = %519, %515
  %520 = phi i32 [ %518, %515 ], [ %522, %519 ]
  %521 = icmp ugt i32 %512, %520
  %522 = shl i32 %520, 1
  br i1 %521, label %519, label %523, !llvm.loop !62

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %525 = load ptr, ptr %524, align 8, !tbaa !51
  %526 = zext i32 %520 to i64
  %527 = tail call ptr @realloc(ptr noundef %525, i64 noundef %526) #13
  %528 = icmp eq ptr %527, null
  br i1 %528, label %1860, label %529

529:                                              ; preds = %523
  store ptr %527, ptr %524, align 8, !tbaa !51
  store i32 %520, ptr %65, align 4, !tbaa !61
  br label %530

530:                                              ; preds = %529, %508
  %531 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 5
  %532 = load ptr, ptr %531, align 8, !tbaa !51
  %533 = load i32, ptr %62, align 8, !tbaa !60
  %534 = zext i32 %533 to i64
  %535 = getelementptr inbounds i8, ptr %532, i64 %534
  %536 = zext i32 %505 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %535, ptr nonnull align 1 %510, i64 %536, i1 false)
  store i32 %512, ptr %62, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #11
  %537 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %58, ptr noundef null), !range !64
  %538 = icmp slt i32 %537, 0
  br i1 %538, label %1871, label %539

539:                                              ; preds = %530
  %540 = load ptr, ptr %34, align 8, !tbaa !48
  %541 = load ptr, ptr %36, align 8, !tbaa !34
  %542 = icmp eq ptr %541, null
  br i1 %542, label %545, label %543

543:                                              ; preds = %539
  %544 = load ptr, ptr %541, align 8, !tbaa !41
  store ptr %544, ptr %36, align 8, !tbaa !34
  br label %549

545:                                              ; preds = %539
  %546 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #10
  %547 = icmp eq ptr %546, null
  br i1 %547, label %561, label %548

548:                                              ; preds = %545
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %546, i8 0, i64 56, i1 false)
  br label %549

549:                                              ; preds = %548, %543
  %550 = phi ptr [ %541, %543 ], [ %546, %548 ]
  %551 = getelementptr inbounds %struct.mk_context, ptr %550, i64 0, i32 2
  store ptr %540, ptr %551, align 8, !tbaa !43
  %552 = getelementptr inbounds %struct.mk_context, ptr %550, i64 0, i32 3
  store ptr %0, ptr %552, align 8, !tbaa !44
  %553 = getelementptr inbounds %struct.mk_context, ptr %550, i64 0, i32 4
  store i32 408125543, ptr %553, align 8, !tbaa !45
  %554 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 6
  %555 = load ptr, ptr %554, align 8, !tbaa !46
  %556 = icmp eq ptr %555, null
  br i1 %556, label %559, label %557

557:                                              ; preds = %549
  %558 = getelementptr inbounds %struct.mk_context, ptr %555, i64 0, i32 1
  store ptr %550, ptr %558, align 8, !tbaa !47
  br label %559

559:                                              ; preds = %557, %549
  store ptr %555, ptr %550, align 8, !tbaa !41
  %560 = getelementptr inbounds %struct.mk_context, ptr %550, i64 0, i32 1
  store ptr %554, ptr %560, align 8, !tbaa !47
  store ptr %550, ptr %554, align 8, !tbaa !46
  br label %561

561:                                              ; preds = %545, %559
  %562 = phi ptr [ %550, %559 ], [ null, %545 ]
  %563 = icmp eq ptr %562, null
  br i1 %563, label %1871, label %564

564:                                              ; preds = %561
  %565 = getelementptr inbounds %struct.mk_context, ptr %562, i64 0, i32 4
  %566 = load i32, ptr %565, align 8, !tbaa !45
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %602, label %568

568:                                              ; preds = %564
  %569 = getelementptr inbounds %struct.mk_context, ptr %562, i64 0, i32 2
  %570 = load ptr, ptr %569, align 8, !tbaa !43
  %571 = tail call fastcc i32 @mk_write_id(ptr noundef %570, i32 noundef %566), !range !64
  %572 = icmp slt i32 %571, 0
  br i1 %572, label %1871, label %573

573:                                              ; preds = %568
  %574 = load ptr, ptr %569, align 8, !tbaa !43
  %575 = getelementptr inbounds %struct.mk_context, ptr %574, i64 0, i32 6
  %576 = load i32, ptr %575, align 8, !tbaa !60
  %577 = add i32 %576, 1
  %578 = getelementptr inbounds %struct.mk_context, ptr %574, i64 0, i32 7
  %579 = load i32, ptr %578, align 4, !tbaa !61
  %580 = icmp ugt i32 %577, %579
  br i1 %580, label %581, label %596

581:                                              ; preds = %573
  %582 = icmp eq i32 %579, 0
  %583 = shl i32 %579, 1
  %584 = select i1 %582, i32 16, i32 %583
  br label %585

585:                                              ; preds = %585, %581
  %586 = phi i32 [ %584, %581 ], [ %588, %585 ]
  %587 = icmp ugt i32 %577, %586
  %588 = shl i32 %586, 1
  br i1 %587, label %585, label %589, !llvm.loop !62

589:                                              ; preds = %585
  %590 = getelementptr inbounds %struct.mk_context, ptr %574, i64 0, i32 5
  %591 = load ptr, ptr %590, align 8, !tbaa !51
  %592 = zext i32 %586 to i64
  %593 = tail call ptr @realloc(ptr noundef %591, i64 noundef %592) #13
  %594 = icmp eq ptr %593, null
  br i1 %594, label %1871, label %595

595:                                              ; preds = %589
  store ptr %593, ptr %590, align 8, !tbaa !51
  store i32 %586, ptr %578, align 4, !tbaa !61
  br label %596

596:                                              ; preds = %595, %573
  %597 = getelementptr inbounds %struct.mk_context, ptr %574, i64 0, i32 5
  %598 = load ptr, ptr %597, align 8, !tbaa !51
  %599 = load i32, ptr %575, align 8, !tbaa !60
  %600 = zext i32 %599 to i64
  %601 = getelementptr inbounds i8, ptr %598, i64 %600
  store i8 -1, ptr %601, align 1
  store i32 %577, ptr %575, align 8, !tbaa !60
  store i32 0, ptr %565, align 8, !tbaa !45
  br label %602

602:                                              ; preds = %564, %596
  %603 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %562, ptr noundef null), !range !64
  %604 = icmp slt i32 %603, 0
  br i1 %604, label %1871, label %605

605:                                              ; preds = %602
  %606 = load ptr, ptr %34, align 8, !tbaa !48
  %607 = load ptr, ptr %36, align 8, !tbaa !34
  %608 = icmp eq ptr %607, null
  br i1 %608, label %611, label %609

609:                                              ; preds = %605
  %610 = load ptr, ptr %607, align 8, !tbaa !41
  store ptr %610, ptr %36, align 8, !tbaa !34
  br label %615

611:                                              ; preds = %605
  %612 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #10
  %613 = icmp eq ptr %612, null
  br i1 %613, label %627, label %614

614:                                              ; preds = %611
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %612, i8 0, i64 56, i1 false)
  br label %615

615:                                              ; preds = %614, %609
  %616 = phi ptr [ %607, %609 ], [ %612, %614 ]
  %617 = getelementptr inbounds %struct.mk_context, ptr %616, i64 0, i32 2
  store ptr %606, ptr %617, align 8, !tbaa !43
  %618 = getelementptr inbounds %struct.mk_context, ptr %616, i64 0, i32 3
  store ptr %0, ptr %618, align 8, !tbaa !44
  %619 = getelementptr inbounds %struct.mk_context, ptr %616, i64 0, i32 4
  store i32 357149030, ptr %619, align 8, !tbaa !45
  %620 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 6
  %621 = load ptr, ptr %620, align 8, !tbaa !46
  %622 = icmp eq ptr %621, null
  br i1 %622, label %625, label %623

623:                                              ; preds = %615
  %624 = getelementptr inbounds %struct.mk_context, ptr %621, i64 0, i32 1
  store ptr %616, ptr %624, align 8, !tbaa !47
  br label %625

625:                                              ; preds = %623, %615
  store ptr %621, ptr %616, align 8, !tbaa !41
  %626 = getelementptr inbounds %struct.mk_context, ptr %616, i64 0, i32 1
  store ptr %620, ptr %626, align 8, !tbaa !47
  store ptr %616, ptr %620, align 8, !tbaa !46
  br label %627

627:                                              ; preds = %611, %625
  %628 = phi ptr [ %616, %625 ], [ null, %611 ]
  %629 = icmp eq ptr %628, null
  br i1 %629, label %1871, label %630

630:                                              ; preds = %627
  %631 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 6
  %632 = load i32, ptr %631, align 8, !tbaa !60
  %633 = add i32 %632, 2
  %634 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 7
  %635 = load i32, ptr %634, align 4, !tbaa !61
  %636 = icmp ugt i32 %633, %635
  br i1 %636, label %637, label %652

637:                                              ; preds = %630
  %638 = icmp eq i32 %635, 0
  %639 = shl i32 %635, 1
  %640 = select i1 %638, i32 16, i32 %639
  br label %641

641:                                              ; preds = %641, %637
  %642 = phi i32 [ %640, %637 ], [ %644, %641 ]
  %643 = icmp ugt i32 %633, %642
  %644 = shl i32 %642, 1
  br i1 %643, label %641, label %645, !llvm.loop !62

645:                                              ; preds = %641
  %646 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %647 = load ptr, ptr %646, align 8, !tbaa !51
  %648 = zext i32 %642 to i64
  %649 = tail call ptr @realloc(ptr noundef %647, i64 noundef %648) #13
  %650 = icmp eq ptr %649, null
  br i1 %650, label %1871, label %651

651:                                              ; preds = %645
  store ptr %649, ptr %646, align 8, !tbaa !51
  store i32 %642, ptr %634, align 4, !tbaa !61
  br label %652

652:                                              ; preds = %651, %630
  %653 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %654 = load ptr, ptr %653, align 8, !tbaa !51
  %655 = load i32, ptr %631, align 8, !tbaa !60
  %656 = zext i32 %655 to i64
  %657 = getelementptr inbounds i8, ptr %654, i64 %656
  store i8 77, ptr %657, align 1
  %658 = getelementptr inbounds i8, ptr %657, i64 1
  store i8 -128, ptr %658, align 1
  store i32 %633, ptr %631, align 8, !tbaa !60
  %659 = tail call fastcc i32 @mk_write_size(ptr noundef nonnull %628, i32 noundef 24), !range !64
  %660 = icmp slt i32 %659, 0
  br i1 %660, label %1871, label %661

661:                                              ; preds = %652
  %662 = load i32, ptr %631, align 8, !tbaa !60
  %663 = add i32 %662, 24
  %664 = load i32, ptr %634, align 4, !tbaa !61
  %665 = icmp ugt i32 %663, %664
  br i1 %665, label %666, label %681

666:                                              ; preds = %661
  %667 = icmp eq i32 %664, 0
  %668 = shl i32 %664, 1
  %669 = select i1 %667, i32 16, i32 %668
  br label %670

670:                                              ; preds = %670, %666
  %671 = phi i32 [ %669, %666 ], [ %673, %670 ]
  %672 = icmp ugt i32 %663, %671
  %673 = shl i32 %671, 1
  br i1 %672, label %670, label %674, !llvm.loop !62

674:                                              ; preds = %670
  %675 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %676 = load ptr, ptr %675, align 8, !tbaa !51
  %677 = zext i32 %671 to i64
  %678 = tail call ptr @realloc(ptr noundef %676, i64 noundef %677) #13
  %679 = icmp eq ptr %678, null
  br i1 %679, label %1871, label %680

680:                                              ; preds = %674
  store ptr %678, ptr %675, align 8, !tbaa !51
  store i32 %671, ptr %634, align 4, !tbaa !61
  br label %681

681:                                              ; preds = %680, %661
  %682 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %683 = load ptr, ptr %682, align 8, !tbaa !51
  %684 = load i32, ptr %631, align 8, !tbaa !60
  %685 = zext i32 %684 to i64
  %686 = getelementptr inbounds i8, ptr %683, i64 %685
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %686, ptr noundef nonnull align 1 dereferenceable(24) @.str.3, i64 24, i1 false)
  store i32 %663, ptr %631, align 8, !tbaa !60
  %687 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %688 = add i32 %662, 26
  %689 = load i32, ptr %634, align 4, !tbaa !61
  %690 = icmp ugt i32 %688, %689
  br i1 %690, label %691, label %706

691:                                              ; preds = %681
  %692 = icmp eq i32 %689, 0
  %693 = shl i32 %689, 1
  %694 = select i1 %692, i32 16, i32 %693
  br label %695

695:                                              ; preds = %695, %691
  %696 = phi i32 [ %694, %691 ], [ %698, %695 ]
  %697 = icmp ugt i32 %688, %696
  %698 = shl i32 %696, 1
  br i1 %697, label %695, label %699, !llvm.loop !62

699:                                              ; preds = %695
  %700 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %701 = load ptr, ptr %700, align 8, !tbaa !51
  %702 = zext i32 %696 to i64
  %703 = tail call ptr @realloc(ptr noundef %701, i64 noundef %702) #13
  %704 = icmp eq ptr %703, null
  br i1 %704, label %1871, label %705

705:                                              ; preds = %699
  store ptr %703, ptr %700, align 8, !tbaa !51
  store i32 %696, ptr %634, align 4, !tbaa !61
  br label %706

706:                                              ; preds = %705, %681
  %707 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %708 = load ptr, ptr %707, align 8, !tbaa !51
  %709 = load i32, ptr %631, align 8, !tbaa !60
  %710 = zext i32 %709 to i64
  %711 = getelementptr inbounds i8, ptr %708, i64 %710
  store i8 87, ptr %711, align 1
  %712 = getelementptr inbounds i8, ptr %711, i64 1
  store i8 65, ptr %712, align 1
  store i32 %688, ptr %631, align 8, !tbaa !60
  %713 = trunc i64 %687 to i32
  %714 = tail call fastcc i32 @mk_write_size(ptr noundef nonnull %628, i32 noundef %713), !range !64
  %715 = icmp slt i32 %714, 0
  br i1 %715, label %1871, label %716

716:                                              ; preds = %706
  %717 = load i32, ptr %631, align 8, !tbaa !60
  %718 = add i32 %717, %713
  %719 = load i32, ptr %634, align 4, !tbaa !61
  %720 = icmp ugt i32 %718, %719
  br i1 %720, label %721, label %736

721:                                              ; preds = %716
  %722 = icmp eq i32 %719, 0
  %723 = shl i32 %719, 1
  %724 = select i1 %722, i32 16, i32 %723
  br label %725

725:                                              ; preds = %725, %721
  %726 = phi i32 [ %724, %721 ], [ %728, %725 ]
  %727 = icmp ugt i32 %718, %726
  %728 = shl i32 %726, 1
  br i1 %727, label %725, label %729, !llvm.loop !62

729:                                              ; preds = %725
  %730 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %731 = load ptr, ptr %730, align 8, !tbaa !51
  %732 = zext i32 %726 to i64
  %733 = tail call ptr @realloc(ptr noundef %731, i64 noundef %732) #13
  %734 = icmp eq ptr %733, null
  br i1 %734, label %1871, label %735

735:                                              ; preds = %729
  store ptr %733, ptr %730, align 8, !tbaa !51
  store i32 %726, ptr %634, align 4, !tbaa !61
  br label %736

736:                                              ; preds = %735, %716
  %737 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %738 = load ptr, ptr %737, align 8, !tbaa !51
  %739 = load i32, ptr %631, align 8, !tbaa !60
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds i8, ptr %738, i64 %740
  %742 = and i64 %687, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %741, ptr align 1 %1, i64 %742, i1 false)
  store i32 %718, ptr %631, align 8, !tbaa !60
  %743 = load i64, ptr %32, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #11
  %744 = lshr i64 %743, 56
  %745 = trunc i64 %744 to i8
  store i8 %745, ptr %21, align 1, !tbaa !59
  %746 = getelementptr inbounds i8, ptr %21, i64 1
  %747 = lshr i64 %743, 48
  %748 = trunc i64 %747 to i8
  store i8 %748, ptr %746, align 1, !tbaa !59
  %749 = getelementptr inbounds i8, ptr %21, i64 2
  %750 = lshr i64 %743, 40
  %751 = trunc i64 %750 to i8
  store i8 %751, ptr %749, align 1, !tbaa !59
  %752 = getelementptr inbounds i8, ptr %21, i64 3
  %753 = lshr i64 %743, 32
  %754 = trunc i64 %753 to i8
  store i8 %754, ptr %752, align 1, !tbaa !59
  %755 = getelementptr inbounds i8, ptr %21, i64 4
  %756 = lshr i64 %743, 24
  %757 = trunc i64 %756 to i8
  store i8 %757, ptr %755, align 1, !tbaa !59
  %758 = getelementptr inbounds i8, ptr %21, i64 5
  %759 = lshr i64 %743, 16
  %760 = trunc i64 %759 to i8
  store i8 %760, ptr %758, align 1, !tbaa !59
  %761 = getelementptr inbounds i8, ptr %21, i64 6
  %762 = lshr i64 %743, 8
  %763 = trunc i64 %762 to i8
  store i8 %763, ptr %761, align 1, !tbaa !59
  %764 = getelementptr inbounds i8, ptr %21, i64 7
  %765 = trunc i64 %743 to i8
  store i8 %765, ptr %764, align 1, !tbaa !59
  %766 = load i32, ptr %631, align 8, !tbaa !60
  %767 = add i32 %766, 3
  %768 = load i32, ptr %634, align 4, !tbaa !61
  %769 = icmp ugt i32 %767, %768
  br i1 %769, label %770, label %785

770:                                              ; preds = %736
  %771 = icmp eq i32 %768, 0
  %772 = shl i32 %768, 1
  %773 = select i1 %771, i32 16, i32 %772
  br label %774

774:                                              ; preds = %774, %770
  %775 = phi i32 [ %773, %770 ], [ %777, %774 ]
  %776 = icmp ugt i32 %767, %775
  %777 = shl i32 %775, 1
  br i1 %776, label %774, label %778, !llvm.loop !62

778:                                              ; preds = %774
  %779 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %780 = load ptr, ptr %779, align 8, !tbaa !51
  %781 = zext i32 %775 to i64
  %782 = tail call ptr @realloc(ptr noundef %780, i64 noundef %781) #13
  %783 = icmp eq ptr %782, null
  br i1 %783, label %1861, label %784

784:                                              ; preds = %778
  store ptr %782, ptr %779, align 8, !tbaa !51
  store i32 %775, ptr %634, align 4, !tbaa !61
  br label %785

785:                                              ; preds = %784, %736
  %786 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %787 = load ptr, ptr %786, align 8, !tbaa !51
  %788 = load i32, ptr %631, align 8, !tbaa !60
  %789 = zext i32 %788 to i64
  %790 = getelementptr inbounds i8, ptr %787, i64 %789
  store i8 42, ptr %790, align 1
  %791 = getelementptr inbounds i8, ptr %790, i64 1
  store i8 -41, ptr %791, align 1
  %792 = getelementptr inbounds i8, ptr %790, i64 2
  store i8 -79, ptr %792, align 1
  store i32 %767, ptr %631, align 8, !tbaa !60
  br label %793

793:                                              ; preds = %785, %798
  %794 = phi i64 [ %799, %798 ], [ 0, %785 ]
  %795 = getelementptr inbounds [8 x i8], ptr %21, i64 0, i64 %794
  %796 = load i8, ptr %795, align 1, !tbaa !59
  %797 = icmp eq i8 %796, 0
  br i1 %797, label %798, label %801

798:                                              ; preds = %793
  %799 = add nuw nsw i64 %794, 1
  %800 = icmp eq i64 %799, 7
  br i1 %800, label %803, label %793, !llvm.loop !63

801:                                              ; preds = %793
  %802 = trunc i64 %794 to i32
  br label %803

803:                                              ; preds = %798, %801
  %804 = phi i32 [ %802, %801 ], [ 7, %798 ]
  %805 = sub nsw i32 8, %804
  %806 = tail call fastcc i32 @mk_write_size(ptr noundef nonnull %628, i32 noundef %805), !range !64
  %807 = icmp slt i32 %806, 0
  br i1 %807, label %1861, label %808

808:                                              ; preds = %803
  %809 = zext nneg i32 %804 to i64
  %810 = getelementptr inbounds i8, ptr %21, i64 %809
  %811 = load i32, ptr %631, align 8, !tbaa !60
  %812 = add i32 %811, %805
  %813 = load i32, ptr %634, align 4, !tbaa !61
  %814 = icmp ugt i32 %812, %813
  br i1 %814, label %815, label %830

815:                                              ; preds = %808
  %816 = icmp eq i32 %813, 0
  %817 = shl i32 %813, 1
  %818 = select i1 %816, i32 16, i32 %817
  br label %819

819:                                              ; preds = %819, %815
  %820 = phi i32 [ %818, %815 ], [ %822, %819 ]
  %821 = icmp ugt i32 %812, %820
  %822 = shl i32 %820, 1
  br i1 %821, label %819, label %823, !llvm.loop !62

823:                                              ; preds = %819
  %824 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %825 = load ptr, ptr %824, align 8, !tbaa !51
  %826 = zext i32 %820 to i64
  %827 = tail call ptr @realloc(ptr noundef %825, i64 noundef %826) #13
  %828 = icmp eq ptr %827, null
  br i1 %828, label %1861, label %829

829:                                              ; preds = %823
  store ptr %827, ptr %824, align 8, !tbaa !51
  store i32 %820, ptr %634, align 4, !tbaa !61
  br label %830

830:                                              ; preds = %829, %808
  %831 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %832 = load ptr, ptr %831, align 8, !tbaa !51
  %833 = load i32, ptr %631, align 8, !tbaa !60
  %834 = zext i32 %833 to i64
  %835 = getelementptr inbounds i8, ptr %832, i64 %834
  %836 = zext i32 %805 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %835, ptr nonnull align 1 %810, i64 %836, i1 false)
  store i32 %812, ptr %631, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #11
  %837 = add i32 %812, 2
  %838 = load i32, ptr %634, align 4, !tbaa !61
  %839 = icmp ugt i32 %837, %838
  br i1 %839, label %840, label %855

840:                                              ; preds = %830
  %841 = icmp eq i32 %838, 0
  %842 = shl i32 %838, 1
  %843 = select i1 %841, i32 16, i32 %842
  br label %844

844:                                              ; preds = %844, %840
  %845 = phi i32 [ %843, %840 ], [ %847, %844 ]
  %846 = icmp ugt i32 %837, %845
  %847 = shl i32 %845, 1
  br i1 %846, label %844, label %848, !llvm.loop !62

848:                                              ; preds = %844
  %849 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %850 = load ptr, ptr %849, align 8, !tbaa !51
  %851 = zext i32 %845 to i64
  %852 = tail call ptr @realloc(ptr noundef %850, i64 noundef %851) #13
  %853 = icmp eq ptr %852, null
  br i1 %853, label %1871, label %854

854:                                              ; preds = %848
  store ptr %852, ptr %849, align 8, !tbaa !51
  store i32 %845, ptr %634, align 4, !tbaa !61
  br label %855

855:                                              ; preds = %854, %830
  %856 = getelementptr inbounds %struct.mk_context, ptr %628, i64 0, i32 5
  %857 = load ptr, ptr %856, align 8, !tbaa !51
  %858 = load i32, ptr %631, align 8, !tbaa !60
  %859 = zext i32 %858 to i64
  %860 = getelementptr inbounds i8, ptr %857, i64 %859
  store i8 68, ptr %860, align 1
  %861 = getelementptr inbounds i8, ptr %860, i64 1
  store i8 -119, ptr %861, align 1
  store i32 %837, ptr %631, align 8, !tbaa !60
  %862 = add i32 %812, 3
  %863 = load i32, ptr %634, align 4, !tbaa !61
  %864 = icmp ugt i32 %862, %863
  br i1 %864, label %865, label %879

865:                                              ; preds = %855
  %866 = icmp eq i32 %863, 0
  %867 = shl i32 %863, 1
  %868 = select i1 %866, i32 16, i32 %867
  br label %869

869:                                              ; preds = %869, %865
  %870 = phi i32 [ %868, %865 ], [ %872, %869 ]
  %871 = icmp ugt i32 %862, %870
  %872 = shl i32 %870, 1
  br i1 %871, label %869, label %873, !llvm.loop !62

873:                                              ; preds = %869
  %874 = load ptr, ptr %856, align 8, !tbaa !51
  %875 = zext i32 %870 to i64
  %876 = tail call ptr @realloc(ptr noundef %874, i64 noundef %875) #13
  %877 = icmp eq ptr %876, null
  br i1 %877, label %1871, label %878

878:                                              ; preds = %873
  store ptr %876, ptr %856, align 8, !tbaa !51
  store i32 %870, ptr %634, align 4, !tbaa !61
  br label %879

879:                                              ; preds = %878, %855
  %880 = load ptr, ptr %856, align 8, !tbaa !51
  %881 = load i32, ptr %631, align 8, !tbaa !60
  %882 = zext i32 %881 to i64
  %883 = getelementptr inbounds i8, ptr %880, i64 %882
  store i8 -124, ptr %883, align 1
  store i32 %862, ptr %631, align 8, !tbaa !60
  %884 = add i32 %812, 7
  %885 = load i32, ptr %634, align 4, !tbaa !61
  %886 = icmp ugt i32 %884, %885
  br i1 %886, label %887, label %901

887:                                              ; preds = %879
  %888 = icmp eq i32 %885, 0
  %889 = shl i32 %885, 1
  %890 = select i1 %888, i32 16, i32 %889
  br label %891

891:                                              ; preds = %891, %887
  %892 = phi i32 [ %890, %887 ], [ %894, %891 ]
  %893 = icmp ugt i32 %884, %892
  %894 = shl i32 %892, 1
  br i1 %893, label %891, label %895, !llvm.loop !62

895:                                              ; preds = %891
  %896 = load ptr, ptr %856, align 8, !tbaa !51
  %897 = zext i32 %892 to i64
  %898 = tail call ptr @realloc(ptr noundef %896, i64 noundef %897) #13
  %899 = icmp eq ptr %898, null
  br i1 %899, label %1871, label %900

900:                                              ; preds = %895
  store ptr %898, ptr %856, align 8, !tbaa !51
  store i32 %892, ptr %634, align 4, !tbaa !61
  br label %901

901:                                              ; preds = %900, %879
  %902 = load ptr, ptr %856, align 8, !tbaa !51
  %903 = load i32, ptr %631, align 8, !tbaa !60
  %904 = zext i32 %903 to i64
  %905 = getelementptr inbounds i8, ptr %902, i64 %904
  store i32 0, ptr %905, align 1
  store i32 %884, ptr %631, align 8, !tbaa !60
  %906 = add i32 %812, 3
  %907 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 1
  store i32 %906, ptr %907, align 8, !tbaa !65
  %908 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %628, ptr noundef nonnull %907), !range !64
  %909 = icmp slt i32 %908, 0
  br i1 %909, label %1871, label %910

910:                                              ; preds = %901
  %911 = load ptr, ptr %34, align 8, !tbaa !48
  %912 = load ptr, ptr %36, align 8, !tbaa !34
  %913 = icmp eq ptr %912, null
  br i1 %913, label %916, label %914

914:                                              ; preds = %910
  %915 = load ptr, ptr %912, align 8, !tbaa !41
  store ptr %915, ptr %36, align 8, !tbaa !34
  br label %920

916:                                              ; preds = %910
  %917 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #10
  %918 = icmp eq ptr %917, null
  br i1 %918, label %932, label %919

919:                                              ; preds = %916
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %917, i8 0, i64 56, i1 false)
  br label %920

920:                                              ; preds = %919, %914
  %921 = phi ptr [ %912, %914 ], [ %917, %919 ]
  %922 = getelementptr inbounds %struct.mk_context, ptr %921, i64 0, i32 2
  store ptr %911, ptr %922, align 8, !tbaa !43
  %923 = getelementptr inbounds %struct.mk_context, ptr %921, i64 0, i32 3
  store ptr %0, ptr %923, align 8, !tbaa !44
  %924 = getelementptr inbounds %struct.mk_context, ptr %921, i64 0, i32 4
  store i32 374648427, ptr %924, align 8, !tbaa !45
  %925 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 6
  %926 = load ptr, ptr %925, align 8, !tbaa !46
  %927 = icmp eq ptr %926, null
  br i1 %927, label %930, label %928

928:                                              ; preds = %920
  %929 = getelementptr inbounds %struct.mk_context, ptr %926, i64 0, i32 1
  store ptr %921, ptr %929, align 8, !tbaa !47
  br label %930

930:                                              ; preds = %928, %920
  store ptr %926, ptr %921, align 8, !tbaa !41
  %931 = getelementptr inbounds %struct.mk_context, ptr %921, i64 0, i32 1
  store ptr %925, ptr %931, align 8, !tbaa !47
  store ptr %921, ptr %925, align 8, !tbaa !46
  br label %932

932:                                              ; preds = %916, %930
  %933 = phi ptr [ %921, %930 ], [ null, %916 ]
  %934 = icmp eq ptr %933, null
  br i1 %934, label %1871, label %935

935:                                              ; preds = %932
  %936 = load ptr, ptr %36, align 8, !tbaa !34
  %937 = icmp eq ptr %936, null
  br i1 %937, label %940, label %938

938:                                              ; preds = %935
  %939 = load ptr, ptr %936, align 8, !tbaa !41
  store ptr %939, ptr %36, align 8, !tbaa !34
  br label %944

940:                                              ; preds = %935
  %941 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #10
  %942 = icmp eq ptr %941, null
  br i1 %942, label %956, label %943

943:                                              ; preds = %940
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %941, i8 0, i64 56, i1 false)
  br label %944

944:                                              ; preds = %943, %938
  %945 = phi ptr [ %936, %938 ], [ %941, %943 ]
  %946 = getelementptr inbounds %struct.mk_context, ptr %945, i64 0, i32 2
  store ptr %933, ptr %946, align 8, !tbaa !43
  %947 = getelementptr inbounds %struct.mk_context, ptr %945, i64 0, i32 3
  store ptr %0, ptr %947, align 8, !tbaa !44
  %948 = getelementptr inbounds %struct.mk_context, ptr %945, i64 0, i32 4
  store i32 174, ptr %948, align 8, !tbaa !45
  %949 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 6
  %950 = load ptr, ptr %949, align 8, !tbaa !46
  %951 = icmp eq ptr %950, null
  br i1 %951, label %954, label %952

952:                                              ; preds = %944
  %953 = getelementptr inbounds %struct.mk_context, ptr %950, i64 0, i32 1
  store ptr %945, ptr %953, align 8, !tbaa !47
  br label %954

954:                                              ; preds = %952, %944
  store ptr %950, ptr %945, align 8, !tbaa !41
  %955 = getelementptr inbounds %struct.mk_context, ptr %945, i64 0, i32 1
  store ptr %949, ptr %955, align 8, !tbaa !47
  store ptr %945, ptr %949, align 8, !tbaa !46
  br label %956

956:                                              ; preds = %940, %954
  %957 = phi ptr [ %945, %954 ], [ null, %940 ]
  %958 = icmp eq ptr %957, null
  br i1 %958, label %1871, label %959

959:                                              ; preds = %956
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #11
  %960 = getelementptr inbounds i8, ptr %20, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %20, i8 0, i64 7, i1 false)
  store i8 1, ptr %960, align 1, !tbaa !59
  %961 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 6
  %962 = load i32, ptr %961, align 8, !tbaa !60
  %963 = add i32 %962, 1
  %964 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 7
  %965 = load i32, ptr %964, align 4, !tbaa !61
  %966 = icmp ugt i32 %963, %965
  br i1 %966, label %967, label %982

967:                                              ; preds = %959
  %968 = icmp eq i32 %965, 0
  %969 = shl i32 %965, 1
  %970 = select i1 %968, i32 16, i32 %969
  br label %971

971:                                              ; preds = %971, %967
  %972 = phi i32 [ %970, %967 ], [ %974, %971 ]
  %973 = icmp ugt i32 %963, %972
  %974 = shl i32 %972, 1
  br i1 %973, label %971, label %975, !llvm.loop !62

975:                                              ; preds = %971
  %976 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %977 = load ptr, ptr %976, align 8, !tbaa !51
  %978 = zext i32 %972 to i64
  %979 = tail call ptr @realloc(ptr noundef %977, i64 noundef %978) #13
  %980 = icmp eq ptr %979, null
  br i1 %980, label %1862, label %981

981:                                              ; preds = %975
  store ptr %979, ptr %976, align 8, !tbaa !51
  store i32 %972, ptr %964, align 4, !tbaa !61
  br label %982

982:                                              ; preds = %981, %959
  %983 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %984 = load ptr, ptr %983, align 8, !tbaa !51
  %985 = load i32, ptr %961, align 8, !tbaa !60
  %986 = zext i32 %985 to i64
  %987 = getelementptr inbounds i8, ptr %984, i64 %986
  store i8 -41, ptr %987, align 1
  store i32 %963, ptr %961, align 8, !tbaa !60
  br label %988

988:                                              ; preds = %982, %993
  %989 = phi i64 [ %994, %993 ], [ 0, %982 ]
  %990 = getelementptr inbounds [8 x i8], ptr %20, i64 0, i64 %989
  %991 = load i8, ptr %990, align 1, !tbaa !59
  %992 = icmp eq i8 %991, 0
  br i1 %992, label %993, label %996

993:                                              ; preds = %988
  %994 = add nuw nsw i64 %989, 1
  %995 = icmp eq i64 %994, 7
  br i1 %995, label %998, label %988, !llvm.loop !63

996:                                              ; preds = %988
  %997 = trunc i64 %989 to i32
  br label %998

998:                                              ; preds = %993, %996
  %999 = phi i32 [ %997, %996 ], [ 7, %993 ]
  %1000 = sub nsw i32 8, %999
  %1001 = tail call fastcc i32 @mk_write_size(ptr noundef %957, i32 noundef %1000), !range !64
  %1002 = icmp slt i32 %1001, 0
  br i1 %1002, label %1862, label %1003

1003:                                             ; preds = %998
  %1004 = zext nneg i32 %999 to i64
  %1005 = getelementptr inbounds i8, ptr %20, i64 %1004
  %1006 = load i32, ptr %961, align 8, !tbaa !60
  %1007 = add i32 %1006, %1000
  %1008 = load i32, ptr %964, align 4, !tbaa !61
  %1009 = icmp ugt i32 %1007, %1008
  br i1 %1009, label %1010, label %1025

1010:                                             ; preds = %1003
  %1011 = icmp eq i32 %1008, 0
  %1012 = shl i32 %1008, 1
  %1013 = select i1 %1011, i32 16, i32 %1012
  br label %1014

1014:                                             ; preds = %1014, %1010
  %1015 = phi i32 [ %1013, %1010 ], [ %1017, %1014 ]
  %1016 = icmp ugt i32 %1007, %1015
  %1017 = shl i32 %1015, 1
  br i1 %1016, label %1014, label %1018, !llvm.loop !62

1018:                                             ; preds = %1014
  %1019 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1020 = load ptr, ptr %1019, align 8, !tbaa !51
  %1021 = zext i32 %1015 to i64
  %1022 = tail call ptr @realloc(ptr noundef %1020, i64 noundef %1021) #13
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %1862, label %1024

1024:                                             ; preds = %1018
  store ptr %1022, ptr %1019, align 8, !tbaa !51
  store i32 %1015, ptr %964, align 4, !tbaa !61
  br label %1025

1025:                                             ; preds = %1024, %1003
  %1026 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1027 = load ptr, ptr %1026, align 8, !tbaa !51
  %1028 = load i32, ptr %961, align 8, !tbaa !60
  %1029 = zext i32 %1028 to i64
  %1030 = getelementptr inbounds i8, ptr %1027, i64 %1029
  %1031 = zext i32 %1000 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1030, ptr nonnull align 1 %1005, i64 %1031, i1 false)
  store i32 %1007, ptr %961, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #11
  %1032 = getelementptr inbounds i8, ptr %19, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %19, i8 0, i64 7, i1 false)
  store i8 1, ptr %1032, align 1, !tbaa !59
  %1033 = add i32 %1007, 2
  %1034 = load i32, ptr %964, align 4, !tbaa !61
  %1035 = icmp ugt i32 %1033, %1034
  br i1 %1035, label %1036, label %1051

1036:                                             ; preds = %1025
  %1037 = icmp eq i32 %1034, 0
  %1038 = shl i32 %1034, 1
  %1039 = select i1 %1037, i32 16, i32 %1038
  br label %1040

1040:                                             ; preds = %1040, %1036
  %1041 = phi i32 [ %1039, %1036 ], [ %1043, %1040 ]
  %1042 = icmp ugt i32 %1033, %1041
  %1043 = shl i32 %1041, 1
  br i1 %1042, label %1040, label %1044, !llvm.loop !62

1044:                                             ; preds = %1040
  %1045 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1046 = load ptr, ptr %1045, align 8, !tbaa !51
  %1047 = zext i32 %1041 to i64
  %1048 = tail call ptr @realloc(ptr noundef %1046, i64 noundef %1047) #13
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1863, label %1050

1050:                                             ; preds = %1044
  store ptr %1048, ptr %1045, align 8, !tbaa !51
  store i32 %1041, ptr %964, align 4, !tbaa !61
  br label %1051

1051:                                             ; preds = %1050, %1025
  %1052 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1053 = load ptr, ptr %1052, align 8, !tbaa !51
  %1054 = load i32, ptr %961, align 8, !tbaa !60
  %1055 = zext i32 %1054 to i64
  %1056 = getelementptr inbounds i8, ptr %1053, i64 %1055
  store i8 115, ptr %1056, align 1
  %1057 = getelementptr inbounds i8, ptr %1056, i64 1
  store i8 -59, ptr %1057, align 1
  store i32 %1033, ptr %961, align 8, !tbaa !60
  br label %1058

1058:                                             ; preds = %1051, %1063
  %1059 = phi i64 [ %1064, %1063 ], [ 0, %1051 ]
  %1060 = getelementptr inbounds [8 x i8], ptr %19, i64 0, i64 %1059
  %1061 = load i8, ptr %1060, align 1, !tbaa !59
  %1062 = icmp eq i8 %1061, 0
  br i1 %1062, label %1063, label %1066

1063:                                             ; preds = %1058
  %1064 = add nuw nsw i64 %1059, 1
  %1065 = icmp eq i64 %1064, 7
  br i1 %1065, label %1068, label %1058, !llvm.loop !63

1066:                                             ; preds = %1058
  %1067 = trunc i64 %1059 to i32
  br label %1068

1068:                                             ; preds = %1063, %1066
  %1069 = phi i32 [ %1067, %1066 ], [ 7, %1063 ]
  %1070 = sub nsw i32 8, %1069
  %1071 = tail call fastcc i32 @mk_write_size(ptr noundef %957, i32 noundef %1070), !range !64
  %1072 = icmp slt i32 %1071, 0
  br i1 %1072, label %1863, label %1073

1073:                                             ; preds = %1068
  %1074 = zext nneg i32 %1069 to i64
  %1075 = getelementptr inbounds i8, ptr %19, i64 %1074
  %1076 = load i32, ptr %961, align 8, !tbaa !60
  %1077 = add i32 %1076, %1070
  %1078 = load i32, ptr %964, align 4, !tbaa !61
  %1079 = icmp ugt i32 %1077, %1078
  br i1 %1079, label %1080, label %1095

1080:                                             ; preds = %1073
  %1081 = icmp eq i32 %1078, 0
  %1082 = shl i32 %1078, 1
  %1083 = select i1 %1081, i32 16, i32 %1082
  br label %1084

1084:                                             ; preds = %1084, %1080
  %1085 = phi i32 [ %1083, %1080 ], [ %1087, %1084 ]
  %1086 = icmp ugt i32 %1077, %1085
  %1087 = shl i32 %1085, 1
  br i1 %1086, label %1084, label %1088, !llvm.loop !62

1088:                                             ; preds = %1084
  %1089 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1090 = load ptr, ptr %1089, align 8, !tbaa !51
  %1091 = zext i32 %1085 to i64
  %1092 = tail call ptr @realloc(ptr noundef %1090, i64 noundef %1091) #13
  %1093 = icmp eq ptr %1092, null
  br i1 %1093, label %1863, label %1094

1094:                                             ; preds = %1088
  store ptr %1092, ptr %1089, align 8, !tbaa !51
  store i32 %1085, ptr %964, align 4, !tbaa !61
  br label %1095

1095:                                             ; preds = %1094, %1073
  %1096 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1097 = load ptr, ptr %1096, align 8, !tbaa !51
  %1098 = load i32, ptr %961, align 8, !tbaa !60
  %1099 = zext i32 %1098 to i64
  %1100 = getelementptr inbounds i8, ptr %1097, i64 %1099
  %1101 = zext i32 %1070 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1100, ptr nonnull align 1 %1075, i64 %1101, i1 false)
  store i32 %1077, ptr %961, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #11
  %1102 = getelementptr inbounds i8, ptr %18, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %18, i8 0, i64 7, i1 false)
  store i8 1, ptr %1102, align 1, !tbaa !59
  %1103 = add i32 %1077, 1
  %1104 = load i32, ptr %964, align 4, !tbaa !61
  %1105 = icmp ugt i32 %1103, %1104
  br i1 %1105, label %1106, label %1121

1106:                                             ; preds = %1095
  %1107 = icmp eq i32 %1104, 0
  %1108 = shl i32 %1104, 1
  %1109 = select i1 %1107, i32 16, i32 %1108
  br label %1110

1110:                                             ; preds = %1110, %1106
  %1111 = phi i32 [ %1109, %1106 ], [ %1113, %1110 ]
  %1112 = icmp ugt i32 %1103, %1111
  %1113 = shl i32 %1111, 1
  br i1 %1112, label %1110, label %1114, !llvm.loop !62

1114:                                             ; preds = %1110
  %1115 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1116 = load ptr, ptr %1115, align 8, !tbaa !51
  %1117 = zext i32 %1111 to i64
  %1118 = tail call ptr @realloc(ptr noundef %1116, i64 noundef %1117) #13
  %1119 = icmp eq ptr %1118, null
  br i1 %1119, label %1864, label %1120

1120:                                             ; preds = %1114
  store ptr %1118, ptr %1115, align 8, !tbaa !51
  store i32 %1111, ptr %964, align 4, !tbaa !61
  br label %1121

1121:                                             ; preds = %1120, %1095
  %1122 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1123 = load ptr, ptr %1122, align 8, !tbaa !51
  %1124 = load i32, ptr %961, align 8, !tbaa !60
  %1125 = zext i32 %1124 to i64
  %1126 = getelementptr inbounds i8, ptr %1123, i64 %1125
  store i8 -125, ptr %1126, align 1
  store i32 %1103, ptr %961, align 8, !tbaa !60
  br label %1127

1127:                                             ; preds = %1121, %1132
  %1128 = phi i64 [ %1133, %1132 ], [ 0, %1121 ]
  %1129 = getelementptr inbounds [8 x i8], ptr %18, i64 0, i64 %1128
  %1130 = load i8, ptr %1129, align 1, !tbaa !59
  %1131 = icmp eq i8 %1130, 0
  br i1 %1131, label %1132, label %1135

1132:                                             ; preds = %1127
  %1133 = add nuw nsw i64 %1128, 1
  %1134 = icmp eq i64 %1133, 7
  br i1 %1134, label %1137, label %1127, !llvm.loop !63

1135:                                             ; preds = %1127
  %1136 = trunc i64 %1128 to i32
  br label %1137

1137:                                             ; preds = %1132, %1135
  %1138 = phi i32 [ %1136, %1135 ], [ 7, %1132 ]
  %1139 = sub nsw i32 8, %1138
  %1140 = tail call fastcc i32 @mk_write_size(ptr noundef %957, i32 noundef %1139), !range !64
  %1141 = icmp slt i32 %1140, 0
  br i1 %1141, label %1864, label %1142

1142:                                             ; preds = %1137
  %1143 = zext nneg i32 %1138 to i64
  %1144 = getelementptr inbounds i8, ptr %18, i64 %1143
  %1145 = load i32, ptr %961, align 8, !tbaa !60
  %1146 = add i32 %1145, %1139
  %1147 = load i32, ptr %964, align 4, !tbaa !61
  %1148 = icmp ugt i32 %1146, %1147
  br i1 %1148, label %1149, label %1164

1149:                                             ; preds = %1142
  %1150 = icmp eq i32 %1147, 0
  %1151 = shl i32 %1147, 1
  %1152 = select i1 %1150, i32 16, i32 %1151
  br label %1153

1153:                                             ; preds = %1153, %1149
  %1154 = phi i32 [ %1152, %1149 ], [ %1156, %1153 ]
  %1155 = icmp ugt i32 %1146, %1154
  %1156 = shl i32 %1154, 1
  br i1 %1155, label %1153, label %1157, !llvm.loop !62

1157:                                             ; preds = %1153
  %1158 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1159 = load ptr, ptr %1158, align 8, !tbaa !51
  %1160 = zext i32 %1154 to i64
  %1161 = tail call ptr @realloc(ptr noundef %1159, i64 noundef %1160) #13
  %1162 = icmp eq ptr %1161, null
  br i1 %1162, label %1864, label %1163

1163:                                             ; preds = %1157
  store ptr %1161, ptr %1158, align 8, !tbaa !51
  store i32 %1154, ptr %964, align 4, !tbaa !61
  br label %1164

1164:                                             ; preds = %1163, %1142
  %1165 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1166 = load ptr, ptr %1165, align 8, !tbaa !51
  %1167 = load i32, ptr %961, align 8, !tbaa !60
  %1168 = zext i32 %1167 to i64
  %1169 = getelementptr inbounds i8, ptr %1166, i64 %1168
  %1170 = zext i32 %1139 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1169, ptr nonnull align 1 %1144, i64 %1170, i1 false)
  store i32 %1146, ptr %961, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #11
  store i64 0, ptr %17, align 8
  %1171 = add i32 %1146, 1
  %1172 = load i32, ptr %964, align 4, !tbaa !61
  %1173 = icmp ugt i32 %1171, %1172
  br i1 %1173, label %1174, label %1189

1174:                                             ; preds = %1164
  %1175 = icmp eq i32 %1172, 0
  %1176 = shl i32 %1172, 1
  %1177 = select i1 %1175, i32 16, i32 %1176
  br label %1178

1178:                                             ; preds = %1178, %1174
  %1179 = phi i32 [ %1177, %1174 ], [ %1181, %1178 ]
  %1180 = icmp ugt i32 %1171, %1179
  %1181 = shl i32 %1179, 1
  br i1 %1180, label %1178, label %1182, !llvm.loop !62

1182:                                             ; preds = %1178
  %1183 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1184 = load ptr, ptr %1183, align 8, !tbaa !51
  %1185 = zext i32 %1179 to i64
  %1186 = tail call ptr @realloc(ptr noundef %1184, i64 noundef %1185) #13
  %1187 = icmp eq ptr %1186, null
  br i1 %1187, label %1865, label %1188

1188:                                             ; preds = %1182
  store ptr %1186, ptr %1183, align 8, !tbaa !51
  store i32 %1179, ptr %964, align 4, !tbaa !61
  br label %1189

1189:                                             ; preds = %1188, %1164
  %1190 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1191 = load ptr, ptr %1190, align 8, !tbaa !51
  %1192 = load i32, ptr %961, align 8, !tbaa !60
  %1193 = zext i32 %1192 to i64
  %1194 = getelementptr inbounds i8, ptr %1191, i64 %1193
  store i8 -100, ptr %1194, align 1
  store i32 %1171, ptr %961, align 8, !tbaa !60
  br label %1195

1195:                                             ; preds = %1189, %1200
  %1196 = phi i64 [ %1201, %1200 ], [ 0, %1189 ]
  %1197 = getelementptr inbounds [8 x i8], ptr %17, i64 0, i64 %1196
  %1198 = load i8, ptr %1197, align 1, !tbaa !59
  %1199 = icmp eq i8 %1198, 0
  br i1 %1199, label %1200, label %1203

1200:                                             ; preds = %1195
  %1201 = add nuw nsw i64 %1196, 1
  %1202 = icmp eq i64 %1201, 7
  br i1 %1202, label %1205, label %1195, !llvm.loop !63

1203:                                             ; preds = %1195
  %1204 = trunc i64 %1196 to i32
  br label %1205

1205:                                             ; preds = %1200, %1203
  %1206 = phi i32 [ %1204, %1203 ], [ 7, %1200 ]
  %1207 = sub nsw i32 8, %1206
  %1208 = tail call fastcc i32 @mk_write_size(ptr noundef %957, i32 noundef %1207), !range !64
  %1209 = icmp slt i32 %1208, 0
  br i1 %1209, label %1865, label %1210

1210:                                             ; preds = %1205
  %1211 = zext nneg i32 %1206 to i64
  %1212 = getelementptr inbounds i8, ptr %17, i64 %1211
  %1213 = load i32, ptr %961, align 8, !tbaa !60
  %1214 = add i32 %1213, %1207
  %1215 = load i32, ptr %964, align 4, !tbaa !61
  %1216 = icmp ugt i32 %1214, %1215
  br i1 %1216, label %1217, label %1232

1217:                                             ; preds = %1210
  %1218 = icmp eq i32 %1215, 0
  %1219 = shl i32 %1215, 1
  %1220 = select i1 %1218, i32 16, i32 %1219
  br label %1221

1221:                                             ; preds = %1221, %1217
  %1222 = phi i32 [ %1220, %1217 ], [ %1224, %1221 ]
  %1223 = icmp ugt i32 %1214, %1222
  %1224 = shl i32 %1222, 1
  br i1 %1223, label %1221, label %1225, !llvm.loop !62

1225:                                             ; preds = %1221
  %1226 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1227 = load ptr, ptr %1226, align 8, !tbaa !51
  %1228 = zext i32 %1222 to i64
  %1229 = tail call ptr @realloc(ptr noundef %1227, i64 noundef %1228) #13
  %1230 = icmp eq ptr %1229, null
  br i1 %1230, label %1865, label %1231

1231:                                             ; preds = %1225
  store ptr %1229, ptr %1226, align 8, !tbaa !51
  store i32 %1222, ptr %964, align 4, !tbaa !61
  br label %1232

1232:                                             ; preds = %1231, %1210
  %1233 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1234 = load ptr, ptr %1233, align 8, !tbaa !51
  %1235 = load i32, ptr %961, align 8, !tbaa !60
  %1236 = zext i32 %1235 to i64
  %1237 = getelementptr inbounds i8, ptr %1234, i64 %1236
  %1238 = zext i32 %1207 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1237, ptr nonnull align 1 %1212, i64 %1238, i1 false)
  store i32 %1214, ptr %961, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  %1239 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12
  %1240 = add i32 %1214, 1
  %1241 = load i32, ptr %964, align 4, !tbaa !61
  %1242 = icmp ugt i32 %1240, %1241
  br i1 %1242, label %1243, label %1258

1243:                                             ; preds = %1232
  %1244 = icmp eq i32 %1241, 0
  %1245 = shl i32 %1241, 1
  %1246 = select i1 %1244, i32 16, i32 %1245
  br label %1247

1247:                                             ; preds = %1247, %1243
  %1248 = phi i32 [ %1246, %1243 ], [ %1250, %1247 ]
  %1249 = icmp ugt i32 %1240, %1248
  %1250 = shl i32 %1248, 1
  br i1 %1249, label %1247, label %1251, !llvm.loop !62

1251:                                             ; preds = %1247
  %1252 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1253 = load ptr, ptr %1252, align 8, !tbaa !51
  %1254 = zext i32 %1248 to i64
  %1255 = tail call ptr @realloc(ptr noundef %1253, i64 noundef %1254) #13
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1871, label %1257

1257:                                             ; preds = %1251
  store ptr %1255, ptr %1252, align 8, !tbaa !51
  store i32 %1248, ptr %964, align 4, !tbaa !61
  br label %1258

1258:                                             ; preds = %1257, %1232
  %1259 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1260 = load ptr, ptr %1259, align 8, !tbaa !51
  %1261 = load i32, ptr %961, align 8, !tbaa !60
  %1262 = zext i32 %1261 to i64
  %1263 = getelementptr inbounds i8, ptr %1260, i64 %1262
  store i8 -122, ptr %1263, align 1
  store i32 %1240, ptr %961, align 8, !tbaa !60
  %1264 = trunc i64 %1239 to i32
  %1265 = tail call fastcc i32 @mk_write_size(ptr noundef %957, i32 noundef %1264), !range !64
  %1266 = icmp slt i32 %1265, 0
  br i1 %1266, label %1871, label %1267

1267:                                             ; preds = %1258
  %1268 = load i32, ptr %961, align 8, !tbaa !60
  %1269 = add i32 %1268, %1264
  %1270 = load i32, ptr %964, align 4, !tbaa !61
  %1271 = icmp ugt i32 %1269, %1270
  br i1 %1271, label %1272, label %1287

1272:                                             ; preds = %1267
  %1273 = icmp eq i32 %1270, 0
  %1274 = shl i32 %1270, 1
  %1275 = select i1 %1273, i32 16, i32 %1274
  br label %1276

1276:                                             ; preds = %1276, %1272
  %1277 = phi i32 [ %1275, %1272 ], [ %1279, %1276 ]
  %1278 = icmp ugt i32 %1269, %1277
  %1279 = shl i32 %1277, 1
  br i1 %1278, label %1276, label %1280, !llvm.loop !62

1280:                                             ; preds = %1276
  %1281 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1282 = load ptr, ptr %1281, align 8, !tbaa !51
  %1283 = zext i32 %1277 to i64
  %1284 = tail call ptr @realloc(ptr noundef %1282, i64 noundef %1283) #13
  %1285 = icmp eq ptr %1284, null
  br i1 %1285, label %1871, label %1286

1286:                                             ; preds = %1280
  store ptr %1284, ptr %1281, align 8, !tbaa !51
  store i32 %1277, ptr %964, align 4, !tbaa !61
  br label %1287

1287:                                             ; preds = %1286, %1267
  %1288 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1289 = load ptr, ptr %1288, align 8, !tbaa !51
  %1290 = load i32, ptr %961, align 8, !tbaa !60
  %1291 = zext i32 %1290 to i64
  %1292 = getelementptr inbounds i8, ptr %1289, i64 %1291
  %1293 = and i64 %1239, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1292, ptr align 1 %2, i64 %1293, i1 false)
  store i32 %1269, ptr %961, align 8, !tbaa !60
  %1294 = icmp eq i32 %4, 0
  br i1 %1294, label %1349, label %1295

1295:                                             ; preds = %1287
  %1296 = load i32, ptr %961, align 8, !tbaa !60
  %1297 = add i32 %1296, 2
  %1298 = load i32, ptr %964, align 4, !tbaa !61
  %1299 = icmp ugt i32 %1297, %1298
  br i1 %1299, label %1300, label %1315

1300:                                             ; preds = %1295
  %1301 = icmp eq i32 %1298, 0
  %1302 = shl i32 %1298, 1
  %1303 = select i1 %1301, i32 16, i32 %1302
  br label %1304

1304:                                             ; preds = %1304, %1300
  %1305 = phi i32 [ %1303, %1300 ], [ %1307, %1304 ]
  %1306 = icmp ugt i32 %1297, %1305
  %1307 = shl i32 %1305, 1
  br i1 %1306, label %1304, label %1308, !llvm.loop !62

1308:                                             ; preds = %1304
  %1309 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1310 = load ptr, ptr %1309, align 8, !tbaa !51
  %1311 = zext i32 %1305 to i64
  %1312 = tail call ptr @realloc(ptr noundef %1310, i64 noundef %1311) #13
  %1313 = icmp eq ptr %1312, null
  br i1 %1313, label %1871, label %1314

1314:                                             ; preds = %1308
  store ptr %1312, ptr %1309, align 8, !tbaa !51
  store i32 %1305, ptr %964, align 4, !tbaa !61
  br label %1315

1315:                                             ; preds = %1314, %1295
  %1316 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1317 = load ptr, ptr %1316, align 8, !tbaa !51
  %1318 = load i32, ptr %961, align 8, !tbaa !60
  %1319 = zext i32 %1318 to i64
  %1320 = getelementptr inbounds i8, ptr %1317, i64 %1319
  store i8 99, ptr %1320, align 1
  %1321 = getelementptr inbounds i8, ptr %1320, i64 1
  store i8 -94, ptr %1321, align 1
  store i32 %1297, ptr %961, align 8, !tbaa !60
  %1322 = tail call fastcc i32 @mk_write_size(ptr noundef %957, i32 noundef %4), !range !64
  %1323 = icmp slt i32 %1322, 0
  br i1 %1323, label %1871, label %1324

1324:                                             ; preds = %1315
  %1325 = load i32, ptr %961, align 8, !tbaa !60
  %1326 = add i32 %1325, %4
  %1327 = load i32, ptr %964, align 4, !tbaa !61
  %1328 = icmp ugt i32 %1326, %1327
  br i1 %1328, label %1329, label %1343

1329:                                             ; preds = %1324
  %1330 = icmp eq i32 %1327, 0
  %1331 = shl i32 %1327, 1
  %1332 = select i1 %1330, i32 16, i32 %1331
  br label %1333

1333:                                             ; preds = %1333, %1329
  %1334 = phi i32 [ %1332, %1329 ], [ %1336, %1333 ]
  %1335 = icmp ugt i32 %1326, %1334
  %1336 = shl i32 %1334, 1
  br i1 %1335, label %1333, label %1337, !llvm.loop !62

1337:                                             ; preds = %1333
  %1338 = load ptr, ptr %1316, align 8, !tbaa !51
  %1339 = zext i32 %1334 to i64
  %1340 = tail call ptr @realloc(ptr noundef %1338, i64 noundef %1339) #13
  %1341 = icmp eq ptr %1340, null
  br i1 %1341, label %1871, label %1342

1342:                                             ; preds = %1337
  store ptr %1340, ptr %1316, align 8, !tbaa !51
  store i32 %1334, ptr %964, align 4, !tbaa !61
  br label %1343

1343:                                             ; preds = %1342, %1324
  %1344 = load ptr, ptr %1316, align 8, !tbaa !51
  %1345 = load i32, ptr %961, align 8, !tbaa !60
  %1346 = zext i32 %1345 to i64
  %1347 = getelementptr inbounds i8, ptr %1344, i64 %1346
  %1348 = zext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1347, ptr align 1 %3, i64 %1348, i1 false)
  store i32 %1326, ptr %961, align 8, !tbaa !60
  br label %1349

1349:                                             ; preds = %1343, %1287
  %1350 = icmp eq i64 %5, 0
  br i1 %1350, label %1445, label %1351

1351:                                             ; preds = %1349
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #11
  %1352 = lshr i64 %5, 56
  %1353 = trunc i64 %1352 to i8
  store i8 %1353, ptr %16, align 1, !tbaa !59
  %1354 = getelementptr inbounds i8, ptr %16, i64 1
  %1355 = lshr i64 %5, 48
  %1356 = trunc i64 %1355 to i8
  store i8 %1356, ptr %1354, align 1, !tbaa !59
  %1357 = getelementptr inbounds i8, ptr %16, i64 2
  %1358 = lshr i64 %5, 40
  %1359 = trunc i64 %1358 to i8
  store i8 %1359, ptr %1357, align 1, !tbaa !59
  %1360 = getelementptr inbounds i8, ptr %16, i64 3
  %1361 = lshr i64 %5, 32
  %1362 = trunc i64 %1361 to i8
  store i8 %1362, ptr %1360, align 1, !tbaa !59
  %1363 = getelementptr inbounds i8, ptr %16, i64 4
  %1364 = lshr i64 %5, 24
  %1365 = trunc i64 %1364 to i8
  store i8 %1365, ptr %1363, align 1, !tbaa !59
  %1366 = getelementptr inbounds i8, ptr %16, i64 5
  %1367 = lshr i64 %5, 16
  %1368 = trunc i64 %1367 to i8
  store i8 %1368, ptr %1366, align 1, !tbaa !59
  %1369 = getelementptr inbounds i8, ptr %16, i64 6
  %1370 = lshr i64 %5, 8
  %1371 = trunc i64 %1370 to i8
  store i8 %1371, ptr %1369, align 1, !tbaa !59
  %1372 = getelementptr inbounds i8, ptr %16, i64 7
  %1373 = trunc i64 %5 to i8
  store i8 %1373, ptr %1372, align 1, !tbaa !59
  %1374 = load i32, ptr %961, align 8, !tbaa !60
  %1375 = add i32 %1374, 3
  %1376 = load i32, ptr %964, align 4, !tbaa !61
  %1377 = icmp ugt i32 %1375, %1376
  br i1 %1377, label %1378, label %1393

1378:                                             ; preds = %1351
  %1379 = icmp eq i32 %1376, 0
  %1380 = shl i32 %1376, 1
  %1381 = select i1 %1379, i32 16, i32 %1380
  br label %1382

1382:                                             ; preds = %1382, %1378
  %1383 = phi i32 [ %1381, %1378 ], [ %1385, %1382 ]
  %1384 = icmp ugt i32 %1375, %1383
  %1385 = shl i32 %1383, 1
  br i1 %1384, label %1382, label %1386, !llvm.loop !62

1386:                                             ; preds = %1382
  %1387 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1388 = load ptr, ptr %1387, align 8, !tbaa !51
  %1389 = zext i32 %1383 to i64
  %1390 = tail call ptr @realloc(ptr noundef %1388, i64 noundef %1389) #13
  %1391 = icmp eq ptr %1390, null
  br i1 %1391, label %1866, label %1392

1392:                                             ; preds = %1386
  store ptr %1390, ptr %1387, align 8, !tbaa !51
  store i32 %1383, ptr %964, align 4, !tbaa !61
  br label %1393

1393:                                             ; preds = %1392, %1351
  %1394 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1395 = load ptr, ptr %1394, align 8, !tbaa !51
  %1396 = load i32, ptr %961, align 8, !tbaa !60
  %1397 = zext i32 %1396 to i64
  %1398 = getelementptr inbounds i8, ptr %1395, i64 %1397
  store i8 35, ptr %1398, align 1
  %1399 = getelementptr inbounds i8, ptr %1398, i64 1
  store i8 -29, ptr %1399, align 1
  %1400 = getelementptr inbounds i8, ptr %1398, i64 2
  store i8 -125, ptr %1400, align 1
  store i32 %1375, ptr %961, align 8, !tbaa !60
  br label %1401

1401:                                             ; preds = %1393, %1406
  %1402 = phi i64 [ %1407, %1406 ], [ 0, %1393 ]
  %1403 = getelementptr inbounds [8 x i8], ptr %16, i64 0, i64 %1402
  %1404 = load i8, ptr %1403, align 1, !tbaa !59
  %1405 = icmp eq i8 %1404, 0
  br i1 %1405, label %1406, label %1409

1406:                                             ; preds = %1401
  %1407 = add nuw nsw i64 %1402, 1
  %1408 = icmp eq i64 %1407, 7
  br i1 %1408, label %1411, label %1401, !llvm.loop !63

1409:                                             ; preds = %1401
  %1410 = trunc i64 %1402 to i32
  br label %1411

1411:                                             ; preds = %1406, %1409
  %1412 = phi i32 [ %1410, %1409 ], [ 7, %1406 ]
  %1413 = sub nsw i32 8, %1412
  %1414 = tail call fastcc i32 @mk_write_size(ptr noundef %957, i32 noundef %1413), !range !64
  %1415 = icmp slt i32 %1414, 0
  br i1 %1415, label %1866, label %1416

1416:                                             ; preds = %1411
  %1417 = zext nneg i32 %1412 to i64
  %1418 = getelementptr inbounds i8, ptr %16, i64 %1417
  %1419 = load i32, ptr %961, align 8, !tbaa !60
  %1420 = add i32 %1419, %1413
  %1421 = load i32, ptr %964, align 4, !tbaa !61
  %1422 = icmp ugt i32 %1420, %1421
  br i1 %1422, label %1423, label %1438

1423:                                             ; preds = %1416
  %1424 = icmp eq i32 %1421, 0
  %1425 = shl i32 %1421, 1
  %1426 = select i1 %1424, i32 16, i32 %1425
  br label %1427

1427:                                             ; preds = %1427, %1423
  %1428 = phi i32 [ %1426, %1423 ], [ %1430, %1427 ]
  %1429 = icmp ugt i32 %1420, %1428
  %1430 = shl i32 %1428, 1
  br i1 %1429, label %1427, label %1431, !llvm.loop !62

1431:                                             ; preds = %1427
  %1432 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1433 = load ptr, ptr %1432, align 8, !tbaa !51
  %1434 = zext i32 %1428 to i64
  %1435 = tail call ptr @realloc(ptr noundef %1433, i64 noundef %1434) #13
  %1436 = icmp eq ptr %1435, null
  br i1 %1436, label %1866, label %1437

1437:                                             ; preds = %1431
  store ptr %1435, ptr %1432, align 8, !tbaa !51
  store i32 %1428, ptr %964, align 4, !tbaa !61
  br label %1438

1438:                                             ; preds = %1437, %1416
  %1439 = getelementptr inbounds %struct.mk_context, ptr %957, i64 0, i32 5
  %1440 = load ptr, ptr %1439, align 8, !tbaa !51
  %1441 = load i32, ptr %961, align 8, !tbaa !60
  %1442 = zext i32 %1441 to i64
  %1443 = getelementptr inbounds i8, ptr %1440, i64 %1442
  %1444 = zext i32 %1413 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1443, ptr nonnull align 1 %1418, i64 %1444, i1 false)
  store i32 %1420, ptr %961, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  br label %1445

1445:                                             ; preds = %1438, %1349
  %1446 = load ptr, ptr %36, align 8, !tbaa !34
  %1447 = icmp eq ptr %1446, null
  br i1 %1447, label %1450, label %1448

1448:                                             ; preds = %1445
  %1449 = load ptr, ptr %1446, align 8, !tbaa !41
  store ptr %1449, ptr %36, align 8, !tbaa !34
  br label %1454

1450:                                             ; preds = %1445
  %1451 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #10
  %1452 = icmp eq ptr %1451, null
  br i1 %1452, label %1466, label %1453

1453:                                             ; preds = %1450
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1451, i8 0, i64 56, i1 false)
  br label %1454

1454:                                             ; preds = %1453, %1448
  %1455 = phi ptr [ %1446, %1448 ], [ %1451, %1453 ]
  %1456 = getelementptr inbounds %struct.mk_context, ptr %1455, i64 0, i32 2
  store ptr %957, ptr %1456, align 8, !tbaa !43
  %1457 = getelementptr inbounds %struct.mk_context, ptr %1455, i64 0, i32 3
  store ptr %0, ptr %1457, align 8, !tbaa !44
  %1458 = getelementptr inbounds %struct.mk_context, ptr %1455, i64 0, i32 4
  store i32 224, ptr %1458, align 8, !tbaa !45
  %1459 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 6
  %1460 = load ptr, ptr %1459, align 8, !tbaa !46
  %1461 = icmp eq ptr %1460, null
  br i1 %1461, label %1464, label %1462

1462:                                             ; preds = %1454
  %1463 = getelementptr inbounds %struct.mk_context, ptr %1460, i64 0, i32 1
  store ptr %1455, ptr %1463, align 8, !tbaa !47
  br label %1464

1464:                                             ; preds = %1462, %1454
  store ptr %1460, ptr %1455, align 8, !tbaa !41
  %1465 = getelementptr inbounds %struct.mk_context, ptr %1455, i64 0, i32 1
  store ptr %1459, ptr %1465, align 8, !tbaa !47
  store ptr %1455, ptr %1459, align 8, !tbaa !46
  br label %1466

1466:                                             ; preds = %1450, %1464
  %1467 = phi ptr [ %1455, %1464 ], [ null, %1450 ]
  %1468 = icmp eq ptr %1467, null
  br i1 %1468, label %1871, label %1469

1469:                                             ; preds = %1466
  %1470 = zext i32 %7 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #11
  %1471 = getelementptr inbounds i8, ptr %15, i64 4
  %1472 = lshr i64 %1470, 24
  %1473 = trunc i64 %1472 to i8
  store i32 0, ptr %15, align 4
  store i8 %1473, ptr %1471, align 4, !tbaa !59
  %1474 = getelementptr inbounds i8, ptr %15, i64 5
  %1475 = lshr i64 %1470, 16
  %1476 = trunc i64 %1475 to i8
  store i8 %1476, ptr %1474, align 1, !tbaa !59
  %1477 = getelementptr inbounds i8, ptr %15, i64 6
  %1478 = lshr i64 %1470, 8
  %1479 = trunc i64 %1478 to i8
  store i8 %1479, ptr %1477, align 2, !tbaa !59
  %1480 = getelementptr inbounds i8, ptr %15, i64 7
  %1481 = trunc i32 %7 to i8
  store i8 %1481, ptr %1480, align 1, !tbaa !59
  %1482 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 6
  %1483 = load i32, ptr %1482, align 8, !tbaa !60
  %1484 = add i32 %1483, 1
  %1485 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 7
  %1486 = load i32, ptr %1485, align 4, !tbaa !61
  %1487 = icmp ugt i32 %1484, %1486
  br i1 %1487, label %1488, label %1503

1488:                                             ; preds = %1469
  %1489 = icmp eq i32 %1486, 0
  %1490 = shl i32 %1486, 1
  %1491 = select i1 %1489, i32 16, i32 %1490
  br label %1492

1492:                                             ; preds = %1492, %1488
  %1493 = phi i32 [ %1491, %1488 ], [ %1495, %1492 ]
  %1494 = icmp ugt i32 %1484, %1493
  %1495 = shl i32 %1493, 1
  br i1 %1494, label %1492, label %1496, !llvm.loop !62

1496:                                             ; preds = %1492
  %1497 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1498 = load ptr, ptr %1497, align 8, !tbaa !51
  %1499 = zext i32 %1493 to i64
  %1500 = tail call ptr @realloc(ptr noundef %1498, i64 noundef %1499) #13
  %1501 = icmp eq ptr %1500, null
  br i1 %1501, label %1867, label %1502

1502:                                             ; preds = %1496
  store ptr %1500, ptr %1497, align 8, !tbaa !51
  store i32 %1493, ptr %1485, align 4, !tbaa !61
  br label %1503

1503:                                             ; preds = %1502, %1469
  %1504 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1505 = load ptr, ptr %1504, align 8, !tbaa !51
  %1506 = load i32, ptr %1482, align 8, !tbaa !60
  %1507 = zext i32 %1506 to i64
  %1508 = getelementptr inbounds i8, ptr %1505, i64 %1507
  store i8 -80, ptr %1508, align 1
  store i32 %1484, ptr %1482, align 8, !tbaa !60
  br label %1509

1509:                                             ; preds = %1503, %1514
  %1510 = phi i64 [ %1515, %1514 ], [ 0, %1503 ]
  %1511 = getelementptr inbounds [8 x i8], ptr %15, i64 0, i64 %1510
  %1512 = load i8, ptr %1511, align 1, !tbaa !59
  %1513 = icmp eq i8 %1512, 0
  br i1 %1513, label %1514, label %1517

1514:                                             ; preds = %1509
  %1515 = add nuw nsw i64 %1510, 1
  %1516 = icmp eq i64 %1515, 7
  br i1 %1516, label %1519, label %1509, !llvm.loop !63

1517:                                             ; preds = %1509
  %1518 = trunc i64 %1510 to i32
  br label %1519

1519:                                             ; preds = %1514, %1517
  %1520 = phi i32 [ %1518, %1517 ], [ 7, %1514 ]
  %1521 = sub nsw i32 8, %1520
  %1522 = tail call fastcc i32 @mk_write_size(ptr noundef %1467, i32 noundef %1521), !range !64
  %1523 = icmp slt i32 %1522, 0
  br i1 %1523, label %1867, label %1524

1524:                                             ; preds = %1519
  %1525 = zext nneg i32 %1520 to i64
  %1526 = getelementptr inbounds i8, ptr %15, i64 %1525
  %1527 = load i32, ptr %1482, align 8, !tbaa !60
  %1528 = add i32 %1527, %1521
  %1529 = load i32, ptr %1485, align 4, !tbaa !61
  %1530 = icmp ugt i32 %1528, %1529
  br i1 %1530, label %1531, label %1546

1531:                                             ; preds = %1524
  %1532 = icmp eq i32 %1529, 0
  %1533 = shl i32 %1529, 1
  %1534 = select i1 %1532, i32 16, i32 %1533
  br label %1535

1535:                                             ; preds = %1535, %1531
  %1536 = phi i32 [ %1534, %1531 ], [ %1538, %1535 ]
  %1537 = icmp ugt i32 %1528, %1536
  %1538 = shl i32 %1536, 1
  br i1 %1537, label %1535, label %1539, !llvm.loop !62

1539:                                             ; preds = %1535
  %1540 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1541 = load ptr, ptr %1540, align 8, !tbaa !51
  %1542 = zext i32 %1536 to i64
  %1543 = tail call ptr @realloc(ptr noundef %1541, i64 noundef %1542) #13
  %1544 = icmp eq ptr %1543, null
  br i1 %1544, label %1867, label %1545

1545:                                             ; preds = %1539
  store ptr %1543, ptr %1540, align 8, !tbaa !51
  store i32 %1536, ptr %1485, align 4, !tbaa !61
  br label %1546

1546:                                             ; preds = %1545, %1524
  %1547 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1548 = load ptr, ptr %1547, align 8, !tbaa !51
  %1549 = load i32, ptr %1482, align 8, !tbaa !60
  %1550 = zext i32 %1549 to i64
  %1551 = getelementptr inbounds i8, ptr %1548, i64 %1550
  %1552 = zext i32 %1521 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1551, ptr nonnull align 1 %1526, i64 %1552, i1 false)
  store i32 %1528, ptr %1482, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  %1553 = zext i32 %8 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  %1554 = getelementptr inbounds i8, ptr %14, i64 4
  %1555 = lshr i64 %1553, 24
  %1556 = trunc i64 %1555 to i8
  store i32 0, ptr %14, align 4
  store i8 %1556, ptr %1554, align 4, !tbaa !59
  %1557 = getelementptr inbounds i8, ptr %14, i64 5
  %1558 = lshr i64 %1553, 16
  %1559 = trunc i64 %1558 to i8
  store i8 %1559, ptr %1557, align 1, !tbaa !59
  %1560 = getelementptr inbounds i8, ptr %14, i64 6
  %1561 = lshr i64 %1553, 8
  %1562 = trunc i64 %1561 to i8
  store i8 %1562, ptr %1560, align 2, !tbaa !59
  %1563 = getelementptr inbounds i8, ptr %14, i64 7
  %1564 = trunc i32 %8 to i8
  store i8 %1564, ptr %1563, align 1, !tbaa !59
  %1565 = load i32, ptr %1482, align 8, !tbaa !60
  %1566 = add i32 %1565, 1
  %1567 = load i32, ptr %1485, align 4, !tbaa !61
  %1568 = icmp ugt i32 %1566, %1567
  br i1 %1568, label %1569, label %1584

1569:                                             ; preds = %1546
  %1570 = icmp eq i32 %1567, 0
  %1571 = shl i32 %1567, 1
  %1572 = select i1 %1570, i32 16, i32 %1571
  br label %1573

1573:                                             ; preds = %1573, %1569
  %1574 = phi i32 [ %1572, %1569 ], [ %1576, %1573 ]
  %1575 = icmp ugt i32 %1566, %1574
  %1576 = shl i32 %1574, 1
  br i1 %1575, label %1573, label %1577, !llvm.loop !62

1577:                                             ; preds = %1573
  %1578 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1579 = load ptr, ptr %1578, align 8, !tbaa !51
  %1580 = zext i32 %1574 to i64
  %1581 = tail call ptr @realloc(ptr noundef %1579, i64 noundef %1580) #13
  %1582 = icmp eq ptr %1581, null
  br i1 %1582, label %1868, label %1583

1583:                                             ; preds = %1577
  store ptr %1581, ptr %1578, align 8, !tbaa !51
  store i32 %1574, ptr %1485, align 4, !tbaa !61
  br label %1584

1584:                                             ; preds = %1583, %1546
  %1585 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1586 = load ptr, ptr %1585, align 8, !tbaa !51
  %1587 = load i32, ptr %1482, align 8, !tbaa !60
  %1588 = zext i32 %1587 to i64
  %1589 = getelementptr inbounds i8, ptr %1586, i64 %1588
  store i8 -70, ptr %1589, align 1
  store i32 %1566, ptr %1482, align 8, !tbaa !60
  br label %1590

1590:                                             ; preds = %1584, %1595
  %1591 = phi i64 [ %1596, %1595 ], [ 0, %1584 ]
  %1592 = getelementptr inbounds [8 x i8], ptr %14, i64 0, i64 %1591
  %1593 = load i8, ptr %1592, align 1, !tbaa !59
  %1594 = icmp eq i8 %1593, 0
  br i1 %1594, label %1595, label %1598

1595:                                             ; preds = %1590
  %1596 = add nuw nsw i64 %1591, 1
  %1597 = icmp eq i64 %1596, 7
  br i1 %1597, label %1600, label %1590, !llvm.loop !63

1598:                                             ; preds = %1590
  %1599 = trunc i64 %1591 to i32
  br label %1600

1600:                                             ; preds = %1595, %1598
  %1601 = phi i32 [ %1599, %1598 ], [ 7, %1595 ]
  %1602 = sub nsw i32 8, %1601
  %1603 = tail call fastcc i32 @mk_write_size(ptr noundef %1467, i32 noundef %1602), !range !64
  %1604 = icmp slt i32 %1603, 0
  br i1 %1604, label %1868, label %1605

1605:                                             ; preds = %1600
  %1606 = zext nneg i32 %1601 to i64
  %1607 = getelementptr inbounds i8, ptr %14, i64 %1606
  %1608 = load i32, ptr %1482, align 8, !tbaa !60
  %1609 = add i32 %1608, %1602
  %1610 = load i32, ptr %1485, align 4, !tbaa !61
  %1611 = icmp ugt i32 %1609, %1610
  br i1 %1611, label %1612, label %1627

1612:                                             ; preds = %1605
  %1613 = icmp eq i32 %1610, 0
  %1614 = shl i32 %1610, 1
  %1615 = select i1 %1613, i32 16, i32 %1614
  br label %1616

1616:                                             ; preds = %1616, %1612
  %1617 = phi i32 [ %1615, %1612 ], [ %1619, %1616 ]
  %1618 = icmp ugt i32 %1609, %1617
  %1619 = shl i32 %1617, 1
  br i1 %1618, label %1616, label %1620, !llvm.loop !62

1620:                                             ; preds = %1616
  %1621 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1622 = load ptr, ptr %1621, align 8, !tbaa !51
  %1623 = zext i32 %1617 to i64
  %1624 = tail call ptr @realloc(ptr noundef %1622, i64 noundef %1623) #13
  %1625 = icmp eq ptr %1624, null
  br i1 %1625, label %1868, label %1626

1626:                                             ; preds = %1620
  store ptr %1624, ptr %1621, align 8, !tbaa !51
  store i32 %1617, ptr %1485, align 4, !tbaa !61
  br label %1627

1627:                                             ; preds = %1626, %1605
  %1628 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1629 = load ptr, ptr %1628, align 8, !tbaa !51
  %1630 = load i32, ptr %1482, align 8, !tbaa !60
  %1631 = zext i32 %1630 to i64
  %1632 = getelementptr inbounds i8, ptr %1629, i64 %1631
  %1633 = zext i32 %1602 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1632, ptr nonnull align 1 %1607, i64 %1633, i1 false)
  store i32 %1609, ptr %1482, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  %1634 = zext i32 %9 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  %1635 = getelementptr inbounds i8, ptr %13, i64 4
  %1636 = lshr i64 %1634, 24
  %1637 = trunc i64 %1636 to i8
  store i32 0, ptr %13, align 4
  store i8 %1637, ptr %1635, align 4, !tbaa !59
  %1638 = getelementptr inbounds i8, ptr %13, i64 5
  %1639 = lshr i64 %1634, 16
  %1640 = trunc i64 %1639 to i8
  store i8 %1640, ptr %1638, align 1, !tbaa !59
  %1641 = getelementptr inbounds i8, ptr %13, i64 6
  %1642 = lshr i64 %1634, 8
  %1643 = trunc i64 %1642 to i8
  store i8 %1643, ptr %1641, align 2, !tbaa !59
  %1644 = getelementptr inbounds i8, ptr %13, i64 7
  %1645 = trunc i32 %9 to i8
  store i8 %1645, ptr %1644, align 1, !tbaa !59
  %1646 = load i32, ptr %1482, align 8, !tbaa !60
  %1647 = add i32 %1646, 2
  %1648 = load i32, ptr %1485, align 4, !tbaa !61
  %1649 = icmp ugt i32 %1647, %1648
  br i1 %1649, label %1650, label %1665

1650:                                             ; preds = %1627
  %1651 = icmp eq i32 %1648, 0
  %1652 = shl i32 %1648, 1
  %1653 = select i1 %1651, i32 16, i32 %1652
  br label %1654

1654:                                             ; preds = %1654, %1650
  %1655 = phi i32 [ %1653, %1650 ], [ %1657, %1654 ]
  %1656 = icmp ugt i32 %1647, %1655
  %1657 = shl i32 %1655, 1
  br i1 %1656, label %1654, label %1658, !llvm.loop !62

1658:                                             ; preds = %1654
  %1659 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1660 = load ptr, ptr %1659, align 8, !tbaa !51
  %1661 = zext i32 %1655 to i64
  %1662 = tail call ptr @realloc(ptr noundef %1660, i64 noundef %1661) #13
  %1663 = icmp eq ptr %1662, null
  br i1 %1663, label %1869, label %1664

1664:                                             ; preds = %1658
  store ptr %1662, ptr %1659, align 8, !tbaa !51
  store i32 %1655, ptr %1485, align 4, !tbaa !61
  br label %1665

1665:                                             ; preds = %1664, %1627
  %1666 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1667 = load ptr, ptr %1666, align 8, !tbaa !51
  %1668 = load i32, ptr %1482, align 8, !tbaa !60
  %1669 = zext i32 %1668 to i64
  %1670 = getelementptr inbounds i8, ptr %1667, i64 %1669
  store i8 84, ptr %1670, align 1
  %1671 = getelementptr inbounds i8, ptr %1670, i64 1
  store i8 -80, ptr %1671, align 1
  store i32 %1647, ptr %1482, align 8, !tbaa !60
  br label %1672

1672:                                             ; preds = %1665, %1677
  %1673 = phi i64 [ %1678, %1677 ], [ 0, %1665 ]
  %1674 = getelementptr inbounds [8 x i8], ptr %13, i64 0, i64 %1673
  %1675 = load i8, ptr %1674, align 1, !tbaa !59
  %1676 = icmp eq i8 %1675, 0
  br i1 %1676, label %1677, label %1680

1677:                                             ; preds = %1672
  %1678 = add nuw nsw i64 %1673, 1
  %1679 = icmp eq i64 %1678, 7
  br i1 %1679, label %1682, label %1672, !llvm.loop !63

1680:                                             ; preds = %1672
  %1681 = trunc i64 %1673 to i32
  br label %1682

1682:                                             ; preds = %1677, %1680
  %1683 = phi i32 [ %1681, %1680 ], [ 7, %1677 ]
  %1684 = sub nsw i32 8, %1683
  %1685 = tail call fastcc i32 @mk_write_size(ptr noundef %1467, i32 noundef %1684), !range !64
  %1686 = icmp slt i32 %1685, 0
  br i1 %1686, label %1869, label %1687

1687:                                             ; preds = %1682
  %1688 = zext nneg i32 %1683 to i64
  %1689 = getelementptr inbounds i8, ptr %13, i64 %1688
  %1690 = load i32, ptr %1482, align 8, !tbaa !60
  %1691 = add i32 %1690, %1684
  %1692 = load i32, ptr %1485, align 4, !tbaa !61
  %1693 = icmp ugt i32 %1691, %1692
  br i1 %1693, label %1694, label %1709

1694:                                             ; preds = %1687
  %1695 = icmp eq i32 %1692, 0
  %1696 = shl i32 %1692, 1
  %1697 = select i1 %1695, i32 16, i32 %1696
  br label %1698

1698:                                             ; preds = %1698, %1694
  %1699 = phi i32 [ %1697, %1694 ], [ %1701, %1698 ]
  %1700 = icmp ugt i32 %1691, %1699
  %1701 = shl i32 %1699, 1
  br i1 %1700, label %1698, label %1702, !llvm.loop !62

1702:                                             ; preds = %1698
  %1703 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1704 = load ptr, ptr %1703, align 8, !tbaa !51
  %1705 = zext i32 %1699 to i64
  %1706 = tail call ptr @realloc(ptr noundef %1704, i64 noundef %1705) #13
  %1707 = icmp eq ptr %1706, null
  br i1 %1707, label %1869, label %1708

1708:                                             ; preds = %1702
  store ptr %1706, ptr %1703, align 8, !tbaa !51
  store i32 %1699, ptr %1485, align 4, !tbaa !61
  br label %1709

1709:                                             ; preds = %1708, %1687
  %1710 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1711 = load ptr, ptr %1710, align 8, !tbaa !51
  %1712 = load i32, ptr %1482, align 8, !tbaa !60
  %1713 = zext i32 %1712 to i64
  %1714 = getelementptr inbounds i8, ptr %1711, i64 %1713
  %1715 = zext i32 %1684 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1714, ptr nonnull align 1 %1689, i64 %1715, i1 false)
  store i32 %1691, ptr %1482, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  %1716 = zext i32 %10 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  %1717 = getelementptr inbounds i8, ptr %12, i64 4
  %1718 = lshr i64 %1716, 24
  %1719 = trunc i64 %1718 to i8
  store i32 0, ptr %12, align 4
  store i8 %1719, ptr %1717, align 4, !tbaa !59
  %1720 = getelementptr inbounds i8, ptr %12, i64 5
  %1721 = lshr i64 %1716, 16
  %1722 = trunc i64 %1721 to i8
  store i8 %1722, ptr %1720, align 1, !tbaa !59
  %1723 = getelementptr inbounds i8, ptr %12, i64 6
  %1724 = lshr i64 %1716, 8
  %1725 = trunc i64 %1724 to i8
  store i8 %1725, ptr %1723, align 2, !tbaa !59
  %1726 = getelementptr inbounds i8, ptr %12, i64 7
  %1727 = trunc i32 %10 to i8
  store i8 %1727, ptr %1726, align 1, !tbaa !59
  %1728 = load i32, ptr %1482, align 8, !tbaa !60
  %1729 = add i32 %1728, 2
  %1730 = load i32, ptr %1485, align 4, !tbaa !61
  %1731 = icmp ugt i32 %1729, %1730
  br i1 %1731, label %1732, label %1747

1732:                                             ; preds = %1709
  %1733 = icmp eq i32 %1730, 0
  %1734 = shl i32 %1730, 1
  %1735 = select i1 %1733, i32 16, i32 %1734
  br label %1736

1736:                                             ; preds = %1736, %1732
  %1737 = phi i32 [ %1735, %1732 ], [ %1739, %1736 ]
  %1738 = icmp ugt i32 %1729, %1737
  %1739 = shl i32 %1737, 1
  br i1 %1738, label %1736, label %1740, !llvm.loop !62

1740:                                             ; preds = %1736
  %1741 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1742 = load ptr, ptr %1741, align 8, !tbaa !51
  %1743 = zext i32 %1737 to i64
  %1744 = tail call ptr @realloc(ptr noundef %1742, i64 noundef %1743) #13
  %1745 = icmp eq ptr %1744, null
  br i1 %1745, label %1870, label %1746

1746:                                             ; preds = %1740
  store ptr %1744, ptr %1741, align 8, !tbaa !51
  store i32 %1737, ptr %1485, align 4, !tbaa !61
  br label %1747

1747:                                             ; preds = %1746, %1709
  %1748 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1749 = load ptr, ptr %1748, align 8, !tbaa !51
  %1750 = load i32, ptr %1482, align 8, !tbaa !60
  %1751 = zext i32 %1750 to i64
  %1752 = getelementptr inbounds i8, ptr %1749, i64 %1751
  store i8 84, ptr %1752, align 1
  %1753 = getelementptr inbounds i8, ptr %1752, i64 1
  store i8 -70, ptr %1753, align 1
  store i32 %1729, ptr %1482, align 8, !tbaa !60
  br label %1754

1754:                                             ; preds = %1747, %1759
  %1755 = phi i64 [ %1760, %1759 ], [ 0, %1747 ]
  %1756 = getelementptr inbounds [8 x i8], ptr %12, i64 0, i64 %1755
  %1757 = load i8, ptr %1756, align 1, !tbaa !59
  %1758 = icmp eq i8 %1757, 0
  br i1 %1758, label %1759, label %1762

1759:                                             ; preds = %1754
  %1760 = add nuw nsw i64 %1755, 1
  %1761 = icmp eq i64 %1760, 7
  br i1 %1761, label %1764, label %1754, !llvm.loop !63

1762:                                             ; preds = %1754
  %1763 = trunc i64 %1755 to i32
  br label %1764

1764:                                             ; preds = %1759, %1762
  %1765 = phi i32 [ %1763, %1762 ], [ 7, %1759 ]
  %1766 = sub nsw i32 8, %1765
  %1767 = tail call fastcc i32 @mk_write_size(ptr noundef %1467, i32 noundef %1766), !range !64
  %1768 = icmp slt i32 %1767, 0
  br i1 %1768, label %1870, label %1769

1769:                                             ; preds = %1764
  %1770 = zext nneg i32 %1765 to i64
  %1771 = getelementptr inbounds i8, ptr %12, i64 %1770
  %1772 = load i32, ptr %1482, align 8, !tbaa !60
  %1773 = add i32 %1772, %1766
  %1774 = load i32, ptr %1485, align 4, !tbaa !61
  %1775 = icmp ugt i32 %1773, %1774
  br i1 %1775, label %1776, label %1791

1776:                                             ; preds = %1769
  %1777 = icmp eq i32 %1774, 0
  %1778 = shl i32 %1774, 1
  %1779 = select i1 %1777, i32 16, i32 %1778
  br label %1780

1780:                                             ; preds = %1780, %1776
  %1781 = phi i32 [ %1779, %1776 ], [ %1783, %1780 ]
  %1782 = icmp ugt i32 %1773, %1781
  %1783 = shl i32 %1781, 1
  br i1 %1782, label %1780, label %1784, !llvm.loop !62

1784:                                             ; preds = %1780
  %1785 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1786 = load ptr, ptr %1785, align 8, !tbaa !51
  %1787 = zext i32 %1781 to i64
  %1788 = tail call ptr @realloc(ptr noundef %1786, i64 noundef %1787) #13
  %1789 = icmp eq ptr %1788, null
  br i1 %1789, label %1870, label %1790

1790:                                             ; preds = %1784
  store ptr %1788, ptr %1785, align 8, !tbaa !51
  store i32 %1781, ptr %1485, align 4, !tbaa !61
  br label %1791

1791:                                             ; preds = %1790, %1769
  %1792 = getelementptr inbounds %struct.mk_context, ptr %1467, i64 0, i32 5
  %1793 = load ptr, ptr %1792, align 8, !tbaa !51
  %1794 = load i32, ptr %1482, align 8, !tbaa !60
  %1795 = zext i32 %1794 to i64
  %1796 = getelementptr inbounds i8, ptr %1793, i64 %1795
  %1797 = zext i32 %1766 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1796, ptr nonnull align 1 %1771, i64 %1797, i1 false)
  store i32 %1773, ptr %1482, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  %1798 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %1467, ptr noundef null), !range !64
  %1799 = icmp slt i32 %1798, 0
  br i1 %1799, label %1871, label %1800

1800:                                             ; preds = %1791
  %1801 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %957, ptr noundef null), !range !64
  %1802 = icmp slt i32 %1801, 0
  br i1 %1802, label %1871, label %1803

1803:                                             ; preds = %1800
  %1804 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %933, ptr noundef null), !range !64
  %1805 = icmp slt i32 %1804, 0
  br i1 %1805, label %1871, label %1806

1806:                                             ; preds = %1803
  %1807 = load ptr, ptr %34, align 8, !tbaa !48
  %1808 = getelementptr inbounds %struct.mk_context, ptr %1807, i64 0, i32 6
  %1809 = load i32, ptr %1808, align 8, !tbaa !60
  %1810 = icmp eq i32 %1809, 0
  br i1 %1810, label %1854, label %1811

1811:                                             ; preds = %1806
  %1812 = getelementptr inbounds %struct.mk_context, ptr %1807, i64 0, i32 2
  %1813 = load ptr, ptr %1812, align 8, !tbaa !43
  %1814 = icmp eq ptr %1813, null
  %1815 = getelementptr inbounds %struct.mk_context, ptr %1807, i64 0, i32 5
  %1816 = load ptr, ptr %1815, align 8, !tbaa !51
  br i1 %1814, label %1846, label %1817

1817:                                             ; preds = %1811
  %1818 = getelementptr inbounds %struct.mk_context, ptr %1813, i64 0, i32 6
  %1819 = load i32, ptr %1818, align 8, !tbaa !60
  %1820 = add i32 %1819, %1809
  %1821 = getelementptr inbounds %struct.mk_context, ptr %1813, i64 0, i32 7
  %1822 = load i32, ptr %1821, align 4, !tbaa !61
  %1823 = icmp ugt i32 %1820, %1822
  br i1 %1823, label %1824, label %1839

1824:                                             ; preds = %1817
  %1825 = icmp eq i32 %1822, 0
  %1826 = shl i32 %1822, 1
  %1827 = select i1 %1825, i32 16, i32 %1826
  br label %1828

1828:                                             ; preds = %1828, %1824
  %1829 = phi i32 [ %1827, %1824 ], [ %1831, %1828 ]
  %1830 = icmp ugt i32 %1820, %1829
  %1831 = shl i32 %1829, 1
  br i1 %1830, label %1828, label %1832, !llvm.loop !62

1832:                                             ; preds = %1828
  %1833 = getelementptr inbounds %struct.mk_context, ptr %1813, i64 0, i32 5
  %1834 = load ptr, ptr %1833, align 8, !tbaa !51
  %1835 = zext i32 %1829 to i64
  %1836 = tail call ptr @realloc(ptr noundef %1834, i64 noundef %1835) #13
  %1837 = icmp eq ptr %1836, null
  br i1 %1837, label %1871, label %1838

1838:                                             ; preds = %1832
  store ptr %1836, ptr %1833, align 8, !tbaa !51
  store i32 %1829, ptr %1821, align 4, !tbaa !61
  br label %1839

1839:                                             ; preds = %1838, %1817
  %1840 = getelementptr inbounds %struct.mk_context, ptr %1813, i64 0, i32 5
  %1841 = load ptr, ptr %1840, align 8, !tbaa !51
  %1842 = load i32, ptr %1818, align 8, !tbaa !60
  %1843 = zext i32 %1842 to i64
  %1844 = getelementptr inbounds i8, ptr %1841, i64 %1843
  %1845 = zext i32 %1809 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1844, ptr align 1 %1816, i64 %1845, i1 false)
  store i32 %1820, ptr %1818, align 8, !tbaa !60
  br label %1853

1846:                                             ; preds = %1811
  %1847 = zext i32 %1809 to i64
  %1848 = getelementptr inbounds %struct.mk_context, ptr %1807, i64 0, i32 3
  %1849 = load ptr, ptr %1848, align 8, !tbaa !44
  %1850 = load ptr, ptr %1849, align 8, !tbaa !50
  %1851 = tail call i64 @fwrite(ptr noundef %1816, i64 noundef %1847, i64 noundef 1, ptr noundef %1850)
  %1852 = icmp eq i64 %1851, 1
  br i1 %1852, label %1853, label %1871

1853:                                             ; preds = %1839, %1846
  store i32 0, ptr %1808, align 8, !tbaa !60
  br label %1854

1854:                                             ; preds = %1806, %1853
  store i8 1, ptr %28, align 8, !tbaa !57
  br label %1871

1855:                                             ; preds = %76, %120, %100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #11
  br label %1871

1856:                                             ; preds = %146, %190, %170
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #11
  br label %1871

1857:                                             ; preds = %216, %260, %240
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #11
  br label %1871

1858:                                             ; preds = %286, %330, %310
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #11
  br label %1871

1859:                                             ; preds = %409, %453, %433
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #11
  br label %1871

1860:                                             ; preds = %479, %523, %503
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #11
  br label %1871

1861:                                             ; preds = %778, %823, %803
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #11
  br label %1871

1862:                                             ; preds = %975, %1018, %998
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #11
  br label %1871

1863:                                             ; preds = %1044, %1088, %1068
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #11
  br label %1871

1864:                                             ; preds = %1114, %1157, %1137
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #11
  br label %1871

1865:                                             ; preds = %1182, %1225, %1205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  br label %1871

1866:                                             ; preds = %1386, %1431, %1411
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  br label %1871

1867:                                             ; preds = %1496, %1539, %1519
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  br label %1871

1868:                                             ; preds = %1577, %1620, %1600
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  br label %1871

1869:                                             ; preds = %1658, %1702, %1682
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %1871

1870:                                             ; preds = %1740, %1784, %1764
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %1871

1871:                                             ; preds = %1315, %1337, %1308, %1258, %1280, %1251, %706, %729, %699, %652, %674, %645, %362, %384, %355, %1846, %1832, %1870, %1869, %1868, %1867, %1866, %1865, %1864, %1863, %1862, %895, %873, %848, %1861, %589, %568, %1860, %1859, %1858, %1857, %1856, %1855, %1803, %1800, %1791, %1466, %956, %932, %901, %627, %602, %561, %530, %57, %11, %1854
  %1872 = phi i32 [ 0, %1854 ], [ -1, %11 ], [ -1, %57 ], [ -1, %530 ], [ -1, %561 ], [ -1, %602 ], [ -1, %627 ], [ -1, %901 ], [ -1, %932 ], [ -1, %956 ], [ -1, %1466 ], [ -1, %1791 ], [ -1, %1800 ], [ -1, %1803 ], [ -1, %1855 ], [ -1, %1856 ], [ -1, %1857 ], [ -1, %1858 ], [ -1, %1859 ], [ -1, %1860 ], [ -1, %568 ], [ -1, %589 ], [ -1, %1861 ], [ -1, %848 ], [ -1, %873 ], [ -1, %895 ], [ -1, %1862 ], [ -1, %1863 ], [ -1, %1864 ], [ -1, %1865 ], [ -1, %1866 ], [ -1, %1867 ], [ -1, %1868 ], [ -1, %1869 ], [ -1, %1870 ], [ -1, %1832 ], [ -1, %1846 ], [ -1, %355 ], [ -1, %384 ], [ -1, %362 ], [ -1, %645 ], [ -1, %674 ], [ -1, %652 ], [ -1, %699 ], [ -1, %729 ], [ -1, %706 ], [ -1, %1251 ], [ -1, %1280 ], [ -1, %1258 ], [ -1, %1308 ], [ -1, %1337 ], [ -1, %1315 ]
  ret i32 %1872
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @mk_close_context(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = tail call fastcc i32 @mk_write_id(ptr noundef %8, i32 noundef %4), !range !64
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %87, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !60
  %15 = tail call fastcc i32 @mk_write_size(ptr noundef %12, i32 noundef %14), !range !64
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %87, label %17

17:                                               ; preds = %11, %2
  %18 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = icmp ne ptr %19, null
  %21 = icmp ne ptr %1, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.mk_context, ptr %19, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !60
  %26 = load i32, ptr %1, align 4, !tbaa !66
  %27 = add i32 %26, %25
  store i32 %27, ptr %1, align 4, !tbaa !66
  br label %28

28:                                               ; preds = %17, %23
  %29 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !60
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %73, label %32

32:                                               ; preds = %28
  %33 = icmp eq ptr %19, null
  %34 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  br i1 %33, label %65, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.mk_context, ptr %19, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !60
  %39 = add i32 %38, %30
  %40 = getelementptr inbounds %struct.mk_context, ptr %19, i64 0, i32 7
  %41 = load i32, ptr %40, align 4, !tbaa !61
  %42 = icmp ugt i32 %39, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = icmp eq i32 %41, 0
  %45 = shl i32 %41, 1
  %46 = select i1 %44, i32 16, i32 %45
  br label %47

47:                                               ; preds = %47, %43
  %48 = phi i32 [ %46, %43 ], [ %50, %47 ]
  %49 = icmp ugt i32 %39, %48
  %50 = shl i32 %48, 1
  br i1 %49, label %47, label %51, !llvm.loop !62

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.mk_context, ptr %19, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !51
  %54 = zext i32 %48 to i64
  %55 = tail call ptr @realloc(ptr noundef %53, i64 noundef %54) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %87, label %57

57:                                               ; preds = %51
  store ptr %55, ptr %52, align 8, !tbaa !51
  store i32 %48, ptr %40, align 4, !tbaa !61
  br label %58

58:                                               ; preds = %57, %36
  %59 = getelementptr inbounds %struct.mk_context, ptr %19, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !51
  %61 = load i32, ptr %37, align 8, !tbaa !60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %60, i64 %62
  %64 = zext i32 %30 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %35, i64 %64, i1 false)
  store i32 %39, ptr %37, align 8, !tbaa !60
  br label %72

65:                                               ; preds = %32
  %66 = zext i32 %30 to i64
  %67 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !44
  %69 = load ptr, ptr %68, align 8, !tbaa !50
  %70 = tail call i64 @fwrite(ptr noundef %35, i64 noundef %66, i64 noundef 1, ptr noundef %69)
  %71 = icmp eq i64 %70, 1
  br i1 %71, label %72, label %87

72:                                               ; preds = %58, %65
  store i32 0, ptr %29, align 8, !tbaa !60
  br label %73

73:                                               ; preds = %28, %72
  %74 = load ptr, ptr %0, align 8, !tbaa !41
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !47
  %79 = getelementptr inbounds %struct.mk_context, ptr %74, i64 0, i32 1
  store ptr %78, ptr %79, align 8, !tbaa !47
  br label %80

80:                                               ; preds = %76, %73
  %81 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !47
  store ptr %74, ptr %82, align 8, !tbaa !49
  %83 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !44
  %85 = getelementptr inbounds %struct.mk_writer, ptr %84, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  store ptr %86, ptr %0, align 8, !tbaa !41
  store ptr %0, ptr %85, align 8, !tbaa !34
  br label %87

87:                                               ; preds = %65, %51, %11, %6, %80
  %88 = phi i32 [ 0, %80 ], [ -1, %6 ], [ -1, %11 ], [ -1, %51 ], [ -1, %65 ]
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mk_start_frame(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @mk_flush_frame(ptr noundef %0), !range !64
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 13
  store i8 1, ptr %5, align 1, !tbaa !67
  %6 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 14
  store i8 0, ptr %6, align 2, !tbaa !68
  %7 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 15
  store i8 0, ptr %7, align 1, !tbaa !69
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ -1, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @mk_flush_frame(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [8 x i8], align 1
  %3 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 13
  %4 = load i8, ptr %3, align 1, !tbaa !67
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %409, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 10
  %8 = load i64, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !56
  %11 = sdiv i64 %8, %10
  %12 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 9
  %13 = load i64, ptr %12, align 8, !tbaa !71
  %14 = sub nsw i64 %11, %13
  %15 = add i64 %14, -32768
  %16 = icmp ult i64 %15, -65536
  br i1 %16, label %17, label %73

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = icmp eq ptr %19, null
  br i1 %20, label %73, label %21

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %19, ptr noundef null), !range !64
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %409, label %24

24:                                               ; preds = %21
  store ptr null, ptr %18, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.mk_context, ptr %26, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !60
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %73, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.mk_context, ptr %26, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds %struct.mk_context, ptr %26, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  br i1 %33, label %65, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.mk_context, ptr %32, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !60
  %39 = add i32 %38, %28
  %40 = getelementptr inbounds %struct.mk_context, ptr %32, i64 0, i32 7
  %41 = load i32, ptr %40, align 4, !tbaa !61
  %42 = icmp ugt i32 %39, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = icmp eq i32 %41, 0
  %45 = shl i32 %41, 1
  %46 = select i1 %44, i32 16, i32 %45
  br label %47

47:                                               ; preds = %47, %43
  %48 = phi i32 [ %46, %43 ], [ %50, %47 ]
  %49 = icmp ugt i32 %39, %48
  %50 = shl i32 %48, 1
  br i1 %49, label %47, label %51, !llvm.loop !62

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.mk_context, ptr %32, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !51
  %54 = zext i32 %48 to i64
  %55 = tail call ptr @realloc(ptr noundef %53, i64 noundef %54) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %409, label %57

57:                                               ; preds = %51
  store ptr %55, ptr %52, align 8, !tbaa !51
  store i32 %48, ptr %40, align 4, !tbaa !61
  br label %58

58:                                               ; preds = %57, %36
  %59 = getelementptr inbounds %struct.mk_context, ptr %32, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !51
  %61 = load i32, ptr %37, align 8, !tbaa !60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %60, i64 %62
  %64 = zext i32 %28 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %35, i64 %64, i1 false)
  store i32 %39, ptr %37, align 8, !tbaa !60
  br label %72

65:                                               ; preds = %30
  %66 = zext i32 %28 to i64
  %67 = getelementptr inbounds %struct.mk_context, ptr %26, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !44
  %69 = load ptr, ptr %68, align 8, !tbaa !50
  %70 = tail call i64 @fwrite(ptr noundef %35, i64 noundef %66, i64 noundef 1, ptr noundef %69)
  %71 = icmp eq i64 %70, 1
  br i1 %71, label %72, label %409

72:                                               ; preds = %58, %65
  store i32 0, ptr %27, align 8, !tbaa !60
  br label %73

73:                                               ; preds = %17, %72, %24, %6
  %74 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !72
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %201

77:                                               ; preds = %73
  %78 = load i64, ptr %7, align 8, !tbaa !70
  %79 = load i64, ptr %9, align 8, !tbaa !56
  %80 = sdiv i64 %78, %79
  store i64 %80, ptr %12, align 8, !tbaa !71
  %81 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !48
  %83 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !34
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %77
  %87 = load ptr, ptr %84, align 8, !tbaa !41
  store ptr %87, ptr %83, align 8, !tbaa !34
  br label %92

88:                                               ; preds = %77
  %89 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #10
  %90 = icmp eq ptr %89, null
  br i1 %90, label %104, label %91

91:                                               ; preds = %88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %89, i8 0, i64 56, i1 false)
  br label %92

92:                                               ; preds = %91, %86
  %93 = phi ptr [ %84, %86 ], [ %89, %91 ]
  %94 = getelementptr inbounds %struct.mk_context, ptr %93, i64 0, i32 2
  store ptr %82, ptr %94, align 8, !tbaa !43
  %95 = getelementptr inbounds %struct.mk_context, ptr %93, i64 0, i32 3
  store ptr %0, ptr %95, align 8, !tbaa !44
  %96 = getelementptr inbounds %struct.mk_context, ptr %93, i64 0, i32 4
  store i32 524531317, ptr %96, align 8, !tbaa !45
  %97 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.mk_context, ptr %98, i64 0, i32 1
  store ptr %93, ptr %101, align 8, !tbaa !47
  br label %102

102:                                              ; preds = %100, %92
  store ptr %98, ptr %93, align 8, !tbaa !41
  %103 = getelementptr inbounds %struct.mk_context, ptr %93, i64 0, i32 1
  store ptr %97, ptr %103, align 8, !tbaa !47
  store ptr %93, ptr %97, align 8, !tbaa !46
  br label %104

104:                                              ; preds = %88, %102
  %105 = phi ptr [ %93, %102 ], [ null, %88 ]
  store ptr %105, ptr %74, align 8, !tbaa !72
  %106 = icmp eq ptr %105, null
  br i1 %106, label %409, label %107

107:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %108 = lshr i64 %80, 56
  %109 = trunc i64 %108 to i8
  store i8 %109, ptr %2, align 1, !tbaa !59
  %110 = getelementptr inbounds i8, ptr %2, i64 1
  %111 = lshr i64 %80, 48
  %112 = trunc i64 %111 to i8
  store i8 %112, ptr %110, align 1, !tbaa !59
  %113 = getelementptr inbounds i8, ptr %2, i64 2
  %114 = lshr i64 %80, 40
  %115 = trunc i64 %114 to i8
  store i8 %115, ptr %113, align 1, !tbaa !59
  %116 = getelementptr inbounds i8, ptr %2, i64 3
  %117 = lshr i64 %80, 32
  %118 = trunc i64 %117 to i8
  store i8 %118, ptr %116, align 1, !tbaa !59
  %119 = getelementptr inbounds i8, ptr %2, i64 4
  %120 = lshr i64 %80, 24
  %121 = trunc i64 %120 to i8
  store i8 %121, ptr %119, align 1, !tbaa !59
  %122 = getelementptr inbounds i8, ptr %2, i64 5
  %123 = lshr i64 %80, 16
  %124 = trunc i64 %123 to i8
  store i8 %124, ptr %122, align 1, !tbaa !59
  %125 = getelementptr inbounds i8, ptr %2, i64 6
  %126 = lshr i64 %80, 8
  %127 = trunc i64 %126 to i8
  store i8 %127, ptr %125, align 1, !tbaa !59
  %128 = getelementptr inbounds i8, ptr %2, i64 7
  %129 = trunc i64 %80 to i8
  store i8 %129, ptr %128, align 1, !tbaa !59
  %130 = getelementptr inbounds %struct.mk_context, ptr %105, i64 0, i32 6
  %131 = load i32, ptr %130, align 8, !tbaa !60
  %132 = add i32 %131, 1
  %133 = getelementptr inbounds %struct.mk_context, ptr %105, i64 0, i32 7
  %134 = load i32, ptr %133, align 4, !tbaa !61
  %135 = icmp ugt i32 %132, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %107
  %137 = icmp eq i32 %134, 0
  %138 = shl i32 %134, 1
  %139 = select i1 %137, i32 16, i32 %138
  br label %140

140:                                              ; preds = %140, %136
  %141 = phi i32 [ %139, %136 ], [ %143, %140 ]
  %142 = icmp ugt i32 %132, %141
  %143 = shl i32 %141, 1
  br i1 %142, label %140, label %144, !llvm.loop !62

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.mk_context, ptr %105, i64 0, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !51
  %147 = zext i32 %141 to i64
  %148 = tail call ptr @realloc(ptr noundef %146, i64 noundef %147) #13
  %149 = icmp eq ptr %148, null
  br i1 %149, label %408, label %150

150:                                              ; preds = %144
  store ptr %148, ptr %145, align 8, !tbaa !51
  store i32 %141, ptr %133, align 4, !tbaa !61
  br label %151

151:                                              ; preds = %150, %107
  %152 = getelementptr inbounds %struct.mk_context, ptr %105, i64 0, i32 5
  %153 = load ptr, ptr %152, align 8, !tbaa !51
  %154 = load i32, ptr %130, align 8, !tbaa !60
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, ptr %153, i64 %155
  store i8 -25, ptr %156, align 1
  store i32 %132, ptr %130, align 8, !tbaa !60
  br label %157

157:                                              ; preds = %151, %162
  %158 = phi i64 [ %163, %162 ], [ 0, %151 ]
  %159 = getelementptr inbounds [8 x i8], ptr %2, i64 0, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !59
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = add nuw nsw i64 %158, 1
  %164 = icmp eq i64 %163, 7
  br i1 %164, label %167, label %157, !llvm.loop !63

165:                                              ; preds = %157
  %166 = trunc i64 %158 to i32
  br label %167

167:                                              ; preds = %162, %165
  %168 = phi i32 [ %166, %165 ], [ 7, %162 ]
  %169 = sub nsw i32 8, %168
  %170 = tail call fastcc i32 @mk_write_size(ptr noundef nonnull %105, i32 noundef %169), !range !64
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %408, label %172

172:                                              ; preds = %167
  %173 = zext nneg i32 %168 to i64
  %174 = getelementptr inbounds i8, ptr %2, i64 %173
  %175 = load i32, ptr %130, align 8, !tbaa !60
  %176 = add i32 %175, %169
  %177 = load i32, ptr %133, align 4, !tbaa !61
  %178 = icmp ugt i32 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %172
  %180 = icmp eq i32 %177, 0
  %181 = shl i32 %177, 1
  %182 = select i1 %180, i32 16, i32 %181
  br label %183

183:                                              ; preds = %183, %179
  %184 = phi i32 [ %182, %179 ], [ %186, %183 ]
  %185 = icmp ugt i32 %176, %184
  %186 = shl i32 %184, 1
  br i1 %185, label %183, label %187, !llvm.loop !62

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.mk_context, ptr %105, i64 0, i32 5
  %189 = load ptr, ptr %188, align 8, !tbaa !51
  %190 = zext i32 %184 to i64
  %191 = tail call ptr @realloc(ptr noundef %189, i64 noundef %190) #13
  %192 = icmp eq ptr %191, null
  br i1 %192, label %408, label %193

193:                                              ; preds = %187
  store ptr %191, ptr %188, align 8, !tbaa !51
  store i32 %184, ptr %133, align 4, !tbaa !61
  br label %194

194:                                              ; preds = %193, %172
  %195 = getelementptr inbounds %struct.mk_context, ptr %105, i64 0, i32 5
  %196 = load ptr, ptr %195, align 8, !tbaa !51
  %197 = load i32, ptr %130, align 8, !tbaa !60
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i8, ptr %196, i64 %198
  %200 = zext i32 %169 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %199, ptr nonnull align 1 %174, i64 %200, i1 false)
  store i32 %176, ptr %130, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %201

201:                                              ; preds = %194, %73
  %202 = phi i64 [ %14, %73 ], [ 0, %194 ]
  %203 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 4
  %204 = load ptr, ptr %203, align 8, !tbaa !73
  %205 = icmp eq ptr %204, null
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.mk_context, ptr %204, i64 0, i32 6
  %208 = load i32, ptr %207, align 8, !tbaa !60
  %209 = add i32 %208, 4
  br label %210

210:                                              ; preds = %201, %206
  %211 = phi i32 [ %209, %206 ], [ 4, %201 ]
  %212 = load ptr, ptr %74, align 8, !tbaa !72
  %213 = getelementptr inbounds %struct.mk_context, ptr %212, i64 0, i32 6
  %214 = load i32, ptr %213, align 8, !tbaa !60
  %215 = add i32 %214, 1
  %216 = getelementptr inbounds %struct.mk_context, ptr %212, i64 0, i32 7
  %217 = load i32, ptr %216, align 4, !tbaa !61
  %218 = icmp ugt i32 %215, %217
  br i1 %218, label %219, label %234

219:                                              ; preds = %210
  %220 = icmp eq i32 %217, 0
  %221 = shl i32 %217, 1
  %222 = select i1 %220, i32 16, i32 %221
  br label %223

223:                                              ; preds = %223, %219
  %224 = phi i32 [ %222, %219 ], [ %226, %223 ]
  %225 = icmp ugt i32 %215, %224
  %226 = shl i32 %224, 1
  br i1 %225, label %223, label %227, !llvm.loop !62

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.mk_context, ptr %212, i64 0, i32 5
  %229 = load ptr, ptr %228, align 8, !tbaa !51
  %230 = zext i32 %224 to i64
  %231 = tail call ptr @realloc(ptr noundef %229, i64 noundef %230) #13
  %232 = icmp eq ptr %231, null
  br i1 %232, label %409, label %233

233:                                              ; preds = %227
  store ptr %231, ptr %228, align 8, !tbaa !51
  store i32 %224, ptr %216, align 4, !tbaa !61
  br label %234

234:                                              ; preds = %233, %210
  %235 = getelementptr inbounds %struct.mk_context, ptr %212, i64 0, i32 5
  %236 = load ptr, ptr %235, align 8, !tbaa !51
  %237 = load i32, ptr %213, align 8, !tbaa !60
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i8, ptr %236, i64 %238
  store i8 -93, ptr %239, align 1
  store i32 %215, ptr %213, align 8, !tbaa !60
  %240 = load ptr, ptr %74, align 8, !tbaa !72
  %241 = tail call fastcc i32 @mk_write_size(ptr noundef %240, i32 noundef %211), !range !64
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %409, label %243

243:                                              ; preds = %234
  %244 = load ptr, ptr %74, align 8, !tbaa !72
  %245 = getelementptr inbounds %struct.mk_context, ptr %244, i64 0, i32 6
  %246 = load i32, ptr %245, align 8, !tbaa !60
  %247 = add i32 %246, 1
  %248 = getelementptr inbounds %struct.mk_context, ptr %244, i64 0, i32 7
  %249 = load i32, ptr %248, align 4, !tbaa !61
  %250 = icmp ugt i32 %247, %249
  br i1 %250, label %251, label %266

251:                                              ; preds = %243
  %252 = icmp eq i32 %249, 0
  %253 = shl i32 %249, 1
  %254 = select i1 %252, i32 16, i32 %253
  br label %255

255:                                              ; preds = %255, %251
  %256 = phi i32 [ %254, %251 ], [ %258, %255 ]
  %257 = icmp ugt i32 %247, %256
  %258 = shl i32 %256, 1
  br i1 %257, label %255, label %259, !llvm.loop !62

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.mk_context, ptr %244, i64 0, i32 5
  %261 = load ptr, ptr %260, align 8, !tbaa !51
  %262 = zext i32 %256 to i64
  %263 = tail call ptr @realloc(ptr noundef %261, i64 noundef %262) #13
  %264 = icmp eq ptr %263, null
  br i1 %264, label %409, label %265

265:                                              ; preds = %259
  store ptr %263, ptr %260, align 8, !tbaa !51
  store i32 %256, ptr %248, align 4, !tbaa !61
  br label %266

266:                                              ; preds = %265, %243
  %267 = getelementptr inbounds %struct.mk_context, ptr %244, i64 0, i32 5
  %268 = load ptr, ptr %267, align 8, !tbaa !51
  %269 = load i32, ptr %245, align 8, !tbaa !60
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i8, ptr %268, i64 %270
  store i8 -127, ptr %271, align 1
  store i32 %247, ptr %245, align 8, !tbaa !60
  %272 = lshr i64 %202, 8
  %273 = trunc i64 %272 to i8
  %274 = trunc i64 %202 to i8
  %275 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 14
  %276 = load i8, ptr %275, align 2, !tbaa !68
  %277 = shl i8 %276, 7
  %278 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 15
  %279 = load i8, ptr %278, align 1, !tbaa !69
  %280 = or i8 %277, %279
  %281 = load ptr, ptr %74, align 8, !tbaa !72
  %282 = getelementptr inbounds %struct.mk_context, ptr %281, i64 0, i32 6
  %283 = load i32, ptr %282, align 8, !tbaa !60
  %284 = add i32 %283, 3
  %285 = getelementptr inbounds %struct.mk_context, ptr %281, i64 0, i32 7
  %286 = load i32, ptr %285, align 4, !tbaa !61
  %287 = icmp ugt i32 %284, %286
  br i1 %287, label %288, label %303

288:                                              ; preds = %266
  %289 = icmp eq i32 %286, 0
  %290 = shl i32 %286, 1
  %291 = select i1 %289, i32 16, i32 %290
  br label %292

292:                                              ; preds = %292, %288
  %293 = phi i32 [ %291, %288 ], [ %295, %292 ]
  %294 = icmp ugt i32 %284, %293
  %295 = shl i32 %293, 1
  br i1 %294, label %292, label %296, !llvm.loop !62

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.mk_context, ptr %281, i64 0, i32 5
  %298 = load ptr, ptr %297, align 8, !tbaa !51
  %299 = zext i32 %293 to i64
  %300 = tail call ptr @realloc(ptr noundef %298, i64 noundef %299) #13
  %301 = icmp eq ptr %300, null
  br i1 %301, label %409, label %302

302:                                              ; preds = %296
  store ptr %300, ptr %297, align 8, !tbaa !51
  store i32 %293, ptr %285, align 4, !tbaa !61
  br label %303

303:                                              ; preds = %302, %266
  %304 = getelementptr inbounds %struct.mk_context, ptr %281, i64 0, i32 5
  %305 = load ptr, ptr %304, align 8, !tbaa !51
  %306 = load i32, ptr %282, align 8, !tbaa !60
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i8, ptr %305, i64 %307
  store i8 %273, ptr %308, align 1
  %309 = getelementptr inbounds i8, ptr %308, i64 1
  store i8 %274, ptr %309, align 1
  %310 = getelementptr inbounds i8, ptr %308, i64 2
  store i8 %280, ptr %310, align 1
  store i32 %284, ptr %282, align 8, !tbaa !60
  %311 = load ptr, ptr %203, align 8, !tbaa !73
  %312 = icmp eq ptr %311, null
  br i1 %312, label %349, label %313

313:                                              ; preds = %303
  %314 = load ptr, ptr %74, align 8, !tbaa !72
  %315 = getelementptr inbounds %struct.mk_context, ptr %311, i64 0, i32 5
  %316 = load ptr, ptr %315, align 8, !tbaa !51
  %317 = getelementptr inbounds %struct.mk_context, ptr %311, i64 0, i32 6
  %318 = load i32, ptr %317, align 8, !tbaa !60
  %319 = getelementptr inbounds %struct.mk_context, ptr %314, i64 0, i32 6
  %320 = load i32, ptr %319, align 8, !tbaa !60
  %321 = add i32 %320, %318
  %322 = getelementptr inbounds %struct.mk_context, ptr %314, i64 0, i32 7
  %323 = load i32, ptr %322, align 4, !tbaa !61
  %324 = icmp ugt i32 %321, %323
  br i1 %324, label %325, label %340

325:                                              ; preds = %313
  %326 = icmp eq i32 %323, 0
  %327 = shl i32 %323, 1
  %328 = select i1 %326, i32 16, i32 %327
  br label %329

329:                                              ; preds = %329, %325
  %330 = phi i32 [ %328, %325 ], [ %332, %329 ]
  %331 = icmp ugt i32 %321, %330
  %332 = shl i32 %330, 1
  br i1 %331, label %329, label %333, !llvm.loop !62

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.mk_context, ptr %314, i64 0, i32 5
  %335 = load ptr, ptr %334, align 8, !tbaa !51
  %336 = zext i32 %330 to i64
  %337 = tail call ptr @realloc(ptr noundef %335, i64 noundef %336) #13
  %338 = icmp eq ptr %337, null
  br i1 %338, label %409, label %339

339:                                              ; preds = %333
  store ptr %337, ptr %334, align 8, !tbaa !51
  store i32 %330, ptr %322, align 4, !tbaa !61
  br label %340

340:                                              ; preds = %339, %313
  %341 = getelementptr inbounds %struct.mk_context, ptr %314, i64 0, i32 5
  %342 = load ptr, ptr %341, align 8, !tbaa !51
  %343 = load i32, ptr %319, align 8, !tbaa !60
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds i8, ptr %342, i64 %344
  %346 = zext i32 %318 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %345, ptr align 1 %316, i64 %346, i1 false)
  store i32 %321, ptr %319, align 8, !tbaa !60
  %347 = load ptr, ptr %203, align 8, !tbaa !73
  %348 = getelementptr inbounds %struct.mk_context, ptr %347, i64 0, i32 6
  store i32 0, ptr %348, align 8, !tbaa !60
  br label %349

349:                                              ; preds = %340, %303
  store i8 0, ptr %3, align 1, !tbaa !67
  %350 = load ptr, ptr %74, align 8, !tbaa !72
  %351 = getelementptr inbounds %struct.mk_context, ptr %350, i64 0, i32 6
  %352 = load i32, ptr %351, align 8, !tbaa !60
  %353 = icmp ult i32 %352, 1048577
  %354 = icmp eq ptr %350, null
  %355 = or i1 %354, %353
  br i1 %355, label %409, label %356

356:                                              ; preds = %349
  %357 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %350, ptr noundef null), !range !64
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %409, label %359

359:                                              ; preds = %356
  store ptr null, ptr %74, align 8, !tbaa !72
  %360 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !48
  %362 = getelementptr inbounds %struct.mk_context, ptr %361, i64 0, i32 6
  %363 = load i32, ptr %362, align 8, !tbaa !60
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %409, label %365

365:                                              ; preds = %359
  %366 = getelementptr inbounds %struct.mk_context, ptr %361, i64 0, i32 2
  %367 = load ptr, ptr %366, align 8, !tbaa !43
  %368 = icmp eq ptr %367, null
  %369 = getelementptr inbounds %struct.mk_context, ptr %361, i64 0, i32 5
  %370 = load ptr, ptr %369, align 8, !tbaa !51
  br i1 %368, label %400, label %371

371:                                              ; preds = %365
  %372 = getelementptr inbounds %struct.mk_context, ptr %367, i64 0, i32 6
  %373 = load i32, ptr %372, align 8, !tbaa !60
  %374 = add i32 %373, %363
  %375 = getelementptr inbounds %struct.mk_context, ptr %367, i64 0, i32 7
  %376 = load i32, ptr %375, align 4, !tbaa !61
  %377 = icmp ugt i32 %374, %376
  br i1 %377, label %378, label %393

378:                                              ; preds = %371
  %379 = icmp eq i32 %376, 0
  %380 = shl i32 %376, 1
  %381 = select i1 %379, i32 16, i32 %380
  br label %382

382:                                              ; preds = %382, %378
  %383 = phi i32 [ %381, %378 ], [ %385, %382 ]
  %384 = icmp ugt i32 %374, %383
  %385 = shl i32 %383, 1
  br i1 %384, label %382, label %386, !llvm.loop !62

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.mk_context, ptr %367, i64 0, i32 5
  %388 = load ptr, ptr %387, align 8, !tbaa !51
  %389 = zext i32 %383 to i64
  %390 = tail call ptr @realloc(ptr noundef %388, i64 noundef %389) #13
  %391 = icmp eq ptr %390, null
  br i1 %391, label %409, label %392

392:                                              ; preds = %386
  store ptr %390, ptr %387, align 8, !tbaa !51
  store i32 %383, ptr %375, align 4, !tbaa !61
  br label %393

393:                                              ; preds = %392, %371
  %394 = getelementptr inbounds %struct.mk_context, ptr %367, i64 0, i32 5
  %395 = load ptr, ptr %394, align 8, !tbaa !51
  %396 = load i32, ptr %372, align 8, !tbaa !60
  %397 = zext i32 %396 to i64
  %398 = getelementptr inbounds i8, ptr %395, i64 %397
  %399 = zext i32 %363 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %398, ptr align 1 %370, i64 %399, i1 false)
  store i32 %374, ptr %372, align 8, !tbaa !60
  br label %407

400:                                              ; preds = %365
  %401 = zext i32 %363 to i64
  %402 = getelementptr inbounds %struct.mk_context, ptr %361, i64 0, i32 3
  %403 = load ptr, ptr %402, align 8, !tbaa !44
  %404 = load ptr, ptr %403, align 8, !tbaa !50
  %405 = tail call i64 @fwrite(ptr noundef %370, i64 noundef %401, i64 noundef 1, ptr noundef %404)
  %406 = icmp eq i64 %405, 1
  br i1 %406, label %407, label %409

407:                                              ; preds = %393, %400
  store i32 0, ptr %362, align 8, !tbaa !60
  br label %409

408:                                              ; preds = %144, %187, %167
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %409

409:                                              ; preds = %407, %359, %349, %400, %356, %386, %333, %296, %259, %227, %408, %65, %21, %51, %234, %104, %1
  %410 = phi i32 [ 0, %1 ], [ -1, %104 ], [ -1, %234 ], [ -1, %51 ], [ -1, %21 ], [ -1, %65 ], [ -1, %408 ], [ -1, %227 ], [ -1, %259 ], [ -1, %296 ], [ -1, %333 ], [ -1, %386 ], [ -1, %356 ], [ -1, %400 ], [ 0, %349 ], [ 0, %359 ], [ 0, %407 ]
  ret i32 %410
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @mk_set_frame_flags(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 13
  %6 = load i8, ptr %5, align 1, !tbaa !67
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 10
  store i64 %1, ptr %9, align 8, !tbaa !70
  %10 = icmp ne i32 %2, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 14
  store i8 %11, ptr %12, align 2, !tbaa !68
  %13 = icmp ne i32 %3, 0
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 15
  store i8 %14, ptr %15, align 1, !tbaa !69
  %16 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !74
  %18 = icmp slt i64 %17, %1
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  store i64 %1, ptr %16, align 8, !tbaa !74
  br label %20

20:                                               ; preds = %8, %19, %4
  %21 = phi i32 [ -1, %4 ], [ 0, %19 ], [ 0, %8 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mk_add_frame_data(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 13
  %5 = load i8, ptr %4, align 1, !tbaa !67
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %66, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !41
  store ptr %16, ptr %12, align 8, !tbaa !34
  br label %21

17:                                               ; preds = %11
  %18 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %18, i8 0, i64 56, i1 false)
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi ptr [ %13, %15 ], [ %18, %20 ]
  %23 = getelementptr inbounds %struct.mk_context, ptr %22, i64 0, i32 2
  store ptr null, ptr %23, align 8, !tbaa !43
  %24 = getelementptr inbounds %struct.mk_context, ptr %22, i64 0, i32 3
  store ptr %0, ptr %24, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.mk_context, ptr %22, i64 0, i32 4
  store i32 0, ptr %25, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.mk_context, ptr %27, i64 0, i32 1
  store ptr %22, ptr %30, align 8, !tbaa !47
  br label %31

31:                                               ; preds = %29, %21
  store ptr %27, ptr %22, align 8, !tbaa !41
  %32 = getelementptr inbounds %struct.mk_context, ptr %22, i64 0, i32 1
  store ptr %26, ptr %32, align 8, !tbaa !47
  store ptr %22, ptr %26, align 8, !tbaa !46
  br label %33

33:                                               ; preds = %17, %31
  %34 = phi ptr [ %22, %31 ], [ null, %17 ]
  store ptr %34, ptr %8, align 8, !tbaa !73
  %35 = icmp eq ptr %34, null
  br i1 %35, label %66, label %36

36:                                               ; preds = %33, %7
  %37 = load ptr, ptr %8, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.mk_context, ptr %37, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !60
  %40 = add i32 %39, %2
  %41 = getelementptr inbounds %struct.mk_context, ptr %37, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !61
  %43 = icmp ugt i32 %40, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = icmp eq i32 %42, 0
  %46 = shl i32 %42, 1
  %47 = select i1 %45, i32 16, i32 %46
  br label %48

48:                                               ; preds = %48, %44
  %49 = phi i32 [ %47, %44 ], [ %51, %48 ]
  %50 = icmp ugt i32 %40, %49
  %51 = shl i32 %49, 1
  br i1 %50, label %48, label %52, !llvm.loop !62

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.mk_context, ptr %37, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !51
  %55 = zext i32 %49 to i64
  %56 = tail call ptr @realloc(ptr noundef %54, i64 noundef %55) #13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  store ptr %56, ptr %53, align 8, !tbaa !51
  store i32 %49, ptr %41, align 4, !tbaa !61
  br label %59

59:                                               ; preds = %58, %36
  %60 = getelementptr inbounds %struct.mk_context, ptr %37, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !51
  %62 = load i32, ptr %38, align 8, !tbaa !60
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %61, i64 %63
  %65 = zext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %1, i64 %65, i1 false)
  store i32 %40, ptr %38, align 8, !tbaa !60
  br label %66

66:                                               ; preds = %59, %52, %33, %3
  %67 = phi i32 [ -1, %3 ], [ -1, %33 ], [ 0, %59 ], [ -1, %52 ]
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mk_close(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @mk_flush_frame(ptr noundef %0), !range !64
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %61, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = icmp eq ptr %7, null
  br i1 %8, label %61, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %7, ptr noundef null), !range !64
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %61, label %12

12:                                               ; preds = %9
  store ptr null, ptr %6, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.mk_context, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !60
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.mk_context, ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.mk_context, ptr %14, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  br i1 %21, label %53, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.mk_context, ptr %20, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !60
  %27 = add i32 %26, %16
  %28 = getelementptr inbounds %struct.mk_context, ptr %20, i64 0, i32 7
  %29 = load i32, ptr %28, align 4, !tbaa !61
  %30 = icmp ugt i32 %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = icmp eq i32 %29, 0
  %33 = shl i32 %29, 1
  %34 = select i1 %32, i32 16, i32 %33
  br label %35

35:                                               ; preds = %35, %31
  %36 = phi i32 [ %34, %31 ], [ %38, %35 ]
  %37 = icmp ugt i32 %27, %36
  %38 = shl i32 %36, 1
  br i1 %37, label %35, label %39, !llvm.loop !62

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mk_context, ptr %20, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !51
  %42 = zext i32 %36 to i64
  %43 = tail call ptr @realloc(ptr noundef %41, i64 noundef %42) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %39
  store ptr %43, ptr %40, align 8, !tbaa !51
  store i32 %36, ptr %28, align 4, !tbaa !61
  br label %46

46:                                               ; preds = %45, %24
  %47 = getelementptr inbounds %struct.mk_context, ptr %20, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !51
  %49 = load i32, ptr %25, align 8, !tbaa !60
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %48, i64 %50
  %52 = zext i32 %16 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %23, i64 %52, i1 false)
  store i32 %27, ptr %25, align 8, !tbaa !60
  br label %60

53:                                               ; preds = %18
  %54 = zext i32 %16 to i64
  %55 = getelementptr inbounds %struct.mk_context, ptr %14, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !44
  %57 = load ptr, ptr %56, align 8, !tbaa !50
  %58 = tail call i64 @fwrite(ptr noundef %23, i64 noundef %54, i64 noundef 1, ptr noundef %57)
  %59 = icmp eq i64 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %46, %53
  store i32 0, ptr %15, align 8, !tbaa !60
  br label %61

61:                                               ; preds = %5, %60, %12, %2, %39, %9, %53
  %62 = phi i32 [ -1, %53 ], [ -1, %9 ], [ -1, %39 ], [ -1, %2 ], [ 0, %12 ], [ 0, %60 ], [ 0, %5 ]
  %63 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 12
  %64 = load i8, ptr %63, align 8, !tbaa !57
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %172, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %0, align 8, !tbaa !50
  %68 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !65
  %70 = zext i32 %69 to i64
  %71 = tail call i32 @fseek(ptr noundef %67, i64 noundef %70, i32 noundef 0)
  %72 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 7
  %73 = load i64, ptr %72, align 8, !tbaa !58
  %74 = icmp eq i64 %73, 0
  %75 = select i1 %74, i64 %1, i64 %73
  %76 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 11
  %77 = load i64, ptr %76, align 8, !tbaa !74
  %78 = add nsw i64 %75, %77
  %79 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !48
  %81 = sitofp i64 %78 to double
  %82 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 8
  %83 = load i64, ptr %82, align 8, !tbaa !56
  %84 = sitofp i64 %83 to double
  %85 = fdiv double %81, %84
  %86 = fptrunc double %85 to float
  %87 = bitcast float %86 to i32
  %88 = lshr i32 %87, 24
  %89 = trunc i32 %88 to i8
  %90 = lshr i32 %87, 16
  %91 = trunc i32 %90 to i8
  %92 = lshr i32 %87, 8
  %93 = trunc i32 %92 to i8
  %94 = trunc i32 %87 to i8
  %95 = getelementptr inbounds %struct.mk_context, ptr %80, i64 0, i32 6
  %96 = load i32, ptr %95, align 8, !tbaa !60
  %97 = add i32 %96, 4
  %98 = getelementptr inbounds %struct.mk_context, ptr %80, i64 0, i32 7
  %99 = load i32, ptr %98, align 4, !tbaa !61
  %100 = icmp ugt i32 %97, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %66
  %102 = icmp eq i32 %99, 0
  %103 = shl i32 %99, 1
  %104 = select i1 %102, i32 16, i32 %103
  br label %105

105:                                              ; preds = %105, %101
  %106 = phi i32 [ %104, %101 ], [ %108, %105 ]
  %107 = icmp ugt i32 %97, %106
  %108 = shl i32 %106, 1
  br i1 %107, label %105, label %109, !llvm.loop !62

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.mk_context, ptr %80, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !51
  %112 = zext i32 %106 to i64
  %113 = tail call ptr @realloc(ptr noundef %111, i64 noundef %112) #13
  %114 = icmp eq ptr %113, null
  br i1 %114, label %172, label %115

115:                                              ; preds = %109
  store ptr %113, ptr %110, align 8, !tbaa !51
  store i32 %106, ptr %98, align 4, !tbaa !61
  br label %116

116:                                              ; preds = %115, %66
  %117 = getelementptr inbounds %struct.mk_context, ptr %80, i64 0, i32 5
  %118 = load ptr, ptr %117, align 8, !tbaa !51
  %119 = load i32, ptr %95, align 8, !tbaa !60
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %118, i64 %120
  store i8 %89, ptr %121, align 1
  %122 = getelementptr inbounds i8, ptr %121, i64 1
  store i8 %91, ptr %122, align 1
  %123 = getelementptr inbounds i8, ptr %121, i64 2
  store i8 %93, ptr %123, align 1
  %124 = getelementptr inbounds i8, ptr %121, i64 3
  store i8 %94, ptr %124, align 1
  store i32 %97, ptr %95, align 8, !tbaa !60
  %125 = load ptr, ptr %79, align 8, !tbaa !48
  %126 = getelementptr inbounds %struct.mk_context, ptr %125, i64 0, i32 6
  %127 = load i32, ptr %126, align 8, !tbaa !60
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %172, label %129

129:                                              ; preds = %116
  %130 = getelementptr inbounds %struct.mk_context, ptr %125, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !43
  %132 = icmp eq ptr %131, null
  %133 = getelementptr inbounds %struct.mk_context, ptr %125, i64 0, i32 5
  %134 = load ptr, ptr %133, align 8, !tbaa !51
  br i1 %132, label %164, label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.mk_context, ptr %131, i64 0, i32 6
  %137 = load i32, ptr %136, align 8, !tbaa !60
  %138 = add i32 %137, %127
  %139 = getelementptr inbounds %struct.mk_context, ptr %131, i64 0, i32 7
  %140 = load i32, ptr %139, align 4, !tbaa !61
  %141 = icmp ugt i32 %138, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %135
  %143 = icmp eq i32 %140, 0
  %144 = shl i32 %140, 1
  %145 = select i1 %143, i32 16, i32 %144
  br label %146

146:                                              ; preds = %146, %142
  %147 = phi i32 [ %145, %142 ], [ %149, %146 ]
  %148 = icmp ugt i32 %138, %147
  %149 = shl i32 %147, 1
  br i1 %148, label %146, label %150, !llvm.loop !62

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.mk_context, ptr %131, i64 0, i32 5
  %152 = load ptr, ptr %151, align 8, !tbaa !51
  %153 = zext i32 %147 to i64
  %154 = tail call ptr @realloc(ptr noundef %152, i64 noundef %153) #13
  %155 = icmp eq ptr %154, null
  br i1 %155, label %172, label %156

156:                                              ; preds = %150
  store ptr %154, ptr %151, align 8, !tbaa !51
  store i32 %147, ptr %139, align 4, !tbaa !61
  br label %157

157:                                              ; preds = %156, %135
  %158 = getelementptr inbounds %struct.mk_context, ptr %131, i64 0, i32 5
  %159 = load ptr, ptr %158, align 8, !tbaa !51
  %160 = load i32, ptr %136, align 8, !tbaa !60
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %159, i64 %161
  %163 = zext i32 %127 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %162, ptr align 1 %134, i64 %163, i1 false)
  store i32 %138, ptr %136, align 8, !tbaa !60
  br label %171

164:                                              ; preds = %129
  %165 = zext i32 %127 to i64
  %166 = getelementptr inbounds %struct.mk_context, ptr %125, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !44
  %168 = load ptr, ptr %167, align 8, !tbaa !50
  %169 = tail call i64 @fwrite(ptr noundef %134, i64 noundef %165, i64 noundef 1, ptr noundef %168)
  %170 = icmp eq i64 %169, 1
  br i1 %170, label %171, label %172

171:                                              ; preds = %157, %164
  store i32 0, ptr %126, align 8, !tbaa !60
  br label %172

172:                                              ; preds = %171, %116, %109, %150, %164, %61
  %173 = phi i32 [ %62, %61 ], [ -1, %164 ], [ -1, %150 ], [ -1, %109 ], [ %62, %116 ], [ %62, %171 ]
  %174 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 5
  %175 = load ptr, ptr %174, align 8, !tbaa !34
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %181, %172
  %178 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 6
  %179 = load ptr, ptr %178, align 8, !tbaa !46
  %180 = icmp eq ptr %179, null
  br i1 %180, label %193, label %187

181:                                              ; preds = %172, %181
  %182 = phi ptr [ %183, %181 ], [ %175, %172 ]
  %183 = load ptr, ptr %182, align 8, !tbaa !41
  %184 = getelementptr inbounds %struct.mk_context, ptr %182, i64 0, i32 5
  %185 = load ptr, ptr %184, align 8, !tbaa !51
  tail call void @free(ptr noundef %185) #11
  tail call void @free(ptr noundef %182) #11
  %186 = icmp eq ptr %183, null
  br i1 %186, label %177, label %181, !llvm.loop !52

187:                                              ; preds = %177, %187
  %188 = phi ptr [ %189, %187 ], [ %179, %177 ]
  %189 = load ptr, ptr %188, align 8, !tbaa !41
  %190 = getelementptr inbounds %struct.mk_context, ptr %188, i64 0, i32 5
  %191 = load ptr, ptr %190, align 8, !tbaa !51
  tail call void @free(ptr noundef %191) #11
  tail call void @free(ptr noundef %188) #11
  %192 = icmp eq ptr %189, null
  br i1 %192, label %193, label %187, !llvm.loop !55

193:                                              ; preds = %187, %177
  %194 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 2
  store ptr null, ptr %194, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %174, i8 0, i64 16, i1 false)
  %195 = load ptr, ptr %0, align 8, !tbaa !50
  %196 = tail call i32 @fclose(ptr noundef %195)
  tail call void @free(ptr noundef %0) #11
  ret i32 %173
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @mk_write_id(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = lshr i32 %1, 24
  %4 = trunc i32 %3 to i8
  %5 = lshr i32 %1, 16
  %6 = trunc i32 %5 to i8
  %7 = lshr i32 %1, 8
  %8 = trunc i32 %7 to i8
  %9 = trunc i32 %1 to i8
  %10 = icmp eq i8 %4, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !60
  %14 = add i32 %13, 4
  %15 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !61
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %11
  %19 = icmp eq i32 %16, 0
  %20 = shl i32 %16, 1
  %21 = select i1 %19, i32 16, i32 %20
  br label %22

22:                                               ; preds = %22, %18
  %23 = phi i32 [ %21, %18 ], [ %25, %22 ]
  %24 = icmp ugt i32 %14, %23
  %25 = shl i32 %23, 1
  br i1 %24, label %22, label %26, !llvm.loop !62

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  %29 = zext i32 %23 to i64
  %30 = tail call ptr @realloc(ptr noundef %28, i64 noundef %29) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %127, label %32

32:                                               ; preds = %26
  store ptr %30, ptr %27, align 8, !tbaa !51
  store i32 %23, ptr %15, align 4, !tbaa !61
  br label %33

33:                                               ; preds = %32, %11
  %34 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  %36 = load i32, ptr %12, align 8, !tbaa !60
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  store i8 %4, ptr %38, align 1
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  store i8 %6, ptr %39, align 1
  %40 = getelementptr inbounds i8, ptr %38, i64 2
  store i8 %8, ptr %40, align 1
  %41 = getelementptr inbounds i8, ptr %38, i64 3
  store i8 %9, ptr %41, align 1
  store i32 %14, ptr %12, align 8, !tbaa !60
  br label %127

42:                                               ; preds = %2
  %43 = icmp eq i8 %6, 0
  %44 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 7
  %45 = load i32, ptr %44, align 4, !tbaa !61
  br i1 %43, label %74, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !60
  %49 = add i32 %48, 3
  %50 = icmp ugt i32 %49, %45
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = icmp eq i32 %45, 0
  %53 = shl i32 %45, 1
  %54 = select i1 %52, i32 16, i32 %53
  br label %55

55:                                               ; preds = %55, %51
  %56 = phi i32 [ %54, %51 ], [ %58, %55 ]
  %57 = icmp ugt i32 %49, %56
  %58 = shl i32 %56, 1
  br i1 %57, label %55, label %59, !llvm.loop !62

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !51
  %62 = zext i32 %56 to i64
  %63 = tail call ptr @realloc(ptr noundef %61, i64 noundef %62) #13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %127, label %65

65:                                               ; preds = %59
  store ptr %63, ptr %60, align 8, !tbaa !51
  store i32 %56, ptr %44, align 4, !tbaa !61
  br label %66

66:                                               ; preds = %65, %46
  %67 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !51
  %69 = load i32, ptr %47, align 8, !tbaa !60
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  store i8 %6, ptr %71, align 1
  %72 = getelementptr inbounds i8, ptr %71, i64 1
  store i8 %8, ptr %72, align 1
  %73 = getelementptr inbounds i8, ptr %71, i64 2
  store i8 %9, ptr %73, align 1
  store i32 %49, ptr %47, align 8, !tbaa !60
  br label %127

74:                                               ; preds = %42
  %75 = icmp eq i8 %8, 0
  %76 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 6
  %77 = load i32, ptr %76, align 8, !tbaa !60
  br i1 %75, label %103, label %78

78:                                               ; preds = %74
  %79 = add i32 %77, 2
  %80 = icmp ugt i32 %79, %45
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = icmp eq i32 %45, 0
  %83 = shl i32 %45, 1
  %84 = select i1 %82, i32 16, i32 %83
  br label %85

85:                                               ; preds = %85, %81
  %86 = phi i32 [ %84, %81 ], [ %88, %85 ]
  %87 = icmp ugt i32 %79, %86
  %88 = shl i32 %86, 1
  br i1 %87, label %85, label %89, !llvm.loop !62

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !51
  %92 = zext i32 %86 to i64
  %93 = tail call ptr @realloc(ptr noundef %91, i64 noundef %92) #13
  %94 = icmp eq ptr %93, null
  br i1 %94, label %127, label %95

95:                                               ; preds = %89
  store ptr %93, ptr %90, align 8, !tbaa !51
  store i32 %86, ptr %44, align 4, !tbaa !61
  br label %96

96:                                               ; preds = %95, %78
  %97 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !51
  %99 = load i32, ptr %76, align 8, !tbaa !60
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %98, i64 %100
  store i8 %8, ptr %101, align 1
  %102 = getelementptr inbounds i8, ptr %101, i64 1
  store i8 %9, ptr %102, align 1
  store i32 %79, ptr %76, align 8, !tbaa !60
  br label %127

103:                                              ; preds = %74
  %104 = add i32 %77, 1
  %105 = icmp ugt i32 %104, %45
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = icmp eq i32 %45, 0
  %108 = shl i32 %45, 1
  %109 = select i1 %107, i32 16, i32 %108
  br label %110

110:                                              ; preds = %110, %106
  %111 = phi i32 [ %109, %106 ], [ %113, %110 ]
  %112 = icmp ugt i32 %104, %111
  %113 = shl i32 %111, 1
  br i1 %112, label %110, label %114, !llvm.loop !62

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !51
  %117 = zext i32 %111 to i64
  %118 = tail call ptr @realloc(ptr noundef %116, i64 noundef %117) #13
  %119 = icmp eq ptr %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %114
  store ptr %118, ptr %115, align 8, !tbaa !51
  store i32 %111, ptr %44, align 4, !tbaa !61
  br label %121

121:                                              ; preds = %120, %103
  %122 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %123 = load ptr, ptr %122, align 8, !tbaa !51
  %124 = load i32, ptr %76, align 8, !tbaa !60
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %123, i64 %125
  store i8 %9, ptr %126, align 1
  store i32 %104, ptr %76, align 8, !tbaa !60
  br label %127

127:                                              ; preds = %121, %114, %96, %89, %66, %59, %33, %26
  %128 = phi i32 [ 0, %33 ], [ -1, %26 ], [ 0, %66 ], [ -1, %59 ], [ 0, %96 ], [ -1, %89 ], [ 0, %121 ], [ -1, %114 ]
  ret i32 %128
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @mk_write_size(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = lshr i32 %1, 24
  %4 = trunc i32 %3 to i8
  %5 = lshr i32 %1, 16
  %6 = trunc i32 %5 to i8
  %7 = lshr i32 %1, 8
  %8 = trunc i32 %7 to i8
  %9 = trunc i32 %1 to i8
  %10 = icmp ult i32 %1, 127
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = or disjoint i8 %9, -128
  %13 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !60
  %15 = add i32 %14, 1
  %16 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !61
  %18 = icmp ugt i32 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %11
  %20 = icmp eq i32 %17, 0
  %21 = shl i32 %17, 1
  %22 = select i1 %20, i32 16, i32 %21
  br label %23

23:                                               ; preds = %23, %19
  %24 = phi i32 [ %22, %19 ], [ %26, %23 ]
  %25 = icmp ugt i32 %15, %24
  %26 = shl i32 %24, 1
  br i1 %25, label %23, label %27, !llvm.loop !62

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = zext i32 %24 to i64
  %31 = tail call ptr @realloc(ptr noundef %29, i64 noundef %30) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %171, label %33

33:                                               ; preds = %27
  store ptr %31, ptr %28, align 8, !tbaa !51
  store i32 %24, ptr %16, align 4, !tbaa !61
  br label %34

34:                                               ; preds = %33, %11
  %35 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = load i32, ptr %13, align 8, !tbaa !60
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  store i8 %12, ptr %39, align 1
  store i32 %15, ptr %13, align 8, !tbaa !60
  br label %171

40:                                               ; preds = %2
  %41 = icmp ult i32 %1, 16383
  br i1 %41, label %42, label %72

42:                                               ; preds = %40
  %43 = or disjoint i8 %8, 64
  %44 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !60
  %46 = add i32 %45, 2
  %47 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 7
  %48 = load i32, ptr %47, align 4, !tbaa !61
  %49 = icmp ugt i32 %46, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %42
  %51 = icmp eq i32 %48, 0
  %52 = shl i32 %48, 1
  %53 = select i1 %51, i32 16, i32 %52
  br label %54

54:                                               ; preds = %54, %50
  %55 = phi i32 [ %53, %50 ], [ %57, %54 ]
  %56 = icmp ugt i32 %46, %55
  %57 = shl i32 %55, 1
  br i1 %56, label %54, label %58, !llvm.loop !62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !51
  %61 = zext i32 %55 to i64
  %62 = tail call ptr @realloc(ptr noundef %60, i64 noundef %61) #13
  %63 = icmp eq ptr %62, null
  br i1 %63, label %171, label %64

64:                                               ; preds = %58
  store ptr %62, ptr %59, align 8, !tbaa !51
  store i32 %55, ptr %47, align 4, !tbaa !61
  br label %65

65:                                               ; preds = %64, %42
  %66 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !51
  %68 = load i32, ptr %44, align 8, !tbaa !60
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %67, i64 %69
  store i8 %43, ptr %70, align 1
  %71 = getelementptr inbounds i8, ptr %70, i64 1
  store i8 %9, ptr %71, align 1
  store i32 %46, ptr %44, align 8, !tbaa !60
  br label %171

72:                                               ; preds = %40
  %73 = icmp ult i32 %1, 2097151
  br i1 %73, label %74, label %105

74:                                               ; preds = %72
  %75 = or disjoint i8 %6, 32
  %76 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 6
  %77 = load i32, ptr %76, align 8, !tbaa !60
  %78 = add i32 %77, 3
  %79 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 7
  %80 = load i32, ptr %79, align 4, !tbaa !61
  %81 = icmp ugt i32 %78, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %74
  %83 = icmp eq i32 %80, 0
  %84 = shl i32 %80, 1
  %85 = select i1 %83, i32 16, i32 %84
  br label %86

86:                                               ; preds = %86, %82
  %87 = phi i32 [ %85, %82 ], [ %89, %86 ]
  %88 = icmp ugt i32 %78, %87
  %89 = shl i32 %87, 1
  br i1 %88, label %86, label %90, !llvm.loop !62

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !51
  %93 = zext i32 %87 to i64
  %94 = tail call ptr @realloc(ptr noundef %92, i64 noundef %93) #13
  %95 = icmp eq ptr %94, null
  br i1 %95, label %171, label %96

96:                                               ; preds = %90
  store ptr %94, ptr %91, align 8, !tbaa !51
  store i32 %87, ptr %79, align 4, !tbaa !61
  br label %97

97:                                               ; preds = %96, %74
  %98 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %99 = load ptr, ptr %98, align 8, !tbaa !51
  %100 = load i32, ptr %76, align 8, !tbaa !60
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %99, i64 %101
  store i8 %75, ptr %102, align 1
  %103 = getelementptr inbounds i8, ptr %102, i64 1
  store i8 %8, ptr %103, align 1
  %104 = getelementptr inbounds i8, ptr %102, i64 2
  store i8 %9, ptr %104, align 1
  store i32 %78, ptr %76, align 8, !tbaa !60
  br label %171

105:                                              ; preds = %72
  %106 = icmp ult i32 %1, 268435455
  br i1 %106, label %107, label %139

107:                                              ; preds = %105
  %108 = or disjoint i8 %4, 16
  %109 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 6
  %110 = load i32, ptr %109, align 8, !tbaa !60
  %111 = add i32 %110, 4
  %112 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 7
  %113 = load i32, ptr %112, align 4, !tbaa !61
  %114 = icmp ugt i32 %111, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %107
  %116 = icmp eq i32 %113, 0
  %117 = shl i32 %113, 1
  %118 = select i1 %116, i32 16, i32 %117
  br label %119

119:                                              ; preds = %119, %115
  %120 = phi i32 [ %118, %115 ], [ %122, %119 ]
  %121 = icmp ugt i32 %111, %120
  %122 = shl i32 %120, 1
  br i1 %121, label %119, label %123, !llvm.loop !62

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %125 = load ptr, ptr %124, align 8, !tbaa !51
  %126 = zext i32 %120 to i64
  %127 = tail call ptr @realloc(ptr noundef %125, i64 noundef %126) #13
  %128 = icmp eq ptr %127, null
  br i1 %128, label %171, label %129

129:                                              ; preds = %123
  store ptr %127, ptr %124, align 8, !tbaa !51
  store i32 %120, ptr %112, align 4, !tbaa !61
  br label %130

130:                                              ; preds = %129, %107
  %131 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %132 = load ptr, ptr %131, align 8, !tbaa !51
  %133 = load i32, ptr %109, align 8, !tbaa !60
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %132, i64 %134
  store i8 %108, ptr %135, align 1
  %136 = getelementptr inbounds i8, ptr %135, i64 1
  store i8 %6, ptr %136, align 1
  %137 = getelementptr inbounds i8, ptr %135, i64 2
  store i8 %8, ptr %137, align 1
  %138 = getelementptr inbounds i8, ptr %135, i64 3
  store i8 %9, ptr %138, align 1
  store i32 %111, ptr %109, align 8, !tbaa !60
  br label %171

139:                                              ; preds = %105
  %140 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 6
  %141 = load i32, ptr %140, align 8, !tbaa !60
  %142 = add i32 %141, 5
  %143 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 7
  %144 = load i32, ptr %143, align 4, !tbaa !61
  %145 = icmp ugt i32 %142, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %139
  %147 = icmp eq i32 %144, 0
  %148 = shl i32 %144, 1
  %149 = select i1 %147, i32 16, i32 %148
  br label %150

150:                                              ; preds = %150, %146
  %151 = phi i32 [ %149, %146 ], [ %153, %150 ]
  %152 = icmp ugt i32 %142, %151
  %153 = shl i32 %151, 1
  br i1 %152, label %150, label %154, !llvm.loop !62

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %156 = load ptr, ptr %155, align 8, !tbaa !51
  %157 = zext i32 %151 to i64
  %158 = tail call ptr @realloc(ptr noundef %156, i64 noundef %157) #13
  %159 = icmp eq ptr %158, null
  br i1 %159, label %171, label %160

160:                                              ; preds = %154
  store ptr %158, ptr %155, align 8, !tbaa !51
  store i32 %151, ptr %143, align 4, !tbaa !61
  br label %161

161:                                              ; preds = %160, %139
  %162 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %163 = load ptr, ptr %162, align 8, !tbaa !51
  %164 = load i32, ptr %140, align 8, !tbaa !60
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %163, i64 %165
  store i8 8, ptr %166, align 1
  %167 = getelementptr inbounds i8, ptr %166, i64 1
  store i8 %4, ptr %167, align 1
  %168 = getelementptr inbounds i8, ptr %166, i64 2
  store i8 %6, ptr %168, align 1
  %169 = getelementptr inbounds i8, ptr %166, i64 3
  store i8 %8, ptr %169, align 1
  %170 = getelementptr inbounds i8, ptr %166, i64 4
  store i8 %9, ptr %170, align 1
  store i32 %142, ptr %140, align 8, !tbaa !60
  br label %171

171:                                              ; preds = %161, %154, %130, %123, %97, %90, %65, %58, %34, %27
  %172 = phi i32 [ 0, %34 ], [ -1, %27 ], [ 0, %65 ], [ -1, %58 ], [ 0, %97 ], [ -1, %90 ], [ 0, %130 ], [ -1, %123 ], [ 0, %161 ], [ -1, %154 ]
  ret i32 %172
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 40}
!35 = !{!"mk_writer", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !37, i64 96, !37, i64 97, !37, i64 98, !37, i64 99}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!42, !36, i64 0}
!42 = !{!"mk_context", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52}
!43 = !{!42, !36, i64 16}
!44 = !{!42, !36, i64 24}
!45 = !{!42, !39, i64 32}
!46 = !{!35, !36, i64 48}
!47 = !{!42, !36, i64 8}
!48 = !{!35, !36, i64 16}
!49 = !{!36, !36, i64 0}
!50 = !{!35, !36, i64 0}
!51 = !{!42, !36, i64 40}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !53, !54}
!56 = !{!35, !40, i64 64}
!57 = !{!35, !37, i64 96}
!58 = !{!35, !40, i64 56}
!59 = !{!37, !37, i64 0}
!60 = !{!42, !39, i64 48}
!61 = !{!42, !39, i64 52}
!62 = distinct !{!62, !53, !54}
!63 = distinct !{!63, !53, !54}
!64 = !{i32 -1, i32 1}
!65 = !{!35, !39, i64 8}
!66 = !{!39, !39, i64 0}
!67 = !{!35, !37, i64 97}
!68 = !{!35, !37, i64 98}
!69 = !{!35, !37, i64 99}
!70 = !{!35, !40, i64 80}
!71 = !{!35, !40, i64 72}
!72 = !{!35, !36, i64 24}
!73 = !{!35, !36, i64 32}
!74 = !{!35, !40, i64 88}
