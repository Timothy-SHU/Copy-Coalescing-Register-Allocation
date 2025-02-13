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
%struct._Guard = type { ptr }
%struct.my_yyltype = type { i32, i32, i32, i32, i32, ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }
%class.PropertyElement = type { %class.NEDElement, i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.NEDElement = type { ptr, i64, %"class.std::__cxx11::basic_string", %struct.NEDSourceRegion, ptr, ptr, ptr, ptr, ptr, ptr }
%class.CommentElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ParamElement = type <{ %class.NEDElement, i32, i8, [3 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%class.GateElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", i32, i8, %"class.std::__cxx11::basic_string" }
%class.ExpressionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.OperatorElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.FunctionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.IdentElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.LiteralElement = type { %class.NEDElement, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }

$_ZN9NEDParser11getFileNameEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZN9NEDParser9getSourceEv = comdat any

$_Z11opp_isspaceh = comdat any

$_ZN15NEDSourceRegionC2Ev = comdat any

$_ZN15PropertyElement7setNameEPKc = comdat any

$_ZN15PropertyElement13setIsImplicitEb = comdat any

$_Z16makeEmptyYYLTYPEv = comdat any

$_Z11makeYYLTYPEiiii = comdat any

$_ZN14CommentElement8setLocidEPKc = comdat any

$_ZN14CommentElement10setContentEPKc = comdat any

$_ZN12ParamElement7setNameEPKc = comdat any

$_ZN11GateElement7setNameEPKc = comdat any

$_ZN9NEDParser23getParseExpressionsFlagEv = comdat any

$_ZN17ExpressionElement9setTargetEPKc = comdat any

$_ZNK17ExpressionElement9getTargetEv = comdat any

$_ZN15OperatorElement7setNameEPKc = comdat any

$_ZN15FunctionElement7setNameEPKc = comdat any

$_ZN12IdentElement7setNameEPKc = comdat any

$_ZN12IdentElement9setModuleEPKc = comdat any

$_ZN14LiteralElement8setValueEPKc = comdat any

$_ZN14LiteralElement7setTextEPKc = comdat any

$_ZN14LiteralElement7setUnitEPKc = comdat any

$_ZNK14LiteralElement7getTypeEv = comdat any

$_ZNK14LiteralElement8getValueEv = comdat any

@pos = dso_local local_unnamed_addr global %struct.LineColumn zeroinitializer, align 4
@prevpos = dso_local local_unnamed_addr global %struct.LineColumn zeroinitializer, align 4
@np = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZZ8toStringlE3buf = internal global [32 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_ZZ15currentLocationvE3buf = internal global [20480 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"sourcecode\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"isNetwork\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"banner\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"trailing\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"inner\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"src-module\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"dest-module\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"src-module-index\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"dest-module-index\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"src-gate\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"dest-gate\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"src-gate-index\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"dest-gate-index\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"src-gate-plusplus\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"dest-gate-plusplus\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"src-gate-subg\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"dest-gate-subg\00", align 1
@_ZTISt9exception = external constant ptr
@.str.23 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"unary minus not accepted before '%.100s'\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z16slashifyFilenameB5cxx11PKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !180 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = load ptr, ptr @np, align 8, !tbaa !181
  %5 = tail call noundef ptr @_ZN9NEDParser11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
          to label %6 unwind label %11

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  %7 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  br label %8

8:                                                ; preds = %14, %6
  %9 = phi ptr [ %7, %6 ], [ %15, %14 ]
  %10 = load i8, ptr %9, align 1, !tbaa !185
  switch i8 %10, label %14 [
    i8 0, label %16
    i8 92, label %13
  ], !prof !186

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %8
  store i8 47, ptr %9, align 1, !tbaa !185
  br label %14

14:                                               ; preds = %8, %13
  %15 = getelementptr inbounds i8, ptr %9, i64 1
  br label %8, !llvm.loop !187

16:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9NEDParser11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !189 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #20
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #17
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #17
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  resume { ptr, i32 } %17
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !193 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !194 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #17
  store i64 %6, ptr %4, align 8, !tbaa !195
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !197

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #17
  %10 = load i64, ptr %4, align 8, !tbaa !195
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #17
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #17
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #19
  store ptr null, ptr %5, align 8, !tbaa !198
  %15 = load i64, ptr %4, align 8, !tbaa !195
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #17
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !194 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !181
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #17
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !194 {
  store ptr %1, ptr %0, align 8, !tbaa !198
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !194 {
  %2 = load ptr, ptr %0, align 8, !tbaa !198
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !200

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !194 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !194 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z8toString10my_yyltype(ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %0) local_unnamed_addr #0 !prof !201 {
  %2 = load ptr, ptr @np, align 8, !tbaa !181
  %3 = tail call noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %4 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %3, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %0) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !202 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !203
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @_Z8toStringl(i64 noundef %0) local_unnamed_addr #8 !prof !204 {
  %2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ8toStringlE3buf, ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %0) #19
  ret ptr @_ZZ8toStringlE3buf
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z12removeSpacesB5cxx1110my_yyltype(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !205 {
  %3 = load ptr, ptr @np, align 8, !tbaa !181
  %4 = tail call noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  %5 = tail call noundef ptr @_ZN13NEDFileBuffer3getE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) #17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %6 = load i8, ptr %5, align 1, !tbaa !185
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8, !prof !206

8:                                                ; preds = %2, %17
  %9 = phi i8 [ %19, %17 ], [ %6, %2 ]
  %10 = phi ptr [ %18, %17 ], [ %5, %2 ]
  %11 = tail call noundef zeroext i1 @_Z11opp_isspaceh(i8 noundef zeroext %9) #17
  br i1 %11, label %17, label %12, !prof !207

12:                                               ; preds = %8
  %13 = load i8, ptr %10, align 1, !tbaa !185
  %14 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %13) #17
          to label %17 unwind label %15

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  resume { ptr, i32 } %16

17:                                               ; preds = %8, %12
  %18 = getelementptr inbounds i8, ptr %10, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !185
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %8, !prof !208, !llvm.loop !209

21:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z11opp_isspaceh(i8 noundef zeroext %0) local_unnamed_addr #1 comdat !prof !210 {
  %2 = zext i8 %0 to i32
  %3 = tail call i32 @isspace(i32 noundef %2) #22
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @_Z15currentLocationv() local_unnamed_addr #1 !prof !211 {
  %1 = load ptr, ptr @np, align 8, !tbaa !181
  %2 = tail call noundef ptr @_ZN9NEDParser11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %3 = load i32, ptr @pos, align 4, !tbaa !212
  %4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_ZZ15currentLocationvE3buf, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %2, i32 noundef %3) #19
  ret ptr @_ZZ15currentLocationvE3buf
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !211 {
  %3 = tail call noundef ptr @_ZN17NEDElementFactory11getInstanceEv() #17
  %4 = load ptr, ptr %3, align 8, !tbaa !215
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %0) #17
  %8 = tail call noundef ptr @_Z15currentLocationv() #17
  %9 = load ptr, ptr %7, align 8, !tbaa !215
  %10 = getelementptr inbounds ptr, ptr %9, i64 9
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull @_ZZ15currentLocationvE3buf) #17
  %12 = icmp eq ptr %1, null
  br i1 %12, label %17, label %13, !prof !217

13:                                               ; preds = %2
  %14 = load ptr, ptr %1, align 8, !tbaa !215
  %15 = getelementptr inbounds ptr, ptr %14, i64 27
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %7) #17
  br label %17

17:                                               ; preds = %13, %2
  ret ptr %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN17NEDElementFactory11getInstanceEv() local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z25getOrCreateElementWithTagiP10NEDElement(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !204 {
  %3 = load ptr, ptr %1, align 8, !tbaa !215
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %0) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef %0, ptr noundef nonnull %1) #17
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ %6, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %0, ptr noundef byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 !prof !218 {
  %3 = alloca %struct.NEDSourceRegion, align 16
  %4 = load ptr, ptr @np, align 8, !tbaa !181
  %5 = tail call noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %5, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @_ZN15NEDSourceRegionC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %3) #17
  %6 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 1
  %7 = load <4 x i32>, ptr %6, align 4, !tbaa !219
  store <4 x i32> %7, ptr %3, align 16, !tbaa !219
  %8 = load ptr, ptr %0, align 8, !tbaa !215
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15NEDSourceRegionC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 !prof !220 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z8storePosP10NEDElement10my_yyltypeS1_(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %2) local_unnamed_addr #0 !prof !204 {
  %4 = alloca %struct.my_yyltype, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false)
  %5 = getelementptr inbounds i8, ptr %1, i64 20
  %6 = getelementptr inbounds i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  %7 = getelementptr inbounds %struct.my_yyltype, ptr %2, i64 0, i32 3
  %8 = getelementptr inbounds i8, ptr %4, i64 12
  %9 = load <2 x i32>, ptr %7, align 4, !tbaa !219
  store <2 x i32> %9, ptr %8, align 4
  tail call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %0, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !221 {
  %3 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 17, ptr noundef %0) #17
  tail call void @_ZN15PropertyElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef %1) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN15PropertyElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !222 {
  %3 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !223 {
  %3 = load ptr, ptr %0, align 8, !tbaa !215
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 14) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %53, !prof !224

8:                                                ; preds = %2
  %9 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 14, ptr noundef nonnull %0) #17
  %10 = load ptr, ptr %9, align 8, !tbaa !215
  %11 = getelementptr inbounds ptr, ptr %10, i64 26
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(112) %9) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %53, label %15, !prof !225

