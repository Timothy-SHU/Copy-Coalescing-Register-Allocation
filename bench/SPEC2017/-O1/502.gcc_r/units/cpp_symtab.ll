; ModuleID = 'cpp_symtab.c'
source_filename = "cpp_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.ht = type { %struct.obstack, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i8 }
%struct.ht_identifier = type { ptr, i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"\0AString pool\0Aentries\09\09%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"identifiers\09%lu (%.2f%%)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"slots\09\09%lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"deleted\09\09%lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"bytes\09\09%lu%c (%lu%c overhead)\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"table size\09%lu%c\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"coll/search\09%.4f\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ins/search\09%.4f\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"avg. entry\09%.2f bytes (+/- %.2f)\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"longest entry\09%lu\0A\00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !42 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !47
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #0 !prof !42 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !47
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @ht_create(i32 noundef %0) local_unnamed_addr #2 !prof !49 {
  %2 = shl nuw i32 1, %0
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 144) #12
  %4 = tail call i32 @_obstack_begin(ptr noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #12
  %5 = getelementptr inbounds %struct.obstack, ptr %3, i64 0, i32 6
  store i32 0, ptr %5, align 8, !tbaa !50
  %6 = zext i32 %2 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #12
  %8 = getelementptr inbounds %struct.ht, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.ht, ptr %3, i64 0, i32 9
  store i8 1, ptr %9, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.ht, ptr %3, i64 0, i32 4
  store i32 %2, ptr %10, align 8, !tbaa !56
  ret ptr %3
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @xmalloc(i64 noundef) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ht_destroy(ptr noundef %0) local_unnamed_addr #2 !prof !42 {
  %2 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 0, %4
  %6 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 5
  store i64 %5, ptr %6, align 8, !tbaa !58
  %7 = icmp sgt i64 %5, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %11, %4
  %13 = icmp sgt i64 %12, %5
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %3, i64 %5
  %16 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3
  store ptr %15, ptr %17, align 8, !tbaa !61
  br label %20

18:                                               ; preds = %8, %1
  %19 = getelementptr inbounds i8, ptr %3, i64 %5
  tail call void @obstack_free(ptr noundef %0, ptr noundef %19) #12
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 9
  %22 = load i8, ptr %21, align 8, !tbaa !55
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  tail call void @free(ptr noundef %26) #12
  br label %27

27:                                               ; preds = %24, %20
  tail call void @free(ptr noundef %0) #12
  ret void
}

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @ht_lookup(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 !prof !62 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %18, label %6, !prof !63

6:                                                ; preds = %4, %6
  %7 = phi i32 [ %16, %6 ], [ 0, %4 ]
  %8 = phi i64 [ %10, %6 ], [ %2, %4 ]
  %9 = phi ptr [ %12, %6 ], [ %1, %4 ]
  %10 = add i64 %8, -1
  %11 = mul i32 %7, 67
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = load i8, ptr %9, align 1, !tbaa !64
  %14 = zext i8 %13 to i32
  %15 = add i32 %11, -113
  %16 = add i32 %15, %14
  %17 = icmp eq i64 %10, 0
  br i1 %17, label %18, label %6, !prof !65, !llvm.loop !66

18:                                               ; preds = %6, %4
  %19 = phi i32 [ 0, %4 ], [ %16, %6 ]
  %20 = trunc i64 %2 to i32
  %21 = add i32 %19, %20
  %22 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !56
  %24 = add i32 %23, -1
  %25 = and i32 %24, %21
  %26 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !69
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !69
  %29 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = zext i32 %25 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = ptrtoint ptr %33 to i64
  switch i64 %34, label %35 [
    i64 0, label %84
    i64 -1, label %47
  ], !prof !70

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.ht_identifier, ptr %33, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !71
  %38 = icmp eq i32 %37, %21
  br i1 %38, label %39, label %47, !prof !73

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ht_identifier, ptr %33, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !74
  %42 = icmp eq i32 %41, %20
  br i1 %42, label %43, label %47, !prof !75

43:                                               ; preds = %39
  %44 = load ptr, ptr %33, align 8, !tbaa !76
  %45 = tail call i32 @bcmp(ptr %44, ptr %1, i64 %2), !prof !77
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %210, label %47, !prof !75

47:                                               ; preds = %43, %39, %35, %18
  %48 = phi i32 [ %23, %43 ], [ %23, %39 ], [ %23, %35 ], [ %25, %18 ]
  %49 = mul i32 %21, 17
  %50 = and i32 %24, %49
  %51 = or i32 %50, 1
  %52 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 8
  %53 = load i32, ptr %52, align 4, !tbaa !78
  br label %54

54:                                               ; preds = %68, %47
  %55 = phi i32 [ %61, %68 ], [ %53, %47 ]
  %56 = phi i32 [ %70, %68 ], [ %48, %47 ]
  %57 = phi i32 [ %63, %68 ], [ %25, %47 ]
  br label %58

58:                                               ; preds = %83, %54
  %59 = phi i32 [ %55, %54 ], [ %61, %83 ]
  %60 = phi i32 [ %57, %54 ], [ %63, %83 ]
  %61 = add i32 %59, 1
  store i32 %61, ptr %52, align 4, !tbaa !78
  %62 = add i32 %60, %51
  %63 = and i32 %62, %24
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds ptr, ptr %30, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !43
  %67 = ptrtoint ptr %66 to i64
  switch i64 %67, label %71 [
    i64 0, label %84
    i64 -1, label %68
  ], !prof !79

68:                                               ; preds = %58
  %69 = icmp eq i32 %56, %23
  %70 = select i1 %69, i32 %56, i32 %63
  br label %54, !llvm.loop !80

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.ht_identifier, ptr %66, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !71
  %74 = icmp eq i32 %73, %21
  br i1 %74, label %75, label %83, !prof !81

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ht_identifier, ptr %66, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !74
  %78 = icmp eq i32 %77, %20
  br i1 %78, label %79, label %83, !prof !82

79:                                               ; preds = %75
  %80 = load ptr, ptr %66, align 8, !tbaa !76
  %81 = tail call i32 @bcmp(ptr %80, ptr %1, i64 %2), !prof !83
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %210, label %83, !prof !84

83:                                               ; preds = %79, %75, %71
  br label %58, !llvm.loop !80

84:                                               ; preds = %58, %18
  %85 = phi i32 [ %23, %18 ], [ %56, %58 ]
  %86 = phi i32 [ %25, %18 ], [ %63, %58 ]
  %87 = icmp eq i32 %3, 0
  br i1 %87, label %210, label %88, !prof !85

88:                                               ; preds = %84
  %89 = icmp eq i32 %85, %23
  %90 = select i1 %89, i32 %86, i32 %85, !prof !86
  %91 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !87
  %93 = tail call ptr %92(ptr noundef %0) #12, !prof !88
  %94 = load ptr, ptr %29, align 8, !tbaa !54
  %95 = zext i32 %90 to i64
  %96 = getelementptr inbounds ptr, ptr %94, i64 %95
  store ptr %93, ptr %96, align 8, !tbaa !43
  %97 = getelementptr inbounds %struct.ht_identifier, ptr %93, i64 0, i32 1
  store i32 %20, ptr %97, align 8, !tbaa !74
  %98 = getelementptr inbounds %struct.ht_identifier, ptr %93, i64 0, i32 2
  store i32 %21, ptr %98, align 4, !tbaa !71
  %99 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !89
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102, !prof !90

102:                                              ; preds = %88
  %103 = add i64 %2, 1
  %104 = tail call ptr %100(i64 noundef %103) #12, !prof !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %104, ptr align 1 %1, i64 %2, i1 false), !prof !92
  %105 = getelementptr inbounds i8, ptr %104, i64 %2
  store i8 0, ptr %105, align 1, !tbaa !64
  br label %154

106:                                              ; preds = %88
  %107 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 5
  store i64 %2, ptr %107, align 8, !tbaa !58
  %108 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !61
  %110 = getelementptr inbounds i8, ptr %109, i64 %2
  %111 = getelementptr inbounds i8, ptr %110, i64 1
  %112 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !59
  %114 = icmp ugt ptr %111, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = add i32 %20, 1
  tail call void @_obstack_newchunk(ptr noundef %0, i32 noundef %116) #12
  br label %117

117:                                              ; preds = %115, %106
  %118 = load ptr, ptr %108, align 8, !tbaa !61
  %119 = load i64, ptr %107, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %118, ptr align 1 %1, i64 %119, i1 false)
  %120 = load i64, ptr %107, align 8, !tbaa !58
  %121 = load ptr, ptr %108, align 8, !tbaa !61
  %122 = getelementptr inbounds i8, ptr %121, i64 %120
  %123 = getelementptr inbounds i8, ptr %122, i64 1
  store ptr %123, ptr %108, align 8, !tbaa !61
  store i8 0, ptr %122, align 1, !tbaa !64
  %124 = load ptr, ptr %108, align 8, !tbaa !61
  %125 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !60
  %127 = icmp eq ptr %124, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10
  %130 = load i8, ptr %129, align 8
  %131 = or i8 %130, 2
  store i8 %131, ptr %129, align 8
  br label %132

