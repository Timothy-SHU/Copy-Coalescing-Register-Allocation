; ModuleID = 'regex-alpha/regexec.c'
source_filename = "regex-alpha/regexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regex_t = type { i32, i64, ptr, ptr }
%struct.re_guts = type { i32, ptr, i32, i32, ptr, ptr, i32, i64, i64, i64, i32, i32, i32, i32, ptr, ptr, i32, i64, i32, i64, [1 x i8] }
%struct.smat = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.regmatch_t = type { i64, i64 }
%struct.lmat = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cset = type { ptr, i8, i8, i64, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @regexec(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.regex_t, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load i32, ptr %0, align 8, !tbaa !13
  %9 = icmp eq i32 %8, 62053
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = load i32, ptr %7, align 8, !tbaa !14
  %12 = icmp eq i32 %11, 53829
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.re_guts, ptr %7, i64 0, i32 10
  %15 = load i32, ptr %14, align 8, !tbaa !16
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = and i32 %4, 7
  %20 = getelementptr inbounds %struct.re_guts, ptr %7, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !17
  %22 = icmp ult i64 %21, 33
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call fastcc i32 @smatcher(ptr noundef nonnull %7, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %19) #15, !range !18
  br label %27

25:                                               ; preds = %18
  %26 = tail call fastcc i32 @lmatcher(ptr noundef nonnull %7, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %19) #15, !range !18
  br label %27

27:                                               ; preds = %13, %5, %10, %25, %23
  %28 = phi i32 [ %26, %25 ], [ %24, %23 ], [ 2, %10 ], [ 2, %5 ], [ 2, %13 ]
  ret i32 %28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @smatcher(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.smat, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 8
  %8 = load i64, ptr %7, align 8, !tbaa !19
  %9 = add nsw i64 %8, 1
  %10 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 9
  %11 = load i64, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !21
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i64 %2, i64 0
  %17 = and i32 %4, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load i64, ptr %3, align 8, !tbaa !22
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !24
  br label %26

24:                                               ; preds = %5
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ %21, %19 ], [ %1, %24 ]
  %28 = phi i64 [ %23, %19 ], [ %25, %24 ]
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  %30 = icmp ult ptr %29, %27
  br i1 %30, label %209, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 15
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  %34 = icmp eq ptr %33, null
  br i1 %34, label %60, label %35

35:                                               ; preds = %31
  %36 = icmp ult ptr %27, %29
  br i1 %36, label %37, label %57

37:                                               ; preds = %35
  %38 = load i8, ptr %33, align 1, !tbaa !26
  %39 = ptrtoint ptr %29 to i64
  %40 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 16
  br label %41

41:                                               ; preds = %37, %54
  %42 = phi ptr [ %27, %37 ], [ %55, %54 ]
  %43 = load i8, ptr %42, align 1, !tbaa !26
  %44 = icmp eq i8 %43, %38
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = ptrtoint ptr %42 to i64
  %47 = sub i64 %39, %46
  %48 = load i32, ptr %40, align 8, !tbaa !27
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = tail call i32 @bcmp(ptr nonnull %42, ptr nonnull %33, i64 %49)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %41, %45, %51
  %55 = getelementptr inbounds i8, ptr %42, i64 1
  %56 = icmp ult ptr %55, %29
  br i1 %56, label %41, label %57, !llvm.loop !28

57:                                               ; preds = %54, %51, %35
  %58 = phi ptr [ %27, %35 ], [ %42, %51 ], [ %55, %54 ]
  %59 = icmp eq ptr %58, %29
  br i1 %59, label %209, label %60

60:                                               ; preds = %57, %31
  store ptr %0, ptr %6, align 8, !tbaa !30
  %61 = getelementptr inbounds %struct.smat, ptr %6, i64 0, i32 1
  store i32 %4, ptr %61, align 8, !tbaa !32
  %62 = getelementptr inbounds %struct.smat, ptr %6, i64 0, i32 2
  store ptr null, ptr %62, align 8, !tbaa !33
  %63 = getelementptr inbounds %struct.smat, ptr %6, i64 0, i32 7
  store ptr null, ptr %63, align 8, !tbaa !34
  %64 = getelementptr inbounds %struct.smat, ptr %6, i64 0, i32 3
  store ptr %1, ptr %64, align 8, !tbaa !35
  %65 = getelementptr inbounds %struct.smat, ptr %6, i64 0, i32 4
  store ptr %27, ptr %65, align 8, !tbaa !36
  %66 = getelementptr inbounds %struct.smat, ptr %6, i64 0, i32 5
  store ptr %29, ptr %66, align 8, !tbaa !37
  %67 = getelementptr inbounds %struct.smat, ptr %6, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %67, i8 0, i64 16, i1 false)
  %68 = call fastcc ptr @sfast(ptr noundef nonnull %6, ptr noundef %27, ptr noundef %29, i64 noundef %9, i64 noundef %11) #15
  %69 = icmp eq ptr %68, null
  br i1 %69, label %209, label %70

70:                                               ; preds = %60
  %71 = icmp eq i64 %16, 0
  %72 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 18
  %73 = getelementptr inbounds %struct.smat, ptr %6, i64 0, i32 6
  %74 = icmp eq i64 %16, 1
  %75 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 19
  br label %76

76:                                               ; preds = %70, %166
  br i1 %71, label %77, label %80

77:                                               ; preds = %76
  %78 = load i32, ptr %72, align 8, !tbaa !38
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %199, label %80

80:                                               ; preds = %77, %76
  %81 = load ptr, ptr %73, align 8, !tbaa !39
  %82 = call fastcc ptr @sslow(ptr noundef nonnull %6, ptr noundef %81, ptr noundef %29, i64 noundef %9, i64 noundef %11) #15
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %80, %84
  %85 = phi ptr [ %86, %84 ], [ %81, %80 ]
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  store ptr %86, ptr %73, align 8, !tbaa !39
  %87 = call fastcc ptr @sslow(ptr noundef nonnull %6, ptr noundef nonnull %86, ptr noundef %29, i64 noundef %9, i64 noundef %11) #15
  %88 = icmp eq ptr %87, null
  br i1 %88, label %84, label %89

89:                                               ; preds = %84, %80
  %90 = phi ptr [ %81, %80 ], [ %86, %84 ]
  %91 = phi ptr [ %82, %80 ], [ %87, %84 ]
  br i1 %74, label %92, label %103

92:                                               ; preds = %89
  %93 = load i32, ptr %72, align 8, !tbaa !38
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load ptr, ptr %64, align 8, !tbaa !35
  %97 = ptrtoint ptr %90 to i64
  %98 = ptrtoint ptr %96 to i64
  %99 = sub i64 %97, %98
  store i64 %99, ptr %3, align 8, !tbaa !22
  %100 = ptrtoint ptr %91 to i64
  %101 = sub i64 %100, %98
  %102 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 0, i32 1
  store i64 %101, ptr %102, align 8, !tbaa !24
  br label %199

103:                                              ; preds = %92, %89
  %104 = load ptr, ptr %62, align 8, !tbaa !33
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load ptr, ptr %6, align 8, !tbaa !30
  %108 = getelementptr inbounds %struct.re_guts, ptr %107, i64 0, i32 17
  %109 = load i64, ptr %108, align 8, !tbaa !40
  %110 = shl i64 %109, 4
  %111 = add i64 %110, 16
  %112 = call noalias ptr @malloc(i64 noundef %111) #18
  store ptr %112, ptr %62, align 8, !tbaa !33
  %113 = icmp eq ptr %112, null
  br i1 %113, label %209, label %114

114:                                              ; preds = %103, %106
  %115 = phi ptr [ %112, %106 ], [ %104, %103 ]
  %116 = load ptr, ptr %6, align 8, !tbaa !30
  %117 = getelementptr inbounds %struct.re_guts, ptr %116, i64 0, i32 17
  %118 = load i64, ptr %117, align 8, !tbaa !40
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %114, %120
  %121 = phi i64 [ %125, %120 ], [ 1, %114 ]
  %122 = phi i32 [ %124, %120 ], [ 1, %114 ]
  %123 = getelementptr inbounds %struct.regmatch_t, ptr %115, i64 %121
  %124 = add i32 %122, 1
  %125 = zext i32 %124 to i64
  %126 = icmp ult i64 %118, %125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %123, i8 -1, i64 16, i1 false)
  br i1 %126, label %127, label %120, !llvm.loop !41

127:                                              ; preds = %120, %114
  %128 = load i32, ptr %72, align 8, !tbaa !38
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i32, ptr %61, align 8, !tbaa !32
  %132 = and i32 %131, 1024
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = call fastcc ptr @sdissect(ptr noundef nonnull %6, ptr noundef %90, ptr noundef nonnull %91, i64 noundef %9, i64 noundef %11) #15
  br label %152

136:                                              ; preds = %130, %127
  %137 = load i64, ptr %75, align 8, !tbaa !42
  %138 = icmp sgt i64 %137, 0
  %139 = load ptr, ptr %63, align 8
  %140 = icmp eq ptr %139, null
  %141 = select i1 %138, i1 %140, i1 false
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = shl i64 %137, 3
  %144 = add i64 %143, 8
  %145 = call noalias ptr @malloc(i64 noundef %144) #18
  store ptr %145, ptr %63, align 8, !tbaa !34
  br label %146

146:                                              ; preds = %142, %136
  %147 = phi ptr [ %145, %142 ], [ %139, %136 ]
  %148 = icmp eq ptr %147, null
  %149 = select i1 %138, i1 %148, i1 false
  br i1 %149, label %206, label %150

150:                                              ; preds = %146
  %151 = call fastcc ptr @sbackref(ptr noundef nonnull %6, ptr noundef %90, ptr noundef nonnull %91, i64 noundef %9, i64 noundef %11, i64 noundef 0) #15
  br label %152

152:                                              ; preds = %150, %134
  %153 = phi ptr [ %151, %150 ], [ %135, %134 ]
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %170

155:                                              ; preds = %152, %163
  %156 = phi ptr [ %161, %163 ], [ %91, %152 ]
  %157 = load ptr, ptr %73, align 8, !tbaa !39
  %158 = icmp ugt ptr %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %155
  %160 = getelementptr inbounds i8, ptr %156, i64 -1
  %161 = call fastcc ptr @sslow(ptr noundef nonnull %6, ptr noundef %157, ptr noundef nonnull %160, i64 noundef %9, i64 noundef %11) #15
  %162 = icmp eq ptr %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = call fastcc ptr @sbackref(ptr noundef nonnull %6, ptr noundef %157, ptr noundef nonnull %161, i64 noundef %9, i64 noundef %11, i64 noundef 0) #15
  %165 = icmp eq ptr %164, null
  br i1 %165, label %155, label %170

166:                                              ; preds = %159, %155
  %167 = getelementptr inbounds i8, ptr %157, i64 1
  %168 = call fastcc ptr @sfast(ptr noundef nonnull %6, ptr noundef nonnull %167, ptr noundef %29, i64 noundef %9, i64 noundef %11) #15
  %169 = icmp eq ptr %168, null
  br i1 %169, label %209, label %76

170:                                              ; preds = %152, %163
  %171 = phi ptr [ %161, %163 ], [ %91, %152 ]
  br i1 %71, label %199, label %172

172:                                              ; preds = %170
  %173 = load ptr, ptr %73, align 8, !tbaa !39
  %174 = load ptr, ptr %64, align 8, !tbaa !35
  %175 = ptrtoint ptr %173 to i64
  %176 = ptrtoint ptr %174 to i64
  %177 = sub i64 %175, %176
  store i64 %177, ptr %3, align 8, !tbaa !22
  %178 = ptrtoint ptr %171 to i64
  %179 = sub i64 %178, %176
  %180 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 0, i32 1
  store i64 %179, ptr %180, align 8, !tbaa !24
  %181 = icmp eq i64 %16, 1
  br i1 %181, label %199, label %182

182:                                              ; preds = %172
  %183 = load ptr, ptr %6, align 8, !tbaa !30
  %184 = getelementptr inbounds %struct.re_guts, ptr %183, i64 0, i32 17
  %185 = load ptr, ptr %62, align 8
  br label %186

186:                                              ; preds = %182, %195
  %187 = phi i64 [ 1, %182 ], [ %197, %195 ]
  %188 = phi i32 [ 1, %182 ], [ %196, %195 ]
  %189 = load i64, ptr %184, align 8, !tbaa !40
  %190 = icmp ult i64 %189, %187
  %191 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 %187
  br i1 %190, label %194, label %192

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.regmatch_t, ptr %185, i64 %187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %191, ptr noundef nonnull align 8 dereferenceable(16) %193, i64 16, i1 false), !tbaa.struct !43
  br label %195

194:                                              ; preds = %186
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %191, i8 -1, i64 16, i1 false)
  br label %195

195:                                              ; preds = %192, %194
  %196 = add i32 %188, 1
  %197 = zext i32 %196 to i64
  %198 = icmp ugt i64 %16, %197
  br i1 %198, label %186, label %199, !llvm.loop !45

199:                                              ; preds = %77, %195, %95, %170, %172
  %200 = load ptr, ptr %62, align 8, !tbaa !33
  %201 = icmp eq ptr %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  call void @free(ptr noundef nonnull %200) #19
  br label %203

203:                                              ; preds = %202, %199
  %204 = load ptr, ptr %63, align 8, !tbaa !34
  %205 = icmp eq ptr %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %146, %203
  %207 = phi ptr [ %204, %203 ], [ %115, %146 ]
  %208 = phi i32 [ 0, %203 ], [ 12, %146 ]
  call void @free(ptr noundef nonnull %207) #19
  br label %209

209:                                              ; preds = %166, %106, %206, %60, %203, %57, %26
  %210 = phi i32 [ 16, %26 ], [ 1, %57 ], [ 0, %203 ], [ 1, %60 ], [ %208, %206 ], [ 1, %166 ], [ 12, %106 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #16
  ret i32 %210
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @lmatcher(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.lmat, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 8
  %8 = load i64, ptr %7, align 8, !tbaa !19
  %9 = add nsw i64 %8, 1
  %10 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 9
  %11 = load i64, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !21
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i64 %2, i64 0
  %17 = and i32 %4, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load i64, ptr %3, align 8, !tbaa !22
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !24
  br label %26

24:                                               ; preds = %5
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ %21, %19 ], [ %1, %24 ]
  %28 = phi i64 [ %23, %19 ], [ %25, %24 ]
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  %30 = icmp ult ptr %29, %27
  br i1 %30, label %224, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 15
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  %34 = icmp eq ptr %33, null
  br i1 %34, label %60, label %35

35:                                               ; preds = %31
  %36 = icmp ult ptr %27, %29
  br i1 %36, label %37, label %57

37:                                               ; preds = %35
  %38 = load i8, ptr %33, align 1, !tbaa !26
  %39 = ptrtoint ptr %29 to i64
  %40 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 16
  br label %41

41:                                               ; preds = %37, %54
  %42 = phi ptr [ %27, %37 ], [ %55, %54 ]
  %43 = load i8, ptr %42, align 1, !tbaa !26
  %44 = icmp eq i8 %43, %38
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = ptrtoint ptr %42 to i64
  %47 = sub i64 %39, %46
  %48 = load i32, ptr %40, align 8, !tbaa !27
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = tail call i32 @bcmp(ptr nonnull %42, ptr nonnull %33, i64 %49)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %41, %45, %51
  %55 = getelementptr inbounds i8, ptr %42, i64 1
  %56 = icmp ult ptr %55, %29
  br i1 %56, label %41, label %57, !llvm.loop !46

57:                                               ; preds = %54, %51, %35
  %58 = phi ptr [ %27, %35 ], [ %42, %51 ], [ %55, %54 ]
  %59 = icmp eq ptr %58, %29
  br i1 %59, label %224, label %60

60:                                               ; preds = %57, %31
  store ptr %0, ptr %6, align 8, !tbaa !47
  %61 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 1
  store i32 %4, ptr %61, align 8, !tbaa !49
  %62 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 2
  store ptr null, ptr %62, align 8, !tbaa !50
  %63 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 7
  store ptr null, ptr %63, align 8, !tbaa !51
  %64 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 3
  store ptr %1, ptr %64, align 8, !tbaa !52
  %65 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 4
  store ptr %27, ptr %65, align 8, !tbaa !53
  %66 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 5
  store ptr %29, ptr %66, align 8, !tbaa !54
  %67 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 7
  %68 = load i64, ptr %67, align 8, !tbaa !17
  %69 = shl nsw i64 %68, 2
  %70 = tail call noalias ptr @malloc(i64 noundef %69) #18
  %71 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 9
  store ptr %70, ptr %71, align 8, !tbaa !55
  %72 = icmp eq ptr %70, null
  br i1 %72, label %224, label %73

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 8
  %75 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 10
  store ptr %70, ptr %75, align 8, !tbaa !56
  %76 = getelementptr inbounds i8, ptr %70, i64 %68
  %77 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 11
  store ptr %76, ptr %77, align 8, !tbaa !57
  %78 = shl nsw i64 %68, 1
  %79 = getelementptr inbounds i8, ptr %70, i64 %78
  %80 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 12
  store ptr %79, ptr %80, align 8, !tbaa !58
  store i32 4, ptr %74, align 8, !tbaa !59
  %81 = mul nsw i64 %68, 3
  %82 = getelementptr inbounds i8, ptr %70, i64 %81
  %83 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 13
  store ptr %82, ptr %83, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %82, i8 0, i64 %68, i1 false)
  %84 = call fastcc ptr @lfast(ptr noundef nonnull %6, ptr noundef %27, ptr noundef %29, i64 noundef %9, i64 noundef %11) #15
  %85 = icmp eq ptr %84, null
  br i1 %85, label %221, label %86

86:                                               ; preds = %73
  %87 = icmp eq i64 %16, 0
  %88 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 18
  %89 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 6
  %90 = icmp eq i64 %16, 1
  %91 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 19
  br label %92

92:                                               ; preds = %86, %176
  br i1 %87, label %93, label %96

93:                                               ; preds = %92
  %94 = load i32, ptr %88, align 8, !tbaa !38
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %211, label %96