15:                                               ; preds = %8, %40
  %16 = phi ptr [ %51, %40 ], [ %13, %8 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !215
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(112) %16) #17
  %21 = icmp eq i32 %20, 19
  br i1 %21, label %40, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %16, align 8, !tbaa !215
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef i32 %25(ptr noundef nonnull align 8 dereferenceable(112) %16) #17
  %27 = icmp eq i32 %26, 21
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %16, align 8, !tbaa !215
  %30 = getelementptr inbounds ptr, ptr %29, i64 5
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef i32 %31(ptr noundef nonnull align 8 dereferenceable(112) %16) #17
  %33 = icmp eq i32 %32, 22
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %16, align 8, !tbaa !215
  %36 = getelementptr inbounds ptr, ptr %35, i64 5
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef i32 %37(ptr noundef nonnull align 8 dereferenceable(112) %16) #17
  %39 = icmp eq i32 %38, 24
  br i1 %39, label %40, label %53, !prof !226

40:                                               ; preds = %28, %22, %15, %34
  %41 = load ptr, ptr %0, align 8, !tbaa !215
  %42 = getelementptr inbounds ptr, ptr %41, i64 29
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %9) #17
  %45 = load ptr, ptr %0, align 8, !tbaa !215
  %46 = getelementptr inbounds ptr, ptr %45, i64 28
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %16, ptr noundef nonnull %9) #17
  %48 = load ptr, ptr %9, align 8, !tbaa !215
  %49 = getelementptr inbounds ptr, ptr %48, i64 26
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(112) %9) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %15, !prof !227, !llvm.loop !228

53:                                               ; preds = %40, %34, %8, %2
  %54 = phi ptr [ %6, %2 ], [ %9, %8 ], [ %9, %34 ], [ %9, %40 ]
  %55 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 17, ptr noundef nonnull %54) #17
  tail call void @_ZN15PropertyElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(184) %55, ptr noundef %1) #17
  ret ptr %55
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z15storeSourceCodeP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 !prof !204 {
  %3 = alloca %struct.my_yyltype, align 8
  %4 = tail call noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef %0, ptr noundef nonnull @.str.3) #17
  tail call void @_ZN15PropertyElement13setIsImplicitEb(ptr noundef nonnull align 8 dereferenceable(184) %4, i1 noundef zeroext true) #17
  %5 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef nonnull %4) #17
  call void @_Z16makeEmptyYYLTYPEv(ptr dead_on_unwind nonnull writable sret(%struct.my_yyltype) align 8 %3) #17
  %6 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 2, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %3) #17
  %7 = load ptr, ptr %5, align 8, !tbaa !215
  %8 = getelementptr inbounds ptr, ptr %7, i64 27
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %6) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15PropertyElement13setIsImplicitEb(ptr noundef nonnull align 8 dereferenceable(184) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !223 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !229
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %2) local_unnamed_addr #0 !prof !235 {
  %4 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 34, ptr noundef null) #17
  tail call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %4, i32 noundef %0) #17
  %5 = tail call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) #17
  tail call void @_ZN14LiteralElement8setValueEPKc(ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef %5) #17
  %6 = tail call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %2) #17
  tail call void @_ZN14LiteralElement7setTextEPKc(ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef %6) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_Z16makeEmptyYYLTYPEv(ptr dead_on_unwind noalias writable sret(%struct.my_yyltype) align 8 %0) local_unnamed_addr #0 comdat !prof !204 {
  tail call void @_Z11makeYYLTYPEiiii(ptr dead_on_unwind writable sret(%struct.my_yyltype) align 8 %0, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_Z11makeYYLTYPEiiii(ptr dead_on_unwind noalias writable sret(%struct.my_yyltype) align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 comdat !prof !236 {
  %6 = getelementptr inbounds %struct.my_yyltype, ptr %0, i64 0, i32 1
  store i32 %1, ptr %6, align 4, !tbaa !237
  %7 = getelementptr inbounds %struct.my_yyltype, ptr %0, i64 0, i32 2
  store i32 %2, ptr %7, align 8, !tbaa !239
  %8 = getelementptr inbounds %struct.my_yyltype, ptr %0, i64 0, i32 3
  store i32 %3, ptr %8, align 4, !tbaa !240
  %9 = getelementptr inbounds %struct.my_yyltype, ptr %0, i64 0, i32 4
  store i32 %4, ptr %9, align 8, !tbaa !241
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z24storeComponentSourceCodeP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 !prof !204 {
  %3 = alloca %struct.my_yyltype, align 8
  %4 = tail call noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef %0, ptr noundef nonnull @.str.3) #17
  tail call void @_ZN15PropertyElement13setIsImplicitEb(ptr noundef nonnull align 8 dereferenceable(184) %4, i1 noundef zeroext true) #17
  %5 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef nonnull %4) #17
  call void @_Z16makeEmptyYYLTYPEv(ptr dead_on_unwind nonnull writable sret(%struct.my_yyltype) align 8 %3) #17
  %6 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 2, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %3) #17
  %7 = load ptr, ptr %5, align 8, !tbaa !215
  %8 = getelementptr inbounds ptr, ptr %7, i64 27
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %6) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z20setIsNetworkPropertyP10NEDElement(ptr noundef %0) local_unnamed_addr #0 !prof !223 {
  %2 = tail call noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef %0, ptr noundef nonnull @.str.4) #17
  tail call void @_ZN15PropertyElement13setIsImplicitEb(ptr noundef nonnull align 8 dereferenceable(184) %2, i1 noundef zeroext true) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !242 {
  %5 = load i8, ptr %2, align 1, !tbaa !185
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7, !prof !243

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %3) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10, !prof !244

10:                                               ; preds = %7
  %11 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 3, ptr noundef null) #17
  tail call void @_ZN14CommentElement8setLocidEPKc(ptr noundef nonnull align 8 dereferenceable(176) %11, ptr noundef %1) #17
  tail call void @_ZN14CommentElement10setContentEPKc(ptr noundef nonnull align 8 dereferenceable(176) %11, ptr noundef nonnull %2) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !215
  %13 = getelementptr inbounds ptr, ptr %12, i64 23
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  %16 = load ptr, ptr %0, align 8, !tbaa !215
  %17 = getelementptr inbounds ptr, ptr %16, i64 28
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %15, ptr noundef nonnull %11) #17
  br label %19

