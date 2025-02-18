; ModuleID = 'simulator/nedyylib.cc'
source_filename = "simulator/nedyylib.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LineColumn = type { i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%class.NEDParser = type { i8, i8, ptr, ptr, ptr }
%struct.my_yyltype = type { i32, i32, i32, i32, i32, ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }
%class.PropertyElement = type { %class.NEDElement, i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.NEDElement = type { ptr, i64, %"class.std::__cxx11::basic_string", %struct.NEDSourceRegion, ptr, ptr, ptr, ptr, ptr, ptr }
%class.LiteralElement = type { %class.NEDElement, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.CommentElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ParamElement = type <{ %class.NEDElement, i32, i8, [3 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%class.GateElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", i32, i8, %"class.std::__cxx11::basic_string" }
%class.ExpressionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.OperatorElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.FunctionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.IdentElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$__clang_call_terminate = comdat any

@pos = dso_local local_unnamed_addr global %struct.LineColumn zeroinitializer, align 4
@prevpos = dso_local local_unnamed_addr global %struct.LineColumn zeroinitializer, align 4
@np = external local_unnamed_addr global ptr, align 8
@_ZZ8toStringlE3buf = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_ZZ15currentLocationvE3buf = internal global [20480 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"sourcecode\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"isNetwork\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"banner\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"trailing\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"inner\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"src-module\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"dest-module\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"src-module-index\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"dest-module-index\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"src-gate\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"dest-gate\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"src-gate-index\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"dest-gate-index\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"src-gate-plusplus\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"dest-gate-plusplus\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"src-gate-subg\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"dest-gate-subg\00", align 1
@_ZTISt9exception = external constant ptr
@.str.22 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"unary minus not accepted before '%.100s'\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z16slashifyFilenameB5cxx11PKc(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !127 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = load ptr, ptr @np, align 8, !tbaa !128
  %5 = getelementptr inbounds %class.NEDParser, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %6, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !135
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %7, %2 ], [ %13, %12 ]
  %10 = load i8, ptr %9, align 1, !tbaa !139
  switch i8 %10, label %12 [
    i8 0, label %14
    i8 92, label %11
  ], !prof !140

11:                                               ; preds = %8
  store i8 47, ptr %9, align 1, !tbaa !139
  br label %12

12:                                               ; preds = %8, %11
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  br label %8, !llvm.loop !141

14:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !144
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #19
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store i64 %9, ptr %4, align 8, !tbaa !145
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !146

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !135
  %13 = load i64, ptr %4, align 8, !tbaa !145
  store i64 %13, ptr %5, align 8, !tbaa !139
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !135
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !147

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !139
  store i8 %17, ptr %15, align 1, !tbaa !139
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !148
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !145
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !149
  %22 = load ptr, ptr %0, align 8, !tbaa !135
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !139
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_Z8toString10my_yyltype(ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %0) local_unnamed_addr #0 !prof !150 {
  %2 = load ptr, ptr @np, align 8, !tbaa !128
  %3 = getelementptr inbounds %class.NEDParser, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %0)
  ret ptr %5
}

declare noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local noundef nonnull ptr @_Z8toStringl(i64 noundef %0) local_unnamed_addr #4 !prof !152 {
  %2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ8toStringlE3buf, ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %0) #18
  ret ptr @_ZZ8toStringlE3buf
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12removeSpacesB5cxx1110my_yyltype(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !153 {
  %3 = load ptr, ptr @np, align 8, !tbaa !128
  %4 = getelementptr inbounds %class.NEDParser, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  %6 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %5, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1)
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %7, ptr %0, align 8, !tbaa !144
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %8, align 8, !tbaa !149
  store i8 0, ptr %7, align 8, !tbaa !139
  %9 = load i8, ptr %6, align 1, !tbaa !139
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %52, label %11, !prof !154

11:                                               ; preds = %2
  %12 = tail call ptr @__ctype_b_loc() #20
  br label %13

13:                                               ; preds = %11, %48
  %14 = phi i8 [ %9, %11 ], [ %50, %48 ]
  %15 = phi ptr [ %6, %11 ], [ %49, %48 ]
  %16 = load ptr, ptr %12, align 8, !tbaa !128
  %17 = zext i8 %14 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !155
  %20 = and i16 %19, 8192
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %48, !prof !157

22:                                               ; preds = %13
  %23 = load i64, ptr %8, align 8, !tbaa !149
  %24 = add i64 %23, 1
  %25 = load ptr, ptr %0, align 8, !tbaa !135
  %26 = icmp eq ptr %25, %7
  br i1 %26, label %27, label %29, !prof !158

27:                                               ; preds = %22
  %28 = icmp ult i64 %23, 16
  tail call void @llvm.assume(i1 %28)
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i64, ptr %7, align 8
  %31 = select i1 %26, i64 15, i64 %30, !prof !158
  %32 = icmp ugt i64 %24, %31
  br i1 %32, label %33, label %34, !prof !159

33:                                               ; preds = %29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %23, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %34 unwind label %39

34:                                               ; preds = %33, %29
  %35 = load ptr, ptr %0, align 8, !tbaa !135
  %36 = getelementptr inbounds i8, ptr %35, i64 %23
  store i8 %14, ptr %36, align 1, !tbaa !139
  store i64 %24, ptr %8, align 8, !tbaa !149
  %37 = load ptr, ptr %0, align 8, !tbaa !135
  %38 = getelementptr inbounds i8, ptr %37, i64 %24
  store i8 0, ptr %38, align 1, !tbaa !139
  br label %48

39:                                               ; preds = %33
  %40 = landingpad { ptr, i32 }
          cleanup
  %41 = load ptr, ptr %0, align 8, !tbaa !135
  %42 = icmp eq ptr %41, %7
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, ptr %8, align 8, !tbaa !149
  %45 = icmp ult i64 %44, 16
  tail call void @llvm.assume(i1 %45)
  br label %47

46:                                               ; preds = %39
  tail call void @_ZdlPv(ptr noundef %41) #21
  br label %47

47:                                               ; preds = %43, %46
  resume { ptr, i32 } %40

48:                                               ; preds = %34, %13
  %49 = getelementptr inbounds i8, ptr %15, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !139
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %13, !prof !160, !llvm.loop !161

52:                                               ; preds = %48, %2
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local noundef nonnull ptr @_Z15currentLocationv() local_unnamed_addr #4 !prof !152 {
  %1 = load ptr, ptr @np, align 8, !tbaa !128
  %2 = getelementptr inbounds %class.NEDParser, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = load i32, ptr @pos, align 4, !tbaa !162
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ15currentLocationvE3buf, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %3, i32 noundef %4) #18
  ret ptr @_ZZ15currentLocationvE3buf
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !165 {
  %3 = tail call noundef ptr @_ZN17NEDElementFactory11getInstanceEv()
  %4 = load ptr, ptr %3, align 8, !tbaa !166
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %0), !prof !168
  %8 = load ptr, ptr @np, align 8, !tbaa !128
  %9 = getelementptr inbounds %class.NEDParser, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = load i32, ptr @pos, align 4, !tbaa !162
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ15currentLocationvE3buf, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %10, i32 noundef %11) #18
  %13 = load ptr, ptr %7, align 8, !tbaa !166
  %14 = getelementptr inbounds ptr, ptr %13, i64 9
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull @_ZZ15currentLocationvE3buf), !prof !169
  %16 = icmp eq ptr %1, null
  br i1 %16, label %21, label %17, !prof !170

17:                                               ; preds = %2
  %18 = load ptr, ptr %1, align 8, !tbaa !166
  %19 = getelementptr inbounds ptr, ptr %18, i64 27
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %7), !prof !171
  br label %21

21:                                               ; preds = %17, %2
  ret ptr %7
}

declare noundef ptr @_ZN17NEDElementFactory11getInstanceEv() local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z25getOrCreateElementWithTagiP10NEDElement(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !152 {
  %3 = load ptr, ptr %1, align 8, !tbaa !166
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef %0, ptr noundef nonnull %1)
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ %6, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %0, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 !prof !172 {
  %3 = alloca %struct.NEDSourceRegion, align 4
  %4 = load ptr, ptr @np, align 8, !tbaa !128
  %5 = getelementptr inbounds %class.NEDParser, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  call void @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %6, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %7 = getelementptr inbounds %struct.NEDSourceRegion, ptr %3, i64 0, i32 3
  %8 = getelementptr inbounds %struct.NEDSourceRegion, ptr %3, i64 0, i32 2
  %9 = getelementptr inbounds %struct.NEDSourceRegion, ptr %3, i64 0, i32 1
  %10 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %11 = load i32, ptr %10, align 4, !tbaa !173
  store i32 %11, ptr %3, align 4, !tbaa !175
  %12 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !177
  store i32 %13, ptr %9, align 4, !tbaa !178
  %14 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !179
  store i32 %15, ptr %8, align 4, !tbaa !180
  %16 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !181
  store i32 %17, ptr %7, align 4, !tbaa !182
  %18 = load ptr, ptr %0, align 8, !tbaa !166
  %19 = getelementptr inbounds ptr, ptr %18, i64 11
  %20 = load ptr, ptr %19, align 8
  call void %20(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(16) %3), !prof !183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret void
}

declare void @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z8storePosP10NEDElement10my_yyltypeS1_(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %2) local_unnamed_addr #6 !prof !152 {
  %4 = alloca %struct.NEDSourceRegion, align 4
  %5 = alloca %struct.my_yyltype, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false)
  %6 = getelementptr inbounds i8, ptr %1, i64 20
  %7 = getelementptr inbounds i8, ptr %5, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false)
  %8 = getelementptr inbounds %struct.my_yyltype, ptr %2, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !179
  %10 = getelementptr inbounds %struct.my_yyltype, ptr %2, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !181
  %12 = getelementptr inbounds i8, ptr %5, i64 12
  store i32 %9, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %5, i64 16
  store i32 %11, ptr %13, align 8
  %14 = load ptr, ptr @np, align 8, !tbaa !128
  %15 = getelementptr inbounds %class.NEDParser, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !151
  call void @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %17 = getelementptr inbounds %struct.NEDSourceRegion, ptr %4, i64 0, i32 3
  %18 = getelementptr inbounds %struct.NEDSourceRegion, ptr %4, i64 0, i32 2
  %19 = getelementptr inbounds %struct.NEDSourceRegion, ptr %4, i64 0, i32 1
  %20 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %21 = load i32, ptr %20, align 4, !tbaa !173
  store i32 %21, ptr %4, align 4, !tbaa !175
  %22 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !177
  store i32 %23, ptr %19, align 4, !tbaa !178
  %24 = load i32, ptr %12, align 4, !tbaa !179
  store i32 %24, ptr %18, align 4, !tbaa !180
  %25 = load i32, ptr %13, align 8, !tbaa !181
  store i32 %25, ptr %17, align 4, !tbaa !182
  %26 = load ptr, ptr %0, align 8, !tbaa !166
  %27 = getelementptr inbounds ptr, ptr %26, i64 11
  %28 = load ptr, ptr %27, align 8
  call void %28(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !184 {
  %3 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 17, ptr noundef %0)
  %4 = getelementptr inbounds %class.PropertyElement, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %class.PropertyElement, ptr %3, i64 0, i32 2, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !149
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %8 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %6, ptr noundef %1, i64 noundef %7)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !185 {
  %3 = load ptr, ptr %0, align 8, !tbaa !166
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 14), !prof !186
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %53, !prof !187