96:                                               ; preds = %93, %92
  %97 = load ptr, ptr %89, align 8, !tbaa !61
  %98 = call fastcc ptr @lslow(ptr noundef nonnull %6, ptr noundef %97, ptr noundef %29, i64 noundef %9, i64 noundef %11) #15
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %96, %100
  %101 = load ptr, ptr %89, align 8, !tbaa !61
  %102 = getelementptr inbounds i8, ptr %101, i64 1
  store ptr %102, ptr %89, align 8, !tbaa !61
  %103 = call fastcc ptr @lslow(ptr noundef nonnull %6, ptr noundef nonnull %102, ptr noundef %29, i64 noundef %9, i64 noundef %11) #15
  %104 = icmp eq ptr %103, null
  br i1 %104, label %100, label %105

105:                                              ; preds = %100, %96
  %106 = phi ptr [ %98, %96 ], [ %103, %100 ]
  br i1 %90, label %107, label %110

107:                                              ; preds = %105
  %108 = load i32, ptr %88, align 8, !tbaa !38
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %183, label %110

110:                                              ; preds = %107, %105
  %111 = load ptr, ptr %62, align 8, !tbaa !50
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load ptr, ptr %6, align 8, !tbaa !47
  %115 = getelementptr inbounds %struct.re_guts, ptr %114, i64 0, i32 17
  %116 = load i64, ptr %115, align 8, !tbaa !40
  %117 = shl i64 %116, 4
  %118 = add i64 %117, 16
  %119 = call noalias ptr @malloc(i64 noundef %118) #18
  store ptr %119, ptr %62, align 8, !tbaa !50
  %120 = icmp eq ptr %119, null
  br i1 %120, label %221, label %121

121:                                              ; preds = %110, %113
  %122 = phi ptr [ %119, %113 ], [ %111, %110 ]
  %123 = load ptr, ptr %6, align 8, !tbaa !47
  %124 = getelementptr inbounds %struct.re_guts, ptr %123, i64 0, i32 17
  %125 = load i64, ptr %124, align 8, !tbaa !40
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %121, %127
  %128 = phi i64 [ %132, %127 ], [ 1, %121 ]
  %129 = phi i32 [ %131, %127 ], [ 1, %121 ]
  %130 = getelementptr inbounds %struct.regmatch_t, ptr %122, i64 %128
  %131 = add i32 %129, 1
  %132 = zext i32 %131 to i64
  %133 = icmp ult i64 %125, %132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %130, i8 -1, i64 16, i1 false)
  br i1 %133, label %134, label %127, !llvm.loop !62

134:                                              ; preds = %127, %121
  %135 = load i32, ptr %88, align 8, !tbaa !38
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i32, ptr %61, align 8, !tbaa !49
  %139 = and i32 %138, 1024
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load ptr, ptr %89, align 8, !tbaa !61
  %143 = call fastcc ptr @ldissect(ptr noundef nonnull %6, ptr noundef %142, ptr noundef nonnull %106, i64 noundef %9, i64 noundef %11) #15
  br label %161

144:                                              ; preds = %137, %134
  %145 = load i64, ptr %91, align 8, !tbaa !42
  %146 = icmp sgt i64 %145, 0
  %147 = load ptr, ptr %63, align 8
  %148 = icmp eq ptr %147, null
  %149 = select i1 %146, i1 %148, i1 false
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = shl i64 %145, 3
  %152 = add i64 %151, 8
  %153 = call noalias ptr @malloc(i64 noundef %152) #18
  store ptr %153, ptr %63, align 8, !tbaa !51
  br label %154

154:                                              ; preds = %150, %144
  %155 = phi ptr [ %153, %150 ], [ %147, %144 ]
  %156 = icmp eq ptr %155, null
  %157 = select i1 %146, i1 %156, i1 false
  br i1 %157, label %218, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %89, align 8, !tbaa !61
  %160 = call fastcc ptr @lbackref(ptr noundef nonnull %6, ptr noundef %159, ptr noundef nonnull %106, i64 noundef %9, i64 noundef %11, i64 noundef 0) #15
  br label %161

161:                                              ; preds = %158, %141
  %162 = phi ptr [ %160, %158 ], [ %143, %141 ]
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %181

164:                                              ; preds = %161, %173
  %165 = phi ptr [ %170, %173 ], [ %106, %161 ]
  %166 = load ptr, ptr %89, align 8, !tbaa !61
  %167 = icmp ugt ptr %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = getelementptr inbounds i8, ptr %165, i64 -1
  %170 = call fastcc ptr @lslow(ptr noundef nonnull %6, ptr noundef %166, ptr noundef nonnull %169, i64 noundef %9, i64 noundef %11) #15
  %171 = icmp eq ptr %170, null
  %172 = load ptr, ptr %89, align 8, !tbaa !61
  br i1 %171, label %176, label %173

173:                                              ; preds = %168
  %174 = call fastcc ptr @lbackref(ptr noundef nonnull %6, ptr noundef %172, ptr noundef nonnull %170, i64 noundef %9, i64 noundef %11, i64 noundef 0) #15
  %175 = icmp eq ptr %174, null
  br i1 %175, label %164, label %181

176:                                              ; preds = %168, %164
  %177 = phi ptr [ %172, %168 ], [ %166, %164 ]
  %178 = getelementptr inbounds i8, ptr %177, i64 1
  %179 = call fastcc ptr @lfast(ptr noundef nonnull %6, ptr noundef nonnull %178, ptr noundef %29, i64 noundef %9, i64 noundef %11) #15
  %180 = icmp eq ptr %179, null
  br i1 %180, label %221, label %92

181:                                              ; preds = %161, %173
  %182 = phi ptr [ %170, %173 ], [ %106, %161 ]
  br i1 %87, label %211, label %183

183:                                              ; preds = %107, %181
  %184 = phi ptr [ %182, %181 ], [ %106, %107 ]
  %185 = load ptr, ptr %89, align 8, !tbaa !61
  %186 = load ptr, ptr %64, align 8, !tbaa !52
  %187 = ptrtoint ptr %185 to i64
  %188 = ptrtoint ptr %186 to i64
  %189 = sub i64 %187, %188
  store i64 %189, ptr %3, align 8, !tbaa !22
  %190 = ptrtoint ptr %184 to i64
  %191 = sub i64 %190, %188
  %192 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 0, i32 1
  store i64 %191, ptr %192, align 8, !tbaa !24
  %193 = icmp ugt i64 %16, 1
  br i1 %193, label %194, label %211

194:                                              ; preds = %183
  %195 = load ptr, ptr %6, align 8, !tbaa !47
  %196 = getelementptr inbounds %struct.re_guts, ptr %195, i64 0, i32 17
  %197 = load ptr, ptr %62, align 8
  br label %198

198:                                              ; preds = %194, %207
  %199 = phi i64 [ 1, %194 ], [ %209, %207 ]
  %200 = phi i32 [ 1, %194 ], [ %208, %207 ]
  %201 = load i64, ptr %196, align 8, !tbaa !40
  %202 = icmp ult i64 %201, %199
  %203 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 %199
  br i1 %202, label %206, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.regmatch_t, ptr %197, i64 %199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %203, ptr noundef nonnull align 8 dereferenceable(16) %205, i64 16, i1 false), !tbaa.struct !43
  br label %207

206:                                              ; preds = %198
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %203, i8 -1, i64 16, i1 false)
  br label %207

207:                                              ; preds = %204, %206
  %208 = add i32 %200, 1
  %209 = zext i32 %208 to i64
  %210 = icmp ugt i64 %16, %209
  br i1 %210, label %198, label %211, !llvm.loop !63

211:                                              ; preds = %93, %207, %181, %183
  %212 = load ptr, ptr %62, align 8, !tbaa !50
  %213 = icmp eq ptr %212, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %211
  call void @free(ptr noundef nonnull %212) #19
  br label %215

215:                                              ; preds = %214, %211
  %216 = load ptr, ptr %63, align 8, !tbaa !51
  %217 = icmp eq ptr %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %154, %215
  %219 = phi ptr [ %216, %215 ], [ %122, %154 ]
  %220 = phi i32 [ 0, %215 ], [ 12, %154 ]
  call void @free(ptr noundef nonnull %219) #19
  br label %221

221:                                              ; preds = %113, %176, %218, %215, %73
  %222 = phi i32 [ 1, %73 ], [ 0, %215 ], [ %220, %218 ], [ 1, %176 ], [ 12, %113 ]
  %223 = load ptr, ptr %71, align 8, !tbaa !55
  call void @free(ptr noundef %223) #19
  br label %224