132:                                              ; preds = %128, %117
  %133 = ptrtoint ptr %126 to i64
  store i64 %133, ptr %107, align 8, !tbaa !58
  %134 = ptrtoint ptr %124 to i64
  %135 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6
  %136 = load i32, ptr %135, align 8, !tbaa !50
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %134
  %139 = xor i32 %136, -1
  %140 = sext i32 %139 to i64
  %141 = and i64 %138, %140
  %142 = inttoptr i64 %141 to ptr
  store ptr %142, ptr %108, align 8, !tbaa !61
  %143 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !57
  %145 = ptrtoint ptr %144 to i64
  %146 = sub i64 %141, %145
  %147 = load ptr, ptr %112, align 8, !tbaa !59
  %148 = ptrtoint ptr %147 to i64
  %149 = sub i64 %148, %145
  %150 = icmp sgt i64 %146, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %132
  store ptr %147, ptr %108, align 8, !tbaa !61
  br label %152

152:                                              ; preds = %151, %132
  %153 = load ptr, ptr %108, align 8, !tbaa !61
  store ptr %153, ptr %125, align 8, !tbaa !60
  br label %154

154:                                              ; preds = %152, %102
  %155 = phi ptr [ %126, %152 ], [ %104, %102 ]
  store ptr %155, ptr %93, align 8, !tbaa !76
  %156 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 5
  %157 = load i32, ptr %156, align 4, !tbaa !93
  %158 = add i32 %157, 1
  store i32 %158, ptr %156, align 4, !tbaa !93
  %159 = shl i32 %158, 2
  %160 = load i32, ptr %22, align 8, !tbaa !56
  %161 = mul i32 %160, 3
  %162 = icmp ult i32 %159, %161
  br i1 %162, label %210, label %163, !prof !94