19:                                               ; preds = %4, %7, %10
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14CommentElement8setLocidEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !245 {
  %3 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14CommentElement10setContentEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !245 {
  %3 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z16storeFileCommentP10NEDElement(ptr noundef %0) local_unnamed_addr #0 !prof !180 {
  %2 = load ptr, ptr @np, align 8, !tbaa !181
  %3 = tail call noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %4 = tail call noundef ptr @_ZN13NEDFileBuffer14getFileCommentEv(ptr noundef nonnull align 8 dereferenceable(52) %3) #17
  tail call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %4, ptr noundef nonnull @.str.6) #17
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN13NEDFileBuffer14getFileCommentEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z18storeBannerCommentP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 !prof !246 {
  %3 = load ptr, ptr @np, align 8, !tbaa !181
  %4 = tail call noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  %5 = tail call noundef ptr @_ZN13NEDFileBuffer16getBannerCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) #17
  tail call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %5, ptr noundef nonnull @.str.6) #17
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN13NEDFileBuffer16getBannerCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z17storeRightCommentP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 !prof !246 {
  %3 = load ptr, ptr @np, align 8, !tbaa !181
  %4 = tail call noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  %5 = tail call noundef ptr @_ZN13NEDFileBuffer18getTrailingCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) #17
  tail call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %5, ptr noundef nonnull @.str.8) #17
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN13NEDFileBuffer18getTrailingCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 !prof !247 {
  %3 = load ptr, ptr @np, align 8, !tbaa !181
  %4 = tail call noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  %5 = tail call noundef ptr @_ZN13NEDFileBuffer18getTrailingCommentE10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) #17
  tail call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %5, ptr noundef nonnull @.str.8) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %0, ptr noundef byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 !prof !248 {
  %3 = load ptr, ptr @np, align 8, !tbaa !181
  %4 = tail call noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  call void @_Z18storeBannerCommentP10NEDElement10my_yyltype(ptr noundef %0, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) #17
  call void @_Z17storeRightCommentP10NEDElement10my_yyltype(ptr noundef %0, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) #17
  call void @_Z18storeInnerCommentsP10NEDElement10my_yyltype(ptr noundef %0, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z18storeInnerCommentsP10NEDElement10my_yyltype(ptr noundef %0, ptr noundef byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 !prof !248 {
  %3 = load ptr, ptr @np, align 8, !tbaa !181
  %4 = tail call noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  %5 = call noundef ptr @_ZN13NEDFileBuffer19getNextInnerCommentER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !249

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %2 ]
  call void @_Z10addCommentP10NEDElementPKcS2_S2_(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %8, ptr noundef nonnull @.str.6) #17
  %9 = load ptr, ptr @np, align 8, !tbaa !181
  %10 = call noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  %11 = call noundef ptr @_ZN13NEDFileBuffer19getNextInnerCommentER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %10, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !prof !227

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %2) local_unnamed_addr #0 !prof !250 {
  %4 = alloca %struct.my_yyltype, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !251
  %5 = getelementptr inbounds %struct.my_yyltype, ptr %2, i64 0, i32 3
  %6 = getelementptr inbounds %struct.my_yyltype, ptr %4, i64 0, i32 3
  %7 = load <2 x i32>, ptr %5, align 4, !tbaa !219
  store <2 x i32> %7, ptr %6, align 4, !tbaa !219
  %8 = load ptr, ptr @np, align 8, !tbaa !181
  %9 = tail call noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52) %9, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @_Z18storeBannerCommentP10NEDElement10my_yyltype(ptr noundef %0, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %4) #17
  call void @_Z17storeRightCommentP10NEDElement10my_yyltype(ptr noundef %0, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN13NEDFileBuffer19getNextInnerCommentER10my_yyltype(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 !prof !252 {
  %3 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 15, ptr noundef %0) #17
  %4 = tail call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) #17
  tail call void @_ZN12ParamElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(185) %3, ptr noundef %4) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12ParamElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(185) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !252 {
  %3 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z12addParameterP10NEDElementPKc10my_yyltype(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone byval(%struct.my_yyltype) align 8 %2) local_unnamed_addr #0 !prof !204 {
  %4 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 15, ptr noundef %0) #17
  tail call void @_ZN12ParamElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(185) %4, ptr noundef %1) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #0 !prof !253 {
  %3 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 20, ptr noundef %0) #17
  %4 = tail call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) #17
  tail call void @_ZN11GateElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef %4) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11GateElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !253 {
  %3 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z12trimBrackets10my_yyltype(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.my_yyltype) align 8 %0, ptr nocapture noundef byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #11 !prof !247 {
  %3 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !239
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !239
  %6 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !241
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 8, !tbaa !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !251
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z17trimAngleBrackets10my_yyltype(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.my_yyltype) align 8 %0, ptr nocapture noundef byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #11 !prof !223 {
  %3 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !239
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !239
  %6 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !241
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 8, !tbaa !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !251
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z10trimQuotes10my_yyltype(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.my_yyltype) align 8 %0, ptr nocapture noundef byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #11 !prof !204 {
  %3 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !239
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !239
  %6 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !241
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 8, !tbaa !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !251
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z16trimDoubleBraces10my_yyltype(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.my_yyltype) align 8 %0, ptr nocapture noundef byval(%struct.my_yyltype) align 8 %1) local_unnamed_addr #11 !prof !204 {
  %3 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !239
  %5 = add nsw i32 %4, 2
  store i32 %5, ptr %3, align 8, !tbaa !239
  %6 = getelementptr inbounds %struct.my_yyltype, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !241
  %8 = add nsw i32 %7, -2
  store i32 %8, ptr %6, align 8, !tbaa !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !251
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %2, ptr noundef %3) local_unnamed_addr #0 !prof !247 {
  %5 = alloca %struct.my_yyltype, align 8
  call void @_Z12trimBrackets10my_yyltype(ptr dead_on_unwind nonnull writable sret(%struct.my_yyltype) align 8 %5, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %2) #17
  tail call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5, ptr noundef %3) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %2, ptr noundef %3) local_unnamed_addr #0 !prof !254 {
  %5 = load ptr, ptr @np, align 8, !tbaa !181
  %6 = tail call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  br i1 %6, label %7, label %40, !prof !255

7:                                                ; preds = %4
  tail call void @_ZN17ExpressionElement9setTargetEPKc(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef %1) #17
  %8 = load ptr, ptr %0, align 8, !tbaa !215
  %9 = getelementptr inbounds ptr, ptr %8, i64 23
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13, !prof !256

13:                                               ; preds = %7, %26
  %14 = phi ptr [ %30, %26 ], [ %11, %7 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !215
  %16 = getelementptr inbounds ptr, ptr %15, i64 5
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(112) %14) #17
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %26, label %20, !prof !257

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 8, !tbaa !215
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(112) %14) #17
  %25 = icmp eq i32 %24, 30
  br i1 %25, label %26, label %36, !prof !258

26:                                               ; preds = %13, %20
  %27 = load ptr, ptr %14, align 8, !tbaa !215
  %28 = getelementptr inbounds ptr, ptr %27, i64 25
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(112) %14) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !prof !259, !llvm.loop !260

32:                                               ; preds = %26, %7
  %33 = load ptr, ptr %0, align 8, !tbaa !215
  %34 = getelementptr inbounds ptr, ptr %33, i64 27
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %3) #17
  br label %45

36:                                               ; preds = %20
  %37 = load ptr, ptr %0, align 8, !tbaa !215
  %38 = getelementptr inbounds ptr, ptr %37, i64 28
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %14, ptr noundef nonnull %3) #17
  br label %45

40:                                               ; preds = %4
  %41 = tail call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %2) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !215
  %43 = getelementptr inbounds ptr, ptr %42, i64 19
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %41) #17
  br label %45

45:                                               ; preds = %32, %36, %40
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z12addLikeParamP10NEDElementPKc10my_yyltypeS0_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %2, ptr noundef %3) local_unnamed_addr #0 !prof !223 {
  %5 = alloca %struct.my_yyltype, align 8
  %6 = alloca %struct.my_yyltype, align 8
  %7 = load ptr, ptr @np, align 8, !tbaa !181
  %8 = tail call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  %9 = icmp eq ptr %3, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %16, !prof !261

11:                                               ; preds = %4
  call void @_Z17trimAngleBrackets10my_yyltype(ptr dead_on_unwind nonnull writable sret(%struct.my_yyltype) align 8 %5, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %2) #17
  %12 = tail call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #17
  %13 = load ptr, ptr %0, align 8, !tbaa !215
  %14 = getelementptr inbounds ptr, ptr %13, i64 19
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %12) #17
  br label %17

