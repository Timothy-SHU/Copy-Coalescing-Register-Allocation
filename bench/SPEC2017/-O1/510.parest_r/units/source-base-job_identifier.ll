; ModuleID = 'source/base/job_identifier.cc'
source_filename = "source/base/job_identifier.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.dealii::JobIdentifier" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN6dealii13JobIdentifierD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

@_ZN6dealii9dealjobidE = dso_local global %"class.dealii::JobIdentifier" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [7 x i8] c"JobId \00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_job_identifier.cc, ptr null }]

@_ZN6dealii13JobIdentifierC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii13JobIdentifierC2Ev

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii13JobIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !47
  %8 = icmp ult i64 %7, 16
  tail call void @llvm.assume(i1 %8)
  br label %10

9:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %2) #13
  br label %10

10:                                               ; preds = %5, %9
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6dealii13JobIdentifierC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !annotation !48 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %7, ptr %0, align 8, !tbaa !49
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %8, align 8, !tbaa !47
  store i8 0, ptr %7, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %9 = tail call i64 @time(ptr noundef null) #14
  store i64 %9, ptr %3, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %10, ptr %4, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %10, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false), !prof !52
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 6, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds i8, ptr %4, i64 22
  store i8 0, ptr %12, align 2, !tbaa !50
  %13 = load ptr, ptr %0, align 8, !tbaa !40
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, ptr %8, align 8, !tbaa !47
  %17 = icmp ult i64 %16, 16
  call void @llvm.assume(i1 %17)
  br label %18

18:                                               ; preds = %1, %15
  %19 = icmp eq ptr %4, %0
  br i1 %19, label %24, label %20, !prof !53

20:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %13, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  %21 = load i64, ptr %11, align 8, !tbaa !47
  store i64 %21, ptr %8, align 8, !tbaa !47
  %22 = load ptr, ptr %0, align 8, !tbaa !40
  %23 = getelementptr inbounds i8, ptr %22, i64 %21
  store i8 0, ptr %23, align 1, !tbaa !50
  br label %24

24:                                               ; preds = %18, %20
  store i64 0, ptr %11, align 8, !tbaa !47
  %25 = load ptr, ptr %4, align 8, !tbaa !40
  store i8 0, ptr %25, align 1, !tbaa !50
  %26 = load ptr, ptr %4, align 8, !tbaa !40
  %27 = icmp eq ptr %26, %10
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, ptr %11, align 8, !tbaa !47
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  br label %32

31:                                               ; preds = %24
  call void @_ZdlPv(ptr noundef %26) #13
  br label %32

32:                                               ; preds = %28, %31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %33, ptr %5, align 8, !tbaa !49
  store i64 2336936577129475701, ptr %33, align 8
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 8, ptr %34, align 8, !tbaa !47
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2, i32 1
  store i8 0, ptr %35, align 8, !tbaa !50
  %36 = load i64, ptr %8, align 8, !tbaa !47
  %37 = and i64 %36, -8
  %38 = icmp eq i64 %37, 4611686018427387896
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
          to label %40 unwind label %90

40:                                               ; preds = %39
  unreachable

41:                                               ; preds = %32
  %42 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %33, i64 noundef 8)
          to label %43 unwind label %90

43:                                               ; preds = %41
  %44 = load ptr, ptr %5, align 8, !tbaa !40
  %45 = icmp eq ptr %44, %33
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, ptr %34, align 8, !tbaa !47
  %48 = icmp ult i64 %47, 16
  call void @llvm.assume(i1 %48)
  br label %50

49:                                               ; preds = %43
  call void @_ZdlPv(ptr noundef %44) #13
  br label %50

50:                                               ; preds = %46, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #14
  %51 = call ptr @ctime(ptr noundef nonnull %3) #14
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %52, ptr %6, align 8, !tbaa !49
  %53 = icmp eq ptr %51, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #15
          to label %55 unwind label %99

55:                                               ; preds = %54
  unreachable