224:                                              ; preds = %221, %60, %57, %26
  %225 = phi i32 [ 16, %26 ], [ 1, %57 ], [ 12, %60 ], [ %222, %221 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #16
  ret i32 %225
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @sfast(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readnone %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %1, i64 -1
  %11 = load i8, ptr %10, align 1, !tbaa !26
  %12 = sext i8 %11 to i32
  br label %13

13:                                               ; preds = %5, %9
  %14 = phi i32 [ %12, %9 ], [ 128, %5 ]
  %15 = trunc i64 %3 to i32
  %16 = shl nuw i32 1, %15
  %17 = load ptr, ptr %0, align 8, !tbaa !30
  %18 = tail call fastcc i32 @sstep(ptr noundef %17, i64 noundef %3, i64 noundef %4, i32 noundef %16, i32 noundef 132, i32 noundef %16) #15
  %19 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !37
  %21 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %struct.re_guts, ptr %17, i64 0, i32 6
  %23 = getelementptr inbounds %struct.re_guts, ptr %17, i64 0, i32 11
  %24 = getelementptr inbounds %struct.re_guts, ptr %17, i64 0, i32 12
  %25 = trunc i64 %4 to i32
  %26 = shl nuw i32 1, %25
  br label %27

27:                                               ; preds = %149, %13
  %28 = phi i32 [ %18, %13 ], [ %150, %149 ]
  %29 = phi ptr [ %1, %13 ], [ %151, %149 ]
  %30 = phi i32 [ %14, %13 ], [ %37, %149 ]
  %31 = phi ptr [ null, %13 ], [ %39, %149 ]
  %32 = icmp eq ptr %29, %20
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i8, ptr %29, align 1, !tbaa !26
  %35 = sext i8 %34 to i32
  br label %36

36:                                               ; preds = %27, %33
  %37 = phi i32 [ %35, %33 ], [ 128, %27 ]
  %38 = icmp eq i32 %28, %18
  %39 = select i1 %38, ptr %29, ptr %31
  switch i32 %30, label %50 [
    i32 10, label %40
    i32 128, label %44
  ]

40:                                               ; preds = %36
  %41 = load i32, ptr %22, align 8, !tbaa !21
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %48

44:                                               ; preds = %36
  %45 = load i32, ptr %21, align 8, !tbaa !32
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40
  %49 = load i32, ptr %23, align 4, !tbaa !64
  br label %50

50:                                               ; preds = %40, %36, %48, %44
  %51 = phi i32 [ 131, %48 ], [ 130, %44 ], [ 130, %36 ], [ 130, %40 ]
  %52 = phi i32 [ 129, %48 ], [ 0, %44 ], [ 0, %36 ], [ 0, %40 ]
  %53 = phi i32 [ %49, %48 ], [ 0, %44 ], [ 0, %36 ], [ 0, %40 ]
  switch i32 %37, label %65 [
    i32 10, label %54
    i32 128, label %58
  ]

54:                                               ; preds = %50
  %55 = load i32, ptr %22, align 8, !tbaa !21
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %62

58:                                               ; preds = %50
  %59 = load i32, ptr %21, align 8, !tbaa !32
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %54
  %63 = load i32, ptr %24, align 8, !tbaa !65
  %64 = add nsw i32 %63, %53
  br label %65

65:                                               ; preds = %54, %50, %62, %58
  %66 = phi i32 [ %51, %62 ], [ %52, %58 ], [ %52, %50 ], [ %52, %54 ]
  %67 = phi i32 [ %64, %62 ], [ %53, %58 ], [ %53, %50 ], [ %53, %54 ]
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65, %69
  %70 = phi i32 [ %72, %69 ], [ %28, %65 ]
  %71 = phi i32 [ %73, %69 ], [ %67, %65 ]
  %72 = tail call fastcc i32 @sstep(ptr noundef %17, i64 noundef %3, i64 noundef %4, i32 noundef %70, i32 noundef %66, i32 noundef %70) #15
  %73 = add nsw i32 %71, -1
  %74 = icmp ugt i32 %71, 1
  br i1 %74, label %69, label %75

75:                                               ; preds = %69, %65
  %76 = phi i32 [ %28, %65 ], [ %72, %69 ]
  %77 = icmp eq i32 %66, 129
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = icmp eq i32 %30, 128
  br i1 %79, label %136, label %80

80:                                               ; preds = %78
  %81 = tail call ptr @__ctype_b_loc() #20
  %82 = load ptr, ptr %81, align 8, !tbaa !66
  %83 = sext i32 %30 to i64
  %84 = getelementptr inbounds i16, ptr %82, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !67
  %86 = and i16 %85, 8
  %87 = icmp eq i16 %86, 0
  %88 = icmp ne i32 %30, 95
  %89 = select i1 %87, i1 %88, i1 false
  %90 = icmp ne i32 %37, 128
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %96, label %113

92:                                               ; preds = %75
  %93 = icmp eq i32 %37, 128
  br i1 %93, label %107, label %94

94:                                               ; preds = %92
  %95 = tail call ptr @__ctype_b_loc() #20
  br label %96

96:                                               ; preds = %94, %80
  %97 = phi ptr [ %95, %94 ], [ %81, %80 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !66
  %99 = sext i32 %37 to i64
  %100 = getelementptr inbounds i16, ptr %98, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !67
  %102 = and i16 %101, 8
  %103 = icmp ne i16 %102, 0
  %104 = icmp eq i32 %37, 95
  %105 = select i1 %103, i1 true, i1 %104
  %106 = select i1 %105, i32 133, i32 %66
  br label %107

107:                                              ; preds = %96, %92
  %108 = phi i32 [ 129, %92 ], [ %106, %96 ]
  %109 = icmp eq i32 %30, 128
  br i1 %109, label %136, label %110

110:                                              ; preds = %107
  %111 = tail call ptr @__ctype_b_loc() #20
  %112 = sext i32 %30 to i64
  br label %113

113:                                              ; preds = %110, %80
  %114 = phi i64 [ %112, %110 ], [ %83, %80 ]
  %115 = phi ptr [ %111, %110 ], [ %81, %80 ]
  %116 = phi i32 [ %108, %110 ], [ %66, %80 ]
  %117 = load ptr, ptr %115, align 8, !tbaa !66
  %118 = getelementptr inbounds i16, ptr %117, i64 %114
  %119 = load i16, ptr %118, align 2, !tbaa !67
  %120 = and i16 %119, 8
  %121 = icmp ne i16 %120, 0
  %122 = icmp eq i32 %30, 95
  %123 = select i1 %121, i1 true, i1 %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %113
  %125 = icmp eq i32 %116, 130
  br i1 %125, label %140, label %126

126:                                              ; preds = %124
  %127 = icmp eq i32 %37, 128
  br i1 %127, label %136, label %128

128:                                              ; preds = %126
  %129 = sext i32 %37 to i64
  %130 = getelementptr inbounds i16, ptr %117, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !67
  %132 = and i16 %131, 8
  %133 = icmp ne i16 %132, 0
  %134 = icmp eq i32 %37, 95
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %78, %113, %128, %126, %107
  %137 = phi i32 [ %116, %128 ], [ %116, %126 ], [ %116, %113 ], [ %108, %107 ], [ %66, %78 ]
  %138 = add i32 %137, -133
  %139 = icmp ult i32 %138, 2
  br i1 %139, label %140, label %143

140:                                              ; preds = %128, %124, %136
  %141 = phi i32 [ %137, %136 ], [ 134, %124 ], [ 134, %128 ]
  %142 = tail call fastcc i32 @sstep(ptr noundef %17, i64 noundef %3, i64 noundef %4, i32 noundef %76, i32 noundef %141, i32 noundef %76) #15
  br label %143

143:                                              ; preds = %136, %140
  %144 = phi i32 [ %142, %140 ], [ %76, %136 ]
  %145 = and i32 %144, %26
  %146 = icmp ne i32 %145, 0
  %147 = icmp eq ptr %29, %2
  %148 = or i1 %147, %146
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = tail call fastcc i32 @sstep(ptr noundef %17, i64 noundef %3, i64 noundef %4, i32 noundef %144, i32 noundef %37, i32 noundef %18) #15
  %151 = getelementptr inbounds i8, ptr %29, i64 1
  br label %27

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 6
  store ptr %39, ptr %153, align 8, !tbaa !39
  %154 = getelementptr inbounds i8, ptr %29, i64 1
  %155 = select i1 %146, ptr %154, ptr null
  ret ptr %155
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @sslow(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readnone %2, i64 noundef %3, i64 noundef %4) unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %1, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !26
  %14 = sext i8 %13 to i32
  br label %15

15:                                               ; preds = %5, %11
  %16 = phi i32 [ %14, %11 ], [ 128, %5 ]
  %17 = trunc i64 %3 to i32
  %18 = shl nuw i32 1, %17
  %19 = load ptr, ptr %0, align 8, !tbaa !30
  %20 = tail call fastcc i32 @sstep(ptr noundef %19, i64 noundef %3, i64 noundef %4, i32 noundef %18, i32 noundef 132, i32 noundef %18) #15
  %21 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct.re_guts, ptr %19, i64 0, i32 6
  %25 = getelementptr inbounds %struct.re_guts, ptr %19, i64 0, i32 11
  %26 = getelementptr inbounds %struct.re_guts, ptr %19, i64 0, i32 12
  %27 = trunc i64 %4 to i32
  %28 = shl nuw i32 1, %27
  br label %29

29:                                               ; preds = %151, %15
  %30 = phi ptr [ %1, %15 ], [ %153, %151 ]
  %31 = phi i32 [ %16, %15 ], [ %39, %151 ]
  %32 = phi i32 [ %20, %15 ], [ %152, %151 ]
  %33 = phi ptr [ null, %15 ], [ %147, %151 ]
  %34 = icmp eq ptr %30, %22
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i8, ptr %30, align 1, !tbaa !26
  %37 = sext i8 %36 to i32
  br label %38

38:                                               ; preds = %29, %35
  %39 = phi i32 [ %37, %35 ], [ 128, %29 ]
  switch i32 %31, label %50 [
    i32 10, label %40
    i32 128, label %44
  ]

40:                                               ; preds = %38
  %41 = load i32, ptr %24, align 8, !tbaa !21
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %48

44:                                               ; preds = %38
  %45 = load i32, ptr %23, align 8, !tbaa !32
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40
  %49 = load i32, ptr %25, align 4, !tbaa !64
  br label %50

50:                                               ; preds = %40, %38, %48, %44
  %51 = phi i32 [ 131, %48 ], [ 130, %44 ], [ 130, %38 ], [ 130, %40 ]
  %52 = phi i32 [ 129, %48 ], [ 0, %44 ], [ 0, %38 ], [ 0, %40 ]
  %53 = phi i32 [ %49, %48 ], [ 0, %44 ], [ 0, %38 ], [ 0, %40 ]
  switch i32 %39, label %65 [
    i32 10, label %54
    i32 128, label %58
  ]

54:                                               ; preds = %50
  %55 = load i32, ptr %24, align 8, !tbaa !21
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %62

58:                                               ; preds = %50
  %59 = load i32, ptr %23, align 8, !tbaa !32
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %54
  %63 = load i32, ptr %26, align 8, !tbaa !65
  %64 = add nsw i32 %63, %53
  br label %65

65:                                               ; preds = %54, %50, %62, %58
  %66 = phi i32 [ %51, %62 ], [ %52, %58 ], [ %52, %50 ], [ %52, %54 ]
  %67 = phi i32 [ %64, %62 ], [ %53, %58 ], [ %53, %50 ], [ %53, %54 ]
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65, %69
  %70 = phi i32 [ %72, %69 ], [ %32, %65 ]
  %71 = phi i32 [ %73, %69 ], [ %67, %65 ]
  %72 = tail call fastcc i32 @sstep(ptr noundef %19, i64 noundef %3, i64 noundef %4, i32 noundef %70, i32 noundef %66, i32 noundef %70) #15
  %73 = add nsw i32 %71, -1
  %74 = icmp ugt i32 %71, 1
  br i1 %74, label %69, label %75

75:                                               ; preds = %69, %65
  %76 = phi i32 [ %32, %65 ], [ %72, %69 ]
  %77 = icmp eq i32 %66, 129
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = icmp eq i32 %31, 128
  br i1 %79, label %136, label %80

80:                                               ; preds = %78
  %81 = tail call ptr @__ctype_b_loc() #20
  %82 = load ptr, ptr %81, align 8, !tbaa !66
  %83 = sext i32 %31 to i64
  %84 = getelementptr inbounds i16, ptr %82, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !67
  %86 = and i16 %85, 8
  %87 = icmp eq i16 %86, 0
  %88 = icmp ne i32 %31, 95
  %89 = select i1 %87, i1 %88, i1 false
  %90 = icmp ne i32 %39, 128
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %96, label %113

92:                                               ; preds = %75
  %93 = icmp eq i32 %39, 128
  br i1 %93, label %107, label %94

94:                                               ; preds = %92
  %95 = tail call ptr @__ctype_b_loc() #20
  br label %96

96:                                               ; preds = %94, %80
  %97 = phi ptr [ %95, %94 ], [ %81, %80 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !66
  %99 = sext i32 %39 to i64
  %100 = getelementptr inbounds i16, ptr %98, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !67
  %102 = and i16 %101, 8
  %103 = icmp ne i16 %102, 0
  %104 = icmp eq i32 %39, 95
  %105 = select i1 %103, i1 true, i1 %104
  %106 = select i1 %105, i32 133, i32 %66
  br label %107

107:                                              ; preds = %96, %92
  %108 = phi i32 [ 129, %92 ], [ %106, %96 ]
  %109 = icmp eq i32 %31, 128
  br i1 %109, label %136, label %110

110:                                              ; preds = %107
  %111 = tail call ptr @__ctype_b_loc() #20
  %112 = sext i32 %31 to i64
  br label %113

113:                                              ; preds = %110, %80
  %114 = phi i64 [ %112, %110 ], [ %83, %80 ]
  %115 = phi ptr [ %111, %110 ], [ %81, %80 ]
  %116 = phi i32 [ %108, %110 ], [ %66, %80 ]
  %117 = load ptr, ptr %115, align 8, !tbaa !66
  %118 = getelementptr inbounds i16, ptr %117, i64 %114
  %119 = load i16, ptr %118, align 2, !tbaa !67
  %120 = and i16 %119, 8
  %121 = icmp ne i16 %120, 0
  %122 = icmp eq i32 %31, 95
  %123 = select i1 %121, i1 true, i1 %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %113
  %125 = icmp eq i32 %116, 130
  br i1 %125, label %140, label %126

126:                                              ; preds = %124
  %127 = icmp eq i32 %39, 128
  br i1 %127, label %136, label %128

128:                                              ; preds = %126
  %129 = sext i32 %39 to i64
  %130 = getelementptr inbounds i16, ptr %117, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !67
  %132 = and i16 %131, 8
  %133 = icmp ne i16 %132, 0
  %134 = icmp eq i32 %39, 95
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %78, %113, %128, %126, %107
  %137 = phi i32 [ %116, %128 ], [ %116, %126 ], [ %116, %113 ], [ %108, %107 ], [ %66, %78 ]
  %138 = add i32 %137, -133
  %139 = icmp ult i32 %138, 2
  br i1 %139, label %140, label %143

140:                                              ; preds = %128, %124, %136
  %141 = phi i32 [ %137, %136 ], [ 134, %124 ], [ 134, %128 ]
  %142 = tail call fastcc i32 @sstep(ptr noundef %19, i64 noundef %3, i64 noundef %4, i32 noundef %76, i32 noundef %141, i32 noundef %76) #15
  br label %143

143:                                              ; preds = %136, %140
  %144 = phi i32 [ %142, %140 ], [ %76, %136 ]
  %145 = and i32 %144, %28
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, ptr %33, ptr %30
  %148 = icmp eq i32 %144, %7
  %149 = icmp eq ptr %30, %2
  %150 = or i1 %149, %148
  br i1 %150, label %154, label %151

151:                                              ; preds = %143
  %152 = tail call fastcc i32 @sstep(ptr noundef %19, i64 noundef %3, i64 noundef %4, i32 noundef %144, i32 noundef %39, i32 noundef %7) #15
  %153 = getelementptr inbounds i8, ptr %30, i64 1
  br label %29

154:                                              ; preds = %143
  ret ptr %147
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @sdissect(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #6 {
  %6 = icmp slt i64 %3, %4
  br i1 %6, label %7, label %123

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %7, %120
  %11 = phi ptr [ %1, %7 ], [ %121, %120 ]
  %12 = phi i64 [ %3, %7 ], [ %33, %120 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !30
  %14 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = getelementptr inbounds i64, ptr %15, i64 %12
  %17 = load i64, ptr %16, align 8, !tbaa !44
  %18 = and i64 %17, 2080374784
  switch i64 %18, label %31 [
    i64 603979776, label %19
    i64 738197504, label %19
    i64 1006632960, label %22
  ]

19:                                               ; preds = %10, %10
  %20 = and i64 %17, 67108863
  %21 = add nsw i64 %20, %12
  br label %31

22:                                               ; preds = %10, %22
  %23 = phi i64 [ %28, %22 ], [ %17, %10 ]
  %24 = phi i64 [ %26, %22 ], [ %12, %10 ]
  %25 = and i64 %23, 67108863
  %26 = add nsw i64 %25, %24
  %27 = getelementptr inbounds i64, ptr %15, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !44
  %29 = and i64 %28, 2080374784
  %30 = icmp eq i64 %29, 1207959552
  br i1 %30, label %31, label %22, !llvm.loop !71

31:                                               ; preds = %22, %10, %19
  %32 = phi i64 [ %12, %10 ], [ %21, %19 ], [ %26, %22 ]
  %33 = add nsw i64 %32, 1
  %34 = add nsw i64 %18, -67108864
  %35 = lshr exact i64 %34, 26
  switch i64 %35, label %120 [
    i64 13, label %112
    i64 1, label %36
    i64 12, label %104
    i64 14, label %71
    i64 8, label %52
    i64 10, label %40
    i64 4, label %38
    i64 5, label %38
  ]

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %11, i64 1
  br label %120

38:                                               ; preds = %31, %31
  %39 = getelementptr inbounds i8, ptr %11, i64 1
  br label %120

40:                                               ; preds = %31, %40
  %41 = phi ptr [ %45, %40 ], [ %2, %31 ]
  %42 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %41, i64 noundef %12, i64 noundef %33) #15
  %43 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %42, ptr noundef %2, i64 noundef %33, i64 noundef %4) #15
  %44 = icmp eq ptr %43, %2
  %45 = getelementptr inbounds i8, ptr %42, i64 -1
  br i1 %44, label %46, label %40

46:                                               ; preds = %40
  %47 = add nsw i64 %12, 1
  %48 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %42, i64 noundef %47, i64 noundef %32) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %120, label %50

50:                                               ; preds = %46
  %51 = tail call fastcc ptr @sdissect(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %42, i64 noundef %47, i64 noundef %32) #15
  br label %120

52:                                               ; preds = %31, %52
  %53 = phi ptr [ %57, %52 ], [ %2, %31 ]
  %54 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %53, i64 noundef %12, i64 noundef %33) #15
  %55 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %54, ptr noundef %2, i64 noundef %33, i64 noundef %4) #15
  %56 = icmp eq ptr %55, %2
  %57 = getelementptr inbounds i8, ptr %54, i64 -1
  br i1 %56, label %58, label %52

58:                                               ; preds = %52
  %59 = add nsw i64 %12, 1
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi ptr [ %11, %58 ], [ %63, %60 ]
  %62 = phi ptr [ %11, %58 ], [ %61, %60 ]
  %63 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %61, ptr noundef %54, i64 noundef %59, i64 noundef %32) #15
  %64 = icmp eq ptr %63, null
  %65 = icmp eq ptr %63, %61
  %66 = or i1 %64, %65
  br i1 %66, label %67, label %60

67:                                               ; preds = %60
  %68 = select i1 %64, ptr %62, ptr %61
  %69 = select i1 %64, ptr %61, ptr %63
  %70 = tail call fastcc ptr @sdissect(ptr noundef nonnull %0, ptr noundef %68, ptr noundef %69, i64 noundef %59, i64 noundef %32) #15
  br label %120

71:                                               ; preds = %31, %71
  %72 = phi ptr [ %76, %71 ], [ %2, %31 ]
  %73 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %72, i64 noundef %12, i64 noundef %33) #15
  %74 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %73, ptr noundef %2, i64 noundef %33, i64 noundef %4) #15
  %75 = icmp eq ptr %74, %2
  %76 = getelementptr inbounds i8, ptr %73, i64 -1
  br i1 %75, label %77, label %71

77:                                               ; preds = %71
  %78 = and i64 %17, 67108863
  %79 = add i64 %12, -1
  %80 = add i64 %79, %78
  %81 = add nsw i64 %12, 1
  %82 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %73, i64 noundef %81, i64 noundef %80) #15
  %83 = icmp eq ptr %82, %73
  br i1 %83, label %100, label %84

84:                                               ; preds = %77, %84
  %85 = phi i64 [ %96, %84 ], [ %80, %77 ]
  %86 = add nsw i64 %85, 1
  %87 = getelementptr inbounds i64, ptr %15, i64 %86
  %88 = load i64, ptr %87, align 8, !tbaa !44
  %89 = and i64 %88, 67108863
  %90 = add nsw i64 %89, %86
  %91 = getelementptr inbounds i64, ptr %15, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !44
  %93 = and i64 %92, 2080374784
  %94 = icmp eq i64 %93, 1140850688
  %95 = add i64 %89, %85
  %96 = select i1 %94, i64 %95, i64 %90
  %97 = add nsw i64 %85, 2
  %98 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %73, i64 noundef %97, i64 noundef %96) #15
  %99 = icmp eq ptr %98, %73
  br i1 %99, label %100, label %84

100:                                              ; preds = %84, %77
  %101 = phi i64 [ %80, %77 ], [ %96, %84 ]
  %102 = phi i64 [ %81, %77 ], [ %97, %84 ]
  %103 = tail call fastcc ptr @sdissect(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %73, i64 noundef %102, i64 noundef %101) #15
  br label %120

104:                                              ; preds = %31
  %105 = and i64 %17, 67108863
  %106 = load ptr, ptr %8, align 8, !tbaa !35
  %107 = ptrtoint ptr %11 to i64
  %108 = ptrtoint ptr %106 to i64
  %109 = sub i64 %107, %108
  %110 = load ptr, ptr %9, align 8, !tbaa !33
  %111 = getelementptr inbounds %struct.regmatch_t, ptr %110, i64 %105
  store i64 %109, ptr %111, align 8, !tbaa !22
  br label %120

112:                                              ; preds = %31
  %113 = and i64 %17, 67108863
  %114 = load ptr, ptr %8, align 8, !tbaa !35
  %115 = ptrtoint ptr %11 to i64
  %116 = ptrtoint ptr %114 to i64
  %117 = sub i64 %115, %116
  %118 = load ptr, ptr %9, align 8, !tbaa !33
  %119 = getelementptr inbounds %struct.regmatch_t, ptr %118, i64 %113, i32 1
  store i64 %117, ptr %119, align 8, !tbaa !24
  br label %120

120:                                              ; preds = %50, %46, %36, %38, %67, %100, %104, %112, %31
  %121 = phi ptr [ %11, %31 ], [ %39, %38 ], [ %54, %67 ], [ %73, %100 ], [ %11, %104 ], [ %37, %36 ], [ %11, %112 ], [ %42, %46 ], [ %42, %50 ]
  %122 = icmp slt i64 %33, %4
  br i1 %122, label %10, label %123, !llvm.loop !72