8:                                                ; preds = %2
  %9 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 14, ptr noundef nonnull %0)
  %10 = load ptr, ptr %9, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 26
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(112) %9), !prof !188
  %14 = icmp eq ptr %13, null
  br i1 %14, label %53, label %15, !prof !187

15:                                               ; preds = %8, %40
  %16 = phi ptr [ %51, %40 ], [ %13, %8 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !166
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(112) %16)
  %21 = icmp eq i32 %20, 19
  br i1 %21, label %40, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %16, align 8, !tbaa !166
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef i32 %25(ptr noundef nonnull align 8 dereferenceable(112) %16)
  %27 = icmp eq i32 %26, 21
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %16, align 8, !tbaa !166
  %30 = getelementptr inbounds ptr, ptr %29, i64 5
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef i32 %31(ptr noundef nonnull align 8 dereferenceable(112) %16)
  %33 = icmp eq i32 %32, 22
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %16, align 8, !tbaa !166
  %36 = getelementptr inbounds ptr, ptr %35, i64 5
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef i32 %37(ptr noundef nonnull align 8 dereferenceable(112) %16)
  %39 = icmp eq i32 %38, 24
  br i1 %39, label %40, label %53

40:                                               ; preds = %28, %22, %15, %34
  %41 = load ptr, ptr %0, align 8, !tbaa !166
  %42 = getelementptr inbounds ptr, ptr %41, i64 29
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %9)
  %45 = load ptr, ptr %0, align 8, !tbaa !166
  %46 = getelementptr inbounds ptr, ptr %45, i64 28
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %16, ptr noundef nonnull %9)
  %48 = load ptr, ptr %9, align 8, !tbaa !166
  %49 = getelementptr inbounds ptr, ptr %48, i64 26
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(112) %9), !prof !188
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %15, !prof !187, !llvm.loop !189

53:                                               ; preds = %40, %34, %8, %2
  %54 = phi ptr [ %6, %2 ], [ %9, %8 ], [ %9, %34 ], [ %9, %40 ]
  %55 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 17, ptr noundef nonnull %54)
  %56 = getelementptr inbounds %class.PropertyElement, ptr %55, i64 0, i32 2
  %57 = getelementptr inbounds %class.PropertyElement, ptr %55, i64 0, i32 2, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !149
  %59 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %60 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %56, i64 noundef 0, i64 noundef %58, ptr noundef %1, i64 noundef %59)
  ret ptr %55
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z15storeSourceCodeP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #6 !prof !152 {
  %3 = alloca %struct.my_yyltype, align 8
  %4 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 17, ptr noundef %0)
  %5 = getelementptr inbounds %class.PropertyElement, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %class.PropertyElement, ptr %4, i64 0, i32 2, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !149
  %8 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %7, ptr noundef nonnull @.str.2, i64 noundef 10)
  %9 = getelementptr inbounds %class.PropertyElement, ptr %4, i64 0, i32 1
  store i8 1, ptr %9, align 8, !tbaa !190
  %10 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef nonnull %4)
  %11 = getelementptr inbounds %struct.my_yyltype, ptr %3, i64 0, i32 1
  store i32 1, ptr %11, align 4, !tbaa !173, !alias.scope !193
  %12 = getelementptr inbounds %struct.my_yyltype, ptr %3, i64 0, i32 2
  store i32 0, ptr %12, align 8, !tbaa !177, !alias.scope !193
  %13 = getelementptr inbounds %struct.my_yyltype, ptr %3, i64 0, i32 3
  store i32 1, ptr %13, align 4, !tbaa !179, !alias.scope !193
  %14 = getelementptr inbounds %struct.my_yyltype, ptr %3, i64 0, i32 4
  store i32 0, ptr %14, align 8, !tbaa !181, !alias.scope !193
  %15 = tail call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 2, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %3)
  %16 = load ptr, ptr %10, align 8, !tbaa !166
  %17 = getelementptr inbounds ptr, ptr %16, i64 27
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(112) %10, ptr noundef %15)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %2) local_unnamed_addr #6 !prof !198 {
  %4 = tail call noundef ptr @_ZN17NEDElementFactory11getInstanceEv()
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 34), !prof !199
  %9 = load ptr, ptr @np, align 8, !tbaa !128
  %10 = getelementptr inbounds %class.NEDParser, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  %12 = load i32, ptr @pos, align 4, !tbaa !162
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ15currentLocationvE3buf, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %11, i32 noundef %12) #18
  %14 = load ptr, ptr %8, align 8, !tbaa !166
  %15 = getelementptr inbounds ptr, ptr %14, i64 9
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull @_ZZ15currentLocationvE3buf), !prof !200
  tail call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %8, i32 noundef %0)
  %17 = load ptr, ptr @np, align 8, !tbaa !128
  %18 = getelementptr inbounds %class.NEDParser, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !151
  %20 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %19, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1)
  %21 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 4
  %22 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 4, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !149
  %24 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #18
  %25 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef %23, ptr noundef %20, i64 noundef %24)
  %26 = load ptr, ptr @np, align 8, !tbaa !128
  %27 = getelementptr inbounds %class.NEDParser, ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !151
  %29 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %28, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %2)
  %30 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 3
  %31 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 3, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !149
  %33 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #18
  %34 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef 0, i64 noundef %32, ptr noundef %29, i64 noundef %33)
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z24storeComponentSourceCodeP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #6 !prof !152 {
  %3 = alloca %struct.my_yyltype, align 8
  %4 = tail call noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef %0, ptr noundef nonnull @.str.2)
  %5 = getelementptr inbounds %class.PropertyElement, ptr %4, i64 0, i32 1
  store i8 1, ptr %5, align 8, !tbaa !190
  %6 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef nonnull %4)
  %7 = getelementptr inbounds %struct.my_yyltype, ptr %3, i64 0, i32 1
  store i32 1, ptr %7, align 4, !tbaa !173, !alias.scope !201
  %8 = getelementptr inbounds %struct.my_yyltype, ptr %3, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !177, !alias.scope !201
  %9 = getelementptr inbounds %struct.my_yyltype, ptr %3, i64 0, i32 3
  store i32 1, ptr %9, align 4, !tbaa !179, !alias.scope !201
  %10 = getelementptr inbounds %struct.my_yyltype, ptr %3, i64 0, i32 4
  store i32 0, ptr %10, align 8, !tbaa !181, !alias.scope !201
  %11 = tail call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 2, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %3)
  %12 = load ptr, ptr %6, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 27
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %11)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z20setIsNetworkPropertyP10NEDElement(ptr noundef %0) local_unnamed_addr #6 !prof !185 {
  %2 = tail call noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef %0, ptr noundef nonnull @.str.3)
  %3 = getelementptr inbounds %class.PropertyElement, ptr %2, i64 0, i32 1
  store i8 1, ptr %3, align 8, !tbaa !190
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !206 {
  %5 = load i8, ptr %2, align 1, !tbaa !139
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %41, label %7, !prof !207

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %3) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %41, label %10, !prof !208

10:                                               ; preds = %7
  %11 = tail call noundef ptr @_ZN17NEDElementFactory11getInstanceEv()
  %12 = load ptr, ptr %11, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 3), !prof !209
  %16 = load ptr, ptr @np, align 8, !tbaa !128
  %17 = getelementptr inbounds %class.NEDParser, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !132
  %19 = load i32, ptr @pos, align 4, !tbaa !162
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ15currentLocationvE3buf, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %18, i32 noundef %19) #18
  %21 = load ptr, ptr %15, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 9
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(112) %15, ptr noundef nonnull @_ZZ15currentLocationvE3buf), !prof !210
  %24 = getelementptr inbounds %class.CommentElement, ptr %15, i64 0, i32 1
  %25 = getelementptr inbounds %class.CommentElement, ptr %15, i64 0, i32 1, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !149
  %27 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %28 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef 0, i64 noundef %26, ptr noundef %1, i64 noundef %27)
  %29 = getelementptr inbounds %class.CommentElement, ptr %15, i64 0, i32 2
  %30 = getelementptr inbounds %class.CommentElement, ptr %15, i64 0, i32 2, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !149
  %32 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %33 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef 0, i64 noundef %31, ptr noundef nonnull %2, i64 noundef %32)
  %34 = load ptr, ptr %0, align 8, !tbaa !166
  %35 = getelementptr inbounds ptr, ptr %34, i64 23
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(112) %0), !prof !211
  %38 = load ptr, ptr %0, align 8, !tbaa !166
  %39 = getelementptr inbounds ptr, ptr %38, i64 28
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %37, ptr noundef nonnull %15), !prof !212
  br label %41

41:                                               ; preds = %4, %7, %10
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z16storeFileCommentP10NEDElement(ptr noundef %0) local_unnamed_addr #6 !prof !127 {
  %2 = load ptr, ptr @np, align 8, !tbaa !128
  %3 = getelementptr inbounds %class.NEDParser, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = tail call noundef ptr @_ZN13NEDFileBuffer14getFileCommentEv(ptr noundef nonnull align 8 dereferenceable(52) %4)
  tail call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %5, ptr noundef nonnull @.str.5)
  ret void
}

declare noundef ptr @_ZN13NEDFileBuffer14getFileCommentEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z18storeBannerCommentP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #6 !prof !152 {
  %3 = load ptr, ptr @np, align 8, !tbaa !128
  %4 = getelementptr inbounds %class.NEDParser, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  %6 = tail call noundef ptr @_ZN13NEDFileBuffer16getBannerCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %5, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1)
  tail call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %6, ptr noundef nonnull @.str.5)
  ret void
}