56:                                               ; preds = %50
  %57 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %51) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store i64 %57, ptr %2, align 8, !tbaa !51
  %58 = icmp ugt i64 %57, 15
  br i1 %58, label %59, label %63, !prof !54

59:                                               ; preds = %56
  %60 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %61 unwind label %99

61:                                               ; preds = %59
  store ptr %60, ptr %6, align 8, !tbaa !40
  %62 = load i64, ptr %2, align 8, !tbaa !51
  store i64 %62, ptr %52, align 8, !tbaa !50
  br label %63

63:                                               ; preds = %61, %56
  %64 = load ptr, ptr %6, align 8, !tbaa !40
  switch i64 %57, label %67 [
    i64 1, label %65
    i64 0, label %68
  ], !prof !55

65:                                               ; preds = %63
  %66 = load i8, ptr %51, align 1, !tbaa !50
  store i8 %66, ptr %64, align 1, !tbaa !50
  br label %68

67:                                               ; preds = %63
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr nonnull align 1 %51, i64 %57, i1 false), !prof !52
  br label %68

68:                                               ; preds = %63, %65, %67
  %69 = load i64, ptr %2, align 8, !tbaa !51
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  store i64 %69, ptr %70, align 8, !tbaa !47
  %71 = load ptr, ptr %6, align 8, !tbaa !40
  %72 = getelementptr inbounds i8, ptr %71, i64 %69
  store i8 0, ptr %72, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  %73 = load i64, ptr %70, align 8, !tbaa !47
  %74 = load i64, ptr %8, align 8, !tbaa !47
  %75 = sub i64 4611686018427387903, %74
  %76 = icmp ult i64 %75, %73
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
          to label %78 unwind label %101

78:                                               ; preds = %77
  unreachable

79:                                               ; preds = %68
  %80 = load ptr, ptr %6, align 8, !tbaa !40
  %81 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %80, i64 noundef %73)
          to label %82 unwind label %101

82:                                               ; preds = %79
  %83 = load ptr, ptr %6, align 8, !tbaa !40
  %84 = icmp eq ptr %83, %52
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i64, ptr %70, align 8, !tbaa !47
  %87 = icmp ult i64 %86, 16
  call void @llvm.assume(i1 %87)
  br label %89

88:                                               ; preds = %82
  call void @_ZdlPv(ptr noundef %83) #13
  br label %89

89:                                               ; preds = %85, %88
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret void

90:                                               ; preds = %41, %39
  %91 = landingpad { ptr, i32 }
          cleanup
  %92 = load ptr, ptr %5, align 8, !tbaa !40
  %93 = icmp eq ptr %92, %33
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i64, ptr %34, align 8, !tbaa !47
  %96 = icmp ult i64 %95, 16
  call void @llvm.assume(i1 %96)
  br label %98

97:                                               ; preds = %90
  call void @_ZdlPv(ptr noundef %92) #13
  br label %98

98:                                               ; preds = %97, %94
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %111

99:                                               ; preds = %59, %54
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %109

101:                                              ; preds = %79, %77
  %102 = landingpad { ptr, i32 }
          cleanup
  %103 = load ptr, ptr %6, align 8, !tbaa !40
  %104 = icmp eq ptr %103, %52
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i64, ptr %70, align 8, !tbaa !47
  %107 = icmp ult i64 %106, 16
  call void @llvm.assume(i1 %107)
  br label %109

108:                                              ; preds = %101
  call void @_ZdlPv(ptr noundef %103) #13
  br label %109