123:                                              ; preds = %120, %5
  %124 = phi ptr [ %1, %5 ], [ %121, %120 ]
  ret ptr %124
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @sbackref(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #8 {
  %7 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 7
  %13 = icmp slt i64 %3, %4
  br i1 %13, label %14, label %206

14:                                               ; preds = %6, %262
  %15 = phi i64 [ %263, %262 ], [ %5, %6 ]
  %16 = phi i64 [ %211, %262 ], [ %3, %6 ]
  %17 = phi ptr [ %28, %262 ], [ %1, %6 ]
  br label %18

18:                                               ; preds = %14, %248
  %19 = phi i64 [ %16, %14 ], [ %250, %248 ]
  %20 = phi ptr [ %17, %14 ], [ %249, %248 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !30
  %22 = getelementptr inbounds %struct.re_guts, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.re_guts, ptr %21, i64 0, i32 6
  %25 = getelementptr inbounds %struct.re_guts, ptr %21, i64 0, i32 4
  br label %26

26:                                               ; preds = %18, %201
  %27 = phi i64 [ %19, %18 ], [ %204, %201 ]
  %28 = phi ptr [ %20, %18 ], [ %202, %201 ]
  %29 = getelementptr inbounds i64, ptr %23, i64 %27
  %30 = load i64, ptr %29, align 8, !tbaa !44
  %31 = and i64 %30, 2080374784
  %32 = add nsw i64 %31, -134217728
  %33 = lshr exact i64 %32, 26
  switch i64 %33, label %210 [
    i64 0, label %34
    i64 3, label %44
    i64 4, label %48
    i64 1, label %64
    i64 2, label %82
    i64 17, label %98
    i64 18, label %147
    i64 10, label %201
    i64 14, label %188
  ]

34:                                               ; preds = %26
  %35 = icmp eq ptr %28, %2
  br i1 %35, label %337, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr %28, i64 1
  %38 = load i8, ptr %28, align 1, !tbaa !26
  %39 = sext i8 %38 to i32
  %40 = trunc i64 %30 to i32
  %41 = shl i32 %40, 24
  %42 = ashr exact i32 %41, 24
  %43 = icmp eq i32 %42, %39
  br i1 %43, label %201, label %337

44:                                               ; preds = %26
  %45 = icmp eq ptr %28, %2
  br i1 %45, label %337, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds i8, ptr %28, i64 1
  br label %201

48:                                               ; preds = %26
  %49 = icmp eq ptr %28, %2
  br i1 %49, label %337, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %25, align 8, !tbaa !73
  %52 = and i64 %30, 67108863
  %53 = getelementptr inbounds %struct.cset, ptr %51, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !74
  %55 = getelementptr inbounds i8, ptr %28, i64 1
  %56 = load i8, ptr %28, align 1, !tbaa !26
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !26
  %60 = getelementptr inbounds %struct.cset, ptr %51, i64 %52, i32 1
  %61 = load i8, ptr %60, align 8, !tbaa !76
  %62 = and i8 %61, %59
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %337, label %201

64:                                               ; preds = %26
  %65 = load ptr, ptr %9, align 8, !tbaa !36
  %66 = icmp eq ptr %28, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, ptr %8, align 8, !tbaa !32
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %201, label %71

71:                                               ; preds = %67, %64
  %72 = load ptr, ptr %7, align 8, !tbaa !37
  %73 = icmp ult ptr %28, %72
  br i1 %73, label %74, label %337

74:                                               ; preds = %71
  %75 = getelementptr inbounds i8, ptr %28, i64 -1
  %76 = load i8, ptr %75, align 1, !tbaa !26
  %77 = icmp eq i8 %76, 10
  br i1 %77, label %78, label %337

78:                                               ; preds = %74
  %79 = load i32, ptr %24, align 8, !tbaa !21
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %337, label %201

82:                                               ; preds = %26
  %83 = load ptr, ptr %7, align 8, !tbaa !37
  %84 = icmp eq ptr %28, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, ptr %8, align 8, !tbaa !32
  %87 = and i32 %86, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %201, label %89

89:                                               ; preds = %85, %82
  %90 = icmp ult ptr %28, %83
  br i1 %90, label %91, label %337

91:                                               ; preds = %89
  %92 = load i8, ptr %28, align 1, !tbaa !26
  %93 = icmp eq i8 %92, 10
  br i1 %93, label %94, label %337

94:                                               ; preds = %91
  %95 = load i32, ptr %24, align 8, !tbaa !21
  %96 = and i32 %95, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %337, label %201

98:                                               ; preds = %26
  %99 = load ptr, ptr %9, align 8, !tbaa !36
  %100 = icmp eq ptr %28, %99
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %7, align 8, !tbaa !37
  br label %108

103:                                              ; preds = %98
  %104 = load i32, ptr %8, align 8, !tbaa !32
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  %107 = load ptr, ptr %7, align 8, !tbaa !37
  br i1 %106, label %133, label %108

108:                                              ; preds = %101, %103
  %109 = phi ptr [ %102, %101 ], [ %107, %103 ]
  %110 = icmp ult ptr %28, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = getelementptr inbounds i8, ptr %28, i64 -1
  %113 = load i8, ptr %112, align 1, !tbaa !26
  %114 = icmp eq i8 %113, 10
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, ptr %24, align 8, !tbaa !21
  %117 = and i32 %116, 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %115, %111, %108
  %120 = icmp ugt ptr %28, %99
  br i1 %120, label %121, label %337

121:                                              ; preds = %119
  %122 = tail call ptr @__ctype_b_loc() #20
  %123 = load ptr, ptr %122, align 8, !tbaa !66
  %124 = getelementptr inbounds i8, ptr %28, i64 -1
  %125 = load i8, ptr %124, align 1, !tbaa !26
  %126 = sext i8 %125 to i64
  %127 = getelementptr inbounds i16, ptr %123, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !67
  %129 = and i16 %128, 8
  %130 = icmp ne i16 %129, 0
  %131 = icmp eq i8 %125, 95
  %132 = or i1 %131, %130
  br i1 %132, label %337, label %133

133:                                              ; preds = %103, %121, %115
  %134 = phi ptr [ %109, %121 ], [ %109, %115 ], [ %107, %103 ]
  %135 = icmp ult ptr %28, %134
  br i1 %135, label %136, label %337

136:                                              ; preds = %133
  %137 = tail call ptr @__ctype_b_loc() #20
  %138 = load ptr, ptr %137, align 8, !tbaa !66
  %139 = load i8, ptr %28, align 1, !tbaa !26
  %140 = sext i8 %139 to i64
  %141 = getelementptr inbounds i16, ptr %138, i64 %140
  %142 = load i16, ptr %141, align 2, !tbaa !67
  %143 = and i16 %142, 8
  %144 = icmp ne i16 %143, 0
  %145 = icmp eq i8 %139, 95
  %146 = or i1 %145, %144
  br i1 %146, label %201, label %337

147:                                              ; preds = %26
  %148 = load ptr, ptr %7, align 8, !tbaa !37
  %149 = icmp eq ptr %28, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i32, ptr %8, align 8, !tbaa !32
  %152 = and i32 %151, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %173, label %154

154:                                              ; preds = %150, %147
  %155 = icmp ult ptr %28, %148
  br i1 %155, label %156, label %337

156:                                              ; preds = %154
  %157 = load i8, ptr %28, align 1, !tbaa !26
  %158 = icmp eq i8 %157, 10
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i32, ptr %24, align 8, !tbaa !21
  %161 = and i32 %160, 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %159, %156
  %164 = tail call ptr @__ctype_b_loc() #20
  %165 = load ptr, ptr %164, align 8, !tbaa !66
  %166 = sext i8 %157 to i64
  %167 = getelementptr inbounds i16, ptr %165, i64 %166
  %168 = load i16, ptr %167, align 2, !tbaa !67
  %169 = and i16 %168, 8
  %170 = icmp ne i16 %169, 0
  %171 = icmp eq i8 %157, 95
  %172 = or i1 %171, %170
  br i1 %172, label %337, label %173

173:                                              ; preds = %163, %159, %150
  %174 = load ptr, ptr %9, align 8, !tbaa !36
  %175 = icmp ugt ptr %28, %174
  br i1 %175, label %176, label %337

176:                                              ; preds = %173
  %177 = tail call ptr @__ctype_b_loc() #20
  %178 = load ptr, ptr %177, align 8, !tbaa !66
  %179 = getelementptr inbounds i8, ptr %28, i64 -1
  %180 = load i8, ptr %179, align 1, !tbaa !26
  %181 = sext i8 %180 to i64
  %182 = getelementptr inbounds i16, ptr %178, i64 %181
  %183 = load i16, ptr %182, align 2, !tbaa !67
  %184 = and i16 %183, 8
  %185 = icmp ne i16 %184, 0
  %186 = icmp eq i8 %180, 95
  %187 = or i1 %186, %185
  br i1 %187, label %201, label %337

188:                                              ; preds = %26
  %189 = add nsw i64 %27, 1
  %190 = getelementptr inbounds i64, ptr %23, i64 %189
  %191 = load i64, ptr %190, align 8, !tbaa !44
  br label %192

192:                                              ; preds = %192, %188
  %193 = phi i64 [ %189, %188 ], [ %196, %192 ]
  %194 = phi i64 [ %191, %188 ], [ %198, %192 ]
  %195 = and i64 %194, 67108863
  %196 = add nsw i64 %195, %193
  %197 = getelementptr inbounds i64, ptr %23, i64 %196
  %198 = load i64, ptr %197, align 8, !tbaa !44
  %199 = and i64 %198, 2080374784
  %200 = icmp eq i64 %199, 1207959552
  br i1 %200, label %201, label %192, !llvm.loop !77

201:                                              ; preds = %192, %46, %26, %36, %50, %67, %78, %85, %94, %136, %176
  %202 = phi ptr [ %28, %26 ], [ %28, %176 ], [ %28, %136 ], [ %28, %94 ], [ %28, %85 ], [ %28, %78 ], [ %28, %67 ], [ %55, %50 ], [ %47, %46 ], [ %37, %36 ], [ %28, %192 ]
  %203 = phi i64 [ %27, %26 ], [ %27, %176 ], [ %27, %136 ], [ %27, %94 ], [ %27, %85 ], [ %27, %78 ], [ %27, %67 ], [ %27, %50 ], [ %27, %46 ], [ %27, %36 ], [ %196, %192 ]
  %204 = add nsw i64 %203, 1
  %205 = icmp slt i64 %204, %4
  br i1 %205, label %26, label %206, !llvm.loop !78

206:                                              ; preds = %262, %248, %201, %6
  %207 = phi ptr [ %1, %6 ], [ %202, %201 ], [ %249, %248 ], [ %28, %262 ]
  %208 = icmp eq ptr %207, %2
  %209 = select i1 %208, ptr %207, ptr null
  br label %337

210:                                              ; preds = %26
  %211 = add nsw i64 %27, 1
  %212 = load ptr, ptr %0, align 8, !tbaa !30
  %213 = getelementptr inbounds %struct.re_guts, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !70
  %215 = getelementptr inbounds i64, ptr %214, i64 %27
  %216 = load i64, ptr %215, align 8, !tbaa !44
  %217 = and i64 %216, 2080374784
  %218 = add nsw i64 %217, -469762048
  %219 = lshr exact i64 %218, 26
  switch i64 %219, label %337 [
    i64 0, label %220
    i64 4, label %252
    i64 2, label %258
    i64 3, label %265
    i64 8, label %279
    i64 6, label %309
    i64 7, label %323
  ]

220:                                              ; preds = %210
  %221 = and i64 %216, 67108863
  %222 = load ptr, ptr %10, align 8, !tbaa !33
  %223 = getelementptr inbounds %struct.regmatch_t, ptr %222, i64 %221, i32 1
  %224 = load i64, ptr %223, align 8, !tbaa !24
  %225 = icmp eq i64 %224, -1
  br i1 %225, label %337, label %226

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.regmatch_t, ptr %222, i64 %221
  %228 = load i64, ptr %227, align 8, !tbaa !22
  %229 = sub nsw i64 %224, %228
  %230 = sub i64 0, %229
  %231 = getelementptr inbounds i8, ptr %2, i64 %230
  %232 = icmp ugt ptr %28, %231
  br i1 %232, label %337, label %233

233:                                              ; preds = %226
  %234 = load ptr, ptr %11, align 8, !tbaa !35
  %235 = getelementptr inbounds i8, ptr %234, i64 %228
  %236 = tail call i32 @bcmp(ptr %28, ptr %235, i64 %229)
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %337

238:                                              ; preds = %233
  %239 = or disjoint i64 %221, 536870912
  br label %240

240:                                              ; preds = %240, %238
  %241 = phi i64 [ %245, %240 ], [ %27, %238 ]
  %242 = getelementptr inbounds i64, ptr %214, i64 %241
  %243 = load i64, ptr %242, align 8, !tbaa !44
  %244 = icmp eq i64 %243, %239
  %245 = add nsw i64 %241, 1
  br i1 %244, label %246, label %240, !llvm.loop !79

246:                                              ; preds = %240
  %247 = getelementptr inbounds i8, ptr %28, i64 %229
  br label %248

248:                                              ; preds = %246, %255
  %249 = phi ptr [ %247, %246 ], [ %28, %255 ]
  %250 = phi i64 [ %245, %246 ], [ %257, %255 ]
  %251 = icmp slt i64 %250, %4
  br i1 %251, label %18, label %206

252:                                              ; preds = %210
  %253 = tail call fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2, i64 noundef %211, i64 noundef %4, i64 noundef %15) #15
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %337

255:                                              ; preds = %252
  %256 = and i64 %216, 67108863
  %257 = add i64 %256, %211
  br label %248

258:                                              ; preds = %210
  %259 = load ptr, ptr %12, align 8, !tbaa !34
  %260 = add nsw i64 %15, 1
  %261 = getelementptr inbounds ptr, ptr %259, i64 %260
  store ptr %28, ptr %261, align 8, !tbaa !66
  br label %262

262:                                              ; preds = %258, %270, %277
  %263 = phi i64 [ %278, %277 ], [ %271, %270 ], [ %260, %258 ]
  %264 = icmp slt i64 %211, %4
  br i1 %264, label %14, label %206

265:                                              ; preds = %210
  %266 = load ptr, ptr %12, align 8, !tbaa !34
  %267 = getelementptr inbounds ptr, ptr %266, i64 %15
  %268 = load ptr, ptr %267, align 8, !tbaa !66
  %269 = icmp eq ptr %28, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = add nsw i64 %15, -1
  br label %262

272:                                              ; preds = %265
  store ptr %28, ptr %267, align 8, !tbaa !66
  %273 = and i64 %216, 67108863
  %274 = sub i64 %211, %273
  %275 = tail call fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2, i64 noundef %274, i64 noundef %4, i64 noundef %15) #15
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %337

277:                                              ; preds = %272
  %278 = add nsw i64 %15, -1
  br label %262

279:                                              ; preds = %210
  %280 = and i64 %216, 67108863
  %281 = add i64 %27, -1
  %282 = add i64 %281, %280
  %283 = tail call fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2, i64 noundef %211, i64 noundef %282, i64 noundef %15) #15
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %337

285:                                              ; preds = %279, %294
  %286 = phi i64 [ %306, %294 ], [ %282, %279 ]
  %287 = load ptr, ptr %0, align 8, !tbaa !30
  %288 = getelementptr inbounds %struct.re_guts, ptr %287, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !70
  %290 = getelementptr inbounds i64, ptr %289, i64 %286
  %291 = load i64, ptr %290, align 8, !tbaa !44
  %292 = and i64 %291, 2080374784
  %293 = icmp eq i64 %292, 1207959552
  br i1 %293, label %337, label %294

294:                                              ; preds = %285
  %295 = add nsw i64 %286, 1
  %296 = add nsw i64 %286, 2
  %297 = getelementptr inbounds i64, ptr %289, i64 %295
  %298 = load i64, ptr %297, align 8, !tbaa !44
  %299 = and i64 %298, 67108863
  %300 = add nsw i64 %299, %295
  %301 = getelementptr inbounds i64, ptr %289, i64 %300
  %302 = load i64, ptr %301, align 8, !tbaa !44
  %303 = and i64 %302, 2080374784
  %304 = icmp eq i64 %303, 1140850688
  %305 = add i64 %299, %286
  %306 = select i1 %304, i64 %305, i64 %300
  %307 = tail call fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2, i64 noundef %296, i64 noundef %306, i64 noundef %15) #15
  %308 = icmp eq ptr %307, null
  br i1 %308, label %285, label %337

309:                                              ; preds = %210
  %310 = and i64 %216, 67108863
  %311 = load ptr, ptr %10, align 8, !tbaa !33
  %312 = getelementptr inbounds %struct.regmatch_t, ptr %311, i64 %310
  %313 = load i64, ptr %312, align 8, !tbaa !22
  %314 = load ptr, ptr %11, align 8, !tbaa !35
  %315 = ptrtoint ptr %28 to i64
  %316 = ptrtoint ptr %314 to i64
  %317 = sub i64 %315, %316
  store i64 %317, ptr %312, align 8, !tbaa !22
  %318 = tail call fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2, i64 noundef %211, i64 noundef %4, i64 noundef %15) #15
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %337

320:                                              ; preds = %309
  %321 = load ptr, ptr %10, align 8, !tbaa !33
  %322 = getelementptr inbounds %struct.regmatch_t, ptr %321, i64 %310
  store i64 %313, ptr %322, align 8, !tbaa !22
  br label %337

323:                                              ; preds = %210
  %324 = and i64 %216, 67108863
  %325 = load ptr, ptr %10, align 8, !tbaa !33
  %326 = getelementptr inbounds %struct.regmatch_t, ptr %325, i64 %324, i32 1
  %327 = load i64, ptr %326, align 8, !tbaa !24
  %328 = load ptr, ptr %11, align 8, !tbaa !35
  %329 = ptrtoint ptr %28 to i64
  %330 = ptrtoint ptr %328 to i64
  %331 = sub i64 %329, %330
  store i64 %331, ptr %326, align 8, !tbaa !24
  %332 = tail call fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2, i64 noundef %211, i64 noundef %4, i64 noundef %15) #15
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %323
  %335 = load ptr, ptr %10, align 8, !tbaa !33
  %336 = getelementptr inbounds %struct.regmatch_t, ptr %335, i64 %324, i32 1
  store i64 %327, ptr %336, align 8, !tbaa !24
  br label %337