declare noundef ptr @_ZN13NEDFileBuffer16getBannerCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z17storeRightCommentP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #6 !prof !152 {
  %3 = load ptr, ptr @np, align 8, !tbaa !128
  %4 = getelementptr inbounds %class.NEDParser, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  %6 = tail call noundef ptr @_ZN13NEDFileBuffer18getTrailingCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %5, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1)
  tail call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %6, ptr noundef nonnull @.str.7)
  ret void
}

declare noundef ptr @_ZN13NEDFileBuffer18getTrailingCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #6 !prof !213 {
  %3 = load ptr, ptr @np, align 8, !tbaa !128
  %4 = getelementptr inbounds %class.NEDParser, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  %6 = tail call noundef ptr @_ZN13NEDFileBuffer18getTrailingCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %5, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1)
  tail call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %6, ptr noundef nonnull @.str.7)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %0, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 !prof !214 {
  %3 = alloca %struct.my_yyltype, align 8
  %4 = load ptr, ptr @np, align 8, !tbaa !128
  %5 = getelementptr inbounds %class.NEDParser, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  call void @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %6, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %7 = load ptr, ptr @np, align 8, !tbaa !128
  %8 = getelementptr inbounds %class.NEDParser, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !151
  %10 = call noundef ptr @_ZN13NEDFileBuffer16getBannerCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %9, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1)
  call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %10, ptr noundef nonnull @.str.5)
  %11 = load ptr, ptr @np, align 8, !tbaa !128
  %12 = getelementptr inbounds %class.NEDParser, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !151
  %14 = call noundef ptr @_ZN13NEDFileBuffer18getTrailingCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %13, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1)
  call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %14, ptr noundef nonnull @.str.7)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %15 = load ptr, ptr @np, align 8, !tbaa !128
  %16 = getelementptr inbounds %class.NEDParser, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !151
  %18 = call noundef ptr @_ZN13NEDFileBuffer19getNextInnerCommentER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %17, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20, !prof !187

20:                                               ; preds = %2, %20
  %21 = phi ptr [ %25, %20 ], [ %18, %2 ]
  call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %21, ptr noundef nonnull @.str.5)
  %22 = load ptr, ptr @np, align 8, !tbaa !128
  %23 = getelementptr inbounds %class.NEDParser, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !151
  %25 = call noundef ptr @_ZN13NEDFileBuffer19getNextInnerCommentER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %24, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !prof !187

27:                                               ; preds = %20, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z18storeInnerCommentsP10NEDElement10my_yyltype(ptr noundef %0, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #6 !prof !152 {
  %3 = load ptr, ptr @np, align 8, !tbaa !128
  %4 = getelementptr inbounds %class.NEDParser, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  %6 = call noundef ptr @_ZN13NEDFileBuffer19getNextInnerCommentER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %2 ]
  call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %9, ptr noundef nonnull @.str.5)
  %10 = load ptr, ptr @np, align 8, !tbaa !128
  %11 = getelementptr inbounds %class.NEDParser, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = call noundef ptr @_ZN13NEDFileBuffer19getNextInnerCommentER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %12, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8

15:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %2) local_unnamed_addr #6 !prof !215 {
  %4 = alloca %struct.my_yyltype, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !216
  %5 = getelementptr inbounds %struct.my_yyltype, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !179
  %7 = getelementptr inbounds %struct.my_yyltype, ptr %4, i64 0, i32 3
  store i32 %6, ptr %7, align 4, !tbaa !179
  %8 = getelementptr inbounds %struct.my_yyltype, ptr %2, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !181
  %10 = getelementptr inbounds %struct.my_yyltype, ptr %4, i64 0, i32 4
  store i32 %9, ptr %10, align 8, !tbaa !181
  %11 = load ptr, ptr @np, align 8, !tbaa !128
  %12 = getelementptr inbounds %class.NEDParser, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !151
  call void @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %13, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %14 = load ptr, ptr @np, align 8, !tbaa !128
  %15 = getelementptr inbounds %class.NEDParser, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !151
  %17 = call noundef ptr @_ZN13NEDFileBuffer16getBannerCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %16, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %4)
  call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %17, ptr noundef nonnull @.str.5)
  %18 = load ptr, ptr @np, align 8, !tbaa !128
  %19 = getelementptr inbounds %class.NEDParser, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !151
  %21 = call noundef ptr @_ZN13NEDFileBuffer18getTrailingCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %20, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %4)
  call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %21, ptr noundef nonnull @.str.7)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  ret void
}

declare noundef ptr @_ZN13NEDFileBuffer19getNextInnerCommentER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #6 !prof !218 {
  %3 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 15, ptr noundef %0)
  %4 = load ptr, ptr @np, align 8, !tbaa !128
  %5 = getelementptr inbounds %class.NEDParser, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  %7 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %6, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1)
  %8 = getelementptr inbounds %class.ParamElement, ptr %3, i64 0, i32 4
  %9 = getelementptr inbounds %class.ParamElement, ptr %3, i64 0, i32 4, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !149
  %11 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #18
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef %10, ptr noundef %7, i64 noundef %11)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z12addParameterP10NEDElementPKc10my_yyltype(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone byval(%struct.my_yyltype) align 8 %2) local_unnamed_addr #6 !prof !152 {
  %4 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 15, ptr noundef %0)
  %5 = getelementptr inbounds %class.ParamElement, ptr %4, i64 0, i32 4
  %6 = getelementptr inbounds %class.ParamElement, ptr %4, i64 0, i32 4, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !149
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %7, ptr noundef %1, i64 noundef %8)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #6 !prof !219 {
  %3 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 20, ptr noundef %0)
  %4 = load ptr, ptr @np, align 8, !tbaa !128
  %5 = getelementptr inbounds %class.NEDParser, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  %7 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %6, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1)
  %8 = getelementptr inbounds %class.GateElement, ptr %3, i64 0, i32 1
  %9 = getelementptr inbounds %class.GateElement, ptr %3, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !149
  %11 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #18
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef %10, ptr noundef %7, i64 noundef %11)
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z12trimBrackets10my_yyltype(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.my_yyltype) align 8 %0, ptr nocapture noundef byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #8 !prof !152 {
  %3 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !177
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !177
  %6 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !181
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 8, !tbaa !181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !216
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z17trimAngleBrackets10my_yyltype(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.my_yyltype) align 8 %0, ptr nocapture noundef byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #8 !prof !152 {
  %3 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !177
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !177
  %6 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !181
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 8, !tbaa !181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !216
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z10trimQuotes10my_yyltype(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.my_yyltype) align 8 %0, ptr nocapture noundef byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #8 !prof !152 {
  %3 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !177
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !177
  %6 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !181
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 8, !tbaa !181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !216
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z16trimDoubleBraces10my_yyltype(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.my_yyltype) align 8 %0, ptr nocapture noundef byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #8 !prof !152 {
  %3 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !177
  %5 = add nsw i32 %4, 2
  store i32 %5, ptr %3, align 8, !tbaa !177
  %6 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !181
  %8 = add nsw i32 %7, -2
  store i32 %8, ptr %6, align 8, !tbaa !181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !216
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %2, ptr noundef %3) local_unnamed_addr #6 !prof !213 {
  %5 = alloca %struct.my_yyltype, align 8
  %6 = load i64, ptr %2, align 8
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa.struct !220
  %9 = getelementptr inbounds i8, ptr %2, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa.struct !221
  %11 = getelementptr inbounds i8, ptr %2, i64 16
  %12 = load i32, ptr %11, align 8, !tbaa.struct !222
  %13 = getelementptr inbounds i8, ptr %2, i64 20
  %14 = getelementptr inbounds i8, ptr %5, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(12) %13, i64 12, i1 false)
  %15 = add nsw i32 %8, 1
  %16 = add nsw i32 %12, -1
  store i64 %6, ptr %5, align 8
  %17 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 %15, ptr %17, align 8, !tbaa.struct !220
  %18 = getelementptr inbounds i8, ptr %5, i64 12
  store i32 %10, ptr %18, align 4, !tbaa.struct !221
  %19 = getelementptr inbounds i8, ptr %5, i64 16
  store i32 %16, ptr %19, align 8, !tbaa.struct !222
  tail call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %2, ptr noundef %3) local_unnamed_addr #6 !prof !223 {
  %5 = load ptr, ptr @np, align 8, !tbaa !128
  %6 = load i8, ptr %5, align 8, !tbaa !224, !range !225, !noundef !226
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %46, label %8, !prof !227

8:                                                ; preds = %4
  %9 = getelementptr inbounds %class.ExpressionElement, ptr %3, i64 0, i32 1
  %10 = getelementptr inbounds %class.ExpressionElement, ptr %3, i64 0, i32 1, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !149
  %12 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %13 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef %11, ptr noundef %1, i64 noundef %12)
  %14 = load ptr, ptr %0, align 8, !tbaa !166
  %15 = getelementptr inbounds ptr, ptr %14, i64 23
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(112) %0), !prof !228
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !229

19:                                               ; preds = %8, %32
  %20 = phi ptr [ %36, %32 ], [ %17, %8 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(112) %20), !prof !230
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %32, label %26, !prof !231

26:                                               ; preds = %19
  %27 = load ptr, ptr %20, align 8, !tbaa !166
  %28 = getelementptr inbounds ptr, ptr %27, i64 5
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef i32 %29(ptr noundef nonnull align 8 dereferenceable(112) %20), !prof !230
  %31 = icmp eq i32 %30, 30
  br i1 %31, label %32, label %42, !prof !232

32:                                               ; preds = %19, %26
  %33 = load ptr, ptr %20, align 8, !tbaa !166
  %34 = getelementptr inbounds ptr, ptr %33, i64 25
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(112) %20), !prof !233
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !prof !234, !llvm.loop !235

38:                                               ; preds = %32, %8
  %39 = load ptr, ptr %0, align 8, !tbaa !166
  %40 = getelementptr inbounds ptr, ptr %39, i64 27
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %3), !prof !236
  br label %53

42:                                               ; preds = %26
  %43 = load ptr, ptr %0, align 8, !tbaa !166
  %44 = getelementptr inbounds ptr, ptr %43, i64 28
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %20, ptr noundef nonnull %3), !prof !237
  br label %53