16:                                               ; preds = %4
  call void @_Z17trimAngleBrackets10my_yyltype(ptr dead_on_unwind nonnull writable sret(%struct.my_yyltype) align 8 %6, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %2) #17
  tail call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %6, ptr noundef %3) #17
  br label %17

17:                                               ; preds = %16, %11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !262 {
  %2 = load i8, ptr %0, align 8, !tbaa !263, !range !264, !noundef !265
  %3 = icmp ne i8 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17ExpressionElement9setTargetEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !266 {
  %3 = getelementptr inbounds %class.ExpressionElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z14swapConnectionP10NEDElement(ptr noundef %0) local_unnamed_addr #0 !prof !267 {
  tail call void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #17
  tail call void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #17
  tail call void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #17
  tail call void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #17
  tail call void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #17
  tail call void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #17
  tail call void @_Z22swapExpressionChildrenP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #17
  tail call void @_Z22swapExpressionChildrenP10NEDElementPKcS2_(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z14swapAttributesP10NEDElementPKcS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !268 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  %6 = load ptr, ptr %0, align 8, !tbaa !215
  %7 = getelementptr inbounds ptr, ptr %6, i64 17
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %5) #17
          to label %10 unwind label %25

10:                                               ; preds = %3
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !215
  %12 = getelementptr inbounds ptr, ptr %11, i64 17
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %2) #17
          to label %15 unwind label %27

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8, !tbaa !215
  %17 = getelementptr inbounds ptr, ptr %16, i64 19
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %14) #17
          to label %19 unwind label %27

19:                                               ; preds = %15
  %20 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !215
  %22 = getelementptr inbounds ptr, ptr %21, i64 19
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %2, ptr noundef %20) #17
          to label %24 unwind label %27

24:                                               ; preds = %19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  ret void

25:                                               ; preds = %3
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  br label %29

27:                                               ; preds = %19, %15, %10
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  resume { ptr, i32 } %30
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z22swapExpressionChildrenP10NEDElementPKcS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !269 {
  %4 = load ptr, ptr %0, align 8, !tbaa !215
  %5 = getelementptr inbounds ptr, ptr %4, i64 30
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 30) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9, !prof !270

9:                                                ; preds = %3, %14
  %10 = phi ptr [ %18, %14 ], [ %7, %3 ]
  %11 = tail call noundef ptr @_ZNK17ExpressionElement9getTargetEv(ptr noundef nonnull align 8 dereferenceable(144) %10) #17
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %1) #22
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20, !prof !271

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 8, !tbaa !215
  %16 = getelementptr inbounds ptr, ptr %15, i64 36
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(144) %10) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !prof !272, !llvm.loop !273

20:                                               ; preds = %14, %9, %3
  %21 = phi ptr [ null, %3 ], [ %10, %9 ], [ null, %14 ]
  %22 = phi i1 [ true, %3 ], [ %13, %9 ], [ %13, %14 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !215
  %24 = getelementptr inbounds ptr, ptr %23, i64 30
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 30) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28, !prof !274

28:                                               ; preds = %20, %33
  %29 = phi ptr [ %37, %33 ], [ %26, %20 ]
  %30 = tail call noundef ptr @_ZNK17ExpressionElement9getTargetEv(ptr noundef nonnull align 8 dereferenceable(144) %29) #17
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %2) #22
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39, !prof !275

33:                                               ; preds = %28
  %34 = load ptr, ptr %29, align 8, !tbaa !215
  %35 = getelementptr inbounds ptr, ptr %34, i64 36
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(144) %29) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %28, !prof !276, !llvm.loop !277

39:                                               ; preds = %33, %28, %20
  %40 = phi ptr [ null, %20 ], [ %29, %28 ], [ null, %33 ]
  %41 = phi i1 [ true, %20 ], [ %32, %28 ], [ %32, %33 ]
  br i1 %22, label %43, label %42, !prof !278

42:                                               ; preds = %39
  tail call void @_ZN17ExpressionElement9setTargetEPKc(ptr noundef nonnull align 8 dereferenceable(144) %21, ptr noundef %2) #17
  br label %43

43:                                               ; preds = %42, %39
  br i1 %41, label %45, label %44, !prof !275

44:                                               ; preds = %43
  tail call void @_ZN17ExpressionElement9setTargetEPKc(ptr noundef nonnull align 8 dereferenceable(144) %40, ptr noundef %1) #17
  br label %45

45:                                               ; preds = %44, %43
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17ExpressionElement9getTargetEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #1 comdat align 2 !prof !279 {
  %2 = getelementptr inbounds %class.ExpressionElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z16transferChildrenP10NEDElementS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !236 {
  %3 = load ptr, ptr %0, align 8, !tbaa !215
  %4 = getelementptr inbounds ptr, ptr %3, i64 23
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8, !prof !274

8:                                                ; preds = %2, %8
  %9 = load ptr, ptr %0, align 8, !tbaa !215
  %10 = getelementptr inbounds ptr, ptr %9, i64 23
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  %13 = load ptr, ptr %0, align 8, !tbaa !215
  %14 = getelementptr inbounds ptr, ptr %13, i64 29
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %12) #17
  %17 = load ptr, ptr %1, align 8, !tbaa !215
  %18 = getelementptr inbounds ptr, ptr %17, i64 27
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %16) #17
  %20 = load ptr, ptr %0, align 8, !tbaa !215
  %21 = getelementptr inbounds ptr, ptr %20, i64 23
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !prof !280, !llvm.loop !281

25:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !282 {
  %5 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 31, ptr noundef null) #17
  tail call void @_ZN15OperatorElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef %0) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !215
  %7 = getelementptr inbounds ptr, ptr %6, i64 27
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %1) #17
  %9 = icmp eq ptr %2, null
  br i1 %9, label %14, label %10, !prof !283

10:                                               ; preds = %4
  %11 = load ptr, ptr %5, align 8, !tbaa !215
  %12 = getelementptr inbounds ptr, ptr %11, i64 27
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull %2) #17
  br label %14

14:                                               ; preds = %10, %4
  %15 = icmp eq ptr %3, null
  br i1 %15, label %20, label %16, !prof !284

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !tbaa !215
  %18 = getelementptr inbounds ptr, ptr %17, i64 27
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull %3) #17
  br label %20

20:                                               ; preds = %16, %14
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN15OperatorElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !282 {
  %3 = getelementptr inbounds %class.OperatorElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 !prof !267 {
  %12 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 32, ptr noundef null) #17
  tail call void @_ZN15FunctionElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %12, ptr noundef %0) #17
  %13 = icmp eq ptr %1, null
  br i1 %13, label %18, label %14, !prof !285

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8, !tbaa !215
  %16 = getelementptr inbounds ptr, ptr %15, i64 27
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull %1) #17
  br label %18

18:                                               ; preds = %14, %11
  %19 = icmp eq ptr %2, null
  br i1 %19, label %24, label %20, !prof !286

20:                                               ; preds = %18
  %21 = load ptr, ptr %12, align 8, !tbaa !215
  %22 = getelementptr inbounds ptr, ptr %21, i64 27
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull %2) #17
  br label %24

24:                                               ; preds = %20, %18
  %25 = icmp eq ptr %3, null
  br i1 %25, label %30, label %26, !prof !286

26:                                               ; preds = %24
  %27 = load ptr, ptr %12, align 8, !tbaa !215
  %28 = getelementptr inbounds ptr, ptr %27, i64 27
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull %3) #17
  br label %30

30:                                               ; preds = %26, %24
  %31 = icmp eq ptr %4, null
  br i1 %31, label %36, label %32, !prof !286

32:                                               ; preds = %30
  %33 = load ptr, ptr %12, align 8, !tbaa !215
  %34 = getelementptr inbounds ptr, ptr %33, i64 27
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull %4) #17
  br label %36

36:                                               ; preds = %32, %30
  %37 = icmp eq ptr %5, null
  br i1 %37, label %42, label %38, !prof !286