337:                                              ; preds = %272, %210, %252, %233, %226, %220, %154, %163, %173, %176, %119, %121, %133, %136, %89, %91, %94, %71, %74, %78, %48, %50, %44, %34, %36, %294, %285, %279, %323, %309, %206, %334, %320
  %338 = phi ptr [ null, %334 ], [ null, %320 ], [ %209, %206 ], [ %318, %309 ], [ %332, %323 ], [ %283, %279 ], [ %307, %294 ], [ null, %285 ], [ null, %36 ], [ null, %34 ], [ null, %44 ], [ null, %50 ], [ null, %48 ], [ null, %78 ], [ null, %74 ], [ null, %71 ], [ null, %94 ], [ null, %91 ], [ null, %89 ], [ null, %136 ], [ null, %133 ], [ null, %121 ], [ null, %119 ], [ null, %176 ], [ null, %173 ], [ null, %163 ], [ null, %154 ], [ null, %220 ], [ null, %226 ], [ null, %233 ], [ %253, %252 ], [ null, %210 ], [ %275, %272 ]
  ret ptr %338
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sstep(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #10 {
  %7 = icmp eq i64 %1, %2
  br i1 %7, label %183, label %8

8:                                                ; preds = %6
  %9 = trunc i64 %1 to i32
  %10 = shl nuw i32 1, %9
  %11 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = icmp sgt i32 %4, 127
  %14 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 4
  %15 = and i32 %4, 255
  %16 = zext nneg i32 %15 to i64
  %17 = icmp eq i32 %4, 134
  %18 = icmp eq i32 %4, 133
  %19 = and i32 %4, -2
  %20 = icmp eq i32 %19, 130
  %21 = and i32 %4, -3
  %22 = icmp eq i32 %21, 129
  br label %23

23:                                               ; preds = %8, %176
  %24 = phi i32 [ %5, %8 ], [ %179, %176 ]
  %25 = phi i32 [ %10, %8 ], [ %181, %176 ]
  %26 = phi i64 [ %1, %8 ], [ %180, %176 ]
  %27 = getelementptr inbounds i64, ptr %12, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !44
  %29 = and i64 %28, 2080374784
  %30 = add nsw i64 %29, -67108864
  %31 = lshr exact i64 %30, 26
  switch i64 %31, label %176 [
    i64 17, label %172
    i64 1, label %32
    i64 2, label %41
    i64 3, label %46
    i64 18, label %51
    i64 19, label %56
    i64 4, label %61
    i64 5, label %66
    i64 6, label %82
    i64 7, label %82
    i64 8, label %86
    i64 9, label %90
    i64 10, label %110
    i64 11, label %119
    i64 12, label %123
    i64 13, label %123
    i64 14, label %127
    i64 15, label %136
    i64 16, label %158
  ]

32:                                               ; preds = %23
  %33 = trunc i64 %28 to i32
  %34 = shl i32 %33, 24
  %35 = ashr exact i32 %34, 24
  %36 = icmp eq i32 %35, %4
  br i1 %36, label %37, label %176

37:                                               ; preds = %32
  %38 = and i32 %25, %3
  %39 = shl i32 %38, 1
  %40 = or i32 %39, %24
  br label %176

41:                                               ; preds = %23
  br i1 %22, label %42, label %176

42:                                               ; preds = %41
  %43 = and i32 %25, %3
  %44 = shl i32 %43, 1
  %45 = or i32 %44, %24
  br label %176

46:                                               ; preds = %23
  br i1 %20, label %47, label %176

47:                                               ; preds = %46
  %48 = and i32 %25, %3
  %49 = shl i32 %48, 1
  %50 = or i32 %49, %24
  br label %176

51:                                               ; preds = %23
  br i1 %18, label %52, label %176

52:                                               ; preds = %51
  %53 = and i32 %25, %3
  %54 = shl i32 %53, 1
  %55 = or i32 %54, %24
  br label %176

56:                                               ; preds = %23
  br i1 %17, label %57, label %176

57:                                               ; preds = %56
  %58 = and i32 %25, %3
  %59 = shl i32 %58, 1
  %60 = or i32 %59, %24
  br label %176

61:                                               ; preds = %23
  br i1 %13, label %176, label %62

62:                                               ; preds = %61
  %63 = and i32 %25, %3
  %64 = shl i32 %63, 1
  %65 = or i32 %64, %24
  br label %176

66:                                               ; preds = %23
  br i1 %13, label %176, label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr %14, align 8, !tbaa !73
  %69 = and i64 %28, 67108863
  %70 = getelementptr inbounds %struct.cset, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !74
  %72 = getelementptr inbounds i8, ptr %71, i64 %16
  %73 = load i8, ptr %72, align 1, !tbaa !26
  %74 = getelementptr inbounds %struct.cset, ptr %68, i64 %69, i32 1
  %75 = load i8, ptr %74, align 8, !tbaa !76
  %76 = and i8 %75, %73
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %176, label %78

78:                                               ; preds = %67
  %79 = and i32 %25, %3
  %80 = shl i32 %79, 1
  %81 = or i32 %80, %24
  br label %176

82:                                               ; preds = %23, %23
  %83 = and i32 %24, %25
  %84 = shl i32 %83, 1
  %85 = or i32 %84, %24
  br label %176

86:                                               ; preds = %23
  %87 = and i32 %24, %25
  %88 = shl i32 %87, 1
  %89 = or i32 %88, %24
  br label %176

90:                                               ; preds = %23
  %91 = and i32 %24, %25
  %92 = shl i32 %91, 1
  %93 = or i32 %92, %24
  %94 = and i64 %28, 67108863
  %95 = trunc i64 %94 to i32
  %96 = lshr i32 %25, %95
  %97 = and i32 %96, %93
  %98 = and i32 %93, %25
  %99 = lshr i32 %98, %95
  %100 = or i32 %99, %93
  %101 = icmp ne i32 %97, 0
  %102 = and i32 %100, %96
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %101, i1 true, i1 %103
  br i1 %104, label %176, label %105

105:                                              ; preds = %90
  %106 = xor i64 %94, -1
  %107 = add i64 %26, %106
  %108 = trunc i64 %107 to i32
  %109 = shl nuw i32 1, %108
  br label %176

110:                                              ; preds = %23
  %111 = and i32 %24, %25
  %112 = shl i32 %111, 1
  %113 = or i32 %112, %24
  %114 = and i32 %113, %25
  %115 = trunc i64 %28 to i32
  %116 = and i32 %115, 67108863
  %117 = shl i32 %114, %116
  %118 = or i32 %117, %113
  br label %176

119:                                              ; preds = %23
  %120 = and i32 %24, %25
  %121 = shl i32 %120, 1
  %122 = or i32 %121, %24
  br label %176

123:                                              ; preds = %23, %23
  %124 = and i32 %24, %25
  %125 = shl i32 %124, 1
  %126 = or i32 %125, %24
  br label %176

127:                                              ; preds = %23
  %128 = and i32 %24, %25
  %129 = shl i32 %128, 1
  %130 = or i32 %129, %24
  %131 = and i32 %130, %25
  %132 = trunc i64 %28 to i32
  %133 = and i32 %132, 67108863
  %134 = shl i32 %131, %133
  %135 = or i32 %134, %130
  br label %176

136:                                              ; preds = %23
  %137 = and i32 %24, %25
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %176, label %139

139:                                              ; preds = %136
  %140 = getelementptr i64, ptr %27, i64 1
  %141 = load i64, ptr %140, align 8, !tbaa !44
  %142 = and i64 %141, 2080374784
  %143 = icmp eq i64 %142, 1207959552
  br i1 %143, label %153, label %144

144:                                              ; preds = %139, %144
  %145 = phi i64 [ %150, %144 ], [ %141, %139 ]
  %146 = phi i64 [ %148, %144 ], [ 1, %139 ]
  %147 = and i64 %145, 67108863
  %148 = add nuw nsw i64 %147, %146
  %149 = getelementptr i64, ptr %27, i64 %148
  %150 = load i64, ptr %149, align 8, !tbaa !44
  %151 = and i64 %150, 2080374784
  %152 = icmp eq i64 %151, 1207959552
  br i1 %152, label %153, label %144, !llvm.loop !80

153:                                              ; preds = %144, %139
  %154 = phi i64 [ 1, %139 ], [ %148, %144 ]
  %155 = trunc i64 %154 to i32
  %156 = shl i32 %137, %155
  %157 = or i32 %156, %24
  br label %176

158:                                              ; preds = %23
  %159 = and i32 %24, %25
  %160 = shl i32 %159, 1
  %161 = or i32 %160, %24
  %162 = and i64 %28, 67108863
  %163 = getelementptr i64, ptr %27, i64 %162
  %164 = load i64, ptr %163, align 8, !tbaa !44
  %165 = and i64 %164, 2080374784
  %166 = icmp eq i64 %165, 1207959552
  br i1 %166, label %176, label %167

167:                                              ; preds = %158
  %168 = and i32 %161, %25
  %169 = trunc i64 %162 to i32
  %170 = shl i32 %168, %169
  %171 = or i32 %170, %161
  br label %176

172:                                              ; preds = %23
  %173 = and i32 %24, %25
  %174 = shl i32 %173, 1
  %175 = or i32 %174, %24
  br label %176

176:                                              ; preds = %82, %86, %110, %119, %123, %127, %172, %37, %32, %41, %42, %46, %47, %52, %51, %57, %56, %62, %61, %78, %67, %66, %105, %90, %153, %136, %167, %158, %23
  %177 = phi i64 [ %26, %23 ], [ %26, %167 ], [ %26, %158 ], [ %26, %153 ], [ %26, %136 ], [ %26, %127 ], [ %26, %123 ], [ %26, %119 ], [ %26, %110 ], [ %26, %90 ], [ %107, %105 ], [ %26, %86 ], [ %26, %82 ], [ %26, %66 ], [ %26, %78 ], [ %26, %67 ], [ %26, %61 ], [ %26, %62 ], [ %26, %57 ], [ %26, %56 ], [ %26, %52 ], [ %26, %51 ], [ %26, %47 ], [ %26, %46 ], [ %26, %42 ], [ %26, %41 ], [ %26, %37 ], [ %26, %32 ], [ %26, %172 ]
  %178 = phi i32 [ %25, %23 ], [ %25, %167 ], [ %25, %158 ], [ %25, %153 ], [ %25, %136 ], [ %25, %127 ], [ %25, %123 ], [ %25, %119 ], [ %25, %110 ], [ %25, %90 ], [ %109, %105 ], [ %25, %86 ], [ %25, %82 ], [ %25, %66 ], [ %25, %78 ], [ %25, %67 ], [ %25, %61 ], [ %25, %62 ], [ %25, %57 ], [ %25, %56 ], [ %25, %52 ], [ %25, %51 ], [ %25, %47 ], [ %25, %46 ], [ %25, %42 ], [ %25, %41 ], [ %25, %37 ], [ %25, %32 ], [ %25, %172 ]
  %179 = phi i32 [ %24, %23 ], [ %171, %167 ], [ %161, %158 ], [ %157, %153 ], [ %24, %136 ], [ %135, %127 ], [ %126, %123 ], [ %122, %119 ], [ %118, %110 ], [ %100, %90 ], [ %100, %105 ], [ %89, %86 ], [ %85, %82 ], [ %24, %66 ], [ %81, %78 ], [ %24, %67 ], [ %24, %61 ], [ %65, %62 ], [ %60, %57 ], [ %24, %56 ], [ %55, %52 ], [ %24, %51 ], [ %50, %47 ], [ %24, %46 ], [ %45, %42 ], [ %24, %41 ], [ %40, %37 ], [ %24, %32 ], [ %175, %172 ]
  %180 = add nsw i64 %177, 1
  %181 = shl i32 %178, 1
  %182 = icmp eq i64 %180, %2
  br i1 %182, label %183, label %23, !llvm.loop !81

183:                                              ; preds = %176, %6
  %184 = phi i32 [ %5, %6 ], [ %179, %176 ]
  ret i32 %184
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @lfast(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readnone %2, i64 noundef %3, i64 noundef %4) unnamed_addr #8 {
  %6 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, ptr %1, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !26
  %18 = sext i8 %17 to i32
  br label %19

19:                                               ; preds = %5, %15
  %20 = phi i32 [ %18, %15 ], [ 128, %5 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.re_guts, ptr %21, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %23, i1 false)
  %24 = getelementptr inbounds i8, ptr %7, i64 %3
  store i8 1, ptr %24, align 1, !tbaa !26
  %25 = load ptr, ptr %0, align 8, !tbaa !47
  %26 = tail call fastcc ptr @lstep(ptr noundef %25, i64 noundef %3, i64 noundef %4, ptr noundef %7, i32 noundef 132, ptr noundef %7) #15
  %27 = load ptr, ptr %0, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %7, i64 %29, i1 false)
  %30 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 5
  %31 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 1
  %32 = getelementptr inbounds i8, ptr %7, i64 %4
  br label %33

33:                                               ; preds = %162, %19
  %34 = phi ptr [ %1, %19 ], [ %171, %162 ]
  %35 = phi i32 [ %20, %19 ], [ %43, %162 ]
  %36 = phi ptr [ null, %19 ], [ %49, %162 ]
  %37 = load ptr, ptr %30, align 8, !tbaa !54
  %38 = icmp eq ptr %34, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i8, ptr %34, align 1, !tbaa !26
  %41 = sext i8 %40 to i32
  br label %42

42:                                               ; preds = %33, %39
  %43 = phi i32 [ %41, %39 ], [ 128, %33 ]
  %44 = load ptr, ptr %0, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct.re_guts, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !17
  %47 = tail call i32 @bcmp(ptr nonnull %7, ptr %9, i64 %46)
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, ptr %34, ptr %36
  switch i32 %35, label %62 [
    i32 10, label %50
    i32 128, label %55
  ]

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.re_guts, ptr %44, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !21
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %59

55:                                               ; preds = %42
  %56 = load i32, ptr %31, align 8, !tbaa !49
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %50
  %60 = getelementptr inbounds %struct.re_guts, ptr %44, i64 0, i32 11
  %61 = load i32, ptr %60, align 4, !tbaa !64
  br label %62

62:                                               ; preds = %50, %42, %59, %55
  %63 = phi i32 [ 131, %59 ], [ 130, %55 ], [ 130, %42 ], [ 130, %50 ]
  %64 = phi i32 [ 129, %59 ], [ 0, %55 ], [ 0, %42 ], [ 0, %50 ]
  %65 = phi i32 [ %61, %59 ], [ 0, %55 ], [ 0, %42 ], [ 0, %50 ]
  switch i32 %43, label %79 [
    i32 10, label %66
    i32 128, label %71
  ]

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.re_guts, ptr %44, i64 0, i32 6
  %68 = load i32, ptr %67, align 8, !tbaa !21
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %75

71:                                               ; preds = %62
  %72 = load i32, ptr %31, align 8, !tbaa !49
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds %struct.re_guts, ptr %44, i64 0, i32 12
  %77 = load i32, ptr %76, align 8, !tbaa !65
  %78 = add nsw i32 %77, %65
  br label %79

79:                                               ; preds = %66, %62, %75, %71
  %80 = phi i32 [ %63, %75 ], [ %64, %71 ], [ %64, %62 ], [ %64, %66 ]
  %81 = phi i32 [ %78, %75 ], [ %65, %71 ], [ %65, %62 ], [ %65, %66 ]
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79, %83
  %84 = phi i32 [ %87, %83 ], [ %81, %79 ]
  %85 = load ptr, ptr %0, align 8, !tbaa !47
  %86 = tail call fastcc ptr @lstep(ptr noundef %85, i64 noundef %3, i64 noundef %4, ptr noundef %7, i32 noundef %80, ptr noundef %7) #15
  %87 = add nsw i32 %84, -1
  %88 = icmp ugt i32 %84, 1
  br i1 %88, label %83, label %89

89:                                               ; preds = %83, %79
  %90 = icmp eq i32 %80, 129
  br i1 %90, label %105, label %91

91:                                               ; preds = %89
  %92 = icmp eq i32 %35, 128
  br i1 %92, label %149, label %93

93:                                               ; preds = %91
  %94 = tail call ptr @__ctype_b_loc() #20
  %95 = load ptr, ptr %94, align 8, !tbaa !66
  %96 = sext i32 %35 to i64
  %97 = getelementptr inbounds i16, ptr %95, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !67
  %99 = and i16 %98, 8
  %100 = icmp eq i16 %99, 0
  %101 = icmp ne i32 %35, 95
  %102 = select i1 %100, i1 %101, i1 false
  %103 = icmp ne i32 %43, 128
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %109, label %126

105:                                              ; preds = %89
  %106 = icmp eq i32 %43, 128
  br i1 %106, label %120, label %107

107:                                              ; preds = %105
  %108 = tail call ptr @__ctype_b_loc() #20
  br label %109

109:                                              ; preds = %107, %93
  %110 = phi ptr [ %108, %107 ], [ %94, %93 ]
  %111 = load ptr, ptr %110, align 8, !tbaa !66
  %112 = sext i32 %43 to i64
  %113 = getelementptr inbounds i16, ptr %111, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !67
  %115 = and i16 %114, 8
  %116 = icmp ne i16 %115, 0
  %117 = icmp eq i32 %43, 95
  %118 = select i1 %116, i1 true, i1 %117
  %119 = select i1 %118, i32 133, i32 %80
  br label %120

120:                                              ; preds = %109, %105
  %121 = phi i32 [ 129, %105 ], [ %119, %109 ]
  %122 = icmp eq i32 %35, 128
  br i1 %122, label %149, label %123

123:                                              ; preds = %120
  %124 = tail call ptr @__ctype_b_loc() #20
  %125 = sext i32 %35 to i64
  br label %126

126:                                              ; preds = %123, %93
  %127 = phi i64 [ %125, %123 ], [ %96, %93 ]
  %128 = phi ptr [ %124, %123 ], [ %94, %93 ]
  %129 = phi i32 [ %121, %123 ], [ %80, %93 ]
  %130 = load ptr, ptr %128, align 8, !tbaa !66
  %131 = getelementptr inbounds i16, ptr %130, i64 %127
  %132 = load i16, ptr %131, align 2, !tbaa !67
  %133 = and i16 %132, 8
  %134 = icmp ne i16 %133, 0
  %135 = icmp eq i32 %35, 95
  %136 = select i1 %134, i1 true, i1 %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %126
  %138 = icmp eq i32 %129, 130
  br i1 %138, label %153, label %139

139:                                              ; preds = %137
  %140 = icmp eq i32 %43, 128
  br i1 %140, label %149, label %141

141:                                              ; preds = %139
  %142 = sext i32 %43 to i64
  %143 = getelementptr inbounds i16, ptr %130, i64 %142
  %144 = load i16, ptr %143, align 2, !tbaa !67
  %145 = and i16 %144, 8
  %146 = icmp ne i16 %145, 0
  %147 = icmp eq i32 %43, 95
  %148 = select i1 %146, i1 true, i1 %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %91, %126, %141, %139, %120
  %150 = phi i32 [ %129, %141 ], [ %129, %139 ], [ %129, %126 ], [ %121, %120 ], [ %80, %91 ]
  %151 = add i32 %150, -133
  %152 = icmp ult i32 %151, 2
  br i1 %152, label %153, label %157

153:                                              ; preds = %141, %137, %149
  %154 = phi i32 [ %150, %149 ], [ 134, %137 ], [ 134, %141 ]
  %155 = load ptr, ptr %0, align 8, !tbaa !47
  %156 = tail call fastcc ptr @lstep(ptr noundef %155, i64 noundef %3, i64 noundef %4, ptr noundef %7, i32 noundef %154, ptr noundef %7) #15
  br label %157

157:                                              ; preds = %149, %153
  %158 = load i8, ptr %32, align 1, !tbaa !26
  %159 = icmp ne i8 %158, 0
  %160 = icmp eq ptr %34, %2
  %161 = or i1 %160, %159
  br i1 %161, label %172, label %162

162:                                              ; preds = %157
  %163 = load ptr, ptr %0, align 8, !tbaa !47
  %164 = getelementptr inbounds %struct.re_guts, ptr %163, i64 0, i32 7
  %165 = load i64, ptr %164, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr nonnull align 1 %7, i64 %165, i1 false)
  %166 = load ptr, ptr %0, align 8, !tbaa !47
  %167 = getelementptr inbounds %struct.re_guts, ptr %166, i64 0, i32 7
  %168 = load i64, ptr %167, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %9, i64 %168, i1 false)
  %169 = load ptr, ptr %0, align 8, !tbaa !47
  %170 = tail call fastcc ptr @lstep(ptr noundef %169, i64 noundef %3, i64 noundef %4, ptr noundef %11, i32 noundef %43, ptr noundef nonnull %7) #15
  %171 = getelementptr inbounds i8, ptr %34, i64 1
  br label %33

172:                                              ; preds = %157
  %173 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 6
  store ptr %49, ptr %173, align 8, !tbaa !61
  %174 = load i8, ptr %32, align 1, !tbaa !26
  %175 = icmp eq i8 %174, 0
  %176 = getelementptr inbounds i8, ptr %34, i64 1
  %177 = select i1 %175, ptr null, ptr %176
  ret ptr %177
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @lslow(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readnone %2, i64 noundef %3, i64 noundef %4) unnamed_addr #8 {
  %6 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, ptr %1, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !26
  %18 = sext i8 %17 to i32
  br label %19