163:                                              ; preds = %154
  %164 = shl i32 %160, 1
  %165 = zext i32 %164 to i64
  %166 = tail call ptr @xcalloc(i64 noundef %165, i64 noundef 8) #12
  %167 = add i32 %164, -1
  %168 = load ptr, ptr %29, align 8, !tbaa !54
  %169 = load i32, ptr %22, align 8, !tbaa !56
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds ptr, ptr %168, i64 %170
  br label %172

172:                                              ; preds = %200, %163
  %173 = phi ptr [ %168, %163 ], [ %201, %200 ]
  %174 = load ptr, ptr %173, align 8, !tbaa !43
  %175 = ptrtoint ptr %174 to i64
  switch i64 %175, label %176 [
    i64 0, label %200
    i64 -1, label %200
  ], !prof !95

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.ht_identifier, ptr %174, i64 0, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !71
  %179 = and i32 %178, %167
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds ptr, ptr %166, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !43
  %183 = icmp eq ptr %182, null
  br i1 %183, label %196, label %184, !prof !96

184:                                              ; preds = %176
  %185 = mul i32 %178, 17
  %186 = and i32 %185, %167
  %187 = or i32 %186, 1
  br label %188

188:                                              ; preds = %188, %184
  %189 = phi i32 [ %179, %184 ], [ %191, %188 ]
  %190 = add i32 %189, %187
  %191 = and i32 %190, %167
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds ptr, ptr %166, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !43
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %188, !prof !97, !llvm.loop !98

196:                                              ; preds = %188, %176
  %197 = phi i32 [ %179, %176 ], [ %191, %188 ]
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds ptr, ptr %166, i64 %198
  store ptr %174, ptr %199, align 8, !tbaa !43
  br label %200

200:                                              ; preds = %196, %172, %172
  %201 = getelementptr inbounds ptr, ptr %173, i64 1
  %202 = icmp ult ptr %201, %171
  br i1 %202, label %172, label %203, !prof !99, !llvm.loop !100

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 9
  %205 = load i8, ptr %204, align 8, !tbaa !55
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %209, label %207, !prof !101

207:                                              ; preds = %203
  %208 = load ptr, ptr %29, align 8, !tbaa !54
  tail call void @free(ptr noundef %208) #12
  br label %209

209:                                              ; preds = %207, %203
  store i8 1, ptr %204, align 8, !tbaa !55
  store ptr %166, ptr %29, align 8, !tbaa !54
  store i32 %164, ptr %22, align 8, !tbaa !56
  br label %210