38:                                               ; preds = %36
  %39 = load ptr, ptr %12, align 8, !tbaa !215
  %40 = getelementptr inbounds ptr, ptr %39, i64 27
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull %5) #17
  br label %42

42:                                               ; preds = %38, %36
  %43 = icmp eq ptr %6, null
  br i1 %43, label %48, label %44, !prof !286

44:                                               ; preds = %42
  %45 = load ptr, ptr %12, align 8, !tbaa !215
  %46 = getelementptr inbounds ptr, ptr %45, i64 27
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull %6) #17
  br label %48

48:                                               ; preds = %44, %42
  %49 = icmp eq ptr %7, null
  br i1 %49, label %54, label %50, !prof !286

50:                                               ; preds = %48
  %51 = load ptr, ptr %12, align 8, !tbaa !215
  %52 = getelementptr inbounds ptr, ptr %51, i64 27
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull %7) #17
  br label %54

54:                                               ; preds = %50, %48
  %55 = icmp eq ptr %8, null
  br i1 %55, label %60, label %56, !prof !286

56:                                               ; preds = %54
  %57 = load ptr, ptr %12, align 8, !tbaa !215
  %58 = getelementptr inbounds ptr, ptr %57, i64 27
  %59 = load ptr, ptr %58, align 8
  tail call void %59(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull %8) #17
  br label %60

60:                                               ; preds = %56, %54
  %61 = icmp eq ptr %9, null
  br i1 %61, label %66, label %62, !prof !286

62:                                               ; preds = %60
  %63 = load ptr, ptr %12, align 8, !tbaa !215
  %64 = getelementptr inbounds ptr, ptr %63, i64 27
  %65 = load ptr, ptr %64, align 8
  tail call void %65(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull %9) #17
  br label %66

66:                                               ; preds = %62, %60
  %67 = icmp eq ptr %10, null
  br i1 %67, label %72, label %68, !prof !286

68:                                               ; preds = %66
  %69 = load ptr, ptr %12, align 8, !tbaa !215
  %70 = getelementptr inbounds ptr, ptr %69, i64 27
  %71 = load ptr, ptr %70, align 8
  tail call void %71(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull %10) #17
  br label %72

72:                                               ; preds = %68, %66
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN15FunctionElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !267 {
  %3 = getelementptr inbounds %class.FunctionElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z16createExpressionP10NEDElement(ptr noundef %0) local_unnamed_addr #0 !prof !254 {
  %2 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 30, ptr noundef null) #17
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  %4 = getelementptr inbounds ptr, ptr %3, i64 27
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z11createIdent10my_yyltype(ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %0) local_unnamed_addr #0 !prof !287 {
  %2 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 33, ptr noundef null) #17
  %3 = tail call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %0) #17
  tail call void @_ZN12IdentElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef %3) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12IdentElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %3 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z11createIdent10my_yyltypeS_P10NEDElement(ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %0, ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %1, ptr noundef %2) local_unnamed_addr #0 !prof !223 {
  %4 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 33, ptr noundef null) #17
  %5 = tail call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %0) #17
  tail call void @_ZN12IdentElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef %5) #17
  %6 = tail call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1) #17
  tail call void @_ZN12IdentElement9setModuleEPKc(ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef %6) #17
  %7 = icmp eq ptr %2, null
  br i1 %7, label %12, label %8, !prof !224

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !215
  %10 = getelementptr inbounds ptr, ptr %9, i64 27
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull %2) #17
  br label %12

12:                                               ; preds = %8, %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12IdentElement9setModuleEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !223 {
  %3 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14LiteralElement8setValueEPKc(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !289 {
  %3 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14LiteralElement7setTextEPKc(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !289 {
  %3 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z13createLiteraliPKcS0_(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !204 {
  %4 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 34, ptr noundef null) #17
  tail call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %4, i32 noundef %0) #17
  tail call void @_ZN14LiteralElement8setValueEPKc(ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef %1) #17
  tail call void @_ZN14LiteralElement7setTextEPKc(ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z19createStringLiteral10my_yyltype(ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !290 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 34, ptr noundef null) #17
  tail call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %3, i32 noundef 2) #17
  %4 = tail call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %0) #17
  tail call void @_ZN14LiteralElement7setTextEPKc(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %4) #17
          to label %5 unwind label %8

5:                                                ; preds = %1
  %6 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  invoke void @_ZN14LiteralElement8setValueEPKc(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef %6) #17
          to label %7 unwind label %10

7:                                                ; preds = %5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  br label %27

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %12

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi { ptr, i32 } [ %11, %10 ], [ %9, %8 ]
  %14 = extractvalue { ptr, i32 } %13, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  %15 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #18
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = extractvalue { ptr, i32 } %13, 0
  %19 = call ptr @__cxa_begin_catch(ptr %18) #18
  %20 = load ptr, ptr @np, align 8, !tbaa !181
  %21 = load ptr, ptr %19, align 8, !tbaa !215
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %19) #19
  %25 = load i32, ptr @pos, align 4, !tbaa !212
  invoke void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %24, i32 noundef %25) #17
          to label %26 unwind label %28

26:                                               ; preds = %17
  call void @__cxa_end_catch()
  br label %27

27:                                               ; preds = %26, %7
  ret ptr %3

28:                                               ; preds = %17
  %29 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %30 unwind label %32

30:                                               ; preds = %28, %12
  %31 = phi { ptr, i32 } [ %13, %12 ], [ %29, %28 ]
  resume { ptr, i32 } %31

32:                                               ; preds = %28
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #21
  unreachable
}

; Function Attrs: optsize
declare void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #12

; Function Attrs: optsize
declare void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z21createQuantityLiteral10my_yyltype(ptr nocapture noundef readonly byval(%struct.my_yyltype) align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !291 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca [32 x i8], align 16
  %4 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 34, ptr noundef null) #17
  tail call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %4, i32 noundef 0) #17
  %5 = tail call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %0) #17
  tail call void @_ZN14LiteralElement7setTextEPKc(ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef %5) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  %6 = invoke noundef double @_ZN14UnitConversion13parseQuantityEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
          to label %22 unwind label %7

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %9 = extractvalue { ptr, i32 } %8, 1
  %10 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #18
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  %13 = extractvalue { ptr, i32 } %8, 0
  %14 = call ptr @__cxa_begin_catch(ptr %13) #18
  %15 = load ptr, ptr @np, align 8, !tbaa !181
  %16 = load ptr, ptr %14, align 8, !tbaa !215
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  %20 = load i32, ptr @pos, align 4, !tbaa !212
  invoke void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %19, i32 noundef %20) #17
          to label %21 unwind label %29

21:                                               ; preds = %12
  invoke void @__cxa_end_catch()
          to label %22 unwind label %31

22:                                               ; preds = %21, %1
  %23 = phi double [ %6, %1 ], [ 0.000000e+00, %21 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %23) #19
  invoke void @_ZN14LiteralElement8setValueEPKc(ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef nonnull %3) #17
          to label %25 unwind label %33

25:                                               ; preds = %22
  %26 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  br i1 %26, label %35, label %27, !prof !292

27:                                               ; preds = %25
  %28 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  invoke void @_ZN14LiteralElement7setUnitEPKc(ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef %28) #17
          to label %35 unwind label %33

29:                                               ; preds = %12
  %30 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %36 unwind label %38

31:                                               ; preds = %21
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %36

33:                                               ; preds = %27, %22
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %36

35:                                               ; preds = %27, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  ret ptr %4

36:                                               ; preds = %31, %29, %33, %7
  %37 = phi { ptr, i32 } [ %34, %33 ], [ %8, %7 ], [ %32, %31 ], [ %30, %29 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  resume { ptr, i32 } %37

38:                                               ; preds = %29
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #21
  unreachable
}