19:                                               ; preds = %5, %15
  %20 = phi i32 [ %18, %15 ], [ 128, %5 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.re_guts, ptr %21, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %23, i1 false)
  %24 = getelementptr inbounds i8, ptr %7, i64 %3
  store i8 1, ptr %24, align 1, !tbaa !26
  %25 = load ptr, ptr %0, align 8, !tbaa !47
  %26 = tail call fastcc ptr @lstep(ptr noundef %25, i64 noundef %3, i64 noundef %4, ptr noundef %7, i32 noundef 132, ptr noundef %7) #15
  %27 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 5
  %28 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds i8, ptr %7, i64 %4
  br label %30

30:                                               ; preds = %167, %19
  %31 = phi ptr [ %1, %19 ], [ %173, %167 ]
  %32 = phi i32 [ %20, %19 ], [ %40, %167 ]
  %33 = phi ptr [ null, %19 ], [ %159, %167 ]
  %34 = load ptr, ptr %27, align 8, !tbaa !54
  %35 = icmp eq ptr %31, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i8, ptr %31, align 1, !tbaa !26
  %38 = sext i8 %37 to i32
  br label %39

39:                                               ; preds = %30, %36
  %40 = phi i32 [ %38, %36 ], [ 128, %30 ]
  switch i32 %32, label %57 [
    i32 10, label %41
    i32 128, label %47
  ]

41:                                               ; preds = %39
  %42 = load ptr, ptr %0, align 8, !tbaa !47
  %43 = getelementptr inbounds %struct.re_guts, ptr %42, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !21
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %57, label %53

47:                                               ; preds = %39
  %48 = load i32, ptr %28, align 8, !tbaa !49
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !47
  br label %53

53:                                               ; preds = %51, %41
  %54 = phi ptr [ %52, %51 ], [ %42, %41 ]
  %55 = getelementptr inbounds %struct.re_guts, ptr %54, i64 0, i32 11
  %56 = load i32, ptr %55, align 4, !tbaa !64
  br label %57

57:                                               ; preds = %41, %39, %53, %47
  %58 = phi i32 [ 131, %53 ], [ 130, %47 ], [ 130, %39 ], [ 130, %41 ]
  %59 = phi i32 [ 129, %53 ], [ 0, %47 ], [ 0, %39 ], [ 0, %41 ]
  %60 = phi i32 [ %56, %53 ], [ 0, %47 ], [ 0, %39 ], [ 0, %41 ]
  switch i32 %40, label %78 [
    i32 10, label %61
    i32 128, label %67
  ]

61:                                               ; preds = %57
  %62 = load ptr, ptr %0, align 8, !tbaa !47
  %63 = getelementptr inbounds %struct.re_guts, ptr %62, i64 0, i32 6
  %64 = load i32, ptr %63, align 8, !tbaa !21
  %65 = and i32 %64, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %78, label %73

67:                                               ; preds = %57
  %68 = load i32, ptr %28, align 8, !tbaa !49
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load ptr, ptr %0, align 8, !tbaa !47
  br label %73

73:                                               ; preds = %71, %61
  %74 = phi ptr [ %72, %71 ], [ %62, %61 ]
  %75 = getelementptr inbounds %struct.re_guts, ptr %74, i64 0, i32 12
  %76 = load i32, ptr %75, align 8, !tbaa !65
  %77 = add nsw i32 %76, %60
  br label %78

78:                                               ; preds = %61, %57, %73, %67
  %79 = phi i32 [ %58, %73 ], [ %59, %67 ], [ %59, %57 ], [ %59, %61 ]
  %80 = phi i32 [ %77, %73 ], [ %60, %67 ], [ %60, %57 ], [ %60, %61 ]
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78, %82
  %83 = phi i32 [ %86, %82 ], [ %80, %78 ]
  %84 = load ptr, ptr %0, align 8, !tbaa !47
  %85 = tail call fastcc ptr @lstep(ptr noundef %84, i64 noundef %3, i64 noundef %4, ptr noundef %7, i32 noundef %79, ptr noundef %7) #15
  %86 = add nsw i32 %83, -1
  %87 = icmp ugt i32 %83, 1
  br i1 %87, label %82, label %88

88:                                               ; preds = %82, %78
  %89 = icmp eq i32 %79, 129
  br i1 %89, label %104, label %90

90:                                               ; preds = %88
  %91 = icmp eq i32 %32, 128
  br i1 %91, label %148, label %92

92:                                               ; preds = %90
  %93 = tail call ptr @__ctype_b_loc() #20
  %94 = load ptr, ptr %93, align 8, !tbaa !66
  %95 = sext i32 %32 to i64
  %96 = getelementptr inbounds i16, ptr %94, i64 %95
  %97 = load i16, ptr %96, align 2, !tbaa !67
  %98 = and i16 %97, 8
  %99 = icmp eq i16 %98, 0
  %100 = icmp ne i32 %32, 95
  %101 = select i1 %99, i1 %100, i1 false
  %102 = icmp ne i32 %40, 128
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %108, label %125

104:                                              ; preds = %88
  %105 = icmp eq i32 %40, 128
  br i1 %105, label %119, label %106

106:                                              ; preds = %104
  %107 = tail call ptr @__ctype_b_loc() #20
  br label %108

108:                                              ; preds = %106, %92
  %109 = phi ptr [ %107, %106 ], [ %93, %92 ]
  %110 = load ptr, ptr %109, align 8, !tbaa !66
  %111 = sext i32 %40 to i64
  %112 = getelementptr inbounds i16, ptr %110, i64 %111
  %113 = load i16, ptr %112, align 2, !tbaa !67
  %114 = and i16 %113, 8
  %115 = icmp ne i16 %114, 0
  %116 = icmp eq i32 %40, 95
  %117 = select i1 %115, i1 true, i1 %116
  %118 = select i1 %117, i32 133, i32 %79
  br label %119

119:                                              ; preds = %108, %104
  %120 = phi i32 [ 129, %104 ], [ %118, %108 ]
  %121 = icmp eq i32 %32, 128
  br i1 %121, label %148, label %122

122:                                              ; preds = %119
  %123 = tail call ptr @__ctype_b_loc() #20
  %124 = sext i32 %32 to i64
  br label %125

125:                                              ; preds = %122, %92
  %126 = phi i64 [ %124, %122 ], [ %95, %92 ]
  %127 = phi ptr [ %123, %122 ], [ %93, %92 ]
  %128 = phi i32 [ %120, %122 ], [ %79, %92 ]
  %129 = load ptr, ptr %127, align 8, !tbaa !66
  %130 = getelementptr inbounds i16, ptr %129, i64 %126
  %131 = load i16, ptr %130, align 2, !tbaa !67
  %132 = and i16 %131, 8
  %133 = icmp ne i16 %132, 0
  %134 = icmp eq i32 %32, 95
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %125
  %137 = icmp eq i32 %128, 130
  br i1 %137, label %152, label %138

138:                                              ; preds = %136
  %139 = icmp eq i32 %40, 128
  br i1 %139, label %148, label %140

140:                                              ; preds = %138
  %141 = sext i32 %40 to i64
  %142 = getelementptr inbounds i16, ptr %129, i64 %141
  %143 = load i16, ptr %142, align 2, !tbaa !67
  %144 = and i16 %143, 8
  %145 = icmp ne i16 %144, 0
  %146 = icmp eq i32 %40, 95
  %147 = select i1 %145, i1 true, i1 %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %90, %125, %140, %138, %119
  %149 = phi i32 [ %128, %140 ], [ %128, %138 ], [ %128, %125 ], [ %120, %119 ], [ %79, %90 ]
  %150 = add i32 %149, -133
  %151 = icmp ult i32 %150, 2
  br i1 %151, label %152, label %156

152:                                              ; preds = %140, %136, %148
  %153 = phi i32 [ %149, %148 ], [ 134, %136 ], [ 134, %140 ]
  %154 = load ptr, ptr %0, align 8, !tbaa !47
  %155 = tail call fastcc ptr @lstep(ptr noundef %154, i64 noundef %3, i64 noundef %4, ptr noundef %7, i32 noundef %153, ptr noundef %7) #15
  br label %156

156:                                              ; preds = %148, %152
  %157 = load i8, ptr %29, align 1, !tbaa !26
  %158 = icmp eq i8 %157, 0
  %159 = select i1 %158, ptr %33, ptr %31
  %160 = load ptr, ptr %0, align 8, !tbaa !47
  %161 = getelementptr inbounds %struct.re_guts, ptr %160, i64 0, i32 7
  %162 = load i64, ptr %161, align 8, !tbaa !17
  %163 = tail call i32 @bcmp(ptr %7, ptr %9, i64 %162)
  %164 = icmp eq i32 %163, 0
  %165 = icmp eq ptr %31, %2
  %166 = or i1 %165, %164
  br i1 %166, label %174, label %167

167:                                              ; preds = %156
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr nonnull align 1 %7, i64 %162, i1 false)
  %168 = load ptr, ptr %0, align 8, !tbaa !47
  %169 = getelementptr inbounds %struct.re_guts, ptr %168, i64 0, i32 7
  %170 = load i64, ptr %169, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %9, i64 %170, i1 false)
  %171 = load ptr, ptr %0, align 8, !tbaa !47
  %172 = tail call fastcc ptr @lstep(ptr noundef %171, i64 noundef %3, i64 noundef %4, ptr noundef %11, i32 noundef %40, ptr noundef nonnull %7) #15
  %173 = getelementptr inbounds i8, ptr %31, i64 1
  br label %30

174:                                              ; preds = %156
  ret ptr %159
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @ldissect(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #8 {
  %6 = icmp slt i64 %3, %4
  br i1 %6, label %7, label %131

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %7, %128
  %11 = phi ptr [ %1, %7 ], [ %129, %128 ]
  %12 = phi i64 [ %3, %7 ], [ %33, %128 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = getelementptr inbounds i64, ptr %15, i64 %12
  %17 = load i64, ptr %16, align 8, !tbaa !44
  %18 = and i64 %17, 2080374784
  switch i64 %18, label %31 [
    i64 603979776, label %19
    i64 738197504, label %19
    i64 1006632960, label %22
  ]

19:                                               ; preds = %10, %10
  %20 = and i64 %17, 67108863
  %21 = add nsw i64 %20, %12
  br label %31

22:                                               ; preds = %10, %22
  %23 = phi i64 [ %28, %22 ], [ %17, %10 ]
  %24 = phi i64 [ %26, %22 ], [ %12, %10 ]
  %25 = and i64 %23, 67108863
  %26 = add nsw i64 %25, %24
  %27 = getelementptr inbounds i64, ptr %15, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !44
  %29 = and i64 %28, 2080374784
  %30 = icmp eq i64 %29, 1207959552
  br i1 %30, label %31, label %22, !llvm.loop !82

31:                                               ; preds = %22, %10, %19
  %32 = phi i64 [ %12, %10 ], [ %21, %19 ], [ %26, %22 ]
  %33 = add nsw i64 %32, 1
  %34 = add nsw i64 %18, -67108864
  %35 = lshr exact i64 %34, 26
  switch i64 %35, label %128 [
    i64 13, label %120
    i64 1, label %36
    i64 12, label %112
    i64 14, label %71
    i64 8, label %52
    i64 10, label %40
    i64 4, label %38
    i64 5, label %38
  ]

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %11, i64 1
  br label %128

38:                                               ; preds = %31, %31
  %39 = getelementptr inbounds i8, ptr %11, i64 1
  br label %128

40:                                               ; preds = %31, %40
  %41 = phi ptr [ %45, %40 ], [ %2, %31 ]
  %42 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %41, i64 noundef %12, i64 noundef %33) #15
  %43 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %42, ptr noundef %2, i64 noundef %33, i64 noundef %4) #15
  %44 = icmp eq ptr %43, %2
  %45 = getelementptr inbounds i8, ptr %42, i64 -1
  br i1 %44, label %46, label %40

46:                                               ; preds = %40
  %47 = add nsw i64 %12, 1
  %48 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %42, i64 noundef %47, i64 noundef %32) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %128, label %50

50:                                               ; preds = %46
  %51 = tail call fastcc ptr @ldissect(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %42, i64 noundef %47, i64 noundef %32) #15
  br label %128

52:                                               ; preds = %31, %52
  %53 = phi ptr [ %57, %52 ], [ %2, %31 ]
  %54 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %53, i64 noundef %12, i64 noundef %33) #15
  %55 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %54, ptr noundef %2, i64 noundef %33, i64 noundef %4) #15
  %56 = icmp eq ptr %55, %2
  %57 = getelementptr inbounds i8, ptr %54, i64 -1
  br i1 %56, label %58, label %52

58:                                               ; preds = %52
  %59 = add nsw i64 %12, 1
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi ptr [ %11, %58 ], [ %63, %60 ]
  %62 = phi ptr [ %11, %58 ], [ %61, %60 ]
  %63 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %61, ptr noundef %54, i64 noundef %59, i64 noundef %32) #15
  %64 = icmp eq ptr %63, null
  %65 = icmp eq ptr %63, %61
  %66 = or i1 %64, %65
  br i1 %66, label %67, label %60

67:                                               ; preds = %60
  %68 = select i1 %64, ptr %62, ptr %61
  %69 = select i1 %64, ptr %61, ptr %63
  %70 = tail call fastcc ptr @ldissect(ptr noundef nonnull %0, ptr noundef %68, ptr noundef %69, i64 noundef %59, i64 noundef %32) #15
  br label %128

71:                                               ; preds = %31, %71
  %72 = phi ptr [ %76, %71 ], [ %2, %31 ]
  %73 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %72, i64 noundef %12, i64 noundef %33) #15
  %74 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %73, ptr noundef %2, i64 noundef %33, i64 noundef %4) #15
  %75 = icmp eq ptr %74, %2
  %76 = getelementptr inbounds i8, ptr %73, i64 -1
  br i1 %75, label %77, label %71

77:                                               ; preds = %71
  %78 = load ptr, ptr %0, align 8, !tbaa !47
  %79 = getelementptr inbounds %struct.re_guts, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !70
  %81 = getelementptr inbounds i64, ptr %80, i64 %12
  %82 = load i64, ptr %81, align 8, !tbaa !44
  %83 = and i64 %82, 67108863
  %84 = add i64 %12, -1
  %85 = add i64 %84, %83
  %86 = add nsw i64 %12, 1
  %87 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %73, i64 noundef %86, i64 noundef %85) #15
  %88 = icmp eq ptr %87, %73
  br i1 %88, label %108, label %89

89:                                               ; preds = %77, %89
  %90 = phi i64 [ %104, %89 ], [ %85, %77 ]
  %91 = add nsw i64 %90, 1
  %92 = load ptr, ptr %0, align 8, !tbaa !47
  %93 = getelementptr inbounds %struct.re_guts, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !70
  %95 = getelementptr inbounds i64, ptr %94, i64 %91
  %96 = load i64, ptr %95, align 8, !tbaa !44
  %97 = and i64 %96, 67108863
  %98 = add nsw i64 %97, %91
  %99 = getelementptr inbounds i64, ptr %94, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !44
  %101 = and i64 %100, 2080374784
  %102 = icmp eq i64 %101, 1140850688
  %103 = add i64 %97, %90
  %104 = select i1 %102, i64 %103, i64 %98
  %105 = add nsw i64 %90, 2
  %106 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %73, i64 noundef %105, i64 noundef %104) #15
  %107 = icmp eq ptr %106, %73
  br i1 %107, label %108, label %89

108:                                              ; preds = %89, %77
  %109 = phi i64 [ %85, %77 ], [ %104, %89 ]
  %110 = phi i64 [ %86, %77 ], [ %105, %89 ]
  %111 = tail call fastcc ptr @ldissect(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %73, i64 noundef %110, i64 noundef %109) #15
  br label %128

112:                                              ; preds = %31
  %113 = and i64 %17, 67108863
  %114 = load ptr, ptr %8, align 8, !tbaa !52
  %115 = ptrtoint ptr %11 to i64
  %116 = ptrtoint ptr %114 to i64
  %117 = sub i64 %115, %116
  %118 = load ptr, ptr %9, align 8, !tbaa !50
  %119 = getelementptr inbounds %struct.regmatch_t, ptr %118, i64 %113
  store i64 %117, ptr %119, align 8, !tbaa !22
  br label %128

120:                                              ; preds = %31
  %121 = and i64 %17, 67108863
  %122 = load ptr, ptr %8, align 8, !tbaa !52
  %123 = ptrtoint ptr %11 to i64
  %124 = ptrtoint ptr %122 to i64
  %125 = sub i64 %123, %124
  %126 = load ptr, ptr %9, align 8, !tbaa !50
  %127 = getelementptr inbounds %struct.regmatch_t, ptr %126, i64 %121, i32 1
  store i64 %125, ptr %127, align 8, !tbaa !24
  br label %128

128:                                              ; preds = %50, %46, %36, %38, %67, %108, %112, %120, %31
  %129 = phi ptr [ %11, %31 ], [ %39, %38 ], [ %54, %67 ], [ %73, %108 ], [ %11, %112 ], [ %37, %36 ], [ %11, %120 ], [ %42, %46 ], [ %42, %50 ]
  %130 = icmp slt i64 %33, %4
  br i1 %130, label %10, label %131, !llvm.loop !83