46:                                               ; preds = %4
  %47 = getelementptr inbounds %class.NEDParser, ptr %5, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !151
  %49 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %48, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %2)
  %50 = load ptr, ptr %0, align 8, !tbaa !166
  %51 = getelementptr inbounds ptr, ptr %50, i64 19
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %49)
  br label %53

53:                                               ; preds = %38, %42, %46
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z12addLikeParamP10NEDElementPKc10my_yyltypeS0_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %2, ptr noundef %3) local_unnamed_addr #6 !prof !185 {
  %5 = alloca %struct.my_yyltype, align 8
  %6 = alloca %struct.my_yyltype, align 8
  %7 = load ptr, ptr @np, align 8, !tbaa !128
  %8 = load i8, ptr %7, align 8, !tbaa !224, !range !225, !noundef !226
  %9 = icmp ne i8 %8, 0
  %10 = icmp eq ptr %3, null
  %11 = and i1 %10, %9
  %12 = load i64, ptr %2, align 8
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds i8, ptr %2, i64 12
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %2, i64 16
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds i8, ptr %2, i64 20
  br i1 %11, label %20, label %33, !prof !238

20:                                               ; preds = %4
  %21 = add nsw i32 %14, 1
  %22 = add nsw i32 %18, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5)
  %23 = getelementptr inbounds %class.NEDParser, ptr %7, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !151
  store i64 %12, ptr %5, align 8
  %25 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 %21, ptr %25, align 8, !tbaa.struct !220
  %26 = getelementptr inbounds i8, ptr %5, i64 12
  store i32 %16, ptr %26, align 4, !tbaa.struct !221
  %27 = getelementptr inbounds i8, ptr %5, i64 16
  store i32 %22, ptr %27, align 8, !tbaa.struct !222
  %28 = getelementptr inbounds i8, ptr %5, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %28, ptr noundef nonnull align 4 dereferenceable(12) %19, i64 12, i1 false)
  %29 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %24, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5)
  %30 = load ptr, ptr %0, align 8, !tbaa !166
  %31 = getelementptr inbounds ptr, ptr %30, i64 19
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %29)
  br label %40

33:                                               ; preds = %4
  %34 = getelementptr inbounds i8, ptr %6, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %34, ptr noundef nonnull align 4 dereferenceable(12) %19, i64 12, i1 false)
  %35 = add nsw i32 %14, 1
  %36 = add nsw i32 %18, -1
  store i64 %12, ptr %6, align 8
  %37 = getelementptr inbounds i8, ptr %6, i64 8
  store i32 %35, ptr %37, align 8, !tbaa.struct !220
  %38 = getelementptr inbounds i8, ptr %6, i64 12
  store i32 %16, ptr %38, align 4, !tbaa.struct !221
  %39 = getelementptr inbounds i8, ptr %6, i64 16
  store i32 %36, ptr %39, align 8, !tbaa.struct !222
  tail call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %6, ptr noundef %3)
  br label %40

40:                                               ; preds = %33, %20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z14swapConnectionP10NEDElement(ptr noundef %0) local_unnamed_addr #6 !prof !239 {
  tail call void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11)
  tail call void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13)
  tail call void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15)
  tail call void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  tail call void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19)
  tail call void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21)
  tail call void @_Z22swapExpressionChildrenP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13)
  tail call void @_Z22swapExpressionChildrenP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 !prof !240 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  %6 = load ptr, ptr %0, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 17
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1), !prof !241
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  %10 = load ptr, ptr %0, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 17
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %2)
          to label %14 unwind label %33, !prof !241

14:                                               ; preds = %3
  %15 = load ptr, ptr %0, align 8, !tbaa !166
  %16 = getelementptr inbounds ptr, ptr %15, i64 19
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %13)
          to label %18 unwind label %33, !prof !242

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 8, !tbaa !135
  %20 = load ptr, ptr %0, align 8, !tbaa !166
  %21 = getelementptr inbounds ptr, ptr %20, i64 19
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %2, ptr noundef %19)
          to label %23 unwind label %33, !prof !242

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8, !tbaa !135
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %31, !prof !243

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !149
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  br label %32

31:                                               ; preds = %23
  call void @_ZdlPv(ptr noundef %24) #21
  br label %32

32:                                               ; preds = %27, %31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  ret void

33:                                               ; preds = %18, %14, %3
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = load ptr, ptr %4, align 8, !tbaa !135
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !149
  %41 = icmp ult i64 %40, 16
  call void @llvm.assume(i1 %41)
  br label %43

42:                                               ; preds = %33
  call void @_ZdlPv(ptr noundef %35) #21
  br label %43

43:                                               ; preds = %42, %38
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  resume { ptr, i32 } %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z22swapExpressionChildrenP10NEDElementPKcS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 !prof !244 {
  %4 = load ptr, ptr %0, align 8, !tbaa !166
  %5 = getelementptr inbounds ptr, ptr %4, i64 30
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 30), !prof !245
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9, !prof !246

9:                                                ; preds = %3
  %10 = getelementptr inbounds %class.ExpressionElement, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !135
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %1) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %19, !prof !247

14:                                               ; preds = %19
  %15 = getelementptr inbounds %class.ExpressionElement, ptr %24, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %1) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19, !prof !248, !llvm.loop !249

19:                                               ; preds = %9, %14
  %20 = phi ptr [ %24, %14 ], [ %7, %9 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 36
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(144) %20), !prof !250
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %14, !prof !251, !llvm.loop !249

26:                                               ; preds = %14, %19, %9, %3
  %27 = phi ptr [ %7, %3 ], [ %7, %9 ], [ %24, %19 ], [ %24, %14 ]
  %28 = phi i1 [ %8, %3 ], [ %8, %9 ], [ %25, %19 ], [ %25, %14 ]
  %29 = load ptr, ptr %0, align 8, !tbaa !166
  %30 = getelementptr inbounds ptr, ptr %29, i64 30
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 30), !prof !245
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34, !prof !252

34:                                               ; preds = %26
  %35 = getelementptr inbounds %class.ExpressionElement, ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !135
  %37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(1) %2) #22
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %44, !prof !253

39:                                               ; preds = %44
  %40 = getelementptr inbounds %class.ExpressionElement, ptr %49, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !135
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) %2) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44, !prof !254, !llvm.loop !255

44:                                               ; preds = %34, %39
  %45 = phi ptr [ %49, %39 ], [ %32, %34 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !166
  %47 = getelementptr inbounds ptr, ptr %46, i64 36
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(144) %45), !prof !256
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %39, !prof !257, !llvm.loop !255

51:                                               ; preds = %39, %44, %34, %26
  %52 = phi ptr [ %32, %26 ], [ %32, %34 ], [ %49, %44 ], [ %49, %39 ]
  %53 = phi i1 [ %33, %26 ], [ %33, %34 ], [ %50, %44 ], [ %50, %39 ]
  br i1 %28, label %60, label %54, !prof !258

54:                                               ; preds = %51
  %55 = getelementptr inbounds %class.ExpressionElement, ptr %27, i64 0, i32 1
  %56 = getelementptr inbounds %class.ExpressionElement, ptr %27, i64 0, i32 1, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !149
  %58 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %59 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %55, i64 noundef 0, i64 noundef %57, ptr noundef %2, i64 noundef %58)
  br label %60

60:                                               ; preds = %54, %51
  br i1 %53, label %67, label %61, !prof !259

61:                                               ; preds = %60
  %62 = getelementptr inbounds %class.ExpressionElement, ptr %52, i64 0, i32 1
  %63 = getelementptr inbounds %class.ExpressionElement, ptr %52, i64 0, i32 1, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !149
  %65 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %66 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %62, i64 noundef 0, i64 noundef %64, ptr noundef %1, i64 noundef %65)
  br label %67

67:                                               ; preds = %61, %60
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z16transferChildrenP10NEDElementS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !260 {
  %3 = load ptr, ptr %0, align 8, !tbaa !166
  %4 = getelementptr inbounds ptr, ptr %3, i64 23
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(112) %0), !prof !261
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8, !prof !262

8:                                                ; preds = %2, %8
  %9 = load ptr, ptr %0, align 8, !tbaa !166
  %10 = getelementptr inbounds ptr, ptr %9, i64 23
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(112) %0), !prof !263
  %13 = load ptr, ptr %0, align 8, !tbaa !166
  %14 = getelementptr inbounds ptr, ptr %13, i64 29
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %12), !prof !264
  %17 = load ptr, ptr %1, align 8, !tbaa !166
  %18 = getelementptr inbounds ptr, ptr %17, i64 27
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %16), !prof !265
  %20 = load ptr, ptr %0, align 8, !tbaa !166
  %21 = getelementptr inbounds ptr, ptr %20, i64 23
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(112) %0), !prof !261
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !prof !266, !llvm.loop !267

25:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 !prof !268 {
  %5 = tail call noundef ptr @_ZN17NEDElementFactory11getInstanceEv()
  %6 = load ptr, ptr %5, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 31), !prof !269
  %10 = load ptr, ptr @np, align 8, !tbaa !128
  %11 = getelementptr inbounds %class.NEDParser, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !132
  %13 = load i32, ptr @pos, align 4, !tbaa !162
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ15currentLocationvE3buf, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %12, i32 noundef %13) #18
  %15 = load ptr, ptr %9, align 8, !tbaa !166
  %16 = getelementptr inbounds ptr, ptr %15, i64 9
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull @_ZZ15currentLocationvE3buf), !prof !270
  %18 = getelementptr inbounds %class.OperatorElement, ptr %9, i64 0, i32 1
  %19 = getelementptr inbounds %class.OperatorElement, ptr %9, i64 0, i32 1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !149
  %21 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %22 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef %20, ptr noundef %0, i64 noundef %21)
  %23 = load ptr, ptr %9, align 8, !tbaa !166
  %24 = getelementptr inbounds ptr, ptr %23, i64 27
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef %1), !prof !271
  %26 = icmp eq ptr %2, null
  br i1 %26, label %31, label %27, !prof !272

27:                                               ; preds = %4
  %28 = load ptr, ptr %9, align 8, !tbaa !166
  %29 = getelementptr inbounds ptr, ptr %28, i64 27
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull %2), !prof !271
  br label %31

31:                                               ; preds = %27, %4
  %32 = icmp eq ptr %3, null
  br i1 %32, label %37, label %33, !prof !273

33:                                               ; preds = %31
  %34 = load ptr, ptr %9, align 8, !tbaa !166
  %35 = getelementptr inbounds ptr, ptr %34, i64 27
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull %3)
  br label %37