; Function Attrs: optsize
declare noundef double @_ZN14UnitConversion13parseQuantityEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14LiteralElement7setUnitEPKc(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !291 {
  %3 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z10unaryMinusP10NEDElement(ptr noundef %0) local_unnamed_addr #0 !prof !204 {
  %2 = alloca [140 x i8], align 16
  %3 = load ptr, ptr %0, align 8, !tbaa !215
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  %7 = icmp eq i32 %6, 34
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.24, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #17
  br label %29

10:                                               ; preds = %1
  %11 = tail call noundef i32 @_ZNK14LiteralElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(216) %0) #17
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = tail call noundef i32 @_ZNK14LiteralElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(216) %0) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %2) #18
  %17 = tail call noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %0) #17
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef %17) #19
  %19 = load ptr, ptr @np, align 8, !tbaa !181
  %20 = load i32, ptr @pos, align 4, !tbaa !212
  call void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull %2, i32 noundef %20) #17
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %2) #18
  br label %29

21:                                               ; preds = %13, %10
  %22 = tail call noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %0) #17
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #22
  %24 = add i64 %23, 2
  %25 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %24) #23
  store i8 45, ptr %25, align 1, !tbaa !185
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %27 = tail call noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %0) #17
  %28 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %27) #19
  tail call void @_ZN14LiteralElement8setValueEPKc(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull %25) #17
  tail call void @_ZN14LiteralElement7setTextEPKc(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull %25) #17
  tail call void @_ZdaPv(ptr noundef nonnull %25) #24
  br label %29

29:                                               ; preds = %16, %21, %8
  %30 = phi ptr [ %9, %8 ], [ %0, %21 ], [ %0, %16 ]
  ret ptr %30
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14LiteralElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #1 comdat align 2 !prof !293 {
  %2 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !294
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #1 comdat align 2 !prof !296 {
  %2 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(none) }