210:                                              ; preds = %79, %43, %84, %154, %209
  %211 = phi ptr [ null, %84 ], [ %93, %209 ], [ %93, %154 ], [ %33, %43 ], [ %66, %79 ]
  ret ptr %211
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @ht_lookup_with_hash(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 !prof !102 {
  %6 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = add i32 %7, -1
  %9 = and i32 %8, %3
  %10 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !69
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = zext i32 %9 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = ptrtoint ptr %17 to i64
  switch i64 %18, label %19 [
    i64 0, label %70
    i64 -1, label %32
  ], !prof !70

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.ht_identifier, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !71
  %22 = icmp eq i32 %21, %3
  br i1 %22, label %23, label %32, !prof !73

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ht_identifier, ptr %17, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !74
  %26 = trunc i64 %2 to i32
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32, !prof !75

28:                                               ; preds = %23
  %29 = load ptr, ptr %17, align 8, !tbaa !76
  %30 = tail call i32 @bcmp(ptr %29, ptr %1, i64 %2), !prof !103
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %197, label %32, !prof !75

32:                                               ; preds = %5, %19, %23, %28
  %33 = phi i32 [ %7, %28 ], [ %7, %23 ], [ %7, %19 ], [ %9, %5 ]
  %34 = mul i32 %3, 17
  %35 = and i32 %8, %34
  %36 = or i32 %35, 1
  %37 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !78
  br label %39

39:                                               ; preds = %53, %32
  %40 = phi i32 [ %46, %53 ], [ %38, %32 ]
  %41 = phi i32 [ %55, %53 ], [ %33, %32 ]
  %42 = phi i32 [ %48, %53 ], [ %9, %32 ]
  br label %43

43:                                               ; preds = %60, %39
  %44 = phi i32 [ %40, %39 ], [ %46, %60 ]
  %45 = phi i32 [ %42, %39 ], [ %48, %60 ]
  %46 = add i32 %44, 1
  store i32 %46, ptr %37, align 4, !tbaa !78
  %47 = add i32 %45, %36
  %48 = and i32 %47, %8
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %14, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !43
  %52 = ptrtoint ptr %51 to i64
  switch i64 %52, label %56 [
    i64 0, label %70
    i64 -1, label %53
  ], !prof !79

53:                                               ; preds = %43
  %54 = icmp eq i32 %41, %7
  %55 = select i1 %54, i32 %41, i32 %48
  br label %39, !llvm.loop !80

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.ht_identifier, ptr %51, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !71
  %59 = icmp eq i32 %58, %3
  br i1 %59, label %61, label %60, !prof !81

60:                                               ; preds = %56, %61, %66
  br label %43, !llvm.loop !80

61:                                               ; preds = %56
  %62 = trunc i64 %2 to i32
  %63 = getelementptr inbounds %struct.ht_identifier, ptr %51, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !74
  %65 = icmp eq i32 %64, %62
  br i1 %65, label %66, label %60, !prof !82

66:                                               ; preds = %61
  %67 = load ptr, ptr %51, align 8, !tbaa !76
  %68 = tail call i32 @bcmp(ptr %67, ptr %1, i64 %2), !prof !104
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %197, label %60, !prof !84

70:                                               ; preds = %43, %5
  %71 = phi i32 [ %7, %5 ], [ %41, %43 ]
  %72 = phi i32 [ %9, %5 ], [ %48, %43 ]
  %73 = icmp eq i32 %4, 0
  br i1 %73, label %197, label %74, !prof !85

74:                                               ; preds = %70
  %75 = icmp eq i32 %71, %7
  %76 = select i1 %75, i32 %72, i32 %71, !prof !86
  %77 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !87
  %79 = tail call ptr %78(ptr noundef %0) #12, !prof !105
  %80 = load ptr, ptr %13, align 8, !tbaa !54
  %81 = zext i32 %76 to i64
  %82 = getelementptr inbounds ptr, ptr %80, i64 %81
  store ptr %79, ptr %82, align 8, !tbaa !43
  %83 = trunc i64 %2 to i32
  %84 = getelementptr inbounds %struct.ht_identifier, ptr %79, i64 0, i32 1
  store i32 %83, ptr %84, align 8, !tbaa !74
  %85 = getelementptr inbounds %struct.ht_identifier, ptr %79, i64 0, i32 2
  store i32 %3, ptr %85, align 4, !tbaa !71
  %86 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !89
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89, !prof !90

89:                                               ; preds = %74
  %90 = add i64 %2, 1
  %91 = tail call ptr %87(i64 noundef %90) #12, !prof !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %1, i64 %2, i1 false), !prof !107
  %92 = getelementptr inbounds i8, ptr %91, i64 %2
  store i8 0, ptr %92, align 1, !tbaa !64
  br label %141

93:                                               ; preds = %74
  %94 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 5
  store i64 %2, ptr %94, align 8, !tbaa !58
  %95 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !61
  %97 = getelementptr inbounds i8, ptr %96, i64 %2
  %98 = getelementptr inbounds i8, ptr %97, i64 1
  %99 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !59
  %101 = icmp ugt ptr %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = add i32 %83, 1
  tail call void @_obstack_newchunk(ptr noundef %0, i32 noundef %103) #12
  br label %104

104:                                              ; preds = %93, %102
  %105 = load ptr, ptr %95, align 8, !tbaa !61
  %106 = load i64, ptr %94, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %105, ptr align 1 %1, i64 %106, i1 false)
  %107 = load i64, ptr %94, align 8, !tbaa !58
  %108 = load ptr, ptr %95, align 8, !tbaa !61
  %109 = getelementptr inbounds i8, ptr %108, i64 %107
  %110 = getelementptr inbounds i8, ptr %109, i64 1
  store ptr %110, ptr %95, align 8, !tbaa !61
  store i8 0, ptr %109, align 1, !tbaa !64
  %111 = load ptr, ptr %95, align 8, !tbaa !61
  %112 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !60
  %114 = icmp eq ptr %111, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10
  %117 = load i8, ptr %116, align 8
  %118 = or i8 %117, 2
  store i8 %118, ptr %116, align 8
  br label %119

119:                                              ; preds = %104, %115
  %120 = ptrtoint ptr %113 to i64
  store i64 %120, ptr %94, align 8, !tbaa !58
  %121 = ptrtoint ptr %111 to i64
  %122 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6
  %123 = load i32, ptr %122, align 8, !tbaa !50
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %121
  %126 = xor i32 %123, -1
  %127 = sext i32 %126 to i64
  %128 = and i64 %125, %127
  %129 = inttoptr i64 %128 to ptr
  store ptr %129, ptr %95, align 8, !tbaa !61
  %130 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !57
  %132 = ptrtoint ptr %131 to i64
  %133 = sub i64 %128, %132
  %134 = load ptr, ptr %99, align 8, !tbaa !59
  %135 = ptrtoint ptr %134 to i64
  %136 = sub i64 %135, %132
  %137 = icmp sgt i64 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %119
  store ptr %134, ptr %95, align 8, !tbaa !61
  br label %139

139:                                              ; preds = %119, %138
  %140 = load ptr, ptr %95, align 8, !tbaa !61
  store ptr %140, ptr %112, align 8, !tbaa !60
  br label %141

141:                                              ; preds = %139, %89
  %142 = phi ptr [ %113, %139 ], [ %91, %89 ]
  store ptr %142, ptr %79, align 8, !tbaa !76
  %143 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 5
  %144 = load i32, ptr %143, align 4, !tbaa !93
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 4, !tbaa !93
  %146 = shl i32 %145, 2
  %147 = load i32, ptr %6, align 8, !tbaa !56
  %148 = mul i32 %147, 3
  %149 = icmp ult i32 %146, %148
  br i1 %149, label %197, label %150, !prof !94

150:                                              ; preds = %141
  %151 = shl i32 %147, 1
  %152 = zext i32 %151 to i64
  %153 = tail call ptr @xcalloc(i64 noundef %152, i64 noundef 8) #12
  %154 = add i32 %151, -1
  %155 = load ptr, ptr %13, align 8, !tbaa !54
  %156 = load i32, ptr %6, align 8, !tbaa !56
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %155, i64 %157
  br label %159

159:                                              ; preds = %187, %150
  %160 = phi ptr [ %155, %150 ], [ %188, %187 ]
  %161 = load ptr, ptr %160, align 8, !tbaa !43
  %162 = ptrtoint ptr %161 to i64
  switch i64 %162, label %163 [
    i64 0, label %187
    i64 -1, label %187
  ], !prof !95

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.ht_identifier, ptr %161, i64 0, i32 2
  %165 = load i32, ptr %164, align 4, !tbaa !71
  %166 = and i32 %165, %154
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %153, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !43
  %170 = icmp eq ptr %169, null
  br i1 %170, label %183, label %171, !prof !96

171:                                              ; preds = %163
  %172 = mul i32 %165, 17
  %173 = and i32 %172, %154
  %174 = or i32 %173, 1
  br label %175

175:                                              ; preds = %175, %171
  %176 = phi i32 [ %166, %171 ], [ %178, %175 ]
  %177 = add i32 %176, %174
  %178 = and i32 %177, %154
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds ptr, ptr %153, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !43
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %175, !prof !97, !llvm.loop !98

183:                                              ; preds = %175, %163
  %184 = phi i32 [ %166, %163 ], [ %178, %175 ]
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds ptr, ptr %153, i64 %185
  store ptr %161, ptr %186, align 8, !tbaa !43
  br label %187

187:                                              ; preds = %159, %159, %183
  %188 = getelementptr inbounds ptr, ptr %160, i64 1
  %189 = icmp ult ptr %188, %158
  br i1 %189, label %159, label %190, !prof !99, !llvm.loop !100

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 9
  %192 = load i8, ptr %191, align 8, !tbaa !55
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %196, label %194, !prof !101

194:                                              ; preds = %190
  %195 = load ptr, ptr %13, align 8, !tbaa !54
  tail call void @free(ptr noundef %195) #12
  br label %196

196:                                              ; preds = %190, %194
  store i8 1, ptr %191, align 8, !tbaa !55
  store ptr %153, ptr %13, align 8, !tbaa !54
  store i32 %151, ptr %6, align 8, !tbaa !56
  br label %197

197:                                              ; preds = %66, %28, %141, %196, %70
  %198 = phi ptr [ null, %70 ], [ %79, %196 ], [ %79, %141 ], [ %17, %28 ], [ %51, %66 ]
  ret ptr %198
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @ht_forall(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 !prof !42 {
  %4 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 6
  br label %11

11:                                               ; preds = %22, %3
  %12 = phi ptr [ %5, %3 ], [ %23, %22 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = ptrtoint ptr %13 to i64
  switch i64 %14, label %15 [
    i64 0, label %24
    i64 -1, label %24
  ]

15:                                               ; preds = %11
  %16 = load ptr, ptr %10, align 8, !tbaa !108
  %17 = tail call i32 %1(ptr noundef %16, ptr noundef nonnull %13, ptr noundef %2) #12
  %18 = icmp ne i32 %17, 0
  %19 = getelementptr inbounds ptr, ptr %12, i64 1
  %20 = icmp ult ptr %19, %9
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %27

22:                                               ; preds = %15, %24
  %23 = phi ptr [ %19, %15 ], [ %25, %24 ]
  br label %11, !llvm.loop !109

24:                                               ; preds = %11, %11
  %25 = getelementptr inbounds ptr, ptr %12, i64 1
  %26 = icmp ult ptr %25, %9
  br i1 %26, label %22, label %27

27:                                               ; preds = %15, %24
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ht_purge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 !prof !42 {
  %4 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 6
  br label %11

11:                                               ; preds = %20, %3
  %12 = phi ptr [ %5, %3 ], [ %21, %20 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = ptrtoint ptr %13 to i64
  switch i64 %14, label %15 [
    i64 0, label %20
    i64 -1, label %20
  ]

15:                                               ; preds = %11
  %16 = load ptr, ptr %10, align 8, !tbaa !108
  %17 = tail call i32 %1(ptr noundef %16, ptr noundef nonnull %13, ptr noundef %2) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store ptr inttoptr (i64 -1 to ptr), ptr %12, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %11, %11, %19, %15
  %21 = getelementptr inbounds ptr, ptr %12, i64 1
  %22 = icmp ult ptr %21, %9
  br i1 %22, label %11, label %23, !llvm.loop !110

23:                                               ; preds = %20
  ret void
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @ht_load(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #6 !prof !42 {
  %6 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 9
  %7 = load i8, ptr %6, align 8, !tbaa !55
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  tail call void @free(ptr noundef %11) #12
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  store i32 %2, ptr %14, align 8, !tbaa !56
  %15 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 5
  store i32 %3, ptr %15, align 4, !tbaa !93
  store i8 %4, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ht_dump_statistics(ptr noundef %0) local_unnamed_addr #2 !prof !42 {
  %2 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !56
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  br label %8

8:                                                ; preds = %28, %1
  %9 = phi double [ 0.000000e+00, %1 ], [ %29, %28 ]
  %10 = phi i64 [ 0, %1 ], [ %30, %28 ]
  %11 = phi i64 [ 0, %1 ], [ %31, %28 ]
  %12 = phi ptr [ %3, %1 ], [ %34, %28 ]
  %13 = phi i64 [ 0, %1 ], [ %32, %28 ]
  %14 = phi i64 [ 0, %1 ], [ %33, %28 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !43
  %16 = ptrtoint ptr %15 to i64
  switch i64 %16, label %19 [
    i64 -1, label %17
    i64 0, label %28
  ]

17:                                               ; preds = %8
  %18 = add i64 %10, 1
  br label %28

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.ht_identifier, ptr %15, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !74
  %22 = zext i32 %21 to i64
  %23 = add i64 %13, %22
  %24 = uitofp i32 %21 to double
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %24, double %9)
  %26 = tail call i64 @llvm.umax.i64(i64 %11, i64 %22)
  %27 = add i64 %14, 1
  br label %28

28:                                               ; preds = %8, %17, %19
  %29 = phi double [ %9, %17 ], [ %25, %19 ], [ %9, %8 ]
  %30 = phi i64 [ %18, %17 ], [ %10, %19 ], [ %10, %8 ]
  %31 = phi i64 [ %11, %17 ], [ %26, %19 ], [ %11, %8 ]
  %32 = phi i64 [ %13, %17 ], [ %23, %19 ], [ %13, %8 ]
  %33 = phi i64 [ %14, %17 ], [ %27, %19 ], [ %14, %8 ]
  %34 = getelementptr inbounds ptr, ptr %12, i64 1
  %35 = icmp ult ptr %34, %7
  br i1 %35, label %8, label %36, !llvm.loop !111

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !93
  %39 = zext i32 %38 to i64
  %40 = tail call i32 @_obstack_memory_used(ptr noundef %0) #12
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, %32
  %43 = load i32, ptr %4, align 8, !tbaa !56
  %44 = zext i32 %43 to i64
  %45 = shl nuw nsw i64 %44, 3
  %46 = load ptr, ptr @stderr, align 8, !tbaa !43
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str, i64 noundef %39) #13
  %48 = load ptr, ptr @stderr, align 8, !tbaa !43
  %49 = uitofp i64 %33 to double
  %50 = fmul double %49, 1.000000e+02
  %51 = uitofp i32 %38 to double
  %52 = fdiv double %50, %51
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.1, i64 noundef %33, double noundef %52) #13
  %54 = load ptr, ptr @stderr, align 8, !tbaa !43
  %55 = load i32, ptr %4, align 8, !tbaa !56
  %56 = zext i32 %55 to i64
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.2, i64 noundef %56) #13
  %58 = load ptr, ptr @stderr, align 8, !tbaa !43
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.3, i64 noundef %30) #13
  %60 = load ptr, ptr @stderr, align 8, !tbaa !43
  %61 = icmp ult i64 %32, 10240
  %62 = icmp ult i64 %32, 10485760
  %63 = select i1 %62, i64 10, i64 20
  %64 = select i1 %61, i64 0, i64 %63
  %65 = lshr i64 %32, %64
  %66 = select i1 %62, i32 107, i32 77
  %67 = select i1 %61, i32 32, i32 %66
  %68 = icmp ult i64 %42, 10240
  %69 = icmp ult i64 %42, 10485760
  %70 = select i1 %69, i64 10, i64 20
  %71 = select i1 %68, i64 0, i64 %70
  %72 = lshr i64 %42, %71
  %73 = select i1 %69, i32 107, i32 77
  %74 = select i1 %68, i32 32, i32 %73
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.4, i64 noundef %65, i32 noundef %67, i64 noundef %72, i32 noundef %74) #13
  %76 = load ptr, ptr @stderr, align 8, !tbaa !43
  %77 = icmp ult i32 %43, 1280
  %78 = icmp ult i32 %43, 1310720
  %79 = select i1 %78, i64 7, i64 17
  %80 = lshr i64 %44, %79
  %81 = select i1 %77, i64 %45, i64 %80
  %82 = select i1 %78, i32 107, i32 77
  %83 = select i1 %77, i32 32, i32 %82
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.5, i64 noundef %81, i32 noundef %83) #13
  %85 = uitofp i64 %32 to double
  %86 = fdiv double %85, %51
  %87 = fmul double %86, %86
  %88 = fdiv double %29, %51
  %89 = load ptr, ptr @stderr, align 8, !tbaa !43
  %90 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 8
  %91 = load i32, ptr %90, align 4, !tbaa !78
  %92 = uitofp i32 %91 to double
  %93 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 7
  %94 = load i32, ptr %93, align 8, !tbaa !69
  %95 = uitofp i32 %94 to double
  %96 = fdiv double %92, %95
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.6, double noundef %96) #13
  %98 = load ptr, ptr @stderr, align 8, !tbaa !43
  %99 = load i32, ptr %93, align 8, !tbaa !69
  %100 = uitofp i32 %99 to double
  %101 = fdiv double %51, %100
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef nonnull @.str.7, double noundef %101) #13
  %103 = load ptr, ptr @stderr, align 8, !tbaa !43
  %104 = fsub double %88, %87
  %105 = fcmp olt double %104, 0.000000e+00
  br i1 %105, label %106, label %107