109:                                              ; preds = %108, %105, %99
  %110 = phi { ptr, i32 } [ %100, %99 ], [ %102, %105 ], [ %102, %108 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  br label %111

111:                                              ; preds = %109, %98
  %112 = phi { ptr, i32 } [ %110, %109 ], [ %91, %98 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %113 = load ptr, ptr %0, align 8, !tbaa !40
  %114 = icmp eq ptr %113, %7
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i64, ptr %8, align 8, !tbaa !47
  %117 = icmp ult i64 %116, 16
  call void @llvm.assume(i1 %117)
  br label %119

118:                                              ; preds = %111
  call void @_ZdlPv(ptr noundef %113) #13
  br label %119

119:                                              ; preds = %115, %118
  resume { ptr, i32 } %112
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare ptr @ctime(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK6dealii13JobIdentifierclB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %3, ptr %0, align 8, !tbaa !49
  %4 = load ptr, ptr %1, align 8, !tbaa !40
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds i8, ptr %4, i64 %6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %4, ptr noundef %7)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !51
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !57

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !40
  %11 = load i64, ptr %4, align 8, !tbaa !51
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !50
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !40
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !58

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !50
  store i8 %16, ptr %14, align 1, !tbaa !50
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !59
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !51
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !47
  %21 = load ptr, ptr %0, align 8, !tbaa !40
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_job_identifier.cc() #11 section ".text.startup" !prof !60 !PGOFuncName !61 {
  tail call void @_ZN6dealii13JobIdentifierC2Ev(ptr noundef nonnull align 8 dereferenceable(32) @_ZN6dealii9dealjobidE)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6dealii13JobIdentifierD2Ev, ptr nonnull @_ZN6dealii9dealjobidE, ptr nonnull @__dso_handle) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 498235516744}
!8 = !{!"MaxCount", i64 131729822178}
!9 = !{!"MaxInternalCount", i64 59335447748}
!10 = !{!"MaxFunctionCount", i64 131729822178}
!11 = !{!"NumCounts", i64 184261}
!12 = !{!"NumFunctions", i64 19089}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 131729822178, i32 1}
!18 = !{i32 100000, i64 131729822178, i32 1}
!19 = !{i32 200000, i64 131729822178, i32 1}
!20 = !{i32 300000, i64 59335447748, i32 2}
!21 = !{i32 400000, i64 54202702756, i32 4}
!22 = !{i32 500000, i64 54202702756, i32 4}
!23 = !{i32 600000, i64 54202702756, i32 4}
!24 = !{i32 700000, i64 29261748340, i32 6}
!25 = !{i32 800000, i64 4776163696, i32 11}
!26 = !{i32 900000, i64 1194611288, i32 34}
!27 = !{i32 950000, i64 227059944, i32 83}
!28 = !{i32 990000, i64 24316456, i32 356}
!29 = !{i32 999000, i64 1124400, i32 996}
!30 = !{i32 999900, i64 89565, i32 2292}
!31 = !{i32 999990, i64 12672, i32 3328}
!32 = !{i32 999999, i64 396, i32 5010}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 828}
!36 = !{ptr @_GLOBAL__sub_I_job_identifier.cc, ptr @_ZN6dealii13JobIdentifierC2Ev, i64 1}
!37 = !{ptr @_GLOBAL__sub_I_job_identifier.cc, ptr @__cxa_atexit, i64 1}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !43, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !42, i64 0, !46, i64 8, !44, i64 16}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"long", !44, i64 0}
!47 = !{!41, !46, i64 8}
!48 = !{!"instr_prof_hash_mismatch"}
!49 = !{!42, !43, i64 0}
!50 = !{!44, !44, i64 0}
!51 = !{!46, !46, i64 0}
!52 = !{!"VP", i32 1, i64 0, i64 5, i64 0, i64 9, i64 0, i64 2, i64 0, i64 4, i64 0}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{!"branch_weights", i32 316, i32 67445}
!55 = !{!"branch_weights", i32 24258, i32 14677, i32 28826}
!56 = !{!"function_entry_count", i64 43822}
!57 = !{!"branch_weights", i32 828, i32 42994}
!58 = !{!"branch_weights", i32 42637, i32 675, i32 510}
!59 = !{!"VP", i32 1, i64 42637, i64 9, i64 22780, i64 8, i64 13902, i64 5, i64 1794, i64 4, i64 1504}
!60 = !{!"function_entry_count", i64 1}
!61 = !{!"source/base/job_identifier.cc;_GLOBAL__sub_I_job_identifier.cc"}