attributes #13 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize }
attributes #20 = { noreturn optsize }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind optsize willreturn memory(read) }
attributes #23 = { builtin optsize allocsize(0) }
attributes #24 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!179}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412426}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!36 = !{ptr @_Z16slashifyFilenameB5cxx11PKc, ptr @_ZN9NEDParser11getFileNameEv, i64 14}
!37 = !{ptr @_Z16slashifyFilenameB5cxx11PKc, ptr @_ZNSaIcEC2Ev, i64 14}
!38 = !{ptr @_Z16slashifyFilenameB5cxx11PKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 14}
!39 = !{ptr @_Z16slashifyFilenameB5cxx11PKc, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 14}
!40 = !{ptr @_Z16slashifyFilenameB5cxx11PKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv, i64 14}
!41 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!42 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!43 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!44 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!45 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!46 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!47 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!48 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!49 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!50 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!51 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!52 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!53 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!54 = !{ptr @_Z8toString10my_yyltype, ptr @_ZN9NEDParser9getSourceEv, i64 756}
!55 = !{ptr @_Z8toString10my_yyltype, ptr @_ZN13NEDFileBuffer3getE10my_yyltype, i64 756}
!56 = !{ptr @_Z12removeSpacesB5cxx1110my_yyltype, ptr @_ZN9NEDParser9getSourceEv, i64 77}
!57 = !{ptr @_Z12removeSpacesB5cxx1110my_yyltype, ptr @_ZN13NEDFileBuffer3getE10my_yyltype, i64 77}
!58 = !{ptr @_Z12removeSpacesB5cxx1110my_yyltype, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 77}
!59 = !{ptr @_Z12removeSpacesB5cxx1110my_yyltype, ptr @_Z11opp_isspaceh, i64 577}
!60 = !{ptr @_Z12removeSpacesB5cxx1110my_yyltype, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc, i64 576}
!61 = !{ptr @_Z11opp_isspaceh, ptr @isspace, i64 10640642}
!62 = !{ptr @_Z15currentLocationv, ptr @_ZN9NEDParser11getFileNameEv, i64 1131}
!63 = !{ptr @_Z15currentLocationv, ptr @sprintf, i64 1131}
!64 = !{ptr @_Z20createElementWithTagiP10NEDElement, ptr @_ZN17NEDElementFactory11getInstanceEv, i64 1131}
!65 = !{ptr @_Z20createElementWithTagiP10NEDElement, ptr @_Z15currentLocationv, i64 1131}
!66 = !{ptr @_Z8storePosP10NEDElement10my_yyltype, ptr @_ZN9NEDParser9getSourceEv, i64 527}
!67 = !{ptr @_Z8storePosP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype, i64 527}
!68 = !{ptr @_Z8storePosP10NEDElement10my_yyltype, ptr @_ZN15NEDSourceRegionC2Ev, i64 527}
!69 = !{ptr @_Z11addPropertyP10NEDElementPKc, ptr @_Z20createElementWithTagiP10NEDElement, i64 55}
!70 = !{ptr @_Z11addPropertyP10NEDElementPKc, ptr @_ZN15PropertyElement7setNameEPKc, i64 55}
!71 = !{ptr @_ZN15PropertyElement7setNameEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 56}
!72 = !{ptr @_Z20addComponentPropertyP10NEDElementPKc, ptr @_Z20createElementWithTagiP10NEDElement, i64 2}
!73 = !{ptr @_Z20addComponentPropertyP10NEDElementPKc, ptr @_ZN15PropertyElement7setNameEPKc, i64 1}
!74 = !{ptr @_Z13createLiterali10my_yyltypeS_, ptr @_Z20createElementWithTagiP10NEDElement, i64 86}
!75 = !{ptr @_Z13createLiterali10my_yyltypeS_, ptr @_ZN14LiteralElement7setTypeEi, i64 86}
!76 = !{ptr @_Z13createLiterali10my_yyltypeS_, ptr @_Z8toString10my_yyltype, i64 172}
!77 = !{ptr @_Z13createLiterali10my_yyltypeS_, ptr @_ZN14LiteralElement8setValueEPKc, i64 86}
!78 = !{ptr @_Z13createLiterali10my_yyltypeS_, ptr @_ZN14LiteralElement7setTextEPKc, i64 86}
!79 = !{ptr @_Z20setIsNetworkPropertyP10NEDElement, ptr @_Z20addComponentPropertyP10NEDElementPKc, i64 1}
!80 = !{ptr @_Z20setIsNetworkPropertyP10NEDElement, ptr @_ZN15PropertyElement13setIsImplicitEb, i64 1}
!81 = !{ptr @_Z10addCommentP10NEDElementPKcS2_S2_, ptr @strcmp, i64 474}
!82 = !{ptr @_Z10addCommentP10NEDElementPKcS2_S2_, ptr @_Z20createElementWithTagiP10NEDElement, i64 210}
!83 = !{ptr @_Z10addCommentP10NEDElementPKcS2_S2_, ptr @_ZN14CommentElement8setLocidEPKc, i64 210}
!84 = !{ptr @_Z10addCommentP10NEDElementPKcS2_S2_, ptr @_ZN14CommentElement10setContentEPKc, i64 210}
!85 = !{ptr @_ZN14CommentElement8setLocidEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 210}
!86 = !{ptr @_ZN14CommentElement10setContentEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 210}
!87 = !{ptr @_Z16storeFileCommentP10NEDElement, ptr @_ZN9NEDParser9getSourceEv, i64 14}
!88 = !{ptr @_Z16storeFileCommentP10NEDElement, ptr @_ZN13NEDFileBuffer14getFileCommentEv, i64 14}
!89 = !{ptr @_Z16storeFileCommentP10NEDElement, ptr @_Z10addCommentP10NEDElementPKcS2_S2_, i64 14}
!90 = !{ptr @_Z18storeBannerCommentP10NEDElement10my_yyltype, ptr @_ZN9NEDParser9getSourceEv, i64 396}
!91 = !{ptr @_Z18storeBannerCommentP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer16getBannerCommentE10my_yyltype, i64 396}
!92 = !{ptr @_Z18storeBannerCommentP10NEDElement10my_yyltype, ptr @_Z10addCommentP10NEDElementPKcS2_S2_, i64 396}
!93 = !{ptr @_Z17storeRightCommentP10NEDElement10my_yyltype, ptr @_ZN9NEDParser9getSourceEv, i64 396}
!94 = !{ptr @_Z17storeRightCommentP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer18getTrailingCommentE10my_yyltype, i64 396}
!95 = !{ptr @_Z17storeRightCommentP10NEDElement10my_yyltype, ptr @_Z10addCommentP10NEDElementPKcS2_S2_, i64 396}
!96 = !{ptr @_Z20storeTrailingCommentP10NEDElement10my_yyltype, ptr @_ZN9NEDParser9getSourceEv, i64 64}
!97 = !{ptr @_Z20storeTrailingCommentP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer18getTrailingCommentE10my_yyltype, i64 64}
!98 = !{ptr @_Z20storeTrailingCommentP10NEDElement10my_yyltype, ptr @_Z10addCommentP10NEDElementPKcS2_S2_, i64 64}
!99 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype, ptr @_ZN9NEDParser9getSourceEv, i64 298}
!100 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype, i64 298}
!101 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype, ptr @_Z18storeBannerCommentP10NEDElement10my_yyltype, i64 298}
!102 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype, ptr @_Z17storeRightCommentP10NEDElement10my_yyltype, i64 298}
!103 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype, ptr @_Z18storeInnerCommentsP10NEDElement10my_yyltype, i64 298}
!104 = !{ptr @_Z18storeInnerCommentsP10NEDElement10my_yyltype, ptr @_ZN9NEDParser9getSourceEv, i64 299}
!105 = !{ptr @_Z18storeInnerCommentsP10NEDElement10my_yyltype, ptr @_ZN13NEDFileBuffer19getNextInnerCommentER10my_yyltype, i64 299}
!106 = !{ptr @_Z18storeInnerCommentsP10NEDElement10my_yyltype, ptr @_Z10addCommentP10NEDElementPKcS2_S2_, i64 1}
!107 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_, ptr @_ZN9NEDParser9getSourceEv, i64 98}
!108 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_, ptr @_ZN13NEDFileBuffer20trimSpaceAndCommentsER10my_yyltype, i64 98}
!109 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_, ptr @_Z18storeBannerCommentP10NEDElement10my_yyltype, i64 98}
!110 = !{ptr @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_, ptr @_Z17storeRightCommentP10NEDElement10my_yyltype, i64 98}
!111 = !{ptr @_Z12addParameterP10NEDElement10my_yyltype, ptr @_Z20createElementWithTagiP10NEDElement, i64 67}
!112 = !{ptr @_Z12addParameterP10NEDElement10my_yyltype, ptr @_Z8toString10my_yyltype, i64 67}
!113 = !{ptr @_Z12addParameterP10NEDElement10my_yyltype, ptr @_ZN12ParamElement7setNameEPKc, i64 67}
!114 = !{ptr @_ZN12ParamElement7setNameEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 67}
!115 = !{ptr @_Z7addGateP10NEDElement10my_yyltype, ptr @_Z20createElementWithTagiP10NEDElement, i64 36}
!116 = !{ptr @_Z7addGateP10NEDElement10my_yyltype, ptr @_Z8toString10my_yyltype, i64 36}
!117 = !{ptr @_Z7addGateP10NEDElement10my_yyltype, ptr @_ZN11GateElement7setNameEPKc, i64 36}
!118 = !{ptr @_ZN11GateElement7setNameEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 36}
!119 = !{ptr @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_, ptr @_Z12trimBrackets10my_yyltype, i64 64}
!120 = !{ptr @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_, ptr @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_, i64 64}
!121 = !{ptr @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_, ptr @_ZN9NEDParser23getParseExpressionsFlagEv, i64 154}
!122 = !{ptr @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_, ptr @_ZN17ExpressionElement9setTargetEPKc, i64 153}
!123 = !{ptr @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_, ptr @_Z8toString10my_yyltype, i64 1}
!124 = !{ptr @_Z12addLikeParamP10NEDElementPKc10my_yyltypeS0_, ptr @_ZN9NEDParser23getParseExpressionsFlagEv, i64 1}
!125 = !{ptr @_Z12addLikeParamP10NEDElementPKc10my_yyltypeS0_, ptr @_Z17trimAngleBrackets10my_yyltype, i64 1}
!126 = !{ptr @_Z12addLikeParamP10NEDElementPKc10my_yyltypeS0_, ptr @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_, i64 1}
!127 = !{ptr @_ZN17ExpressionElement9setTargetEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 158}
!128 = !{ptr @_Z14swapConnectionP10NEDElement, ptr @_Z14swapAttributesP10NEDElementPKcS2_, i64 24}
!129 = !{ptr @_Z14swapConnectionP10NEDElement, ptr @_Z22swapExpressionChildrenP10NEDElementPKcS2_, i64 8}
!130 = !{ptr @_Z14swapAttributesP10NEDElementPKcS2_, ptr @_ZNSaIcEC2Ev, i64 24}
!131 = !{ptr @_Z14swapAttributesP10NEDElementPKcS2_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 24}
!132 = !{ptr @_Z14swapAttributesP10NEDElementPKcS2_, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 24}
!133 = !{ptr @_Z14swapAttributesP10NEDElementPKcS2_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 24}
!134 = !{ptr @_Z14swapAttributesP10NEDElementPKcS2_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 24}
!135 = !{ptr @_Z22swapExpressionChildrenP10NEDElementPKcS2_, ptr @_ZNK17ExpressionElement9getTargetEv, i64 18}
!136 = !{ptr @_Z22swapExpressionChildrenP10NEDElementPKcS2_, ptr @strcmp, i64 18}
!137 = !{ptr @_Z22swapExpressionChildrenP10NEDElementPKcS2_, ptr @_ZN17ExpressionElement9setTargetEPKc, i64 5}
!138 = !{ptr @_ZNK17ExpressionElement9getTargetEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 180719}
!139 = !{ptr @_Z14createOperatorPKcP10NEDElementS2_S2_, ptr @_Z20createElementWithTagiP10NEDElement, i64 37}
!140 = !{ptr @_Z14createOperatorPKcP10NEDElementS2_S2_, ptr @_ZN15OperatorElement7setNameEPKc, i64 37}
!141 = !{ptr @_ZN15OperatorElement7setNameEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 37}
!142 = !{ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_, ptr @_Z20createElementWithTagiP10NEDElement, i64 4}
!143 = !{ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_, ptr @_ZN15FunctionElement7setNameEPKc, i64 4}
!144 = !{ptr @_ZN15FunctionElement7setNameEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 4}
!145 = !{ptr @_Z16createExpressionP10NEDElement, ptr @_Z20createElementWithTagiP10NEDElement, i64 154}
!146 = !{ptr @_Z11createIdent10my_yyltype, ptr @_Z20createElementWithTagiP10NEDElement, i64 93}
!147 = !{ptr @_Z11createIdent10my_yyltype, ptr @_Z8toString10my_yyltype, i64 93}
!148 = !{ptr @_Z11createIdent10my_yyltype, ptr @_ZN12IdentElement7setNameEPKc, i64 93}
!149 = !{ptr @_ZN12IdentElement7setNameEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 94}
!150 = !{ptr @_Z11createIdent10my_yyltypeS_P10NEDElement, ptr @_Z20createElementWithTagiP10NEDElement, i64 1}
!151 = !{ptr @_Z11createIdent10my_yyltypeS_P10NEDElement, ptr @_Z8toString10my_yyltype, i64 2}
!152 = !{ptr @_Z11createIdent10my_yyltypeS_P10NEDElement, ptr @_ZN12IdentElement7setNameEPKc, i64 1}
!153 = !{ptr @_Z11createIdent10my_yyltypeS_P10NEDElement, ptr @_ZN12IdentElement9setModuleEPKc, i64 1}
!154 = !{ptr @_ZN12IdentElement9setModuleEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 1}
!155 = !{ptr @_ZN14LiteralElement8setValueEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 148}
!156 = !{ptr @_ZN14LiteralElement7setTextEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 148}
!157 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_Z20createElementWithTagiP10NEDElement, i64 47}
!158 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_ZN14LiteralElement7setTypeEi, i64 47}
!159 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_Z8toString10my_yyltype, i64 47}
!160 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_ZN14LiteralElement7setTextEPKc, i64 47}
!161 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_Z18opp_parsequotedstrB5cxx11PKc, i64 47}
!162 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 47}
!163 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_ZN14LiteralElement8setValueEPKc, i64 47}
!164 = !{ptr @_Z19createStringLiteral10my_yyltype, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 47}
!165 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_Z20createElementWithTagiP10NEDElement, i64 15}
!166 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZN14LiteralElement7setTypeEi, i64 15}
!167 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_Z8toString10my_yyltype, i64 15}
!168 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZN14LiteralElement7setTextEPKc, i64 15}
!169 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 15}
!170 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZN14UnitConversion13parseQuantityEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 15}
!171 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @sprintf, i64 15}
!172 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZN14LiteralElement8setValueEPKc, i64 15}
!173 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv, i64 15}
!174 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 14}
!175 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZN14LiteralElement7setUnitEPKc, i64 14}
!176 = !{ptr @_Z21createQuantityLiteral10my_yyltype, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 15}
!177 = !{ptr @_ZN14LiteralElement7setUnitEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 15}
!178 = !{ptr @_ZNK14LiteralElement8getValueEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 322}
!179 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!180 = !{!"function_entry_count", i64 14}
!181 = !{!182, !182, i64 0}
!182 = !{!"any pointer", !183, i64 0}
!183 = !{!"omnipotent char", !184, i64 0}
!184 = !{!"Simple C++ TBAA"}
!185 = !{!183, !183, i64 0}
!186 = !{!"branch_weights", i32 3594816, i32 28455, i32 1896}
!187 = distinct !{!187, !188}
!188 = !{!"llvm.loop.mustprogress"}
!189 = !{!"function_entry_count", i64 1159}
!190 = !{!191, !182, i64 8}
!191 = !{!"_ZTS9NEDParser", !192, i64 0, !192, i64 1, !182, i64 8, !182, i64 16, !182, i64 24}
!192 = !{!"bool", !183, i64 0}
!193 = !{!"function_entry_count", i64 1891507}
!194 = !{!"function_entry_count", i64 1889443}
!195 = !{!196, !196, i64 0}
!196 = !{!"long", !183, i64 0}
!197 = !{!"branch_weights", i32 1257663, i32 631782}
!198 = !{!199, !182, i64 0}
!199 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !182, i64 0}
!200 = !{!"branch_weights", i32 1889444, i32 1}
!201 = !{!"function_entry_count", i64 756}
!202 = !{!"function_entry_count", i64 2924}
!203 = !{!191, !182, i64 24}
!204 = !{!"function_entry_count", i64 0}
!205 = !{!"function_entry_count", i64 77}
!206 = !{!"branch_weights", i32 1, i32 155}
!207 = !{!"branch_weights", i32 1, i32 584}
!208 = !{!"branch_weights", i32 155, i32 1013}
!209 = distinct !{!209, !188}
!210 = !{!"function_entry_count", i64 10640642}
!211 = !{!"function_entry_count", i64 1131}
!212 = !{!213, !214, i64 0}
!213 = !{!"_ZTS10LineColumn", !214, i64 0, !214, i64 4}
!214 = !{!"int", !183, i64 0}
!215 = !{!216, !216, i64 0}
!216 = !{!"vtable pointer", !184, i64 0}
!217 = !{!"branch_weights", i32 678, i32 455}
!218 = !{!"function_entry_count", i64 527}
!219 = !{!214, !214, i64 0}
!220 = !{!"function_entry_count", i64 1732}
!221 = !{!"function_entry_count", i64 55}
!222 = !{!"function_entry_count", i64 56}
!223 = !{!"function_entry_count", i64 1}
!224 = !{!"branch_weights", i32 2, i32 1}
!225 = !{!"branch_weights", i32 1, i32 1}
!226 = !{!"branch_weights", i32 1, i32 2}
!227 = !{!"branch_weights", i32 1, i32 0}
!228 = distinct !{!228, !188}
!229 = !{!230, !192, i64 112}
!230 = !{!"_ZTS15PropertyElement", !231, i64 0, !192, i64 112, !232, i64 120, !232, i64 152}
!231 = !{!"_ZTS10NEDElement", !196, i64 8, !232, i64 16, !234, i64 48, !182, i64 64, !182, i64 72, !182, i64 80, !182, i64 88, !182, i64 96, !182, i64 104}
!232 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !233, i64 0, !196, i64 8, !183, i64 16}
!233 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !182, i64 0}
!234 = !{!"_ZTS15NEDSourceRegion", !214, i64 0, !214, i64 4, !214, i64 8, !214, i64 12}
!235 = !{!"function_entry_count", i64 86}
!236 = !{!"function_entry_count", i64 23}
!237 = !{!238, !214, i64 4}
!238 = !{!"_ZTS10my_yyltype", !214, i64 0, !214, i64 4, !214, i64 8, !214, i64 12, !214, i64 16, !182, i64 24}
!239 = !{!238, !214, i64 8}
!240 = !{!238, !214, i64 12}
!241 = !{!238, !214, i64 16}
!242 = !{!"function_entry_count", i64 870}
!243 = !{!"branch_weights", i32 397, i32 475}
!244 = !{!"branch_weights", i32 265, i32 211}
!245 = !{!"function_entry_count", i64 210}
!246 = !{!"function_entry_count", i64 396}
!247 = !{!"function_entry_count", i64 64}
!248 = !{!"function_entry_count", i64 298}
!249 = !{!"branch_weights", i32 298, i32 1}
!250 = !{!"function_entry_count", i64 98}
!251 = !{i64 0, i64 4, !219, i64 4, i64 4, !219, i64 8, i64 4, !219, i64 12, i64 4, !219, i64 16, i64 4, !219, i64 24, i64 8, !181}
!252 = !{!"function_entry_count", i64 67}
!253 = !{!"function_entry_count", i64 36}
!254 = !{!"function_entry_count", i64 154}
!255 = !{!"branch_weights", i32 155, i32 1}
!256 = !{!"branch_weights", i32 49, i32 70}
!257 = !{!"branch_weights", i32 1, i32 70}
!258 = !{!"branch_weights", i32 34, i32 155}
!259 = !{!"branch_weights", i32 70, i32 0}
!260 = distinct !{!260, !188}
!261 = !{!"branch_weights", i32 2, i32 7}
!262 = !{!"function_entry_count", i64 541}
!263 = !{!191, !192, i64 0}
!264 = !{i8 0, i8 2}
!265 = !{}
!266 = !{!"function_entry_count", i64 158}
!267 = !{!"function_entry_count", i64 4}
!268 = !{!"function_entry_count", i64 24}
!269 = !{!"function_entry_count", i64 8}
!270 = !{!"branch_weights", i32 1, i32 127}
!271 = !{!"branch_weights", i32 7, i32 2}
!272 = !{!"branch_weights", i32 127, i32 1}
!273 = distinct !{!273, !188}
!274 = !{!"branch_weights", i32 1, i32 191}
!275 = !{!"branch_weights", i32 6, i32 4}
!276 = !{!"branch_weights", i32 191, i32 97}
!277 = distinct !{!277, !188}
!278 = !{!"branch_weights", i32 8, i32 2}
!279 = !{!"function_entry_count", i64 180719}
!280 = !{!"branch_weights", i32 191, i32 25}
!281 = distinct !{!281, !188}
!282 = !{!"function_entry_count", i64 37}
!283 = !{!"branch_weights", i32 1, i32 38}
!284 = !{!"branch_weights", i32 38, i32 1}
!285 = !{!"branch_weights", i32 1, i32 5}
!286 = !{!"branch_weights", i32 5, i32 1}
!287 = !{!"function_entry_count", i64 93}
!288 = !{!"function_entry_count", i64 94}
!289 = !{!"function_entry_count", i64 148}
!290 = !{!"function_entry_count", i64 47}
!291 = !{!"function_entry_count", i64 15}
!292 = !{!"branch_weights", i32 1, i32 16}
!293 = !{!"function_entry_count", i64 225}
!294 = !{!295, !214, i64 112}
!295 = !{!"_ZTS14LiteralElement", !231, i64 0, !214, i64 112, !232, i64 120, !232, i64 152, !232, i64 184}
!296 = !{!"function_entry_count", i64 322}