37:                                               ; preds = %33, %31
  ret ptr %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #6 !prof !239 {
  %12 = tail call noundef ptr @_ZN17NEDElementFactory11getInstanceEv()
  %13 = load ptr, ptr %12, align 8, !tbaa !166
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 32), !prof !274
  %17 = load ptr, ptr @np, align 8, !tbaa !128
  %18 = getelementptr inbounds %class.NEDParser, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !132
  %20 = load i32, ptr @pos, align 4, !tbaa !162
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ15currentLocationvE3buf, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %19, i32 noundef %20) #18
  %22 = load ptr, ptr %16, align 8, !tbaa !166
  %23 = getelementptr inbounds ptr, ptr %22, i64 9
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(112) %16, ptr noundef nonnull @_ZZ15currentLocationvE3buf), !prof !275
  %25 = getelementptr inbounds %class.FunctionElement, ptr %16, i64 0, i32 1
  %26 = getelementptr inbounds %class.FunctionElement, ptr %16, i64 0, i32 1, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !149
  %28 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %29 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef 0, i64 noundef %27, ptr noundef %0, i64 noundef %28)
  %30 = icmp eq ptr %1, null
  br i1 %30, label %35, label %31, !prof !276

31:                                               ; preds = %11
  %32 = load ptr, ptr %16, align 8, !tbaa !166
  %33 = getelementptr inbounds ptr, ptr %32, i64 27
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(112) %16, ptr noundef nonnull %1), !prof !277
  br label %35

35:                                               ; preds = %31, %11
  %36 = icmp eq ptr %2, null
  br i1 %36, label %41, label %37, !prof !278

37:                                               ; preds = %35
  %38 = load ptr, ptr %16, align 8, !tbaa !166
  %39 = getelementptr inbounds ptr, ptr %38, i64 27
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(112) %16, ptr noundef nonnull %2)
  br label %41

41:                                               ; preds = %37, %35
  %42 = icmp eq ptr %3, null
  br i1 %42, label %47, label %43, !prof !278

43:                                               ; preds = %41
  %44 = load ptr, ptr %16, align 8, !tbaa !166
  %45 = getelementptr inbounds ptr, ptr %44, i64 27
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(112) %16, ptr noundef nonnull %3)
  br label %47

47:                                               ; preds = %43, %41
  %48 = icmp eq ptr %4, null
  br i1 %48, label %53, label %49, !prof !278

49:                                               ; preds = %47
  %50 = load ptr, ptr %16, align 8, !tbaa !166
  %51 = getelementptr inbounds ptr, ptr %50, i64 27
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(112) %16, ptr noundef nonnull %4)
  br label %53

53:                                               ; preds = %49, %47
  %54 = icmp eq ptr %5, null
  br i1 %54, label %59, label %55, !prof !278

55:                                               ; preds = %53
  %56 = load ptr, ptr %16, align 8, !tbaa !166
  %57 = getelementptr inbounds ptr, ptr %56, i64 27
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(112) %16, ptr noundef nonnull %5)
  br label %59

59:                                               ; preds = %55, %53
  %60 = icmp eq ptr %6, null
  br i1 %60, label %65, label %61, !prof !278

61:                                               ; preds = %59
  %62 = load ptr, ptr %16, align 8, !tbaa !166
  %63 = getelementptr inbounds ptr, ptr %62, i64 27
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(112) %16, ptr noundef nonnull %6)
  br label %65

65:                                               ; preds = %61, %59
  %66 = icmp eq ptr %7, null
  br i1 %66, label %71, label %67, !prof !278

67:                                               ; preds = %65
  %68 = load ptr, ptr %16, align 8, !tbaa !166
  %69 = getelementptr inbounds ptr, ptr %68, i64 27
  %70 = load ptr, ptr %69, align 8
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(112) %16, ptr noundef nonnull %7)
  br label %71

71:                                               ; preds = %67, %65
  %72 = icmp eq ptr %8, null
  br i1 %72, label %77, label %73, !prof !278

73:                                               ; preds = %71
  %74 = load ptr, ptr %16, align 8, !tbaa !166
  %75 = getelementptr inbounds ptr, ptr %74, i64 27
  %76 = load ptr, ptr %75, align 8
  tail call void %76(ptr noundef nonnull align 8 dereferenceable(112) %16, ptr noundef nonnull %8)
  br label %77

77:                                               ; preds = %73, %71
  %78 = icmp eq ptr %9, null
  br i1 %78, label %83, label %79, !prof !278

79:                                               ; preds = %77
  %80 = load ptr, ptr %16, align 8, !tbaa !166
  %81 = getelementptr inbounds ptr, ptr %80, i64 27
  %82 = load ptr, ptr %81, align 8
  tail call void %82(ptr noundef nonnull align 8 dereferenceable(112) %16, ptr noundef nonnull %9)
  br label %83

83:                                               ; preds = %79, %77
  %84 = icmp eq ptr %10, null
  br i1 %84, label %89, label %85, !prof !278

85:                                               ; preds = %83
  %86 = load ptr, ptr %16, align 8, !tbaa !166
  %87 = getelementptr inbounds ptr, ptr %86, i64 27
  %88 = load ptr, ptr %87, align 8
  tail call void %88(ptr noundef nonnull align 8 dereferenceable(112) %16, ptr noundef nonnull %10)
  br label %89

89:                                               ; preds = %85, %83
  ret ptr %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z16createExpressionP10NEDElement(ptr noundef %0) local_unnamed_addr #6 !prof !223 {
  %2 = tail call noundef ptr @_ZN17NEDElementFactory11getInstanceEv()
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 30), !prof !279
  %7 = load ptr, ptr @np, align 8, !tbaa !128
  %8 = getelementptr inbounds %class.NEDParser, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = load i32, ptr @pos, align 4, !tbaa !162
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ15currentLocationvE3buf, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %9, i32 noundef %10) #18
  %12 = load ptr, ptr %6, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 9
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull @_ZZ15currentLocationvE3buf), !prof !280
  %15 = load ptr, ptr %6, align 8, !tbaa !166
  %16 = getelementptr inbounds ptr, ptr %15, i64 27
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %0), !prof !281
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z11createIdent10my_yyltype(ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %0) local_unnamed_addr #6 !prof !282 {
  %2 = tail call noundef ptr @_ZN17NEDElementFactory11getInstanceEv()
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 33), !prof !283
  %7 = load ptr, ptr @np, align 8, !tbaa !128
  %8 = getelementptr inbounds %class.NEDParser, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = load i32, ptr @pos, align 4, !tbaa !162
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ15currentLocationvE3buf, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %9, i32 noundef %10) #18
  %12 = load ptr, ptr %6, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 9
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull @_ZZ15currentLocationvE3buf), !prof !284
  %15 = load ptr, ptr @np, align 8, !tbaa !128
  %16 = getelementptr inbounds %class.NEDParser, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !151
  %18 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %17, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %0)
  %19 = getelementptr inbounds %class.IdentElement, ptr %6, i64 0, i32 2
  %20 = getelementptr inbounds %class.IdentElement, ptr %6, i64 0, i32 2, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !149
  %22 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #18
  %23 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef %21, ptr noundef %18, i64 noundef %22)
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z11createIdent10my_yyltypeS_P10NEDElement(ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1, ptr noundef %2) local_unnamed_addr #6 !prof !185 {
  %4 = tail call noundef ptr @_ZN17NEDElementFactory11getInstanceEv()
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 33), !prof !285
  %9 = load ptr, ptr @np, align 8, !tbaa !128
  %10 = getelementptr inbounds %class.NEDParser, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  %12 = load i32, ptr @pos, align 4, !tbaa !162
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ15currentLocationvE3buf, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %11, i32 noundef %12) #18
  %14 = load ptr, ptr %8, align 8, !tbaa !166
  %15 = getelementptr inbounds ptr, ptr %14, i64 9
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull @_ZZ15currentLocationvE3buf), !prof !286
  %17 = load ptr, ptr @np, align 8, !tbaa !128
  %18 = getelementptr inbounds %class.NEDParser, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !151
  %20 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %19, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %0)
  %21 = getelementptr inbounds %class.IdentElement, ptr %8, i64 0, i32 2
  %22 = getelementptr inbounds %class.IdentElement, ptr %8, i64 0, i32 2, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !149
  %24 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #18
  %25 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef %23, ptr noundef %20, i64 noundef %24)
  %26 = load ptr, ptr @np, align 8, !tbaa !128
  %27 = getelementptr inbounds %class.NEDParser, ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !151
  %29 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %28, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1)
  %30 = getelementptr inbounds %class.IdentElement, ptr %8, i64 0, i32 1
  %31 = getelementptr inbounds %class.IdentElement, ptr %8, i64 0, i32 1, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !149
  %33 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #18
  %34 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef 0, i64 noundef %32, ptr noundef %29, i64 noundef %33)
  %35 = icmp eq ptr %2, null
  br i1 %35, label %40, label %36, !prof !187

36:                                               ; preds = %3
  %37 = load ptr, ptr %8, align 8, !tbaa !166
  %38 = getelementptr inbounds ptr, ptr %37, i64 27
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull %2)
  br label %40

40:                                               ; preds = %36, %3
  ret ptr %8
}

declare void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z13createLiteraliPKcS0_(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 !prof !152 {
  %4 = tail call noundef ptr @_ZN17NEDElementFactory11getInstanceEv()
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 34)
  %9 = load ptr, ptr @np, align 8, !tbaa !128
  %10 = getelementptr inbounds %class.NEDParser, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  %12 = load i32, ptr @pos, align 4, !tbaa !162
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ15currentLocationvE3buf, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %11, i32 noundef %12) #18
  %14 = load ptr, ptr %8, align 8, !tbaa !166
  %15 = getelementptr inbounds ptr, ptr %14, i64 9
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull @_ZZ15currentLocationvE3buf)
  tail call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %8, i32 noundef %0)
  %17 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 4
  %18 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 4, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !149
  %20 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %21 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %19, ptr noundef %1, i64 noundef %20)
  %22 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 3
  %23 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 3, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !149
  %25 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %26 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef %24, ptr noundef %2, i64 noundef %25)
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z19createStringLiteral10my_yyltype(ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 !prof !287 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = tail call noundef ptr @_ZN17NEDElementFactory11getInstanceEv()
  %4 = load ptr, ptr %3, align 8, !tbaa !166
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 34), !prof !288
  %8 = load ptr, ptr @np, align 8, !tbaa !128
  %9 = getelementptr inbounds %class.NEDParser, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = load i32, ptr @pos, align 4, !tbaa !162
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ15currentLocationvE3buf, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %10, i32 noundef %11) #18
  %13 = load ptr, ptr %7, align 8, !tbaa !166
  %14 = getelementptr inbounds ptr, ptr %13, i64 9
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull @_ZZ15currentLocationvE3buf), !prof !289
  tail call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %7, i32 noundef 2)
  %16 = load ptr, ptr @np, align 8, !tbaa !128
  %17 = getelementptr inbounds %class.NEDParser, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !151
  %19 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %18, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %0)
  %20 = getelementptr inbounds %class.LiteralElement, ptr %7, i64 0, i32 3
  %21 = getelementptr inbounds %class.LiteralElement, ptr %7, i64 0, i32 3, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !149
  %23 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #18
  %24 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef %22, ptr noundef %19, i64 noundef %23)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %19)
          to label %25 unwind label %42, !prof !290