106:                                              ; preds = %36
  tail call void @abort() #14
  unreachable

107:                                              ; preds = %36
  %108 = fcmp oeq double %104, 0.000000e+00
  br i1 %108, label %118, label %109

109:                                              ; preds = %107
  %110 = fneg double %104
  br label %111

111:                                              ; preds = %109, %111
  %112 = phi double [ %116, %111 ], [ %104, %109 ]
  %113 = tail call double @llvm.fmuladd.f64(double %112, double %112, double %110)
  %114 = fmul double %112, 2.000000e+00
  %115 = fdiv double %113, %114
  %116 = fsub double %112, %115
  %117 = fcmp ogt double %115, 1.000000e-04
  br i1 %117, label %111, label %118, !llvm.loop !112

118:                                              ; preds = %111, %107
  %119 = phi double [ 0.000000e+00, %107 ], [ %116, %111 ]
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.8, double noundef %86, double noundef %119) #13
  %121 = load ptr, ptr @stderr, align 8, !tbaa !43
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.9, i64 noundef %31) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare i32 @_obstack_memory_used(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @ht_create, ptr @xcalloc, i64 2}
!36 = !{ptr @ht_create, ptr @_obstack_begin, i64 1}
!37 = !{ptr @ht_lookup, ptr @bcmp, i64 268810}
!38 = !{ptr @ht_lookup_with_hash, ptr @bcmp, i64 450197}
!39 = !{ptr @ht_lookup_with_hash, ptr @xcalloc, i64 1}
!40 = !{ptr @ht_lookup_with_hash, ptr @free, i64 1}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !45, i64 0}
!49 = !{!"function_entry_count", i64 1}
!50 = !{!51, !48, i64 48}
!51 = !{!"ht", !52, i64 0, !44, i64 88, !44, i64 96, !44, i64 104, !48, i64 112, !48, i64 116, !44, i64 120, !48, i64 128, !48, i64 132, !45, i64 136}
!52 = !{!"obstack", !53, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !53, i64 40, !48, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !48, i64 80, !48, i64 80, !48, i64 80}
!53 = !{!"long", !45, i64 0}
!54 = !{!51, !44, i64 88}
!55 = !{!51, !45, i64 136}
!56 = !{!51, !48, i64 112}
!57 = !{!51, !44, i64 8}
!58 = !{!51, !53, i64 40}
!59 = !{!51, !44, i64 32}
!60 = !{!51, !44, i64 16}
!61 = !{!51, !44, i64 24}
!62 = !{!"function_entry_count", i64 347245}
!63 = !{!"branch_weights", i32 1, i32 347244}
!64 = !{!45, !45, i64 0}
!65 = !{!"branch_weights", i32 347244, i32 3332986}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!51, !48, i64 128}
!70 = !{!"branch_weights", i32 845926, i32 82878, i32 0}
!71 = !{!72, !48, i64 12}
!72 = !{!"ht_identifier", !44, i64 0, !48, i64 8, !48, i64 12}
!73 = !{!"branch_weights", i32 386214, i32 459712}
!74 = !{!72, !48, i64 8}
!75 = !{!"branch_weights", i32 386214, i32 0}
!76 = !{!72, !44, i64 0}
!77 = !{!"VP", i32 1, i64 144390, i64 9, i64 52042, i64 17, i64 25139, i64 4, i64 24980, i64 6, i64 23994}
!78 = !{!51, !48, i64 132}
!79 = !{!"branch_weights", i32 755483, i32 126919, i32 0}
!80 = distinct !{!80, !68}
!81 = !{!"branch_weights", i32 332794, i32 422689}
!82 = !{!"branch_weights", i32 332793, i32 1}
!83 = !{!"VP", i32 1, i64 124418, i64 9, i64 73995, i64 4, i64 25371, i64 2, i64 15253, i64 6, i64 4074}
!84 = !{!"branch_weights", i32 332793, i32 0}
!85 = !{!"branch_weights", i32 186712, i32 23085}
!86 = !{!"branch_weights", i32 23085, i32 0}
!87 = !{!51, !44, i64 96}
!88 = !{!"VP", i32 0, i64 8630, i64 -6187005779595572250, i64 8630}
!89 = !{!51, !44, i64 104}
!90 = !{!"branch_weights", i32 0, i32 23085}
!91 = !{!"VP", i32 0, i64 8630, i64 440498917606777698, i64 8630}
!92 = !{!"VP", i32 1, i64 8630, i64 17, i64 5456, i64 9, i64 1881, i64 16, i64 308, i64 8, i64 202}
!93 = !{!51, !48, i64 116}
!94 = !{!"branch_weights", i32 23084, i32 1}
!95 = !{!"branch_weights", i32 12288, i32 4096, i32 0}
!96 = !{!"branch_weights", i32 10000, i32 2288}
!97 = !{!"branch_weights", i32 2288, i32 1216}
!98 = distinct !{!98, !67, !68}
!99 = !{!"branch_weights", i32 16383, i32 1}
!100 = distinct !{!100, !67, !68}
!101 = !{!"branch_weights", i32 0, i32 1}
!102 = !{!"function_entry_count", i64 581559}
!103 = !{!"VP", i32 1, i64 241823, i64 9, i64 87159, i64 17, i64 42102, i64 4, i64 41836, i64 6, i64 40186}
!104 = !{!"VP", i32 1, i64 208374, i64 9, i64 123927, i64 4, i64 42492, i64 2, i64 25545, i64 6, i64 6823}
!105 = !{!"VP", i32 0, i64 14454, i64 -6187005779595572250, i64 14454}
!106 = !{!"VP", i32 0, i64 14454, i64 440498917606777698, i64 14454}
!107 = !{!"VP", i32 1, i64 14454, i64 17, i64 9139, i64 9, i64 3150, i64 16, i64 516, i64 8, i64 338}
!108 = !{!51, !44, i64 120}
!109 = distinct !{!109, !67, !68}
!110 = distinct !{!110, !67, !68}
!111 = distinct !{!111, !67, !68}
!112 = distinct !{!112, !67, !68}