131:                                              ; preds = %128, %5
  %132 = phi ptr [ %1, %5 ], [ %129, %128 ]
  ret ptr %132
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @lbackref(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #8 {
  %7 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 7
  %13 = icmp slt i64 %3, %4
  br i1 %13, label %14, label %206

14:                                               ; preds = %6, %262
  %15 = phi i64 [ %263, %262 ], [ %5, %6 ]
  %16 = phi i64 [ %211, %262 ], [ %3, %6 ]
  %17 = phi ptr [ %28, %262 ], [ %1, %6 ]
  br label %18

18:                                               ; preds = %14, %248
  %19 = phi i64 [ %16, %14 ], [ %250, %248 ]
  %20 = phi ptr [ %17, %14 ], [ %249, %248 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.re_guts, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.re_guts, ptr %21, i64 0, i32 6
  %25 = getelementptr inbounds %struct.re_guts, ptr %21, i64 0, i32 4
  br label %26

26:                                               ; preds = %18, %201
  %27 = phi i64 [ %19, %18 ], [ %204, %201 ]
  %28 = phi ptr [ %20, %18 ], [ %202, %201 ]
  %29 = getelementptr inbounds i64, ptr %23, i64 %27
  %30 = load i64, ptr %29, align 8, !tbaa !44
  %31 = and i64 %30, 2080374784
  %32 = add nsw i64 %31, -134217728
  %33 = lshr exact i64 %32, 26
  switch i64 %33, label %210 [
    i64 0, label %34
    i64 3, label %44
    i64 4, label %48
    i64 1, label %64
    i64 2, label %82
    i64 17, label %98
    i64 18, label %147
    i64 10, label %201
    i64 14, label %188
  ]

34:                                               ; preds = %26
  %35 = icmp eq ptr %28, %2
  br i1 %35, label %337, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr %28, i64 1
  %38 = load i8, ptr %28, align 1, !tbaa !26
  %39 = sext i8 %38 to i32
  %40 = trunc i64 %30 to i32
  %41 = shl i32 %40, 24
  %42 = ashr exact i32 %41, 24
  %43 = icmp eq i32 %42, %39
  br i1 %43, label %201, label %337

44:                                               ; preds = %26
  %45 = icmp eq ptr %28, %2
  br i1 %45, label %337, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds i8, ptr %28, i64 1
  br label %201

48:                                               ; preds = %26
  %49 = icmp eq ptr %28, %2
  br i1 %49, label %337, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %25, align 8, !tbaa !73
  %52 = and i64 %30, 67108863
  %53 = getelementptr inbounds %struct.cset, ptr %51, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !74
  %55 = getelementptr inbounds i8, ptr %28, i64 1
  %56 = load i8, ptr %28, align 1, !tbaa !26
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !26
  %60 = getelementptr inbounds %struct.cset, ptr %51, i64 %52, i32 1
  %61 = load i8, ptr %60, align 8, !tbaa !76
  %62 = and i8 %61, %59
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %337, label %201

64:                                               ; preds = %26
  %65 = load ptr, ptr %9, align 8, !tbaa !53
  %66 = icmp eq ptr %28, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, ptr %8, align 8, !tbaa !49
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %201, label %71

71:                                               ; preds = %67, %64
  %72 = load ptr, ptr %7, align 8, !tbaa !54
  %73 = icmp ult ptr %28, %72
  br i1 %73, label %74, label %337

74:                                               ; preds = %71
  %75 = getelementptr inbounds i8, ptr %28, i64 -1
  %76 = load i8, ptr %75, align 1, !tbaa !26
  %77 = icmp eq i8 %76, 10
  br i1 %77, label %78, label %337

78:                                               ; preds = %74
  %79 = load i32, ptr %24, align 8, !tbaa !21
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %337, label %201

82:                                               ; preds = %26
  %83 = load ptr, ptr %7, align 8, !tbaa !54
  %84 = icmp eq ptr %28, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, ptr %8, align 8, !tbaa !49
  %87 = and i32 %86, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %201, label %89

89:                                               ; preds = %85, %82
  %90 = icmp ult ptr %28, %83
  br i1 %90, label %91, label %337

91:                                               ; preds = %89
  %92 = load i8, ptr %28, align 1, !tbaa !26
  %93 = icmp eq i8 %92, 10
  br i1 %93, label %94, label %337

94:                                               ; preds = %91
  %95 = load i32, ptr %24, align 8, !tbaa !21
  %96 = and i32 %95, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %337, label %201

98:                                               ; preds = %26
  %99 = load ptr, ptr %9, align 8, !tbaa !53
  %100 = icmp eq ptr %28, %99
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %7, align 8, !tbaa !54
  br label %108

103:                                              ; preds = %98
  %104 = load i32, ptr %8, align 8, !tbaa !49
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  %107 = load ptr, ptr %7, align 8, !tbaa !54
  br i1 %106, label %133, label %108

108:                                              ; preds = %101, %103
  %109 = phi ptr [ %102, %101 ], [ %107, %103 ]
  %110 = icmp ult ptr %28, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = getelementptr inbounds i8, ptr %28, i64 -1
  %113 = load i8, ptr %112, align 1, !tbaa !26
  %114 = icmp eq i8 %113, 10
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, ptr %24, align 8, !tbaa !21
  %117 = and i32 %116, 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %115, %111, %108
  %120 = icmp ugt ptr %28, %99
  br i1 %120, label %121, label %337

121:                                              ; preds = %119
  %122 = tail call ptr @__ctype_b_loc() #20
  %123 = load ptr, ptr %122, align 8, !tbaa !66
  %124 = getelementptr inbounds i8, ptr %28, i64 -1
  %125 = load i8, ptr %124, align 1, !tbaa !26
  %126 = sext i8 %125 to i64
  %127 = getelementptr inbounds i16, ptr %123, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !67
  %129 = and i16 %128, 8
  %130 = icmp ne i16 %129, 0
  %131 = icmp eq i8 %125, 95
  %132 = or i1 %131, %130
  br i1 %132, label %337, label %133

133:                                              ; preds = %103, %121, %115
  %134 = phi ptr [ %109, %121 ], [ %109, %115 ], [ %107, %103 ]
  %135 = icmp ult ptr %28, %134
  br i1 %135, label %136, label %337

136:                                              ; preds = %133
  %137 = tail call ptr @__ctype_b_loc() #20
  %138 = load ptr, ptr %137, align 8, !tbaa !66
  %139 = load i8, ptr %28, align 1, !tbaa !26
  %140 = sext i8 %139 to i64
  %141 = getelementptr inbounds i16, ptr %138, i64 %140
  %142 = load i16, ptr %141, align 2, !tbaa !67
  %143 = and i16 %142, 8
  %144 = icmp ne i16 %143, 0
  %145 = icmp eq i8 %139, 95
  %146 = or i1 %145, %144
  br i1 %146, label %201, label %337

147:                                              ; preds = %26
  %148 = load ptr, ptr %7, align 8, !tbaa !54
  %149 = icmp eq ptr %28, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i32, ptr %8, align 8, !tbaa !49
  %152 = and i32 %151, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %173, label %154

154:                                              ; preds = %150, %147
  %155 = icmp ult ptr %28, %148
  br i1 %155, label %156, label %337

156:                                              ; preds = %154
  %157 = load i8, ptr %28, align 1, !tbaa !26
  %158 = icmp eq i8 %157, 10
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i32, ptr %24, align 8, !tbaa !21
  %161 = and i32 %160, 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %159, %156
  %164 = tail call ptr @__ctype_b_loc() #20
  %165 = load ptr, ptr %164, align 8, !tbaa !66
  %166 = sext i8 %157 to i64
  %167 = getelementptr inbounds i16, ptr %165, i64 %166
  %168 = load i16, ptr %167, align 2, !tbaa !67
  %169 = and i16 %168, 8
  %170 = icmp ne i16 %169, 0
  %171 = icmp eq i8 %157, 95
  %172 = or i1 %171, %170
  br i1 %172, label %337, label %173

173:                                              ; preds = %163, %159, %150
  %174 = load ptr, ptr %9, align 8, !tbaa !53
  %175 = icmp ugt ptr %28, %174
  br i1 %175, label %176, label %337

176:                                              ; preds = %173
  %177 = tail call ptr @__ctype_b_loc() #20
  %178 = load ptr, ptr %177, align 8, !tbaa !66
  %179 = getelementptr inbounds i8, ptr %28, i64 -1
  %180 = load i8, ptr %179, align 1, !tbaa !26
  %181 = sext i8 %180 to i64
  %182 = getelementptr inbounds i16, ptr %178, i64 %181
  %183 = load i16, ptr %182, align 2, !tbaa !67
  %184 = and i16 %183, 8
  %185 = icmp ne i16 %184, 0
  %186 = icmp eq i8 %180, 95
  %187 = or i1 %186, %185
  br i1 %187, label %201, label %337

188:                                              ; preds = %26
  %189 = add nsw i64 %27, 1
  %190 = getelementptr inbounds i64, ptr %23, i64 %189
  %191 = load i64, ptr %190, align 8, !tbaa !44
  br label %192

192:                                              ; preds = %192, %188
  %193 = phi i64 [ %189, %188 ], [ %196, %192 ]
  %194 = phi i64 [ %191, %188 ], [ %198, %192 ]
  %195 = and i64 %194, 67108863
  %196 = add nsw i64 %195, %193
  %197 = getelementptr inbounds i64, ptr %23, i64 %196
  %198 = load i64, ptr %197, align 8, !tbaa !44
  %199 = and i64 %198, 2080374784
  %200 = icmp eq i64 %199, 1207959552
  br i1 %200, label %201, label %192, !llvm.loop !84

201:                                              ; preds = %192, %46, %26, %36, %50, %67, %78, %85, %94, %136, %176
  %202 = phi ptr [ %28, %26 ], [ %28, %176 ], [ %28, %136 ], [ %28, %94 ], [ %28, %85 ], [ %28, %78 ], [ %28, %67 ], [ %55, %50 ], [ %47, %46 ], [ %37, %36 ], [ %28, %192 ]
  %203 = phi i64 [ %27, %26 ], [ %27, %176 ], [ %27, %136 ], [ %27, %94 ], [ %27, %85 ], [ %27, %78 ], [ %27, %67 ], [ %27, %50 ], [ %27, %46 ], [ %27, %36 ], [ %196, %192 ]
  %204 = add nsw i64 %203, 1
  %205 = icmp slt i64 %204, %4
  br i1 %205, label %26, label %206, !llvm.loop !85

206:                                              ; preds = %262, %248, %201, %6
  %207 = phi ptr [ %1, %6 ], [ %202, %201 ], [ %249, %248 ], [ %28, %262 ]
  %208 = icmp eq ptr %207, %2
  %209 = select i1 %208, ptr %207, ptr null
  br label %337

210:                                              ; preds = %26
  %211 = add nsw i64 %27, 1
  %212 = load ptr, ptr %0, align 8, !tbaa !47
  %213 = getelementptr inbounds %struct.re_guts, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !70
  %215 = getelementptr inbounds i64, ptr %214, i64 %27
  %216 = load i64, ptr %215, align 8, !tbaa !44
  %217 = and i64 %216, 2080374784
  %218 = add nsw i64 %217, -469762048
  %219 = lshr exact i64 %218, 26
  switch i64 %219, label %337 [
    i64 0, label %220
    i64 4, label %252
    i64 2, label %258
    i64 3, label %265
    i64 8, label %279
    i64 6, label %309
    i64 7, label %323
  ]

220:                                              ; preds = %210
  %221 = and i64 %216, 67108863
  %222 = load ptr, ptr %10, align 8, !tbaa !50
  %223 = getelementptr inbounds %struct.regmatch_t, ptr %222, i64 %221, i32 1
  %224 = load i64, ptr %223, align 8, !tbaa !24
  %225 = icmp eq i64 %224, -1
  br i1 %225, label %337, label %226

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.regmatch_t, ptr %222, i64 %221
  %228 = load i64, ptr %227, align 8, !tbaa !22
  %229 = sub nsw i64 %224, %228
  %230 = sub i64 0, %229
  %231 = getelementptr inbounds i8, ptr %2, i64 %230
  %232 = icmp ugt ptr %28, %231
  br i1 %232, label %337, label %233

233:                                              ; preds = %226
  %234 = load ptr, ptr %11, align 8, !tbaa !52
  %235 = getelementptr inbounds i8, ptr %234, i64 %228
  %236 = tail call i32 @bcmp(ptr %28, ptr %235, i64 %229)
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %337

238:                                              ; preds = %233
  %239 = or disjoint i64 %221, 536870912
  br label %240

240:                                              ; preds = %240, %238
  %241 = phi i64 [ %245, %240 ], [ %27, %238 ]
  %242 = getelementptr inbounds i64, ptr %214, i64 %241
  %243 = load i64, ptr %242, align 8, !tbaa !44
  %244 = icmp eq i64 %243, %239
  %245 = add nsw i64 %241, 1
  br i1 %244, label %246, label %240, !llvm.loop !86

246:                                              ; preds = %240
  %247 = getelementptr inbounds i8, ptr %28, i64 %229
  br label %248

248:                                              ; preds = %246, %255
  %249 = phi ptr [ %247, %246 ], [ %28, %255 ]
  %250 = phi i64 [ %245, %246 ], [ %257, %255 ]
  %251 = icmp slt i64 %250, %4
  br i1 %251, label %18, label %206

252:                                              ; preds = %210
  %253 = tail call fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2, i64 noundef %211, i64 noundef %4, i64 noundef %15) #15
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %337

255:                                              ; preds = %252
  %256 = and i64 %216, 67108863
  %257 = add i64 %256, %211
  br label %248

258:                                              ; preds = %210
  %259 = load ptr, ptr %12, align 8, !tbaa !51
  %260 = add nsw i64 %15, 1
  %261 = getelementptr inbounds ptr, ptr %259, i64 %260
  store ptr %28, ptr %261, align 8, !tbaa !66
  br label %262

262:                                              ; preds = %258, %270, %277
  %263 = phi i64 [ %278, %277 ], [ %271, %270 ], [ %260, %258 ]
  %264 = icmp slt i64 %211, %4
  br i1 %264, label %14, label %206

265:                                              ; preds = %210
  %266 = load ptr, ptr %12, align 8, !tbaa !51
  %267 = getelementptr inbounds ptr, ptr %266, i64 %15
  %268 = load ptr, ptr %267, align 8, !tbaa !66
  %269 = icmp eq ptr %28, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = add nsw i64 %15, -1
  br label %262

272:                                              ; preds = %265
  store ptr %28, ptr %267, align 8, !tbaa !66
  %273 = and i64 %216, 67108863
  %274 = sub i64 %211, %273
  %275 = tail call fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2, i64 noundef %274, i64 noundef %4, i64 noundef %15) #15
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %337

277:                                              ; preds = %272
  %278 = add nsw i64 %15, -1
  br label %262

279:                                              ; preds = %210
  %280 = and i64 %216, 67108863
  %281 = add i64 %27, -1
  %282 = add i64 %281, %280
  %283 = tail call fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2, i64 noundef %211, i64 noundef %282, i64 noundef %15) #15
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %337

285:                                              ; preds = %279, %294
  %286 = phi i64 [ %306, %294 ], [ %282, %279 ]
  %287 = load ptr, ptr %0, align 8, !tbaa !47
  %288 = getelementptr inbounds %struct.re_guts, ptr %287, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !70
  %290 = getelementptr inbounds i64, ptr %289, i64 %286
  %291 = load i64, ptr %290, align 8, !tbaa !44
  %292 = and i64 %291, 2080374784
  %293 = icmp eq i64 %292, 1207959552
  br i1 %293, label %337, label %294

294:                                              ; preds = %285
  %295 = add nsw i64 %286, 1
  %296 = add nsw i64 %286, 2
  %297 = getelementptr inbounds i64, ptr %289, i64 %295
  %298 = load i64, ptr %297, align 8, !tbaa !44
  %299 = and i64 %298, 67108863
  %300 = add nsw i64 %299, %295
  %301 = getelementptr inbounds i64, ptr %289, i64 %300
  %302 = load i64, ptr %301, align 8, !tbaa !44
  %303 = and i64 %302, 2080374784
  %304 = icmp eq i64 %303, 1140850688
  %305 = add i64 %299, %286
  %306 = select i1 %304, i64 %305, i64 %300
  %307 = tail call fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2, i64 noundef %296, i64 noundef %306, i64 noundef %15) #15
  %308 = icmp eq ptr %307, null
  br i1 %308, label %285, label %337

309:                                              ; preds = %210
  %310 = and i64 %216, 67108863
  %311 = load ptr, ptr %10, align 8, !tbaa !50
  %312 = getelementptr inbounds %struct.regmatch_t, ptr %311, i64 %310
  %313 = load i64, ptr %312, align 8, !tbaa !22
  %314 = load ptr, ptr %11, align 8, !tbaa !52
  %315 = ptrtoint ptr %28 to i64
  %316 = ptrtoint ptr %314 to i64
  %317 = sub i64 %315, %316
  store i64 %317, ptr %312, align 8, !tbaa !22
  %318 = tail call fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2, i64 noundef %211, i64 noundef %4, i64 noundef %15) #15
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %337

320:                                              ; preds = %309
  %321 = load ptr, ptr %10, align 8, !tbaa !50
  %322 = getelementptr inbounds %struct.regmatch_t, ptr %321, i64 %310
  store i64 %313, ptr %322, align 8, !tbaa !22
  br label %337

323:                                              ; preds = %210
  %324 = and i64 %216, 67108863
  %325 = load ptr, ptr %10, align 8, !tbaa !50
  %326 = getelementptr inbounds %struct.regmatch_t, ptr %325, i64 %324, i32 1
  %327 = load i64, ptr %326, align 8, !tbaa !24
  %328 = load ptr, ptr %11, align 8, !tbaa !52
  %329 = ptrtoint ptr %28 to i64
  %330 = ptrtoint ptr %328 to i64
  %331 = sub i64 %329, %330
  store i64 %331, ptr %326, align 8, !tbaa !24
  %332 = tail call fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2, i64 noundef %211, i64 noundef %4, i64 noundef %15) #15
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %323
  %335 = load ptr, ptr %10, align 8, !tbaa !50
  %336 = getelementptr inbounds %struct.regmatch_t, ptr %335, i64 %324, i32 1
  store i64 %327, ptr %336, align 8, !tbaa !24
  br label %337

337:                                              ; preds = %272, %210, %252, %233, %226, %220, %154, %163, %173, %176, %119, %121, %133, %136, %89, %91, %94, %71, %74, %78, %48, %50, %44, %34, %36, %294, %285, %279, %323, %309, %206, %334, %320
  %338 = phi ptr [ null, %334 ], [ null, %320 ], [ %209, %206 ], [ %318, %309 ], [ %332, %323 ], [ %283, %279 ], [ %307, %294 ], [ null, %285 ], [ null, %36 ], [ null, %34 ], [ null, %44 ], [ null, %50 ], [ null, %48 ], [ null, %78 ], [ null, %74 ], [ null, %71 ], [ null, %94 ], [ null, %91 ], [ null, %89 ], [ null, %136 ], [ null, %133 ], [ null, %121 ], [ null, %119 ], [ null, %176 ], [ null, %173 ], [ null, %163 ], [ null, %154 ], [ null, %220 ], [ null, %226 ], [ null, %233 ], [ %253, %252 ], [ null, %210 ], [ %275, %272 ]
  ret ptr %338
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @lstep(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef returned %5) unnamed_addr #13 {
  %7 = getelementptr i8, ptr %5, i64 1
  %8 = icmp eq i64 %1, %2
  br i1 %8, label %230, label %9