25:                                               ; preds = %1
  %26 = load ptr, ptr %2, align 8, !tbaa !135
  %27 = getelementptr inbounds %class.LiteralElement, ptr %7, i64 0, i32 4
  %28 = getelementptr inbounds %class.LiteralElement, ptr %7, i64 0, i32 4, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !149
  %30 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #18
  %31 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 noundef 0, i64 noundef %29, ptr noundef %26, i64 noundef %30)
          to label %32 unwind label %44, !prof !290

32:                                               ; preds = %25
  %33 = load ptr, ptr %2, align 8, !tbaa !135
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %36, label %40, !prof !291

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !149
  %39 = icmp ult i64 %38, 16
  call void @llvm.assume(i1 %39)
  br label %41

40:                                               ; preds = %32
  call void @_ZdlPv(ptr noundef %33) #21
  br label %41

41:                                               ; preds = %36, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  br label %69

42:                                               ; preds = %1
  %43 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %54

44:                                               ; preds = %25
  %45 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %46 = load ptr, ptr %2, align 8, !tbaa !135
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !149
  %52 = icmp ult i64 %51, 16
  call void @llvm.assume(i1 %52)
  br label %54

53:                                               ; preds = %44
  call void @_ZdlPv(ptr noundef %46) #21
  br label %54

54:                                               ; preds = %53, %49, %42
  %55 = phi { ptr, i32 } [ %43, %42 ], [ %45, %49 ], [ %45, %53 ]
  %56 = extractvalue { ptr, i32 } %55, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  %57 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #18
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = extractvalue { ptr, i32 } %55, 0
  %61 = call ptr @__cxa_begin_catch(ptr %60) #18
  %62 = load ptr, ptr @np, align 8, !tbaa !128
  %63 = load ptr, ptr %61, align 8, !tbaa !166
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %61) #18
  %67 = load i32, ptr @pos, align 4, !tbaa !162
  invoke void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef %66, i32 noundef %67)
          to label %68 unwind label %70

68:                                               ; preds = %59
  call void @__cxa_end_catch()
  br label %69

69:                                               ; preds = %68, %41
  ret ptr %7

70:                                               ; preds = %59
  %71 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %72 unwind label %74

72:                                               ; preds = %70, %54
  %73 = phi { ptr, i32 } [ %55, %54 ], [ %71, %70 ]
  resume { ptr, i32 } %73

74:                                               ; preds = %70
  %75 = landingpad { ptr, i32 }
          catch ptr null
  %76 = extractvalue { ptr, i32 } %75, 0
  call void @__clang_call_terminate(ptr %76) #23
  unreachable
}

declare void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #9

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat !prof !152 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z21createQuantityLiteral10my_yyltype(ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 !prof !292 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca [32 x i8], align 16
  %4 = tail call noundef ptr @_ZN17NEDElementFactory11getInstanceEv()
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 34), !prof !293
  %9 = load ptr, ptr @np, align 8, !tbaa !128
  %10 = getelementptr inbounds %class.NEDParser, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  %12 = load i32, ptr @pos, align 4, !tbaa !162
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ15currentLocationvE3buf, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %11, i32 noundef %12) #18
  %14 = load ptr, ptr %8, align 8, !tbaa !166
  %15 = getelementptr inbounds ptr, ptr %14, i64 9
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull @_ZZ15currentLocationvE3buf), !prof !294
  tail call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %8, i32 noundef 0)
  %17 = load ptr, ptr @np, align 8, !tbaa !128
  %18 = getelementptr inbounds %class.NEDParser, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !151
  %20 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %19, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %0)
  %21 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 3
  %22 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 3, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !149
  %24 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #18
  %25 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef %23, ptr noundef %20, i64 noundef %24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  store ptr %26, ptr %2, align 8, !tbaa !144
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  store i64 0, ptr %27, align 8, !tbaa !149
  store i8 0, ptr %26, align 8, !tbaa !139
  %28 = invoke noundef double @_ZN14UnitConversion13parseQuantityEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %44 unwind label %29, !prof !295

29:                                               ; preds = %1
  %30 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %31 = extractvalue { ptr, i32 } %30, 1
  %32 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #18
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %29
  %35 = extractvalue { ptr, i32 } %30, 0
  %36 = call ptr @__cxa_begin_catch(ptr %35) #18
  %37 = load ptr, ptr @np, align 8, !tbaa !128
  %38 = load ptr, ptr %36, align 8, !tbaa !166
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %36) #18
  %42 = load i32, ptr @pos, align 4, !tbaa !162
  invoke void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef %41, i32 noundef %42)
          to label %43 unwind label %62

43:                                               ; preds = %34
  invoke void @__cxa_end_catch()
          to label %44 unwind label %64

44:                                               ; preds = %43, %1
  %45 = phi double [ %28, %1 ], [ 0.000000e+00, %43 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.22, double noundef %45) #18
  %47 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 4
  %48 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 4, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !149
  %50 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #18
  %51 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %47, i64 noundef 0, i64 noundef %49, ptr noundef nonnull %3, i64 noundef %50)
          to label %52 unwind label %66, !prof !295

52:                                               ; preds = %44
  %53 = load i64, ptr %27, align 8, !tbaa !149
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %68, label %55, !prof !296

55:                                               ; preds = %52
  %56 = load ptr, ptr %2, align 8, !tbaa !135
  %57 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 2
  %58 = getelementptr inbounds %class.LiteralElement, ptr %8, i64 0, i32 2, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !149
  %60 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %56) #18
  %61 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %57, i64 noundef 0, i64 noundef %59, ptr noundef %56, i64 noundef %60)
          to label %68 unwind label %66, !prof !295

62:                                               ; preds = %34
  %63 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %76 unwind label %85

64:                                               ; preds = %43
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %76

66:                                               ; preds = %55, %44
  %67 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %76

68:                                               ; preds = %55, %52
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  %69 = load ptr, ptr %2, align 8, !tbaa !135
  %70 = icmp eq ptr %69, %26
  br i1 %70, label %71, label %74, !prof !295

71:                                               ; preds = %68
  %72 = load i64, ptr %27, align 8, !tbaa !149
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  br label %75

74:                                               ; preds = %68
  call void @_ZdlPv(ptr noundef %69) #21
  br label %75

75:                                               ; preds = %71, %74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  ret ptr %8

76:                                               ; preds = %64, %62, %66, %29
  %77 = phi { ptr, i32 } [ %67, %66 ], [ %30, %29 ], [ %65, %64 ], [ %63, %62 ]
  %78 = load ptr, ptr %2, align 8, !tbaa !135
  %79 = icmp eq ptr %78, %26
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i64, ptr %27, align 8, !tbaa !149
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %84

83:                                               ; preds = %76
  call void @_ZdlPv(ptr noundef %78) #21
  br label %84

84:                                               ; preds = %80, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  resume { ptr, i32 } %77

85:                                               ; preds = %62
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  call void @__clang_call_terminate(ptr %87) #23
  unreachable
}

declare noundef double @_ZN14UnitConversion13parseQuantityEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z10unaryMinusP10NEDElement(ptr noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 !prof !152 {
  %2 = alloca [140 x i8], align 16
  %3 = load ptr, ptr %0, align 8, !tbaa !166
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %7 = icmp eq i32 %6, 34
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.23, ptr noundef nonnull %0, ptr noundef null, ptr noundef null)
  br label %37

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !297
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %2) #18
  %15 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  %17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %16) #18
  %18 = load ptr, ptr @np, align 8, !tbaa !128
  %19 = load i32, ptr @pos, align 4, !tbaa !162
  call void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull %2, i32 noundef %19)
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %2) #18
  br label %37

20:                                               ; preds = %10
  %21 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !135
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #22
  %24 = add i64 %23, 2
  %25 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %24) #24
  store i8 45, ptr %25, align 1, !tbaa !139
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %27 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %22) #18
  %28 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !149
  %30 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #18
  %31 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef %29, ptr noundef nonnull %25, i64 noundef %30)
  %32 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 3
  %33 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 3, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !149
  %35 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #18
  %36 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %32, i64 noundef 0, i64 noundef %34, ptr noundef nonnull %25, i64 noundef %35)
  tail call void @_ZdaPv(ptr noundef %25) #21
  br label %37

37:                                               ; preds = %14, %20, %8
  %38 = phi ptr [ %9, %8 ], [ %0, %20 ], [ %0, %14 ]
  ret ptr %38
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(none) }
attributes #10 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!126}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!35 = !{ptr @_Z16slashifyFilenameB5cxx11PKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 14}
!36 = !{ptr @_Z8toString10my_yyltype, ptr @_ZN13NEDFileBuffer3getE10my_yyltype, i64 324}
!37 = !{ptr @_Z12removeSpacesB5cxx1110my_yyltype, ptr @_ZN13NEDFileBuffer3getE10my_yyltype, i64 77}
!38 = !{ptr @_Z12removeSpacesB5cxx1110my_yyltype, ptr @__ctype_b_loc, i64 77}
!39 = !{ptr @_Z20createElementWithTagiP10NEDElement, ptr @_ZN17NEDElementFactory11getInstanceEv, i64 484}
!40 = !{ptr @_Z20createElementWithTagiP10NEDElement, ptr @sprintf, i64 484}
!41 = !{ptr @_Z8storePosP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype, i64 527}
!42 = !{ptr @_Z11addPropertyP10NEDElementPKc, ptr @_Z20createElementWithTagiP10NEDElement, i64 55}
!43 = !{ptr @_Z11addPropertyP10NEDElementPKc, ptr @strlen, i64 55}
!44 = !{ptr @_Z11addPropertyP10NEDElementPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 55}
!45 = !{ptr @_Z20addComponentPropertyP10NEDElementPKc, ptr @_Z20createElementWithTagiP10NEDElement, i64 2}
!46 = !{ptr @_Z20addComponentPropertyP10NEDElementPKc, ptr @strlen, i64 1}
!47 = !{ptr @_Z20addComponentPropertyP10NEDElementPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 1}
!48 = !{ptr @_Z13createLiterali10my_yyltypeS_, ptr @_ZN17NEDElementFactory11getInstanceEv, i64 86}
!49 = !{ptr @_Z13createLiterali10my_yyltypeS_, ptr @sprintf, i64 86}
!50 = !{ptr @_Z13createLiterali10my_yyltypeS_, ptr @_ZN14LiteralElement7setTypeEi, i64 86}
!51 = !{ptr @_Z13createLiterali10my_yyltypeS_, ptr @_ZN13NEDFileBuffer3getE10my_yyltype, i64 172}
!52 = !{ptr @_Z13createLiterali10my_yyltypeS_, ptr @strlen, i64 172}
!53 = !{ptr @_Z13createLiterali10my_yyltypeS_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 172}
!54 = !{ptr @_Z20setIsNetworkPropertyP10NEDElement, ptr @_Z20addComponentPropertyP10NEDElementPKc, i64 1}
!55 = !{ptr @_Z10addCommentP10NEDElementPKcS2_S2_, ptr @strcmp, i64 474}
!56 = !{ptr @_Z10addCommentP10NEDElementPKcS2_S2_, ptr @_ZN17NEDElementFactory11getInstanceEv, i64 210}
!57 = !{ptr @_Z10addCommentP10NEDElementPKcS2_S2_, ptr @sprintf, i64 210}
!58 = !{ptr @_Z10addCommentP10NEDElementPKcS2_S2_, ptr @strlen, i64 420}
!59 = !{ptr @_Z10addCommentP10NEDElementPKcS2_S2_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 420}
!60 = !{ptr @_Z16storeFileCommentP10NEDElement, ptr @_ZN13NEDFileBuffer14getFileCommentEv, i64 14}
!61 = !{ptr @_Z16storeFileCommentP10NEDElement, ptr @_Z10addCommentP10NEDElementPKcS2_S2_, i64 14}
!62 = !{ptr @_Z20storeTrailingCommentP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer18getTrailingCommentE10my_yyltype, i64 64}
!63 = !{ptr @_Z20storeTrailingCommentP10NEDElement10my_yyltype, ptr @_Z10addCommentP10NEDElementPKcS2_S2_, i64 64}
!64 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype, i64 298}
!65 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer16getBannerCommentE10my_yyltype, i64 298}
!66 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype, ptr @_Z10addCommentP10NEDElementPKcS2_S2_, i64 596}
!67 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer18getTrailingCommentE10my_yyltype, i64 298}
!68 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer19getNextInnerCommentER10my_yyltype, i64 298}
!69 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_, ptr @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype, i64 98}
!70 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_, ptr @_ZN13NEDFileBuffer16getBannerCommentE10my_yyltype, i64 98}
!71 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_, ptr @_Z10addCommentP10NEDElementPKcS2_S2_, i64 196}
!72 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_, ptr @_ZN13NEDFileBuffer18getTrailingCommentE10my_yyltype, i64 98}
!73 = !{ptr @_Z12addParameterP10NEDElement10my_yyltype, ptr @_Z20createElementWithTagiP10NEDElement, i64 67}
!74 = !{ptr @_Z12addParameterP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer3getE10my_yyltype, i64 67}
!75 = !{ptr @_Z12addParameterP10NEDElement10my_yyltype, ptr @strlen, i64 67}
!76 = !{ptr @_Z12addParameterP10NEDElement10my_yyltype, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 67}
!77 = !{ptr @_Z7addGateP10NEDElement10my_yyltype, ptr @_Z20createElementWithTagiP10NEDElement, i64 36}
!78 = !{ptr @_Z7addGateP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer3getE10my_yyltype, i64 36}
!79 = !{ptr @_Z7addGateP10NEDElement10my_yyltype, ptr @strlen, i64 36}
!80 = !{ptr @_Z7addGateP10NEDElement10my_yyltype, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 36}
!81 = !{ptr @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_, ptr @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_, i64 64}
!82 = !{ptr @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_, ptr @strlen, i64 154}
!83 = !{ptr @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 154}
!84 = !{ptr @_Z12addLikeParamP10NEDElementPKc10my_yyltypeS0_, ptr @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_, i64 1}
!85 = !{ptr @_Z14swapConnectionP10NEDElement, ptr @_Z14swapAttributesP10NEDElementPKcS2_, i64 24}
!86 = !{ptr @_Z14swapConnectionP10NEDElement, ptr @_Z22swapExpressionChildrenP10NEDElementPKcS2_, i64 8}
!87 = !{ptr @_Z14swapAttributesP10NEDElementPKcS2_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 24}
!88 = !{ptr @_Z22swapExpressionChildrenP10NEDElementPKcS2_, ptr @strcmp, i64 20}
!89 = !{ptr @_Z22swapExpressionChildrenP10NEDElementPKcS2_, ptr @strlen, i64 4}
!90 = !{ptr @_Z22swapExpressionChildrenP10NEDElementPKcS2_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 4}
!91 = !{ptr @_Z14createOperatorPKcP10NEDElementS2_S2_, ptr @_ZN17NEDElementFactory11getInstanceEv, i64 37}
!92 = !{ptr @_Z14createOperatorPKcP10NEDElementS2_S2_, ptr @sprintf, i64 37}
!93 = !{ptr @_Z14createOperatorPKcP10NEDElementS2_S2_, ptr @strlen, i64 37}
!94 = !{ptr @_Z14createOperatorPKcP10NEDElementS2_S2_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 37}
!95 = !{ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_, ptr @_ZN17NEDElementFactory11getInstanceEv, i64 4}
!96 = !{ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_, ptr @sprintf, i64 4}
!97 = !{ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_, ptr @strlen, i64 4}
!98 = !{ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 4}
!99 = !{ptr @_Z16createExpressionP10NEDElement, ptr @_ZN17NEDElementFactory11getInstanceEv, i64 154}
!100 = !{ptr @_Z16createExpressionP10NEDElement, ptr @sprintf, i64 154}
!101 = !{ptr @_Z11createIdent10my_yyltype, ptr @_ZN17NEDElementFactory11getInstanceEv, i64 93}
!102 = !{ptr @_Z11createIdent10my_yyltype, ptr @sprintf, i64 93}
!103 = !{ptr @_Z11createIdent10my_yyltype, ptr @_ZN13NEDFileBuffer3getE10my_yyltype, i64 93}
!104 = !{ptr @_Z11createIdent10my_yyltype, ptr @strlen, i64 93}
!105 = !{ptr @_Z11createIdent10my_yyltype, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 93}
!106 = !{ptr @_Z11createIdent10my_yyltypeS_P10NEDElement, ptr @_ZN17NEDElementFactory11getInstanceEv, i64 1}
!107 = !{ptr @_Z11createIdent10my_yyltypeS_P10NEDElement, ptr @sprintf, i64 1}
!108 = !{ptr @_Z11createIdent10my_yyltypeS_P10NEDElement, ptr @_ZN13NEDFileBuffer3getE10my_yyltype, i64 2}
!109 = !{ptr @_Z11createIdent10my_yyltypeS_P10NEDElement, ptr @strlen, i64 2}
!110 = !{ptr @_Z11createIdent10my_yyltypeS_P10NEDElement, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 2}
!111 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_ZN17NEDElementFactory11getInstanceEv, i64 47}
!112 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @sprintf, i64 47}
!113 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_ZN14LiteralElement7setTypeEi, i64 47}
!114 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_ZN13NEDFileBuffer3getE10my_yyltype, i64 47}
!115 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @strlen, i64 94}
!116 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 94}
!117 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_Z18opp_parsequotedstrB5cxx11PKc, i64 47}
!118 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_ZdlPv, i64 3}
!119 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZN17NEDElementFactory11getInstanceEv, i64 15}
!120 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @sprintf, i64 30}
!121 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZN14LiteralElement7setTypeEi, i64 15}
!122 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZN13NEDFileBuffer3getE10my_yyltype, i64 15}
!123 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @strlen, i64 45}
!124 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 45}
!125 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZN14UnitConversion13parseQuantityEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 15}
!126 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!127 = !{!"function_entry_count", i64 14}
!128 = !{!129, !129, i64 0}
!129 = !{!"any pointer", !130, i64 0}
!130 = !{!"omnipotent char", !131, i64 0}
!131 = !{!"Simple C++ TBAA"}
!132 = !{!133, !129, i64 8}
!133 = !{!"_ZTS9NEDParser", !134, i64 0, !134, i64 1, !129, i64 8, !129, i64 16, !129, i64 24}
!134 = !{!"bool", !130, i64 0}
!135 = !{!136, !129, i64 0}
!136 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !137, i64 0, !138, i64 8, !130, i64 16}
!137 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !129, i64 0}
!138 = !{!"long", !130, i64 0}
!139 = !{!130, !130, i64 0}
!140 = !{!"branch_weights", i32 1882, i32 14, i32 0}
!141 = distinct !{!141, !142, !143}
!142 = !{!"llvm.loop.mustprogress"}
!143 = !{!"llvm.loop.unroll.disable"}
!144 = !{!137, !129, i64 0}
!145 = !{!138, !138, i64 0}
!146 = !{!"branch_weights", i32 1257662, i32 631781}
!147 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!148 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!149 = !{!136, !138, i64 8}
!150 = !{!"function_entry_count", i64 324}
!151 = !{!133, !129, i64 24}
!152 = !{!"function_entry_count", i64 0}
!153 = !{!"function_entry_count", i64 77}
!154 = !{!"branch_weights", i32 1, i32 153}
!155 = !{!156, !156, i64 0}
!156 = !{!"short", !130, i64 0}
!157 = !{!"branch_weights", i32 583, i32 0}
!158 = !{!"branch_weights", i32 158326, i32 7}
!159 = !{!"branch_weights", i32 5, i32 158328}
!160 = !{!"branch_weights", i32 153, i32 1013}
!161 = distinct !{!161, !142, !143}
!162 = !{!163, !164, i64 0}
!163 = !{!"_ZTS10LineColumn", !164, i64 0, !164, i64 4}
!164 = !{!"int", !130, i64 0}
!165 = !{!"function_entry_count", i64 484}
!166 = !{!167, !167, i64 0}
!167 = !{!"vtable pointer", !131, i64 0}
!168 = !{!"VP", i32 0, i64 484, i64 2011347013454706746, i64 484}
!169 = !{!"VP", i32 0, i64 484, i64 1954637366604571168, i64 484}
!170 = !{!"branch_weights", i32 30, i32 454}
!171 = !{!"VP", i32 0, i64 454, i64 3287972012782290276, i64 454}
!172 = !{!"function_entry_count", i64 527}
!173 = !{!174, !164, i64 4}
!174 = !{!"_ZTS10my_yyltype", !164, i64 0, !164, i64 4, !164, i64 8, !164, i64 12, !164, i64 16, !129, i64 24}
!175 = !{!176, !164, i64 0}
!176 = !{!"_ZTS15NEDSourceRegion", !164, i64 0, !164, i64 4, !164, i64 8, !164, i64 12}
!177 = !{!174, !164, i64 8}
!178 = !{!176, !164, i64 4}
!179 = !{!174, !164, i64 12}
!180 = !{!176, !164, i64 8}
!181 = !{!174, !164, i64 16}
!182 = !{!176, !164, i64 12}
!183 = !{!"VP", i32 0, i64 527, i64 -7685069100422303637, i64 527}
!184 = !{!"function_entry_count", i64 55}
!185 = !{!"function_entry_count", i64 1}
!186 = !{!"VP", i32 0, i64 1, i64 9115687764015882679, i64 1}
!187 = !{!"branch_weights", i32 1, i32 0}
!188 = !{!"VP", i32 0, i64 1, i64 -2334580465773585699, i64 1}
!189 = distinct !{!189, !142, !143}
!190 = !{!191, !134, i64 112}
!191 = !{!"_ZTS15PropertyElement", !192, i64 0, !134, i64 112, !136, i64 120, !136, i64 152}
!192 = !{!"_ZTS10NEDElement", !138, i64 8, !136, i64 16, !176, i64 48, !129, i64 64, !129, i64 72, !129, i64 80, !129, i64 88, !129, i64 96, !129, i64 104}
!193 = !{!194, !196}
!194 = distinct !{!194, !195, !"_Z11makeYYLTYPEiiii: argument 0"}
!195 = distinct !{!195, !"_Z11makeYYLTYPEiiii"}
!196 = distinct !{!196, !197, !"_Z16makeEmptyYYLTYPEv: argument 0"}
!197 = distinct !{!197, !"_Z16makeEmptyYYLTYPEv"}
!198 = !{!"function_entry_count", i64 86}
!199 = !{!"VP", i32 0, i64 86, i64 2011347013454706746, i64 86}
!200 = !{!"VP", i32 0, i64 86, i64 1954637366604571168, i64 86}
!201 = !{!202, !204}
!202 = distinct !{!202, !203, !"_Z11makeYYLTYPEiiii: argument 0"}
!203 = distinct !{!203, !"_Z11makeYYLTYPEiiii"}
!204 = distinct !{!204, !205, !"_Z16makeEmptyYYLTYPEv: argument 0"}
!205 = distinct !{!205, !"_Z16makeEmptyYYLTYPEv"}
!206 = !{!"function_entry_count", i64 870}
!207 = !{!"branch_weights", i32 396, i32 474}
!208 = !{!"branch_weights", i32 264, i32 210}
!209 = !{!"VP", i32 0, i64 210, i64 2011347013454706746, i64 210}
!210 = !{!"VP", i32 0, i64 210, i64 1954637366604571168, i64 210}
!211 = !{!"VP", i32 0, i64 210, i64 -4535849660517922832, i64 210}
!212 = !{!"VP", i32 0, i64 210, i64 -4469477902070543258, i64 210}
!213 = !{!"function_entry_count", i64 64}
!214 = !{!"function_entry_count", i64 298}
!215 = !{!"function_entry_count", i64 98}
!216 = !{i64 0, i64 4, !217, i64 4, i64 4, !217, i64 8, i64 4, !217, i64 12, i64 4, !217, i64 16, i64 4, !217, i64 24, i64 8, !128}
!217 = !{!164, !164, i64 0}
!218 = !{!"function_entry_count", i64 67}
!219 = !{!"function_entry_count", i64 36}
!220 = !{i64 0, i64 4, !217, i64 4, i64 4, !217, i64 8, i64 4, !217, i64 16, i64 8, !128}
!221 = !{i64 0, i64 4, !217, i64 4, i64 4, !217, i64 12, i64 8, !128}
!222 = !{i64 0, i64 4, !217, i64 8, i64 8, !128}
!223 = !{!"function_entry_count", i64 154}
!224 = !{!133, !134, i64 0}
!225 = !{i8 0, i8 2}
!226 = !{}
!227 = !{!"branch_weights", i32 0, i32 154}
!228 = !{!"VP", i32 0, i64 154, i64 -4535849660517922832, i64 154}
!229 = !{!"branch_weights", i32 49, i32 69}
!230 = !{!"VP", i32 0, i64 69, i64 1108170452220516087, i64 33, i64 342872053562192794, i64 22, i64 -6475760860097448025, i64 14}
!231 = !{!"branch_weights", i32 0, i32 69}
!232 = !{!"branch_weights", i32 33, i32 36}
!233 = !{!"VP", i32 0, i64 33, i64 -7396538328733376965, i64 33}
!234 = !{!"branch_weights", i32 69, i32 0}
!235 = distinct !{!235, !142, !143}
!236 = !{!"VP", i32 0, i64 118, i64 3287972012782290276, i64 118}
!237 = !{!"VP", i32 0, i64 36, i64 -4469477902070543258, i64 36}
!238 = !{!"branch_weights", i32 0, i32 1}
!239 = !{!"function_entry_count", i64 4}
!240 = !{!"function_entry_count", i64 24}
!241 = !{!"VP", i32 0, i64 24, i64 -2067486727076475928, i64 24}
!242 = !{!"VP", i32 0, i64 24, i64 3742151263388834837, i64 24}
!243 = !{!"branch_weights", i32 24, i32 0}
!244 = !{!"function_entry_count", i64 8}
!245 = !{!"VP", i32 0, i64 8, i64 9115687764015882679, i64 8}
!246 = !{!"branch_weights", i32 1, i32 223}
!247 = !{!"branch_weights", i32 1, i32 127}
!248 = !{!"branch_weights", i32 127, i32 641}
!249 = distinct !{!249, !142, !143}
!250 = !{!"VP", i32 0, i64 6, i64 8806208321859304724, i64 6}
!251 = !{!"branch_weights", i32 223, i32 1}
!252 = !{!"branch_weights", i32 1, i32 159}
!253 = !{!"branch_weights", i32 1, i32 191}
!254 = !{!"branch_weights", i32 191, i32 129}
!255 = distinct !{!255, !142, !143}
!256 = !{!"VP", i32 0, i64 5, i64 8806208321859304724, i64 5}
!257 = !{!"branch_weights", i32 159, i32 97}
!258 = !{!"branch_weights", i32 7, i32 1}
!259 = !{!"branch_weights", i32 5, i32 3}
!260 = !{!"function_entry_count", i64 23}
!261 = !{!"VP", i32 0, i64 49, i64 -4535849660517922832, i64 49}
!262 = !{!"branch_weights", i32 1, i32 183}
!263 = !{!"VP", i32 0, i64 26, i64 -4535849660517922832, i64 26}
!264 = !{!"VP", i32 0, i64 26, i64 9120105135232245482, i64 26}
!265 = !{!"VP", i32 0, i64 26, i64 3287972012782290276, i64 26}
!266 = !{!"branch_weights", i32 183, i32 25}
!267 = distinct !{!267, !142, !143}
!268 = !{!"function_entry_count", i64 37}
!269 = !{!"VP", i32 0, i64 37, i64 2011347013454706746, i64 37}
!270 = !{!"VP", i32 0, i64 37, i64 1954637366604571168, i64 37}
!271 = !{!"VP", i32 0, i64 37, i64 3287972012782290276, i64 37}
!272 = !{!"branch_weights", i32 0, i32 37}
!273 = !{!"branch_weights", i32 37, i32 0}
!274 = !{!"VP", i32 0, i64 4, i64 2011347013454706746, i64 4}
!275 = !{!"VP", i32 0, i64 4, i64 1954637366604571168, i64 4}
!276 = !{!"branch_weights", i32 0, i32 4}
!277 = !{!"VP", i32 0, i64 4, i64 3287972012782290276, i64 4}
!278 = !{!"branch_weights", i32 4, i32 0}
!279 = !{!"VP", i32 0, i64 154, i64 2011347013454706746, i64 154}
!280 = !{!"VP", i32 0, i64 154, i64 1954637366604571168, i64 154}
!281 = !{!"VP", i32 0, i64 154, i64 3287972012782290276, i64 154}
!282 = !{!"function_entry_count", i64 93}
!283 = !{!"VP", i32 0, i64 93, i64 2011347013454706746, i64 93}
!284 = !{!"VP", i32 0, i64 93, i64 1954637366604571168, i64 93}
!285 = !{!"VP", i32 0, i64 1, i64 2011347013454706746, i64 1}
!286 = !{!"VP", i32 0, i64 1, i64 1954637366604571168, i64 1}
!287 = !{!"function_entry_count", i64 47}
!288 = !{!"VP", i32 0, i64 47, i64 2011347013454706746, i64 47}
!289 = !{!"VP", i32 0, i64 47, i64 1954637366604571168, i64 47}
!290 = !{!"branch_weights", i32 47, i32 0}
!291 = !{!"branch_weights", i32 44, i32 3}
!292 = !{!"function_entry_count", i64 15}
!293 = !{!"VP", i32 0, i64 15, i64 2011347013454706746, i64 15}
!294 = !{!"VP", i32 0, i64 15, i64 1954637366604571168, i64 15}
!295 = !{!"branch_weights", i32 15, i32 0}
!296 = !{!"branch_weights", i32 0, i32 15}
!297 = !{!298, !164, i64 112}
!298 = !{!"_ZTS14LiteralElement", !192, i64 0, !164, i64 112, !136, i64 120, !136, i64 152, !136, i64 184}