9:                                                ; preds = %6
  %10 = trunc i64 %1 to i32
  %11 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 1
  %12 = icmp sgt i32 %4, 127
  %13 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 4
  %14 = and i32 %4, 255
  %15 = zext nneg i32 %14 to i64
  %16 = icmp eq i32 %4, 134
  %17 = icmp eq i32 %4, 133
  %18 = and i32 %4, -2
  %19 = icmp eq i32 %18, 130
  %20 = and i32 %4, -3
  %21 = icmp eq i32 %20, 129
  br label %22

22:                                               ; preds = %9, %224
  %23 = phi i32 [ %10, %9 ], [ %228, %224 ]
  %24 = phi i64 [ %1, %9 ], [ %227, %224 ]
  %25 = load ptr, ptr %11, align 8, !tbaa !70
  %26 = getelementptr inbounds i64, ptr %25, i64 %24
  %27 = load i64, ptr %26, align 8, !tbaa !44
  %28 = and i64 %27, 2080374784
  %29 = add nsw i64 %28, -67108864
  %30 = lshr exact i64 %29, 26
  switch i64 %30, label %224 [
    i64 17, label %217
    i64 1, label %31
    i64 2, label %43
    i64 3, label %51
    i64 18, label %59
    i64 19, label %67
    i64 4, label %75
    i64 5, label %83
    i64 6, label %102
    i64 7, label %102
    i64 8, label %109
    i64 9, label %116
    i64 10, label %135
    i64 11, label %147
    i64 12, label %154
    i64 13, label %154
    i64 14, label %161
    i64 15, label %173
    i64 16, label %198
  ]

31:                                               ; preds = %22
  %32 = trunc i64 %27 to i32
  %33 = shl i32 %32, 24
  %34 = ashr exact i32 %33, 24
  %35 = icmp eq i32 %34, %4
  br i1 %35, label %36, label %224

36:                                               ; preds = %31
  %37 = sext i32 %23 to i64
  %38 = getelementptr inbounds i8, ptr %3, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !26
  %40 = getelementptr i8, ptr %7, i64 %37
  %41 = load i8, ptr %40, align 1, !tbaa !26
  %42 = or i8 %41, %39
  store i8 %42, ptr %40, align 1, !tbaa !26
  br label %224

43:                                               ; preds = %22
  br i1 %21, label %44, label %224

44:                                               ; preds = %43
  %45 = sext i32 %23 to i64
  %46 = getelementptr inbounds i8, ptr %3, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !26
  %48 = getelementptr i8, ptr %7, i64 %45
  %49 = load i8, ptr %48, align 1, !tbaa !26
  %50 = or i8 %49, %47
  store i8 %50, ptr %48, align 1, !tbaa !26
  br label %224

51:                                               ; preds = %22
  br i1 %19, label %52, label %224

52:                                               ; preds = %51
  %53 = sext i32 %23 to i64
  %54 = getelementptr inbounds i8, ptr %3, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !26
  %56 = getelementptr i8, ptr %7, i64 %53
  %57 = load i8, ptr %56, align 1, !tbaa !26
  %58 = or i8 %57, %55
  store i8 %58, ptr %56, align 1, !tbaa !26
  br label %224

59:                                               ; preds = %22
  br i1 %17, label %60, label %224

60:                                               ; preds = %59
  %61 = sext i32 %23 to i64
  %62 = getelementptr inbounds i8, ptr %3, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !26
  %64 = getelementptr i8, ptr %7, i64 %61
  %65 = load i8, ptr %64, align 1, !tbaa !26
  %66 = or i8 %65, %63
  store i8 %66, ptr %64, align 1, !tbaa !26
  br label %224

67:                                               ; preds = %22
  br i1 %16, label %68, label %224

68:                                               ; preds = %67
  %69 = sext i32 %23 to i64
  %70 = getelementptr inbounds i8, ptr %3, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !26
  %72 = getelementptr i8, ptr %7, i64 %69
  %73 = load i8, ptr %72, align 1, !tbaa !26
  %74 = or i8 %73, %71
  store i8 %74, ptr %72, align 1, !tbaa !26
  br label %224

75:                                               ; preds = %22
  br i1 %12, label %224, label %76

76:                                               ; preds = %75
  %77 = sext i32 %23 to i64
  %78 = getelementptr inbounds i8, ptr %3, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !26
  %80 = getelementptr i8, ptr %7, i64 %77
  %81 = load i8, ptr %80, align 1, !tbaa !26
  %82 = or i8 %81, %79
  store i8 %82, ptr %80, align 1, !tbaa !26
  br label %224

83:                                               ; preds = %22
  br i1 %12, label %224, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr %13, align 8, !tbaa !73
  %86 = and i64 %27, 67108863
  %87 = getelementptr inbounds %struct.cset, ptr %85, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !74
  %89 = getelementptr inbounds i8, ptr %88, i64 %15
  %90 = load i8, ptr %89, align 1, !tbaa !26
  %91 = getelementptr inbounds %struct.cset, ptr %85, i64 %86, i32 1
  %92 = load i8, ptr %91, align 8, !tbaa !76
  %93 = and i8 %92, %90
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %224, label %95

95:                                               ; preds = %84
  %96 = sext i32 %23 to i64
  %97 = getelementptr inbounds i8, ptr %3, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !26
  %99 = getelementptr i8, ptr %7, i64 %96
  %100 = load i8, ptr %99, align 1, !tbaa !26
  %101 = or i8 %100, %98
  store i8 %101, ptr %99, align 1, !tbaa !26
  br label %224

102:                                              ; preds = %22, %22
  %103 = sext i32 %23 to i64
  %104 = getelementptr inbounds i8, ptr %5, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !26
  %106 = getelementptr i8, ptr %104, i64 1
  %107 = load i8, ptr %106, align 1, !tbaa !26
  %108 = or i8 %107, %105
  store i8 %108, ptr %106, align 1, !tbaa !26
  br label %224

109:                                              ; preds = %22
  %110 = sext i32 %23 to i64
  %111 = getelementptr inbounds i8, ptr %5, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !26
  %113 = getelementptr i8, ptr %111, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !26
  %115 = or i8 %114, %112
  store i8 %115, ptr %113, align 1, !tbaa !26
  br label %224

116:                                              ; preds = %22
  %117 = sext i32 %23 to i64
  %118 = getelementptr inbounds i8, ptr %5, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !26
  %120 = getelementptr i8, ptr %118, i64 1
  %121 = load i8, ptr %120, align 1, !tbaa !26
  %122 = or i8 %121, %119
  store i8 %122, ptr %120, align 1, !tbaa !26
  %123 = and i64 %27, 67108863
  %124 = sub nsw i64 %117, %123
  %125 = getelementptr inbounds i8, ptr %5, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !26
  %127 = or i8 %126, %119
  store i8 %127, ptr %125, align 1, !tbaa !26
  %128 = icmp ne i8 %126, 0
  %129 = icmp eq i8 %127, 0
  %130 = select i1 %128, i1 true, i1 %129
  br i1 %130, label %224, label %131

131:                                              ; preds = %116
  %132 = xor i64 %123, -1
  %133 = add i64 %24, %132
  %134 = trunc i64 %133 to i32
  br label %224

135:                                              ; preds = %22
  %136 = sext i32 %23 to i64
  %137 = getelementptr inbounds i8, ptr %5, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !26
  %139 = getelementptr i8, ptr %137, i64 1
  %140 = load i8, ptr %139, align 1, !tbaa !26
  %141 = or i8 %140, %138
  store i8 %141, ptr %139, align 1, !tbaa !26
  %142 = and i64 %27, 67108863
  %143 = getelementptr i8, ptr %5, i64 %142
  %144 = getelementptr i8, ptr %143, i64 %136
  %145 = load i8, ptr %144, align 1, !tbaa !26
  %146 = or i8 %145, %138
  store i8 %146, ptr %144, align 1, !tbaa !26
  br label %224

147:                                              ; preds = %22
  %148 = sext i32 %23 to i64
  %149 = getelementptr inbounds i8, ptr %5, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !26
  %151 = getelementptr i8, ptr %149, i64 1
  %152 = load i8, ptr %151, align 1, !tbaa !26
  %153 = or i8 %152, %150
  store i8 %153, ptr %151, align 1, !tbaa !26
  br label %224

154:                                              ; preds = %22, %22
  %155 = sext i32 %23 to i64
  %156 = getelementptr inbounds i8, ptr %5, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !26
  %158 = getelementptr i8, ptr %156, i64 1
  %159 = load i8, ptr %158, align 1, !tbaa !26
  %160 = or i8 %159, %157
  store i8 %160, ptr %158, align 1, !tbaa !26
  br label %224

161:                                              ; preds = %22
  %162 = sext i32 %23 to i64
  %163 = getelementptr inbounds i8, ptr %5, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !26
  %165 = getelementptr i8, ptr %163, i64 1
  %166 = load i8, ptr %165, align 1, !tbaa !26
  %167 = or i8 %166, %164
  store i8 %167, ptr %165, align 1, !tbaa !26
  %168 = and i64 %27, 67108863
  %169 = getelementptr i8, ptr %5, i64 %168
  %170 = getelementptr i8, ptr %169, i64 %162
  %171 = load i8, ptr %170, align 1, !tbaa !26
  %172 = or i8 %171, %164
  store i8 %172, ptr %170, align 1, !tbaa !26
  br label %224

173:                                              ; preds = %22
  %174 = sext i32 %23 to i64
  %175 = getelementptr inbounds i8, ptr %5, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !26
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %224, label %178

178:                                              ; preds = %173
  %179 = getelementptr i64, ptr %26, i64 1
  %180 = load i64, ptr %179, align 8, !tbaa !44
  %181 = and i64 %180, 2080374784
  %182 = icmp eq i64 %181, 1207959552
  br i1 %182, label %192, label %183

183:                                              ; preds = %178, %183
  %184 = phi i64 [ %189, %183 ], [ %180, %178 ]
  %185 = phi i64 [ %187, %183 ], [ 1, %178 ]
  %186 = and i64 %184, 67108863
  %187 = add nuw nsw i64 %186, %185
  %188 = getelementptr i64, ptr %26, i64 %187
  %189 = load i64, ptr %188, align 8, !tbaa !44
  %190 = and i64 %189, 2080374784
  %191 = icmp eq i64 %190, 1207959552
  br i1 %191, label %192, label %183, !llvm.loop !87

192:                                              ; preds = %183, %178
  %193 = phi i64 [ 1, %178 ], [ %187, %183 ]
  %194 = getelementptr i8, ptr %5, i64 %193
  %195 = getelementptr i8, ptr %194, i64 %174
  %196 = load i8, ptr %195, align 1, !tbaa !26
  %197 = or i8 %196, %176
  store i8 %197, ptr %195, align 1, !tbaa !26
  br label %224

198:                                              ; preds = %22
  %199 = sext i32 %23 to i64
  %200 = getelementptr inbounds i8, ptr %5, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !26
  %202 = getelementptr i8, ptr %200, i64 1
  %203 = load i8, ptr %202, align 1, !tbaa !26
  %204 = or i8 %203, %201
  store i8 %204, ptr %202, align 1, !tbaa !26
  %205 = load ptr, ptr %11, align 8, !tbaa !70
  %206 = and i64 %27, 67108863
  %207 = getelementptr i64, ptr %205, i64 %24
  %208 = getelementptr i64, ptr %207, i64 %206
  %209 = load i64, ptr %208, align 8, !tbaa !44
  %210 = and i64 %209, 2080374784
  %211 = icmp eq i64 %210, 1207959552
  br i1 %211, label %224, label %212

212:                                              ; preds = %198
  %213 = getelementptr i8, ptr %5, i64 %206
  %214 = getelementptr i8, ptr %213, i64 %199
  %215 = load i8, ptr %214, align 1, !tbaa !26
  %216 = or i8 %215, %201
  store i8 %216, ptr %214, align 1, !tbaa !26
  br label %224

217:                                              ; preds = %22
  %218 = sext i32 %23 to i64
  %219 = getelementptr inbounds i8, ptr %5, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !26
  %221 = getelementptr i8, ptr %219, i64 1
  %222 = load i8, ptr %221, align 1, !tbaa !26
  %223 = or i8 %222, %220
  store i8 %223, ptr %221, align 1, !tbaa !26
  br label %224

224:                                              ; preds = %102, %109, %135, %147, %154, %161, %217, %36, %31, %43, %44, %51, %52, %60, %59, %68, %67, %76, %75, %95, %84, %83, %131, %116, %192, %173, %212, %198, %22
  %225 = phi i64 [ %24, %22 ], [ %24, %212 ], [ %24, %198 ], [ %24, %192 ], [ %24, %173 ], [ %24, %161 ], [ %24, %154 ], [ %24, %147 ], [ %24, %135 ], [ %24, %116 ], [ %133, %131 ], [ %24, %109 ], [ %24, %102 ], [ %24, %83 ], [ %24, %95 ], [ %24, %84 ], [ %24, %75 ], [ %24, %76 ], [ %24, %68 ], [ %24, %67 ], [ %24, %60 ], [ %24, %59 ], [ %24, %52 ], [ %24, %51 ], [ %24, %44 ], [ %24, %43 ], [ %24, %36 ], [ %24, %31 ], [ %24, %217 ]
  %226 = phi i32 [ %23, %22 ], [ %23, %212 ], [ %23, %198 ], [ %23, %192 ], [ %23, %173 ], [ %23, %161 ], [ %23, %154 ], [ %23, %147 ], [ %23, %135 ], [ %23, %116 ], [ %134, %131 ], [ %23, %109 ], [ %23, %102 ], [ %23, %83 ], [ %23, %95 ], [ %23, %84 ], [ %23, %75 ], [ %23, %76 ], [ %23, %68 ], [ %23, %67 ], [ %23, %60 ], [ %23, %59 ], [ %23, %52 ], [ %23, %51 ], [ %23, %44 ], [ %23, %43 ], [ %23, %36 ], [ %23, %31 ], [ %23, %217 ]
  %227 = add nsw i64 %225, 1
  %228 = add nsw i32 %226, 1
  %229 = icmp eq i64 %227, %2
  br i1 %229, label %230, label %22, !llvm.loop !88

230:                                              ; preds = %224, %6
  ret ptr %5
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind willreturn memory(argmem: read) }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { nounwind optsize allocsize(0) }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !12, i64 24}
!7 = !{!"", !8, i64 0, !11, i64 8, !12, i64 16, !12, i64 24}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!7, !8, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"re_guts", !8, i64 0, !12, i64 8, !8, i64 16, !8, i64 20, !12, i64 24, !12, i64 32, !8, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !12, i64 88, !12, i64 96, !8, i64 104, !11, i64 112, !8, i64 120, !11, i64 128, !9, i64 136}
!16 = !{!15, !8, i64 72}
!17 = !{!15, !11, i64 48}
!18 = !{i32 0, i32 17}
!19 = !{!15, !11, i64 56}
!20 = !{!15, !11, i64 64}
!21 = !{!15, !8, i64 40}
!22 = !{!23, !11, i64 0}
!23 = !{!"", !11, i64 0, !11, i64 8}
!24 = !{!23, !11, i64 8}
!25 = !{!15, !12, i64 96}
!26 = !{!9, !9, i64 0}
!27 = !{!15, !8, i64 104}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!31, !12, i64 0}
!31 = !{!"smat", !12, i64 0, !8, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80}
!32 = !{!31, !8, i64 8}
!33 = !{!31, !12, i64 16}
!34 = !{!31, !12, i64 56}
!35 = !{!31, !12, i64 24}
!36 = !{!31, !12, i64 32}
!37 = !{!31, !12, i64 40}
!38 = !{!15, !8, i64 120}
!39 = !{!31, !12, i64 48}
!40 = !{!15, !11, i64 112}
!41 = distinct !{!41, !29}
!42 = !{!15, !11, i64 128}
!43 = !{i64 0, i64 8, !44, i64 8, i64 8, !44}
!44 = !{!11, !11, i64 0}
!45 = distinct !{!45, !29}
!46 = distinct !{!46, !29}
!47 = !{!48, !12, i64 0}
!48 = !{!"lmat", !12, i64 0, !8, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !8, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104}
!49 = !{!48, !8, i64 8}
!50 = !{!48, !12, i64 16}
!51 = !{!48, !12, i64 56}
!52 = !{!48, !12, i64 24}
!53 = !{!48, !12, i64 32}
!54 = !{!48, !12, i64 40}
!55 = !{!48, !12, i64 72}
!56 = !{!48, !12, i64 80}
!57 = !{!48, !12, i64 88}
!58 = !{!48, !12, i64 96}
!59 = !{!48, !8, i64 64}
!60 = !{!48, !12, i64 104}
!61 = !{!48, !12, i64 48}
!62 = distinct !{!62, !29}
!63 = distinct !{!63, !29}
!64 = !{!15, !8, i64 76}
!65 = !{!15, !8, i64 80}
!66 = !{!12, !12, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !9, i64 0}
!69 = !{!31, !8, i64 80}
!70 = !{!15, !12, i64 8}
!71 = distinct !{!71, !29}
!72 = distinct !{!72, !29}
!73 = !{!15, !12, i64 24}
!74 = !{!75, !12, i64 0}
!75 = !{!"", !12, i64 0, !9, i64 8, !9, i64 9, !11, i64 16, !12, i64 24}
!76 = !{!75, !9, i64 8}
!77 = distinct !{!77, !29}
!78 = distinct !{!78, !29}
!79 = distinct !{!79, !29}
!80 = distinct !{!80, !29}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !29}
!86 = distinct !{!86, !29}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !29}
