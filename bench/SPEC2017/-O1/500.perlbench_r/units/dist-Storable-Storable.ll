; ModuleID = 'dist/Storable/Storable.c'
source_filename = "dist/Storable/Storable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.8 }
%union.anon.8 = type { ptr }
%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon, ptr, %union.anon.0, %union.anon.1, %union.anon.2, ptr, %union.anon.3, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu, ptr, %union.anon.6, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.5 = type { i64 }
%union._xivu = type { i64 }
%union.anon.6 = type { ptr }
%struct.io = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.stcxt = type { i32, i32, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.extendable, %struct.extendable, %struct.extendable, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.extendable = type { ptr, i64, ptr, ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.he = type { ptr, ptr, %union.anon.17 }
%union.anon.17 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.12 }
%union.anon.12 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.gv = type { ptr, i32, i32, %union.anon.11 }
%union.anon.11 = type { ptr }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.14, %union._xivu }
%union.anon.14 = type { i64 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.15, %union._xivu }
%union.anon.15 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.16, %union._xivu, %union._xnvu }
%union.anon.16 = type { i64 }
%union._xnvu = type { double }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu, %union._xnvu }
%union.anon.10 = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"dist/Storable/Storable.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Storable::init_perinterp\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Storable::net_pstore\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Storable::pstore\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Storable::mstore\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Storable::net_mstore\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Storable::pretrieve\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Storable::mretrieve\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Storable::dclone\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Storable::is_retrieving\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Storable::is_storing\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Storable::last_op_in_netorder\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Storable\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"BIN_MAJOR\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"BIN_MINOR\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"BIN_WRITE_MINOR\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Storable::drop_utf8\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c"f, obj\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_undef = external global %struct.sv, align 8
@Context_ptr = internal unnamed_addr global ptr null, align 8
@.str.22 = private unnamed_addr constant [16 x i8] c"Not a reference\00", align 1
@vtbl_storable = internal global %struct.mgvtbl { ptr null, ptr null, ptr null, ptr null, ptr @storable_free, ptr null, ptr null, ptr null }, align 8
@magic_write.network_file_header = internal constant [6 x i8] c"pst0\05\0A", align 1
@magic_write.file_header = internal constant [19 x i8] c"pst0\04\0A\0812345678\04\08\08\08", align 16
@sv_store = internal unnamed_addr constant [8 x ptr] [ptr @store_ref, ptr @store_scalar, ptr @store_array, ptr @store_hash, ptr @store_tied, ptr @store_tied_item, ptr @store_code, ptr @store_other], align 16
@.str.23 = private unnamed_addr constant [16 x i8] c"STORABLE_freeze\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"Unexpected object type (%d) in store_hook()\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Too late to ignore hooks for %s class \22%s\22\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"cloning\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"storing\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"STORABLE_attach\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"Freeze cannot return references if %s class is using STORABLE_attach\00", align 1
@.str.30 = private unnamed_addr constant [63 x i8] c"Item #%d returned by STORABLE_freeze for %s is not a reference\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"Could not serialize item #%d from hook in %s\00", align 1
@.str.32 = private unnamed_addr constant [59 x i8] c"No magic '%c' found while storing ref to tied %s with hook\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [31 x i8] c"Unable to record new classname\00", align 1
@PL_sv_no = external global %struct.sv, align 8
@.str.37 = private unnamed_addr constant [34 x i8] c"Can't determine type of %s(0x%lx)\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"Storable::canonical\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"Hash %p inconsistent - expected %d keys, %dth is NULL\00", align 1
@PL_sv_placeholder = external global %struct.sv, align 8
@.str.40 = private unnamed_addr constant [42 x i8] c"No magic '%c' found while storing tied %s\00", align 1
@.str.41 = private unnamed_addr constant [56 x i8] c"No magic 'p' found while storing reference to tied item\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"Storable::Deparse\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"B::Deparse\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"Unexpected return value from B::Deparse::new\0A\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"coderef2text\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"Unexpected return value from B::Deparse::coderef2text\0A\00", align 1
@.str.48 = private unnamed_addr constant [101 x i8] c"The result of B::Deparse::coderef2text was empty - maybe you're trying to serialize an XS function?\0A\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"Storable::forgive_me\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"Can't store %s items\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"Can't store item %s(0x%lx)\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"You lost %s(0x%lx)%c\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.55 = private unnamed_addr constant [58 x i8] c"Frozen string corrupt - contains characters outside 0-255\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"Not a scalar string\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"Magic number checking on storable %s failed\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@old_magicstr = internal constant [11 x i8] c"perl-store\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"File is not a perl storable\00", align 1
@sv_retrieve = internal constant [33 x ptr] [ptr null, ptr @retrieve_lscalar, ptr @retrieve_array, ptr @retrieve_hash, ptr @retrieve_ref, ptr @retrieve_undef, ptr @retrieve_integer, ptr @retrieve_double, ptr @retrieve_byte, ptr @retrieve_netint, ptr @retrieve_scalar, ptr @retrieve_tied_array, ptr @retrieve_tied_hash, ptr @retrieve_tied_scalar, ptr @retrieve_sv_undef, ptr @retrieve_sv_yes, ptr @retrieve_sv_no, ptr @retrieve_blessed, ptr @retrieve_idx_blessed, ptr @retrieve_hook, ptr @retrieve_overloaded, ptr @retrieve_tied_key, ptr @retrieve_tied_idx, ptr @retrieve_utf8str, ptr @retrieve_lutf8str, ptr @retrieve_flag_hash, ptr @retrieve_code, ptr @retrieve_weakref, ptr @retrieve_weakoverloaded, ptr @retrieve_vstring, ptr @retrieve_lvstring, ptr @retrieve_svundef_elem, ptr @retrieve_other], align 16
@sv_old_retrieve = internal constant [33 x ptr] [ptr null, ptr @retrieve_lscalar, ptr @old_retrieve_array, ptr @old_retrieve_hash, ptr @retrieve_ref, ptr @retrieve_undef, ptr @retrieve_integer, ptr @retrieve_double, ptr @retrieve_byte, ptr @retrieve_netint, ptr @retrieve_scalar, ptr @retrieve_tied_array, ptr @retrieve_tied_hash, ptr @retrieve_tied_scalar, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other], align 16
@.str.61 = private unnamed_addr constant [30 x i8] c"Storable::accept_future_minor\00", align 1
@.str.62 = private unnamed_addr constant [60 x i8] c"Storable binary image v%d.%d more recent than I am (v%d.%d)\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"Byte order is not compatible\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"Integer size is not compatible\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"Long integer size is not compatible\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"Pointer size is not compatible\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"Double size is not compatible\00", align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_tainted = external local_unnamed_addr global i8, align 1
@.str.68 = private unnamed_addr constant [46 x i8] c"Class name #%ld should have been seen already\00", align 1
@.str.69 = private unnamed_addr constant [47 x i8] c"Object #%ld should have been retrieved already\00", align 1
@.str.70 = private unnamed_addr constant [50 x i8] c"STORABLE_attach called with unexpected references\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c"STORABLE_attach did not return a %s object\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"STORABLE_thaw\00", align 1
@.str.73 = private unnamed_addr constant [78 x i8] c"No STORABLE_thaw defined for objects of class %s (even after a \22require %s;\22)\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"Forgot to deal with extra type %d\00", align 1
@.str.75 = private unnamed_addr constant [60 x i8] c"Cannot restore overloading on %s(0x%lx) (package <unknown>)\00", align 1
@.str.76 = private unnamed_addr constant [82 x i8] c"Cannot restore overloading on %s(0x%lx) (package %s) (even after a \22require %s;\22)\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"Unexpected type %d in retrieve_code\0A\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"sub \00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"Storable::Eval\00", align 1
@.str.80 = private unnamed_addr constant [55 x i8] c"Can't eval, please set $Storable::Eval to a true value\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.82 = private unnamed_addr constant [55 x i8] c"Unexpected return value from $Storable::Eval callback\0A\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"code %s caused an error: %s\00", align 1
@.str.84 = private unnamed_addr constant [52 x i8] c"code %s did not evaluate to a subroutine reference\0A\00", align 1
@.str.85 = private unnamed_addr constant [57 x i8] c"Corrupted storable %s (binary v%d.%d), current is v%d.%d\00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"Corrupted storable %s (binary v%d.%d)\00", align 1
@.str.87 = private unnamed_addr constant [46 x i8] c"Old tag 0x%lx should have been mapped already\00", align 1
@.str.88 = private unnamed_addr constant [119 x i8] c"Storable binary image v%d.%d contains data of type %d. This Storable is v%d.%d and can only handle data types up to %d\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"sv\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_Storable(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Storable_init_perinterp, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #10
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Storable_pstore, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #10
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.xpvcv, ptr %5, i64 0, i32 5
  store i32 1, ptr %6, align 8, !tbaa !41
  %7 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Storable_pstore, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #10
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.xpvcv, ptr %8, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !41
  %10 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_Storable_mstore, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 0) #10
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.xpvcv, ptr %11, i64 0, i32 5
  store i32 0, ptr %12, align 8, !tbaa !41
  %13 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_Storable_mstore, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 0) #10
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 5
  store i32 1, ptr %15, align 8, !tbaa !41
  %16 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Storable_pretrieve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 0) #10
  %17 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_Storable_mretrieve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 0) #10
  %18 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_Storable_dclone, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 0) #10
  %19 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_Storable_last_op_in_netorder, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #10
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.xpvcv, ptr %20, i64 0, i32 5
  store i32 2, ptr %21, align 8, !tbaa !41
  %22 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Storable_last_op_in_netorder, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #10
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 5
  store i32 1, ptr %24, align 8, !tbaa !41
  %25 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_Storable_last_op_in_netorder, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #10
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.xpvcv, ptr %26, i64 0, i32 5
  store i32 0, ptr %27, align 8, !tbaa !41
  %28 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str.16, i32 noundef 8, i32 noundef 1) #10
  %29 = tail call ptr @Perl_newSViv(i64 noundef 2) #10
  %30 = tail call ptr @Perl_newCONSTSUB(ptr noundef %28, ptr noundef nonnull @.str.17, ptr noundef %29) #10
  %31 = tail call ptr @Perl_newSViv(i64 noundef 10) #10
  %32 = tail call ptr @Perl_newCONSTSUB(ptr noundef %28, ptr noundef nonnull @.str.18, ptr noundef %31) #10
  %33 = tail call ptr @Perl_newSViv(i64 noundef 10) #10
  %34 = tail call ptr @Perl_newCONSTSUB(ptr noundef %28, ptr noundef nonnull @.str.19, ptr noundef %33) #10
  tail call fastcc void @init_perinterp()
  %35 = tail call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.20, i32 noundef 2, i32 noundef 3) #10
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_Storable_init_perinterp(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.3) #10
  br label %15

15:                                               ; preds = %14, %1
  tail call fastcc void @init_perinterp()
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %17 = getelementptr ptr, ptr %16, i64 %7
  store ptr %17, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Storable_pstore(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !41
  %15 = and i64 %11, 34359738360
  %16 = icmp eq i64 %15, 16
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #10
  br label %18

18:                                               ; preds = %17, %1
  %19 = add nsw i32 %5, 1
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = tail call ptr @Perl_sv_2io(ptr noundef %23) #10
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.xpvio, ptr %25, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %29 = getelementptr ptr, ptr %28, i64 %7
  %30 = getelementptr ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = tail call fastcc i32 @do_store(ptr noundef %27, ptr noundef %31, i32 noundef 0, i32 noundef %14, ptr noundef null), !range !49
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, ptr @PL_sv_undef, ptr @PL_sv_yes
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %36 = getelementptr inbounds ptr, ptr %35, i64 %21
  store ptr %34, ptr %36, align 8, !tbaa !42
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %38 = getelementptr inbounds ptr, ptr %37, i64 %21
  store ptr %38, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Storable_mstore(ptr noundef %0) #0 !prof !34 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %6 = load i32, ptr %4, align 4, !tbaa !43
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = load ptr, ptr %0, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !41
  %17 = and i64 %13, 34359738360
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.53) #10
  br label %20

20:                                               ; preds = %19, %1
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %22 = sext i32 %8 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store ptr @PL_sv_undef, ptr %2, align 8, !tbaa !42
  %25 = call fastcc i32 @do_store(ptr noundef null, ptr noundef %24, i32 noundef 0, i32 noundef %16, ptr noundef nonnull %2), !range !49
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store ptr @PL_sv_undef, ptr %2, align 8, !tbaa !42
  br label %28

28:                                               ; preds = %27, %20
  %29 = load ptr, ptr %2, align 8, !tbaa !42
  %30 = call ptr @Perl_sv_2mortal(ptr noundef %29) #10
  store ptr %30, ptr %2, align 8, !tbaa !42
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %32 = getelementptr inbounds ptr, ptr %31, i64 %22
  store ptr %30, ptr %32, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %34 = getelementptr inbounds ptr, ptr %33, i64 %22
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Storable_pretrieve(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.54) #10
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = tail call ptr @Perl_sv_2io(ptr noundef %20) #10
  %22 = getelementptr inbounds %struct.io, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = tail call fastcc ptr @do_retrieve(ptr noundef %23, ptr noundef null, i32 noundef 0)
  %25 = tail call ptr @Perl_sv_2mortal(ptr noundef %24) #10
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %27 = getelementptr inbounds ptr, ptr %26, i64 %18
  store ptr %25, ptr %27, align 8, !tbaa !42
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %29 = getelementptr inbounds ptr, ptr %28, i64 %18
  store ptr %29, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Storable_mretrieve(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.89) #10
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = tail call fastcc ptr @do_retrieve(ptr noundef null, ptr noundef %20, i32 noundef 0)
  %22 = tail call ptr @Perl_sv_2mortal(ptr noundef %21) #10
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %24 = getelementptr inbounds ptr, ptr %23, i64 %18
  store ptr %22, ptr %24, align 8, !tbaa !42
  %25 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %26 = getelementptr inbounds ptr, ptr %25, i64 %18
  store ptr %26, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Storable_dclone(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.89) #10
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = load ptr, ptr @Context_ptr, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 19
  %23 = load i32, ptr %22, align 8, !tbaa !50
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  tail call fastcc void @clean_context(ptr noundef %21)
  br label %26

26:                                               ; preds = %25, %15
  %27 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !53
  %29 = and i32 %28, 14680319
  %30 = icmp eq i32 %29, 14680074
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = tail call ptr @Perl_mg_find(ptr noundef %20, i32 noundef 112) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @Perl_mg_get(ptr noundef %20) #10
  br label %36

36:                                               ; preds = %34, %31, %26
  %37 = tail call fastcc i32 @do_store(ptr noundef null, ptr noundef %20, i32 noundef 4, i32 noundef 0, ptr noundef null), !range !49
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %76, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @Context_ptr, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.stcxt, ptr %40, i64 0, i32 22
  %42 = getelementptr inbounds %struct.stcxt, ptr %40, i64 0, i32 22, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = load ptr, ptr %41, align 8, !tbaa !56
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = icmp eq ptr %44, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = tail call ptr @Perl_safesysmalloc(i64 noundef 8192) #10
  store ptr %50, ptr %41, align 8, !tbaa !56
  %51 = getelementptr inbounds %struct.stcxt, ptr %40, i64 0, i32 22, i32 1
  store i64 8192, ptr %51, align 8, !tbaa !57
  br label %52

52:                                               ; preds = %49, %39
  %53 = load ptr, ptr %41, align 8, !tbaa !56
  store ptr %53, ptr %42, align 8, !tbaa !55
  %54 = and i64 %47, 4294967295
  %55 = icmp eq i64 %54, 0
  %56 = getelementptr inbounds %struct.stcxt, ptr %40, i64 0, i32 22, i32 3
  br i1 %55, label %60, label %57

57:                                               ; preds = %52
  %58 = shl i64 %47, 32
  %59 = ashr exact i64 %58, 32
  br label %63

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.stcxt, ptr %40, i64 0, i32 22, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !57
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i64 [ %62, %60 ], [ %59, %57 ]
  %65 = getelementptr inbounds i8, ptr %53, i64 %64
  store ptr %65, ptr %56, align 8, !tbaa !58
  %66 = load i32, ptr %27, align 4, !tbaa !53
  %67 = and i32 %66, 14680064
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef %20) #10
  %71 = zext i1 %70 to i32
  br label %72

72:                                               ; preds = %69, %63
  %73 = phi i32 [ 0, %63 ], [ %71, %69 ]
  %74 = getelementptr inbounds %struct.stcxt, ptr %40, i64 0, i32 13
  store i32 %73, ptr %74, align 4, !tbaa !59
  %75 = tail call fastcc ptr @do_retrieve(ptr noundef null, ptr noundef null, i32 noundef 4)
  br label %76

76:                                               ; preds = %36, %72
  %77 = phi ptr [ %75, %72 ], [ @PL_sv_undef, %36 ]
  %78 = tail call ptr @Perl_sv_2mortal(ptr noundef %77) #10
  %79 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %80 = getelementptr inbounds ptr, ptr %79, i64 %18
  store ptr %78, ptr %80, align 8, !tbaa !42
  %81 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %82 = getelementptr inbounds ptr, ptr %81, i64 %18
  store ptr %82, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Storable_last_op_in_netorder(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !41
  %15 = and i64 %11, 34359738360
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #10
  br label %18

18:                                               ; preds = %17, %1
  %19 = icmp eq i32 %14, 0
  %20 = load ptr, ptr @Context_ptr, align 8, !tbaa !42
  br i1 %19, label %29, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %20, align 8, !tbaa !60
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !61
  %27 = and i32 %26, %14
  %28 = icmp ne i32 %27, 0
  br label %33

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 12
  %31 = load i32, ptr %30, align 8, !tbaa !62
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %21, %24, %29
  %34 = phi i1 [ %32, %29 ], [ false, %21 ], [ %28, %24 ]
  %35 = add nsw i32 %5, 1
  %36 = select i1 %34, ptr @PL_sv_yes, ptr @PL_sv_no
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %38 = sext i32 %35 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  store ptr %36, ptr %39, align 8, !tbaa !42
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %41 = getelementptr inbounds ptr, ptr %40, i64 %38
  store ptr %41, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @init_perinterp() unnamed_addr #0 !prof !34 {
  %1 = tail call ptr @Perl_newSV(i64 noundef 271) #10
  %2 = tail call ptr @Perl_newRV_noinc(ptr noundef %1) #10
  %3 = tail call ptr @Perl_sv_magicext(ptr noundef %1, ptr noundef null, i32 noundef 126, ptr noundef nonnull @vtbl_storable, ptr noundef null, i32 noundef 0) #10
  %4 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %5, i8 0, i64 272, i1 false)
  %6 = getelementptr inbounds %struct.stcxt, ptr %5, i64 0, i32 29
  store ptr %2, ptr %6, align 8, !tbaa !63
  store ptr %5, ptr @Context_ptr, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.stcxt, ptr %5, i64 0, i32 12
  store i32 0, ptr %7, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.stcxt, ptr %5, i64 0, i32 14
  store i32 -1, ptr %8, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.stcxt, ptr %5, i64 0, i32 18
  store i32 -1, ptr %9, align 4, !tbaa !65
  ret void
}

declare ptr @Perl_gv_fetchpv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2io(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @do_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4) unnamed_addr #0 !prof !34 {
  %6 = load ptr, ptr @Context_ptr, align 8, !tbaa !42
  %7 = or i32 %2, 1
  %8 = getelementptr inbounds %struct.stcxt, ptr %6, i64 0, i32 19
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call fastcc void @clean_context(ptr noundef %6)
  br label %12

12:                                               ; preds = %11, %5
  %13 = load i32, ptr %6, align 8, !tbaa !60
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @allocate_context(ptr noundef nonnull %6)
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %16, %15 ], [ %6, %12 ]
  %19 = load i32, ptr %18, align 8, !tbaa !60
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !53
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 19
  store i32 1, ptr %26, align 8, !tbaa !50
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.22) #10
  br label %27

27:                                               ; preds = %25, %17
  %28 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = icmp eq ptr %0, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 22
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = tail call ptr @Perl_safesysmalloc(i64 noundef 8192) #10
  store ptr %36, ptr %32, align 8, !tbaa !56
  %37 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 22, i32 1
  store i64 8192, ptr %37, align 8, !tbaa !57
  br label %38

38:                                               ; preds = %35, %31
  %39 = load ptr, ptr %32, align 8, !tbaa !56
  %40 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 22, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !55
  %41 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 22, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !57
  %43 = getelementptr inbounds i8, ptr %39, i64 %42
  %44 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 22, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !58
  br label %45

45:                                               ; preds = %38, %27
  %46 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 12
  store i32 %3, ptr %46, align 8, !tbaa !62
  %47 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 14
  store i32 -1, ptr %47, align 8, !tbaa !64
  %48 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 15
  store i32 -1, ptr %48, align 4, !tbaa !66
  %49 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 16
  store ptr null, ptr %49, align 8, !tbaa !67
  %50 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 17
  store i32 -1, ptr %50, align 8, !tbaa !68
  %51 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 10
  %52 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, i8 -1, i64 16, i1 false)
  store ptr %0, ptr %52, align 8, !tbaa !69
  %53 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 1
  store i32 %7, ptr %53, align 4, !tbaa !61
  store i32 1, ptr %18, align 8, !tbaa !60
  %54 = tail call ptr @Perl_ptr_table_new() #10
  %55 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !70
  %56 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 3
  store ptr null, ptr %56, align 8, !tbaa !71
  %57 = tail call ptr @Perl_newSV_type(i32 noundef 12) #10
  %58 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 7
  store ptr %57, ptr %58, align 8, !tbaa !72
  %59 = load ptr, ptr %57, align 8, !tbaa !73
  %60 = getelementptr inbounds %struct.xpvhv, ptr %59, i64 0, i32 3
  store i64 4095, ptr %60, align 8, !tbaa !75
  %61 = tail call ptr @Perl_newSV_type(i32 noundef 12) #10
  %62 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 9
  store ptr %61, ptr %62, align 8, !tbaa !77
  %63 = tail call ptr @Perl_newSV_type(i32 noundef 11) #10
  %64 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 4
  store ptr %63, ptr %64, align 8, !tbaa !78
  %65 = load i32, ptr %46, align 8, !tbaa !62
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i64 19, i64 6
  %68 = select i1 %66, ptr @magic_write.file_header, ptr @magic_write.network_file_header
  %69 = load ptr, ptr %52, align 8, !tbaa !69
  %70 = icmp eq ptr %69, null
  %71 = select i1 %66, ptr getelementptr inbounds ([19 x i8], ptr @magic_write.file_header, i64 0, i64 4), ptr getelementptr inbounds ([6 x i8], ptr @magic_write.network_file_header, i64 0, i64 4)
  %72 = add nsw i64 %67, -4
  %73 = select i1 %70, i64 %72, i64 %67
  %74 = select i1 %70, ptr %71, ptr %68
  br i1 %70, label %75, label %104

75:                                               ; preds = %45
  %76 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 22, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !55
  %78 = getelementptr inbounds i8, ptr %77, i64 %73
  %79 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 22, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !58
  %81 = icmp ugt ptr %78, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 22
  %84 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 22, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !57
  %86 = add i64 %85, %73
  %87 = load ptr, ptr %83, align 8, !tbaa !56
  %88 = ptrtoint ptr %77 to i64
  %89 = ptrtoint ptr %87 to i64
  %90 = sub i64 %88, %89
  %91 = shl i64 %86, 32
  %92 = add i64 %91, 35180077121536
  %93 = ashr exact i64 %92, 32
  %94 = and i64 %93, -8192
  %95 = tail call ptr @Perl_safesysrealloc(ptr noundef %87, i64 noundef %94) #10
  store ptr %95, ptr %83, align 8, !tbaa !56
  store i64 %94, ptr %84, align 8, !tbaa !57
  %96 = shl i64 %90, 32
  %97 = ashr exact i64 %96, 32
  %98 = getelementptr inbounds i8, ptr %95, i64 %97
  store ptr %98, ptr %76, align 8, !tbaa !55
  %99 = getelementptr inbounds i8, ptr %95, i64 %94
  store ptr %99, ptr %79, align 8, !tbaa !58
  br label %100

100:                                              ; preds = %82, %75
  %101 = load ptr, ptr %76, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %101, ptr noundef nonnull align 1 dereferenceable(1) %74, i64 %73, i1 false)
  %102 = load ptr, ptr %76, align 8, !tbaa !55
  %103 = getelementptr inbounds i8, ptr %102, i64 %73
  store ptr %103, ptr %76, align 8, !tbaa !55
  br label %107

104:                                              ; preds = %45
  %105 = tail call i64 @Perl_PerlIO_write(ptr noundef nonnull %69, ptr noundef nonnull %74, i64 noundef %73) #10
  %106 = icmp eq i64 %105, %73
  br i1 %106, label %107, label %135

107:                                              ; preds = %104, %100
  %108 = tail call fastcc i32 @store(ptr noundef nonnull %18, ptr noundef %29)
  %109 = load ptr, ptr %52, align 8, !tbaa !69
  %110 = icmp eq ptr %109, null
  %111 = icmp ne ptr %4, null
  %112 = and i1 %111, %110
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load ptr, ptr @Context_ptr, align 8, !tbaa !42
  %115 = getelementptr inbounds %struct.stcxt, ptr %114, i64 0, i32 22
  %116 = load ptr, ptr %115, align 8, !tbaa !56
  %117 = getelementptr inbounds %struct.stcxt, ptr %114, i64 0, i32 22, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !55
  %119 = ptrtoint ptr %118 to i64
  %120 = ptrtoint ptr %116 to i64
  %121 = sub i64 %119, %120
  %122 = tail call ptr @Perl_newSVpv(ptr noundef %116, i64 noundef %121) #10
  store ptr %122, ptr %4, align 8, !tbaa !42
  br label %123

123:                                              ; preds = %113, %107
  tail call fastcc void @clean_store_context(ptr noundef nonnull %18)
  %124 = getelementptr inbounds %struct.stcxt, ptr %18, i64 0, i32 28
  %125 = load ptr, ptr %124, align 8, !tbaa !79
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %123
  %128 = load i32, ptr %53, align 4, !tbaa !61
  %129 = and i32 %128, 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  tail call fastcc void @free_context(ptr noundef nonnull %18)
  br label %132

132:                                              ; preds = %131, %127, %123
  %133 = icmp eq i32 %108, 0
  %134 = zext i1 %133 to i32
  br label %135

135:                                              ; preds = %104, %132
  %136 = phi i32 [ %134, %132 ], [ 0, %104 ]
  ret i32 %136
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @clean_context(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 20
  %3 = load i32, ptr %2, align 4, !tbaa !80
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !tbaa !80
  %6 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !81
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !61
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @clean_retrieve_context(ptr noundef %0)
  br label %20

14:                                               ; preds = %8
  %15 = and i32 %10, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call fastcc void @clean_store_context(ptr noundef %0)
  br label %20

18:                                               ; preds = %14
  store i32 0, ptr %0, align 8, !tbaa !60
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 0, ptr %19, align 8, !tbaa !50
  store i32 %10, ptr %9, align 4, !tbaa !61
  br label %20

20:                                               ; preds = %17, %18, %13
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @allocate_context(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @Perl_newSV(i64 noundef 271) #10
  %3 = tail call ptr @Perl_newRV_noinc(ptr noundef %2) #10
  %4 = tail call ptr @Perl_sv_magicext(ptr noundef %2, ptr noundef null, i32 noundef 126, ptr noundef nonnull @vtbl_storable, ptr noundef null, i32 noundef 0) #10
  %5 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %6, i8 0, i64 272, i1 false)
  %7 = getelementptr inbounds %struct.stcxt, ptr %6, i64 0, i32 29
  store ptr %3, ptr %7, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 29
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.stcxt, ptr %6, i64 0, i32 28
  store ptr %9, ptr %10, align 8, !tbaa !79
  store ptr %6, ptr @Context_ptr, align 8, !tbaa !42
  ret ptr %6
}

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @store(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = tail call ptr @Perl_ptr_table_fetch(ptr noundef %5, ptr noundef %1) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %95, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %9 = icmp eq ptr %1, @PL_sv_undef
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !83
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !83
  br label %93

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %6, i64 -1
  %16 = ptrtoint ptr %15 to i64
  %17 = trunc i64 %16 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  store i32 %18, ptr %3, align 4, !tbaa !43
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = icmp ult ptr %24, %26
  br i1 %27, label %48, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %30 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !57
  %32 = load ptr, ptr %29, align 8, !tbaa !56
  %33 = ptrtoint ptr %24 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = shl i64 %31, 32
  %37 = and i64 %36, -35184372088832
  %38 = add i64 %37, 35184372088832
  %39 = ashr exact i64 %38, 32
  %40 = tail call ptr @Perl_safesysrealloc(ptr noundef %32, i64 noundef %39) #10
  store ptr %40, ptr %29, align 8, !tbaa !56
  store i64 %39, ptr %30, align 8, !tbaa !57
  %41 = shl i64 %35, 32
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds i8, ptr %40, i64 %42
  store ptr %43, ptr %23, align 8, !tbaa !55
  %44 = getelementptr inbounds i8, ptr %40, i64 %39
  store ptr %44, ptr %25, align 8, !tbaa !58
  br label %48

45:                                               ; preds = %14
  %46 = tail call i32 @PerlIO_putc(ptr noundef nonnull %20, i32 noundef 0) #10
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %93, label %51

48:                                               ; preds = %22, %28
  %49 = phi ptr [ %43, %28 ], [ %24, %22 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  store ptr %50, ptr %23, align 8, !tbaa !55
  store i8 0, ptr %49, align 1, !tbaa !41
  br label %51

51:                                               ; preds = %48, %45
  %52 = load ptr, ptr %19, align 8, !tbaa !69
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %89

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  %57 = getelementptr inbounds i8, ptr %56, i64 4
  %58 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !58
  %60 = icmp ugt ptr %57, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %63 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !57
  %65 = load ptr, ptr %62, align 8, !tbaa !56
  %66 = ptrtoint ptr %56 to i64
  %67 = ptrtoint ptr %65 to i64
  %68 = sub i64 %66, %67
  %69 = shl i64 %64, 32
  %70 = add i64 %69, 35197256990720
  %71 = ashr exact i64 %70, 32
  %72 = and i64 %71, -8192
  %73 = tail call ptr @Perl_safesysrealloc(ptr noundef %65, i64 noundef %72) #10
  store ptr %73, ptr %62, align 8, !tbaa !56
  store i64 %72, ptr %63, align 8, !tbaa !57
  %74 = shl i64 %68, 32
  %75 = ashr exact i64 %74, 32
  %76 = getelementptr inbounds i8, ptr %73, i64 %75
  store ptr %76, ptr %55, align 8, !tbaa !55
  %77 = getelementptr inbounds i8, ptr %73, i64 %72
  store ptr %77, ptr %58, align 8, !tbaa !58
  br label %78

78:                                               ; preds = %61, %54
  %79 = load ptr, ptr %55, align 8, !tbaa !55
  %80 = ptrtoint ptr %79 to i64
  %81 = and i64 %80, 3
  %82 = icmp eq i64 %81, 0
  %83 = load i32, ptr %3, align 4
  br i1 %82, label %84, label %85

84:                                               ; preds = %78
  store i32 %83, ptr %79, align 4, !tbaa !43
  br label %86

85:                                               ; preds = %78
  store i32 %83, ptr %79, align 1
  br label %86

86:                                               ; preds = %85, %84
  %87 = load ptr, ptr %55, align 8, !tbaa !55
  %88 = getelementptr inbounds i8, ptr %87, i64 4
  store ptr %88, ptr %55, align 8, !tbaa !55
  br label %92

89:                                               ; preds = %51
  %90 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %52, ptr noundef nonnull %3, i64 noundef 4) #10
  %91 = icmp eq i64 %90, 4
  br i1 %91, label %92, label %93

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %89, %45, %10, %92
  %94 = phi i32 [ undef, %10 ], [ 0, %92 ], [ -1, %45 ], [ -1, %89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br i1 %9, label %102, label %117

95:                                               ; preds = %2
  %96 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %97 = load i64, ptr %96, align 8, !tbaa !83
  %98 = add nsw i64 %97, 1
  store i64 %98, ptr %96, align 8, !tbaa !83
  %99 = add nsw i64 %97, 2
  %100 = inttoptr i64 %99 to ptr
  tail call void @Perl_ptr_table_store(ptr noundef %5, ptr noundef %1, ptr noundef %100) #10
  %101 = tail call fastcc i32 @sv_type(ptr noundef %1), !range !84
  br label %102

102:                                              ; preds = %93, %95
  %103 = phi i32 [ 1, %93 ], [ %101, %95 ]
  %104 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !53
  %106 = and i32 %105, 1048576
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = load ptr, ptr %1, align 8, !tbaa !85
  %110 = load ptr, ptr %109, align 8, !tbaa !86
  %111 = call fastcc i32 @store_blessed(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %103, ptr noundef %110)
  br label %117

112:                                              ; preds = %102
  %113 = zext nneg i32 %103 to i64
  %114 = getelementptr inbounds [8 x ptr], ptr @sv_store, i64 0, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !42
  %116 = call i32 %115(ptr noundef %0, ptr noundef %1) #10
  br label %117

117:                                              ; preds = %108, %112, %93
  %118 = phi i32 [ %94, %93 ], [ %111, %108 ], [ %116, %112 ]
  ret i32 %118
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @clean_store_context(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %3) #10
  %7 = load ptr, ptr %2, align 8, !tbaa !72
  %8 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %7, i32 noundef 0) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %5 ]
  %12 = getelementptr inbounds %struct.he, ptr %11, i64 0, i32 2
  store ptr @PL_sv_undef, ptr %12, align 8, !tbaa !41
  %13 = load ptr, ptr %2, align 8, !tbaa !72
  %14 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %13, i32 noundef 0) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !llvm.loop !88

16:                                               ; preds = %10, %5, %1
  %17 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store ptr null, ptr %17, align 8, !tbaa !70
  tail call void @Perl_ptr_table_free(ptr noundef nonnull %18) #10
  br label %21

21:                                               ; preds = %20, %16
  %22 = load ptr, ptr %2, align 8, !tbaa !72
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store ptr null, ptr %2, align 8, !tbaa !72
  tail call void @Perl_hv_undef_flags(ptr noundef nonnull %22, i32 noundef 0) #10
  tail call void @Perl_sv_free(ptr noundef nonnull %22) #10
  br label %25

25:                                               ; preds = %24, %21
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !77
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store ptr null, ptr %26, align 8, !tbaa !77
  tail call void @Perl_hv_undef_flags(ptr noundef nonnull %27, i32 noundef 0) #10
  tail call void @Perl_sv_free(ptr noundef nonnull %27) #10
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !78
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store ptr null, ptr %31, align 8, !tbaa !78
  tail call void @Perl_av_undef(ptr noundef nonnull %32) #10
  tail call void @Perl_sv_free(ptr noundef nonnull %32) #10
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 14
  store i32 -1, ptr %36, align 8, !tbaa !64
  %37 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 15
  store i32 -1, ptr %37, align 4, !tbaa !66
  %38 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 16
  %39 = load ptr, ptr %38, align 8, !tbaa !67
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !91
  %44 = icmp ugt i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = add i32 %43, -1
  store i32 %46, ptr %42, align 8, !tbaa !91
  br label %48

47:                                               ; preds = %41
  tail call void @Perl_sv_free2(ptr noundef nonnull %39, i32 noundef %43) #10
  br label %48

48:                                               ; preds = %47, %45, %35
  store ptr null, ptr %38, align 8, !tbaa !67
  %49 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 17
  store i32 -1, ptr %49, align 8, !tbaa !68
  store i32 0, ptr %0, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 0, ptr %50, align 8, !tbaa !50
  %51 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !61
  %53 = and i32 %52, -4
  store i32 %53, ptr %51, align 4, !tbaa !61
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @free_context(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi ptr [ %9, %5 ], [ null, %1 ]
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 29
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !91
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = add i32 %17, -1
  store i32 %20, ptr %16, align 8, !tbaa !91
  br label %22

21:                                               ; preds = %15
  tail call void @Perl_sv_free2(ptr noundef nonnull %13, i32 noundef %17) #10
  br label %22

22:                                               ; preds = %10, %19, %21
  store ptr %11, ptr @Context_ptr, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @clean_retrieve_context(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !tbaa !92
  tail call void @Perl_av_undef(ptr noundef nonnull %3) #10
  tail call void @Perl_sv_free(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 6
  store i64 -1, ptr %7, align 8, !tbaa !93
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store ptr null, ptr %8, align 8, !tbaa !94
  tail call void @Perl_av_undef(ptr noundef nonnull %9) #10
  tail call void @Perl_sv_free(ptr noundef nonnull %9) #10
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store ptr null, ptr %13, align 8, !tbaa !77
  tail call void @Perl_hv_undef_flags(ptr noundef nonnull %14, i32 noundef 0) #10
  tail call void @Perl_sv_free(ptr noundef nonnull %14) #10
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store ptr null, ptr %18, align 8, !tbaa !71
  tail call void @Perl_hv_undef_flags(ptr noundef nonnull %19, i32 noundef 0) #10
  tail call void @Perl_sv_free(ptr noundef nonnull %19) #10
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 18
  store i32 -1, ptr %23, align 4, !tbaa !65
  %24 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  store i32 0, ptr %24, align 8, !tbaa !95
  store i32 0, ptr %0, align 8, !tbaa !60
  %25 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 0, ptr %25, align 8, !tbaa !50
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !61
  %28 = and i32 %27, -4
  store i32 %28, ptr %26, align 4, !tbaa !61
  ret void
}

declare void @Perl_av_undef(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_free(ptr noundef) local_unnamed_addr #2

declare void @Perl_hv_undef_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @storable_free(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.stcxt, ptr %4, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @Perl_safesysfree(ptr noundef nonnull %6) #10
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.stcxt, ptr %4, i64 0, i32 20
  %11 = load i32, ptr %10, align 4, !tbaa !80
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stcxt, ptr %4, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @Perl_safesysfree(ptr noundef nonnull %15) #10
  br label %18

18:                                               ; preds = %17, %13, %9
  %19 = load i32, ptr %10, align 4, !tbaa !80
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.stcxt, ptr %4, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !97
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @Perl_safesysfree(ptr noundef nonnull %23) #10
  br label %26

26:                                               ; preds = %25, %21, %18
  ret i32 0
}

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_ptr_table_new() local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @Perl_PerlIO_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_ptr_table_fetch(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PerlIO_putc(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_ptr_table_store(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @sv_type(ptr noundef %0) unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !53
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %42 [
    i8 0, label %43
    i8 2, label %43
    i8 3, label %5
    i8 1, label %5
    i8 5, label %5
    i8 6, label %5
    i8 7, label %9
    i8 10, label %9
    i8 11, label %27
    i8 12, label %34
    i8 13, label %41
  ]

5:                                                ; preds = %1, %1, %1, %1
  %6 = lshr i32 %3, 11
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  br label %43

9:                                                ; preds = %1, %1
  %10 = and i32 %3, 14680064
  %11 = icmp eq i32 %10, 14680064
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 112) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %12, %9
  %16 = load i32, ptr %2, align 4, !tbaa !53
  %17 = and i32 %16, 14680064
  %18 = icmp eq i32 %17, 14680064
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 113) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %19, %15
  %23 = load i32, ptr %2, align 4, !tbaa !53
  %24 = lshr i32 %23, 11
  %25 = and i32 %24, 1
  %26 = xor i32 %25, 1
  br label %43

27:                                               ; preds = %1
  %28 = and i32 %3, 8388608
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %27
  br label %43

34:                                               ; preds = %1
  %35 = and i32 %3, 8388608
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %34
  br label %43

41:                                               ; preds = %1
  br label %43

42:                                               ; preds = %1
  br label %43

43:                                               ; preds = %1, %37, %30, %19, %12, %1, %42, %41, %40, %33, %22, %5
  %44 = phi i32 [ 7, %42 ], [ 6, %41 ], [ 3, %40 ], [ 2, %33 ], [ %26, %22 ], [ %8, %5 ], [ 1, %1 ], [ 5, %12 ], [ 4, %19 ], [ 4, %30 ], [ 4, %37 ], [ 1, %1 ]
  ret i32 %44
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @store_blessed(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !34 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #10
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  %21 = tail call fastcc ptr @pkg_can(ptr noundef %20, ptr noundef %3, ptr noundef nonnull @.str.23)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %1330, label %23

23:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %24 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !61
  %26 = and i32 %25, 4
  switch i32 %2, label %35 [
    i32 0, label %37
    i32 1, label %37
    i32 2, label %27
    i32 3, label %28
    i32 4, label %29
  ]

27:                                               ; preds = %23
  br label %37

28:                                               ; preds = %23
  br label %37

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !53
  %32 = trunc i32 %31 to i8
  switch i8 %32, label %34 [
    i8 12, label %37
    i8 11, label %33
  ]

33:                                               ; preds = %29
  br label %37

34:                                               ; preds = %29
  br label %37

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %36, align 8, !tbaa !50
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24, i32 noundef %2) #10
  br label %37

37:                                               ; preds = %23, %35, %34, %33, %29, %28, %27, %23
  %38 = phi i8 [ 0, %35 ], [ 4, %34 ], [ 5, %33 ], [ 0, %28 ], [ 0, %27 ], [ 0, %23 ], [ 6, %29 ], [ 0, %23 ]
  %39 = phi i32 [ 0, %35 ], [ 113, %34 ], [ 80, %33 ], [ 0, %28 ], [ 0, %27 ], [ 0, %23 ], [ 80, %29 ], [ 0, %23 ]
  %40 = phi i1 [ false, %35 ], [ true, %34 ], [ true, %33 ], [ false, %28 ], [ false, %27 ], [ false, %23 ], [ true, %29 ], [ false, %23 ]
  %41 = phi i8 [ 0, %35 ], [ 3, %34 ], [ 3, %33 ], [ 2, %28 ], [ 1, %27 ], [ 0, %23 ], [ 3, %29 ], [ 0, %23 ]
  %42 = or disjoint i8 %41, 64
  %43 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !98
  %45 = and i32 %44, 33554432
  %46 = icmp ne i32 %45, 0
  tail call void @llvm.assume(i1 %46)
  %47 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !41
  %49 = load ptr, ptr %3, align 8, !tbaa !73
  %50 = getelementptr inbounds %struct.xpvhv, ptr %49, i64 0, i32 3
  %51 = load i64, ptr %50, align 8, !tbaa !75
  %52 = getelementptr ptr, ptr %48, i64 %51
  %53 = getelementptr i8, ptr %52, i64 36
  %54 = load i32, ptr %53, align 4, !tbaa !99
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %37
  %57 = getelementptr ptr, ptr %52, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !41, !nonnull !101, !noundef !101
  %59 = load ptr, ptr %58, align 8, !tbaa !42
  %60 = icmp ne ptr %59, null
  tail call void @llvm.assume(i1 %60)
  br label %61

61:                                               ; preds = %56, %37
  %62 = getelementptr ptr, ptr %52, i64 1
  br i1 %55, label %65, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %62, align 8, !tbaa !41
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi ptr [ %64, %63 ], [ %62, %61 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !41
  %68 = getelementptr inbounds %struct.hek, ptr %67, i64 0, i32 2
  %69 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %68) #11
  %70 = trunc i64 %69 to i32
  store i32 %70, ptr %5, align 4, !tbaa !43
  %71 = tail call ptr @Perl_newRV(ptr noundef %1) #10
  %72 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  tail call void @Perl_push_scope() #10
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #10
  %73 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !82
  store i64 %73, ptr @PL_tmps_floor, align 8, !tbaa !82
  %74 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %75 = getelementptr inbounds i32, ptr %74, i64 1
  store ptr %75, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %76 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !42
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = tail call ptr @Perl_markstack_grow() #10
  br label %80

80:                                               ; preds = %78, %65
  %81 = phi ptr [ %79, %78 ], [ %75, %65 ]
  %82 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %83 = ptrtoint ptr %72 to i64
  %84 = ptrtoint ptr %82 to i64
  %85 = sub i64 %83, %84
  %86 = lshr exact i64 %85, 3
  %87 = trunc i64 %86 to i32
  store i32 %87, ptr %81, align 4, !tbaa !43
  %88 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %89 = ptrtoint ptr %88 to i64
  %90 = sub i64 %89, %83
  %91 = icmp slt i64 %90, 8
  br i1 %91, label %92, label %94

92:                                               ; preds = %80
  %93 = tail call ptr @Perl_stack_grow(ptr noundef %72, ptr noundef %72, i64 noundef 1) #10
  br label %94

94:                                               ; preds = %92, %80
  %95 = phi ptr [ %93, %92 ], [ %72, %80 ]
  %96 = getelementptr inbounds ptr, ptr %95, i64 1
  store ptr %71, ptr %96, align 8, !tbaa !42
  %97 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %98 = ptrtoint ptr %97 to i64
  %99 = ptrtoint ptr %96 to i64
  %100 = sub i64 %98, %99
  %101 = icmp slt i64 %100, 8
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %96, ptr noundef nonnull %96, i64 noundef 1) #10
  br label %104

104:                                              ; preds = %102, %94
  %105 = phi ptr [ %103, %102 ], [ %96, %94 ]
  %106 = zext nneg i32 %26 to i64
  %107 = tail call ptr @Perl_newSViv(i64 noundef %106) #10
  %108 = tail call ptr @Perl_sv_2mortal(ptr noundef %107) #10
  %109 = getelementptr inbounds ptr, ptr %105, i64 1
  store ptr %108, ptr %109, align 8, !tbaa !42
  store ptr %109, ptr @PL_stack_sp, align 8, !tbaa !42
  %110 = tail call i32 @Perl_call_sv(ptr noundef nonnull %21, i32 noundef 3) #10
  %111 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %112 = tail call ptr @Perl_newSV_type(i32 noundef 11) #10
  %113 = icmp sgt i32 %110, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %104
  %115 = zext nneg i32 %110 to i64
  br label %116

116:                                              ; preds = %114, %127
  %117 = phi i64 [ %115, %114 ], [ %119, %127 ]
  %118 = phi ptr [ %111, %114 ], [ %120, %127 ]
  %119 = add nsw i64 %117, -1
  %120 = getelementptr inbounds ptr, ptr %118, i64 -1
  %121 = load ptr, ptr %118, align 8, !tbaa !42
  %122 = icmp eq ptr %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.sv, ptr %121, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !91
  %126 = add i32 %125, 1
  store i32 %126, ptr %124, align 8, !tbaa !91
  br label %127

127:                                              ; preds = %123, %116
  %128 = tail call ptr @Perl_av_store(ptr noundef %112, i64 noundef %119, ptr noundef %121) #10
  %129 = icmp sgt i64 %117, 1
  br i1 %129, label %116, label %130, !llvm.loop !102

130:                                              ; preds = %127, %104
  %131 = phi ptr [ %111, %104 ], [ %120, %127 ]
  store ptr %131, ptr @PL_stack_sp, align 8, !tbaa !42
  %132 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !82
  %133 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !82
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  tail call void @Perl_free_tmps() #10
  br label %136

136:                                              ; preds = %130, %135
  tail call void @Perl_pop_scope() #10
  %137 = icmp eq ptr %71, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 1
  %140 = load i32, ptr %139, align 8, !tbaa !91
  %141 = icmp ugt i32 %140, 1
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = add i32 %140, -1
  store i32 %143, ptr %139, align 8, !tbaa !91
  br label %145

144:                                              ; preds = %138
  tail call void @Perl_sv_free2(ptr noundef nonnull %71, i32 noundef %140) #10
  br label %145

145:                                              ; preds = %136, %142, %144
  %146 = load ptr, ptr %112, align 8, !tbaa !103
  %147 = getelementptr inbounds %struct.xpvav, ptr %146, i64 0, i32 2
  %148 = load i64, ptr %147, align 8, !tbaa !105
  %149 = trunc i64 %148 to i32
  %150 = add i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %196

152:                                              ; preds = %145
  tail call void @Perl_av_undef(ptr noundef nonnull %112) #10
  tail call void @Perl_sv_free(ptr noundef nonnull %112) #10
  %153 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 7
  %154 = load ptr, ptr %153, align 8, !tbaa !72
  %155 = load i32, ptr %5, align 4, !tbaa !43
  %156 = tail call ptr @Perl_hv_common_key_len(ptr noundef %154, ptr noundef nonnull %68, i32 noundef %155, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %157 = icmp eq ptr %156, null
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %159, align 8, !tbaa !50
  %160 = load i32, ptr %24, align 4, !tbaa !61
  %161 = and i32 %160, 4
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, ptr @.str.27, ptr @.str.26
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.25, ptr noundef nonnull %163, ptr noundef nonnull %68) #10
  br label %164

164:                                              ; preds = %158, %152
  %165 = load ptr, ptr %19, align 8, !tbaa !77
  %166 = load i32, ptr %43, align 4, !tbaa !98
  %167 = and i32 %166, 33554432
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %189, label %169

169:                                              ; preds = %164
  %170 = load ptr, ptr %47, align 8, !tbaa !41
  %171 = load ptr, ptr %3, align 8, !tbaa !73
  %172 = getelementptr inbounds %struct.xpvhv, ptr %171, i64 0, i32 3
  %173 = load i64, ptr %172, align 8, !tbaa !75
  %174 = getelementptr ptr, ptr %170, i64 %173
  %175 = getelementptr ptr, ptr %174, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !41
  %177 = icmp eq ptr %176, null
  br i1 %177, label %189, label %178

178:                                              ; preds = %169
  %179 = getelementptr i8, ptr %174, i64 36
  %180 = load i32, ptr %179, align 4, !tbaa !99
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  %183 = load ptr, ptr %176, align 8, !tbaa !42
  %184 = icmp eq ptr %183, null
  br i1 %184, label %189, label %185

185:                                              ; preds = %182, %178
  %186 = phi ptr [ %176, %182 ], [ %175, %178 ]
  %187 = load ptr, ptr %186, align 8, !tbaa !41
  %188 = getelementptr inbounds %struct.hek, ptr %187, i64 0, i32 2
  br label %189

189:                                              ; preds = %164, %169, %182, %185
  %190 = phi ptr [ %188, %185 ], [ null, %182 ], [ null, %169 ], [ null, %164 ]
  %191 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %190) #11
  %192 = trunc i64 %191 to i32
  %193 = tail call ptr @Perl_newSVsv(ptr noundef nonnull @PL_sv_undef) #10
  %194 = tail call ptr @Perl_hv_common_key_len(ptr noundef %165, ptr noundef %190, i32 noundef %192, i32 noundef 36, ptr noundef %193, i32 noundef 0) #10
  %195 = tail call fastcc i32 @store_blessed(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3)
  br label %1328

196:                                              ; preds = %145
  %197 = getelementptr inbounds %struct.av, ptr %112, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !41
  %199 = load ptr, ptr %198, align 8, !tbaa !42
  %200 = getelementptr inbounds %struct.sv, ptr %199, i64 0, i32 2
  %201 = load i32, ptr %200, align 4, !tbaa !53
  %202 = and i32 %201, 2098176
  %203 = icmp eq i32 %202, 1024
  br i1 %203, label %204, label %210

204:                                              ; preds = %196
  %205 = load ptr, ptr %199, align 8, !tbaa !85
  %206 = getelementptr inbounds %struct.xpv, ptr %205, i64 0, i32 2
  %207 = load i64, ptr %206, align 8, !tbaa !107
  store i64 %207, ptr %6, align 8, !tbaa !82
  %208 = getelementptr inbounds %struct.sv, ptr %199, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !41
  br label %212

210:                                              ; preds = %196
  %211 = call ptr @Perl_sv_2pv_flags(ptr noundef %199, ptr noundef nonnull %6, i32 noundef 2) #10
  br label %212

212:                                              ; preds = %210, %204
  %213 = phi ptr [ %209, %204 ], [ %211, %210 ]
  %214 = call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %3, ptr noundef nonnull @.str.28, i32 noundef 0) #10
  %215 = icmp eq ptr %214, null
  br i1 %215, label %225, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.gv, ptr %214, i64 0, i32 2
  %218 = load i32, ptr %217, align 4, !tbaa !109
  %219 = and i32 %218, 255
  %220 = icmp eq i32 %219, 9
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = icmp sgt i32 %150, 1
  br i1 %222, label %223, label %225

223:                                              ; preds = %221
  %224 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %224, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.29, ptr noundef nonnull %68) #10
  br label %225

225:                                              ; preds = %223, %221, %216, %212
  %226 = phi i32 [ 10, %223 ], [ 10, %221 ], [ 0, %216 ], [ 0, %212 ]
  switch i32 %226, label %1328 [
    i32 0, label %227
    i32 10, label %432
  ]

227:                                              ; preds = %225
  %228 = icmp sgt i32 %150, 1
  br i1 %228, label %229, label %432

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 4
  %231 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  %232 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 2
  %233 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %234 = zext nneg i8 %42 to i32
  %235 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %236 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %237 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %238 = zext nneg i8 %42 to i32
  %239 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %240 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %241 = zext nneg i8 %38 to i32
  %242 = zext nneg i32 %150 to i64
  br label %246

243:                                              ; preds = %428
  %244 = add nuw nsw i64 %247, 1
  %245 = icmp eq i64 %244, %242
  br i1 %245, label %432, label %246, !llvm.loop !111

246:                                              ; preds = %229, %243
  %247 = phi i64 [ 1, %229 ], [ %244, %243 ]
  %248 = phi i32 [ undef, %229 ], [ %431, %243 ]
  %249 = phi i32 [ 0, %229 ], [ %430, %243 ]
  %250 = getelementptr inbounds ptr, ptr %198, i64 %247
  %251 = load ptr, ptr %250, align 8, !tbaa !42
  %252 = load ptr, ptr %230, align 8, !tbaa !78
  %253 = getelementptr inbounds %struct.sv, ptr %251, i64 0, i32 2
  %254 = load i32, ptr %253, align 4, !tbaa !53
  %255 = and i32 %254, 2048
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %246
  store i32 1, ptr %231, align 8, !tbaa !50
  %258 = trunc i64 %247 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.30, i32 noundef %258, ptr noundef nonnull %68) #10
  br label %259

259:                                              ; preds = %257, %246
  %260 = getelementptr inbounds %struct.sv, ptr %251, i64 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !41
  %262 = load ptr, ptr %232, align 8, !tbaa !70
  %263 = call ptr @Perl_ptr_table_fetch(ptr noundef %262, ptr noundef %261) #10
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %415

265:                                              ; preds = %259
  %266 = add nsw i32 %249, 1
  %267 = icmp eq i32 %249, 0
  br i1 %267, label %268, label %361

268:                                              ; preds = %265
  %269 = load ptr, ptr %235, align 8, !tbaa !69
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %292

271:                                              ; preds = %268
  %272 = load ptr, ptr %236, align 8, !tbaa !55
  %273 = load ptr, ptr %237, align 8, !tbaa !58
  %274 = icmp ult ptr %272, %273
  br i1 %274, label %295, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %277 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %278 = load i64, ptr %277, align 8, !tbaa !57
  %279 = load ptr, ptr %276, align 8, !tbaa !56
  %280 = ptrtoint ptr %272 to i64
  %281 = ptrtoint ptr %279 to i64
  %282 = sub i64 %280, %281
  %283 = shl i64 %278, 32
  %284 = and i64 %283, -35184372088832
  %285 = add i64 %284, 35184372088832
  %286 = ashr exact i64 %285, 32
  %287 = call ptr @Perl_safesysrealloc(ptr noundef %279, i64 noundef %286) #10
  store ptr %287, ptr %276, align 8, !tbaa !56
  store i64 %286, ptr %277, align 8, !tbaa !57
  %288 = shl i64 %282, 32
  %289 = ashr exact i64 %288, 32
  %290 = getelementptr inbounds i8, ptr %287, i64 %289
  store ptr %290, ptr %236, align 8, !tbaa !55
  %291 = getelementptr inbounds i8, ptr %287, i64 %286
  store ptr %291, ptr %237, align 8, !tbaa !58
  br label %295

292:                                              ; preds = %268
  %293 = call i32 @PerlIO_putc(ptr noundef nonnull %269, i32 noundef 19) #10
  %294 = icmp eq i32 %293, -1
  br i1 %294, label %428, label %298

295:                                              ; preds = %271, %275
  %296 = phi ptr [ %290, %275 ], [ %272, %271 ]
  %297 = getelementptr inbounds i8, ptr %296, i64 1
  store ptr %297, ptr %236, align 8, !tbaa !55
  store i8 19, ptr %296, align 1, !tbaa !41
  br label %298

298:                                              ; preds = %295, %292
  %299 = load ptr, ptr %235, align 8, !tbaa !69
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %322

301:                                              ; preds = %298
  %302 = load ptr, ptr %239, align 8, !tbaa !55
  %303 = load ptr, ptr %240, align 8, !tbaa !58
  %304 = icmp ult ptr %302, %303
  br i1 %304, label %325, label %305

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %307 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %308 = load i64, ptr %307, align 8, !tbaa !57
  %309 = load ptr, ptr %306, align 8, !tbaa !56
  %310 = ptrtoint ptr %302 to i64
  %311 = ptrtoint ptr %309 to i64
  %312 = sub i64 %310, %311
  %313 = shl i64 %308, 32
  %314 = and i64 %313, -35184372088832
  %315 = add i64 %314, 35184372088832
  %316 = ashr exact i64 %315, 32
  %317 = call ptr @Perl_safesysrealloc(ptr noundef %309, i64 noundef %316) #10
  store ptr %317, ptr %306, align 8, !tbaa !56
  store i64 %316, ptr %307, align 8, !tbaa !57
  %318 = shl i64 %312, 32
  %319 = ashr exact i64 %318, 32
  %320 = getelementptr inbounds i8, ptr %317, i64 %319
  store ptr %320, ptr %239, align 8, !tbaa !55
  %321 = getelementptr inbounds i8, ptr %317, i64 %316
  store ptr %321, ptr %240, align 8, !tbaa !58
  br label %325

322:                                              ; preds = %298
  %323 = call i32 @PerlIO_putc(ptr noundef nonnull %299, i32 noundef %238) #10
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %428, label %328

325:                                              ; preds = %301, %305
  %326 = phi ptr [ %320, %305 ], [ %302, %301 ]
  %327 = getelementptr inbounds i8, ptr %326, i64 1
  store ptr %327, ptr %239, align 8, !tbaa !55
  store i8 %42, ptr %326, align 1, !tbaa !41
  br label %328

328:                                              ; preds = %325, %322
  br i1 %40, label %329, label %393

329:                                              ; preds = %328
  %330 = load ptr, ptr %235, align 8, !tbaa !69
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %358

332:                                              ; preds = %329
  %333 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %334 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %335 = load ptr, ptr %333, align 8, !tbaa !55
  %336 = load ptr, ptr %334, align 8, !tbaa !58
  %337 = icmp ult ptr %335, %336
  br i1 %337, label %338, label %340

338:                                              ; preds = %332
  %339 = getelementptr inbounds i8, ptr %335, i64 1
  store ptr %339, ptr %333, align 8, !tbaa !55
  store i8 %38, ptr %335, align 1, !tbaa !41
  br label %393

340:                                              ; preds = %332
  %341 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %342 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %343 = load i64, ptr %342, align 8, !tbaa !57
  %344 = load ptr, ptr %341, align 8, !tbaa !56
  %345 = ptrtoint ptr %335 to i64
  %346 = ptrtoint ptr %344 to i64
  %347 = sub i64 %345, %346
  %348 = shl i64 %343, 32
  %349 = and i64 %348, -35184372088832
  %350 = add i64 %349, 35184372088832
  %351 = ashr exact i64 %350, 32
  %352 = call ptr @Perl_safesysrealloc(ptr noundef %344, i64 noundef %351) #10
  store ptr %352, ptr %341, align 8, !tbaa !56
  store i64 %351, ptr %342, align 8, !tbaa !57
  %353 = shl i64 %347, 32
  %354 = ashr exact i64 %353, 32
  %355 = getelementptr inbounds i8, ptr %352, i64 %354
  store ptr %355, ptr %333, align 8, !tbaa !55
  %356 = getelementptr inbounds i8, ptr %352, i64 %351
  store ptr %356, ptr %334, align 8, !tbaa !58
  %357 = getelementptr inbounds i8, ptr %355, i64 1
  store ptr %357, ptr %333, align 8, !tbaa !55
  store i8 %38, ptr %355, align 1, !tbaa !41
  br label %393

358:                                              ; preds = %329
  %359 = call i32 @PerlIO_putc(ptr noundef nonnull %330, i32 noundef %241) #10
  %360 = icmp eq i32 %359, -1
  br i1 %360, label %428, label %393

361:                                              ; preds = %265
  %362 = load ptr, ptr %233, align 8, !tbaa !69
  %363 = icmp eq ptr %362, null
  br i1 %363, label %364, label %390

364:                                              ; preds = %361
  %365 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %366 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %367 = load ptr, ptr %365, align 8, !tbaa !55
  %368 = load ptr, ptr %366, align 8, !tbaa !58
  %369 = icmp ult ptr %367, %368
  br i1 %369, label %370, label %372

370:                                              ; preds = %364
  %371 = getelementptr inbounds i8, ptr %367, i64 1
  store ptr %371, ptr %365, align 8, !tbaa !55
  store i8 %42, ptr %367, align 1, !tbaa !41
  br label %393

372:                                              ; preds = %364
  %373 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %374 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %375 = load i64, ptr %374, align 8, !tbaa !57
  %376 = load ptr, ptr %373, align 8, !tbaa !56
  %377 = ptrtoint ptr %367 to i64
  %378 = ptrtoint ptr %376 to i64
  %379 = sub i64 %377, %378
  %380 = shl i64 %375, 32
  %381 = and i64 %380, -35184372088832
  %382 = add i64 %381, 35184372088832
  %383 = ashr exact i64 %382, 32
  %384 = call ptr @Perl_safesysrealloc(ptr noundef %376, i64 noundef %383) #10
  store ptr %384, ptr %373, align 8, !tbaa !56
  store i64 %383, ptr %374, align 8, !tbaa !57
  %385 = shl i64 %379, 32
  %386 = ashr exact i64 %385, 32
  %387 = getelementptr inbounds i8, ptr %384, i64 %386
  store ptr %387, ptr %365, align 8, !tbaa !55
  %388 = getelementptr inbounds i8, ptr %384, i64 %383
  store ptr %388, ptr %366, align 8, !tbaa !58
  %389 = getelementptr inbounds i8, ptr %387, i64 1
  store ptr %389, ptr %365, align 8, !tbaa !55
  store i8 %42, ptr %387, align 1, !tbaa !41
  br label %393

390:                                              ; preds = %361
  %391 = call i32 @PerlIO_putc(ptr noundef nonnull %362, i32 noundef %234) #10
  %392 = icmp eq i32 %391, -1
  br i1 %392, label %428, label %393

393:                                              ; preds = %390, %372, %370, %358, %340, %338, %328
  %394 = call fastcc i32 @store(ptr noundef %0, ptr noundef %261)
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %428

396:                                              ; preds = %393
  %397 = icmp eq ptr %1, null
  %398 = load ptr, ptr %232, align 8, !tbaa !70
  %399 = call ptr @Perl_ptr_table_fetch(ptr noundef %398, ptr noundef %261) #10
  br i1 %397, label %400, label %403

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %401, align 8, !tbaa !50
  %402 = trunc i64 %247 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, i32 noundef %402, ptr noundef nonnull %68) #10
  br label %403

403:                                              ; preds = %400, %396
  %404 = load ptr, ptr %252, align 8, !tbaa !103
  %405 = getelementptr inbounds %struct.xpvav, ptr %404, i64 0, i32 2
  %406 = load i64, ptr %405, align 8, !tbaa !105
  %407 = add nsw i64 %406, 1
  %408 = icmp eq ptr %261, null
  br i1 %408, label %413, label %409

409:                                              ; preds = %403
  %410 = getelementptr inbounds %struct.sv, ptr %261, i64 0, i32 1
  %411 = load i32, ptr %410, align 8, !tbaa !91
  %412 = add i32 %411, 1
  store i32 %412, ptr %410, align 8, !tbaa !91
  br label %413

413:                                              ; preds = %403, %409
  %414 = call ptr @Perl_av_store(ptr noundef nonnull %252, i64 noundef %407, ptr noundef %261) #10
  br label %415

415:                                              ; preds = %413, %259
  %416 = phi ptr [ %263, %259 ], [ %399, %413 ]
  %417 = phi i32 [ %249, %259 ], [ %266, %413 ]
  %418 = icmp eq ptr %251, null
  br i1 %418, label %426, label %419

419:                                              ; preds = %415
  %420 = getelementptr inbounds %struct.sv, ptr %251, i64 0, i32 1
  %421 = load i32, ptr %420, align 8, !tbaa !91
  %422 = icmp ugt i32 %421, 1
  br i1 %422, label %423, label %425

423:                                              ; preds = %419
  %424 = add i32 %421, -1
  store i32 %424, ptr %420, align 8, !tbaa !91
  br label %426

425:                                              ; preds = %419
  call void @Perl_sv_free2(ptr noundef nonnull %251, i32 noundef %421) #10
  br label %426

426:                                              ; preds = %415, %423, %425
  %427 = getelementptr inbounds i8, ptr %416, i64 -1
  store ptr %427, ptr %250, align 8, !tbaa !42
  br label %428

428:                                              ; preds = %390, %358, %322, %426, %393, %292
  %429 = phi i1 [ true, %426 ], [ false, %292 ], [ false, %393 ], [ false, %322 ], [ false, %358 ], [ false, %390 ]
  %430 = phi i32 [ %417, %426 ], [ %266, %292 ], [ %266, %393 ], [ %266, %322 ], [ %266, %358 ], [ %266, %390 ]
  %431 = phi i32 [ %248, %426 ], [ -1, %292 ], [ %394, %393 ], [ -1, %322 ], [ -1, %358 ], [ -1, %390 ]
  br i1 %429, label %243, label %1328

432:                                              ; preds = %243, %227, %225
  %433 = phi i32 [ 0, %225 ], [ 0, %227 ], [ %430, %243 ]
  %434 = phi i32 [ undef, %225 ], [ undef, %227 ], [ %431, %243 ]
  %435 = load i32, ptr %5, align 4, !tbaa !43
  %436 = call fastcc i32 @known_class(ptr noundef %0, ptr noundef nonnull %68, i32 noundef %435, ptr noundef nonnull %7), !range !49
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %432
  store i32 -1, ptr %7, align 4, !tbaa !43
  br label %439

439:                                              ; preds = %438, %432
  %440 = load i32, ptr %7, align 4
  %441 = icmp eq i32 %440, -1
  %442 = load i32, ptr %5, align 4
  %443 = select i1 %441, i32 %442, i32 %440
  %444 = icmp sgt i32 %443, 255
  %445 = or disjoint i8 %41, 4
  %446 = select i1 %444, i8 %445, i8 %41
  %447 = or disjoint i8 %446, 32
  %448 = select i1 %441, i8 %446, i8 %447
  %449 = load i64, ptr %6, align 8, !tbaa !82
  %450 = icmp ugt i64 %449, 255
  %451 = or i8 %448, 8
  %452 = select i1 %450, i8 %451, i8 %448
  %453 = icmp sgt i32 %150, 1
  %454 = or i8 %452, -128
  %455 = select i1 %453, i8 %454, i8 %452
  %456 = icmp sgt i32 %150, 256
  %457 = or i8 %455, 16
  %458 = select i1 %456, i8 %457, i8 %455
  %459 = icmp eq i32 %433, 0
  %460 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %461 = load ptr, ptr %460, align 8, !tbaa !69
  %462 = icmp eq ptr %461, null
  br i1 %459, label %463, label %560

463:                                              ; preds = %439
  br i1 %462, label %464, label %487

464:                                              ; preds = %463
  %465 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %466 = load ptr, ptr %465, align 8, !tbaa !55
  %467 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %468 = load ptr, ptr %467, align 8, !tbaa !58
  %469 = icmp ult ptr %466, %468
  br i1 %469, label %490, label %470

470:                                              ; preds = %464
  %471 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %472 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %473 = load i64, ptr %472, align 8, !tbaa !57
  %474 = load ptr, ptr %471, align 8, !tbaa !56
  %475 = ptrtoint ptr %466 to i64
  %476 = ptrtoint ptr %474 to i64
  %477 = sub i64 %475, %476
  %478 = shl i64 %473, 32
  %479 = and i64 %478, -35184372088832
  %480 = add i64 %479, 35184372088832
  %481 = ashr exact i64 %480, 32
  %482 = call ptr @Perl_safesysrealloc(ptr noundef %474, i64 noundef %481) #10
  store ptr %482, ptr %471, align 8, !tbaa !56
  store i64 %481, ptr %472, align 8, !tbaa !57
  %483 = shl i64 %477, 32
  %484 = ashr exact i64 %483, 32
  %485 = getelementptr inbounds i8, ptr %482, i64 %484
  store ptr %485, ptr %465, align 8, !tbaa !55
  %486 = getelementptr inbounds i8, ptr %482, i64 %481
  store ptr %486, ptr %467, align 8, !tbaa !58
  br label %490

487:                                              ; preds = %463
  %488 = call i32 @PerlIO_putc(ptr noundef nonnull %461, i32 noundef 19) #10
  %489 = icmp eq i32 %488, -1
  br i1 %489, label %1328, label %493

490:                                              ; preds = %464, %470
  %491 = phi ptr [ %485, %470 ], [ %466, %464 ]
  %492 = getelementptr inbounds i8, ptr %491, i64 1
  store ptr %492, ptr %465, align 8, !tbaa !55
  store i8 19, ptr %491, align 1, !tbaa !41
  br label %493

493:                                              ; preds = %490, %487
  %494 = load ptr, ptr %460, align 8, !tbaa !69
  %495 = icmp eq ptr %494, null
  br i1 %495, label %496, label %519

496:                                              ; preds = %493
  %497 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %498 = load ptr, ptr %497, align 8, !tbaa !55
  %499 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %500 = load ptr, ptr %499, align 8, !tbaa !58
  %501 = icmp ult ptr %498, %500
  br i1 %501, label %523, label %502

502:                                              ; preds = %496
  %503 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %504 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %505 = load i64, ptr %504, align 8, !tbaa !57
  %506 = load ptr, ptr %503, align 8, !tbaa !56
  %507 = ptrtoint ptr %498 to i64
  %508 = ptrtoint ptr %506 to i64
  %509 = sub i64 %507, %508
  %510 = shl i64 %505, 32
  %511 = and i64 %510, -35184372088832
  %512 = add i64 %511, 35184372088832
  %513 = ashr exact i64 %512, 32
  %514 = call ptr @Perl_safesysrealloc(ptr noundef %506, i64 noundef %513) #10
  store ptr %514, ptr %503, align 8, !tbaa !56
  store i64 %513, ptr %504, align 8, !tbaa !57
  %515 = shl i64 %509, 32
  %516 = ashr exact i64 %515, 32
  %517 = getelementptr inbounds i8, ptr %514, i64 %516
  store ptr %517, ptr %497, align 8, !tbaa !55
  %518 = getelementptr inbounds i8, ptr %514, i64 %513
  store ptr %518, ptr %499, align 8, !tbaa !58
  br label %523

519:                                              ; preds = %493
  %520 = zext i8 %458 to i32
  %521 = call i32 @PerlIO_putc(ptr noundef nonnull %494, i32 noundef %520) #10
  %522 = icmp eq i32 %521, -1
  br i1 %522, label %1328, label %526

523:                                              ; preds = %496, %502
  %524 = phi ptr [ %517, %502 ], [ %498, %496 ]
  %525 = getelementptr inbounds i8, ptr %524, i64 1
  store ptr %525, ptr %497, align 8, !tbaa !55
  store i8 %458, ptr %524, align 1, !tbaa !41
  br label %526

526:                                              ; preds = %523, %519
  br i1 %40, label %527, label %591

527:                                              ; preds = %526
  %528 = load ptr, ptr %460, align 8, !tbaa !69
  %529 = icmp eq ptr %528, null
  br i1 %529, label %530, label %556

530:                                              ; preds = %527
  %531 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %532 = load ptr, ptr %531, align 8, !tbaa !55
  %533 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %534 = load ptr, ptr %533, align 8, !tbaa !58
  %535 = icmp ult ptr %532, %534
  br i1 %535, label %536, label %538

536:                                              ; preds = %530
  %537 = getelementptr inbounds i8, ptr %532, i64 1
  store ptr %537, ptr %531, align 8, !tbaa !55
  store i8 %38, ptr %532, align 1, !tbaa !41
  br label %591

538:                                              ; preds = %530
  %539 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %540 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %541 = load i64, ptr %540, align 8, !tbaa !57
  %542 = load ptr, ptr %539, align 8, !tbaa !56
  %543 = ptrtoint ptr %532 to i64
  %544 = ptrtoint ptr %542 to i64
  %545 = sub i64 %543, %544
  %546 = shl i64 %541, 32
  %547 = and i64 %546, -35184372088832
  %548 = add i64 %547, 35184372088832
  %549 = ashr exact i64 %548, 32
  %550 = call ptr @Perl_safesysrealloc(ptr noundef %542, i64 noundef %549) #10
  store ptr %550, ptr %539, align 8, !tbaa !56
  store i64 %549, ptr %540, align 8, !tbaa !57
  %551 = shl i64 %545, 32
  %552 = ashr exact i64 %551, 32
  %553 = getelementptr inbounds i8, ptr %550, i64 %552
  store ptr %553, ptr %531, align 8, !tbaa !55
  %554 = getelementptr inbounds i8, ptr %550, i64 %549
  store ptr %554, ptr %533, align 8, !tbaa !58
  %555 = getelementptr inbounds i8, ptr %553, i64 1
  store ptr %555, ptr %531, align 8, !tbaa !55
  store i8 %38, ptr %553, align 1, !tbaa !41
  br label %591

556:                                              ; preds = %527
  %557 = zext nneg i8 %38 to i32
  %558 = call i32 @PerlIO_putc(ptr noundef nonnull %528, i32 noundef %557) #10
  %559 = icmp eq i32 %558, -1
  br i1 %559, label %1328, label %591

560:                                              ; preds = %439
  br i1 %462, label %561, label %587

561:                                              ; preds = %560
  %562 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %563 = load ptr, ptr %562, align 8, !tbaa !55
  %564 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %565 = load ptr, ptr %564, align 8, !tbaa !58
  %566 = icmp ult ptr %563, %565
  br i1 %566, label %567, label %569

567:                                              ; preds = %561
  %568 = getelementptr inbounds i8, ptr %563, i64 1
  store ptr %568, ptr %562, align 8, !tbaa !55
  store i8 %458, ptr %563, align 1, !tbaa !41
  br label %591

569:                                              ; preds = %561
  %570 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %571 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %572 = load i64, ptr %571, align 8, !tbaa !57
  %573 = load ptr, ptr %570, align 8, !tbaa !56
  %574 = ptrtoint ptr %563 to i64
  %575 = ptrtoint ptr %573 to i64
  %576 = sub i64 %574, %575
  %577 = shl i64 %572, 32
  %578 = and i64 %577, -35184372088832
  %579 = add i64 %578, 35184372088832
  %580 = ashr exact i64 %579, 32
  %581 = call ptr @Perl_safesysrealloc(ptr noundef %573, i64 noundef %580) #10
  store ptr %581, ptr %570, align 8, !tbaa !56
  store i64 %580, ptr %571, align 8, !tbaa !57
  %582 = shl i64 %576, 32
  %583 = ashr exact i64 %582, 32
  %584 = getelementptr inbounds i8, ptr %581, i64 %583
  store ptr %584, ptr %562, align 8, !tbaa !55
  %585 = getelementptr inbounds i8, ptr %581, i64 %580
  store ptr %585, ptr %564, align 8, !tbaa !58
  %586 = getelementptr inbounds i8, ptr %584, i64 1
  store ptr %586, ptr %562, align 8, !tbaa !55
  store i8 %458, ptr %584, align 1, !tbaa !41
  br label %591

587:                                              ; preds = %560
  %588 = zext i8 %458 to i32
  %589 = call i32 @PerlIO_putc(ptr noundef nonnull %461, i32 noundef %588) #10
  %590 = icmp eq i32 %589, -1
  br i1 %590, label %1328, label %591

591:                                              ; preds = %587, %569, %567, %556, %538, %536, %526
  %592 = zext i8 %458 to i32
  %593 = and i32 %592, 32
  %594 = icmp eq i32 %593, 0
  %595 = and i32 %592, 4
  %596 = icmp eq i32 %595, 0
  br i1 %594, label %732, label %597

597:                                              ; preds = %591
  br i1 %596, label %692, label %598

598:                                              ; preds = %597
  %599 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %600 = load i32, ptr %599, align 8, !tbaa !62
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %650, label %602

602:                                              ; preds = %598
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  %603 = load i32, ptr %7, align 4, !tbaa !43
  %604 = call i32 @llvm.bswap.i32(i32 %603)
  store i32 %604, ptr %8, align 4, !tbaa !43
  %605 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %606 = load ptr, ptr %605, align 8, !tbaa !69
  %607 = icmp eq ptr %606, null
  br i1 %607, label %608, label %643

608:                                              ; preds = %602
  %609 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %610 = load ptr, ptr %609, align 8, !tbaa !55
  %611 = getelementptr inbounds i8, ptr %610, i64 4
  %612 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %613 = load ptr, ptr %612, align 8, !tbaa !58
  %614 = icmp ugt ptr %611, %613
  br i1 %614, label %615, label %632

615:                                              ; preds = %608
  %616 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %617 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %618 = load i64, ptr %617, align 8, !tbaa !57
  %619 = load ptr, ptr %616, align 8, !tbaa !56
  %620 = ptrtoint ptr %610 to i64
  %621 = ptrtoint ptr %619 to i64
  %622 = sub i64 %620, %621
  %623 = shl i64 %618, 32
  %624 = add i64 %623, 35197256990720
  %625 = ashr exact i64 %624, 32
  %626 = and i64 %625, -8192
  %627 = call ptr @Perl_safesysrealloc(ptr noundef %619, i64 noundef %626) #10
  store ptr %627, ptr %616, align 8, !tbaa !56
  store i64 %626, ptr %617, align 8, !tbaa !57
  %628 = shl i64 %622, 32
  %629 = ashr exact i64 %628, 32
  %630 = getelementptr inbounds i8, ptr %627, i64 %629
  store ptr %630, ptr %609, align 8, !tbaa !55
  %631 = getelementptr inbounds i8, ptr %627, i64 %626
  store ptr %631, ptr %612, align 8, !tbaa !58
  br label %632

632:                                              ; preds = %615, %608
  %633 = load ptr, ptr %609, align 8, !tbaa !55
  %634 = ptrtoint ptr %633 to i64
  %635 = and i64 %634, 3
  %636 = icmp eq i64 %635, 0
  %637 = load i32, ptr %8, align 4
  br i1 %636, label %638, label %639

638:                                              ; preds = %632
  store i32 %637, ptr %633, align 4, !tbaa !43
  br label %640

639:                                              ; preds = %632
  store i32 %637, ptr %633, align 1
  br label %640

640:                                              ; preds = %639, %638
  %641 = load ptr, ptr %609, align 8, !tbaa !55
  %642 = getelementptr inbounds i8, ptr %641, i64 4
  store ptr %642, ptr %609, align 8, !tbaa !55
  br label %646

643:                                              ; preds = %602
  %644 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %606, ptr noundef nonnull %8, i64 noundef 4) #10
  %645 = icmp eq i64 %644, 4
  br i1 %645, label %646, label %647

646:                                              ; preds = %643, %640
  br label %647

647:                                              ; preds = %646, %643
  %648 = phi i1 [ true, %646 ], [ false, %643 ]
  %649 = phi i32 [ %434, %646 ], [ -1, %643 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  br i1 %648, label %914, label %1328

650:                                              ; preds = %598
  %651 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %652 = load ptr, ptr %651, align 8, !tbaa !69
  %653 = icmp eq ptr %652, null
  br i1 %653, label %654, label %689

654:                                              ; preds = %650
  %655 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %656 = load ptr, ptr %655, align 8, !tbaa !55
  %657 = getelementptr inbounds i8, ptr %656, i64 4
  %658 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %659 = load ptr, ptr %658, align 8, !tbaa !58
  %660 = icmp ugt ptr %657, %659
  br i1 %660, label %661, label %678

661:                                              ; preds = %654
  %662 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %663 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %664 = load i64, ptr %663, align 8, !tbaa !57
  %665 = load ptr, ptr %662, align 8, !tbaa !56
  %666 = ptrtoint ptr %656 to i64
  %667 = ptrtoint ptr %665 to i64
  %668 = sub i64 %666, %667
  %669 = shl i64 %664, 32
  %670 = add i64 %669, 35197256990720
  %671 = ashr exact i64 %670, 32
  %672 = and i64 %671, -8192
  %673 = call ptr @Perl_safesysrealloc(ptr noundef %665, i64 noundef %672) #10
  store ptr %673, ptr %662, align 8, !tbaa !56
  store i64 %672, ptr %663, align 8, !tbaa !57
  %674 = shl i64 %668, 32
  %675 = ashr exact i64 %674, 32
  %676 = getelementptr inbounds i8, ptr %673, i64 %675
  store ptr %676, ptr %655, align 8, !tbaa !55
  %677 = getelementptr inbounds i8, ptr %673, i64 %672
  store ptr %677, ptr %658, align 8, !tbaa !58
  br label %678

678:                                              ; preds = %661, %654
  %679 = load ptr, ptr %655, align 8, !tbaa !55
  %680 = ptrtoint ptr %679 to i64
  %681 = and i64 %680, 3
  %682 = icmp eq i64 %681, 0
  %683 = load i32, ptr %7, align 4
  br i1 %682, label %684, label %685

684:                                              ; preds = %678
  store i32 %683, ptr %679, align 4, !tbaa !43
  br label %686

685:                                              ; preds = %678
  store i32 %683, ptr %679, align 1
  br label %686

686:                                              ; preds = %685, %684
  %687 = load ptr, ptr %655, align 8, !tbaa !55
  %688 = getelementptr inbounds i8, ptr %687, i64 4
  store ptr %688, ptr %655, align 8, !tbaa !55
  br label %914

689:                                              ; preds = %650
  %690 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %652, ptr noundef nonnull %7, i64 noundef 4) #10
  %691 = icmp eq i64 %690, 4
  br i1 %691, label %914, label %1328

692:                                              ; preds = %597
  %693 = load i32, ptr %7, align 4, !tbaa !43
  %694 = trunc i32 %693 to i8
  %695 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %696 = load ptr, ptr %695, align 8, !tbaa !69
  %697 = icmp eq ptr %696, null
  br i1 %697, label %698, label %721

698:                                              ; preds = %692
  %699 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %700 = load ptr, ptr %699, align 8, !tbaa !55
  %701 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %702 = load ptr, ptr %701, align 8, !tbaa !58
  %703 = icmp ult ptr %700, %702
  br i1 %703, label %725, label %704

704:                                              ; preds = %698
  %705 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %706 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %707 = load i64, ptr %706, align 8, !tbaa !57
  %708 = load ptr, ptr %705, align 8, !tbaa !56
  %709 = ptrtoint ptr %700 to i64
  %710 = ptrtoint ptr %708 to i64
  %711 = sub i64 %709, %710
  %712 = shl i64 %707, 32
  %713 = and i64 %712, -35184372088832
  %714 = add i64 %713, 35184372088832
  %715 = ashr exact i64 %714, 32
  %716 = call ptr @Perl_safesysrealloc(ptr noundef %708, i64 noundef %715) #10
  store ptr %716, ptr %705, align 8, !tbaa !56
  store i64 %715, ptr %706, align 8, !tbaa !57
  %717 = shl i64 %711, 32
  %718 = ashr exact i64 %717, 32
  %719 = getelementptr inbounds i8, ptr %716, i64 %718
  store ptr %719, ptr %699, align 8, !tbaa !55
  %720 = getelementptr inbounds i8, ptr %716, i64 %715
  store ptr %720, ptr %701, align 8, !tbaa !58
  br label %725

721:                                              ; preds = %692
  %722 = and i32 %693, 255
  %723 = call i32 @PerlIO_putc(ptr noundef nonnull %696, i32 noundef %722) #10
  %724 = icmp eq i32 %723, -1
  br i1 %724, label %729, label %728

725:                                              ; preds = %698, %704
  %726 = phi ptr [ %719, %704 ], [ %700, %698 ]
  %727 = getelementptr inbounds i8, ptr %726, i64 1
  store ptr %727, ptr %699, align 8, !tbaa !55
  store i8 %694, ptr %726, align 1, !tbaa !41
  br label %728

728:                                              ; preds = %725, %721
  br label %729

729:                                              ; preds = %728, %721
  %730 = phi i1 [ true, %728 ], [ false, %721 ]
  %731 = phi i32 [ %434, %728 ], [ -1, %721 ]
  br i1 %730, label %914, label %1328

732:                                              ; preds = %591
  br i1 %596, label %827, label %733

733:                                              ; preds = %732
  %734 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %735 = load i32, ptr %734, align 8, !tbaa !62
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %785, label %737

737:                                              ; preds = %733
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  %738 = load i32, ptr %5, align 4, !tbaa !43
  %739 = call i32 @llvm.bswap.i32(i32 %738)
  store i32 %739, ptr %9, align 4, !tbaa !43
  %740 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %741 = load ptr, ptr %740, align 8, !tbaa !69
  %742 = icmp eq ptr %741, null
  br i1 %742, label %743, label %778

743:                                              ; preds = %737
  %744 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %745 = load ptr, ptr %744, align 8, !tbaa !55
  %746 = getelementptr inbounds i8, ptr %745, i64 4
  %747 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %748 = load ptr, ptr %747, align 8, !tbaa !58
  %749 = icmp ugt ptr %746, %748
  br i1 %749, label %750, label %767

750:                                              ; preds = %743
  %751 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %752 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %753 = load i64, ptr %752, align 8, !tbaa !57
  %754 = load ptr, ptr %751, align 8, !tbaa !56
  %755 = ptrtoint ptr %745 to i64
  %756 = ptrtoint ptr %754 to i64
  %757 = sub i64 %755, %756
  %758 = shl i64 %753, 32
  %759 = add i64 %758, 35197256990720
  %760 = ashr exact i64 %759, 32
  %761 = and i64 %760, -8192
  %762 = call ptr @Perl_safesysrealloc(ptr noundef %754, i64 noundef %761) #10
  store ptr %762, ptr %751, align 8, !tbaa !56
  store i64 %761, ptr %752, align 8, !tbaa !57
  %763 = shl i64 %757, 32
  %764 = ashr exact i64 %763, 32
  %765 = getelementptr inbounds i8, ptr %762, i64 %764
  store ptr %765, ptr %744, align 8, !tbaa !55
  %766 = getelementptr inbounds i8, ptr %762, i64 %761
  store ptr %766, ptr %747, align 8, !tbaa !58
  br label %767

767:                                              ; preds = %750, %743
  %768 = load ptr, ptr %744, align 8, !tbaa !55
  %769 = ptrtoint ptr %768 to i64
  %770 = and i64 %769, 3
  %771 = icmp eq i64 %770, 0
  %772 = load i32, ptr %9, align 4
  br i1 %771, label %773, label %774

773:                                              ; preds = %767
  store i32 %772, ptr %768, align 4, !tbaa !43
  br label %775

774:                                              ; preds = %767
  store i32 %772, ptr %768, align 1
  br label %775

775:                                              ; preds = %774, %773
  %776 = load ptr, ptr %744, align 8, !tbaa !55
  %777 = getelementptr inbounds i8, ptr %776, i64 4
  store ptr %777, ptr %744, align 8, !tbaa !55
  br label %781

778:                                              ; preds = %737
  %779 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %741, ptr noundef nonnull %9, i64 noundef 4) #10
  %780 = icmp eq i64 %779, 4
  br i1 %780, label %781, label %782

781:                                              ; preds = %778, %775
  br label %782

782:                                              ; preds = %781, %778
  %783 = phi i1 [ true, %781 ], [ false, %778 ]
  %784 = phi i32 [ %434, %781 ], [ -1, %778 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  br i1 %783, label %867, label %1328

785:                                              ; preds = %733
  %786 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %787 = load ptr, ptr %786, align 8, !tbaa !69
  %788 = icmp eq ptr %787, null
  br i1 %788, label %789, label %824

789:                                              ; preds = %785
  %790 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %791 = load ptr, ptr %790, align 8, !tbaa !55
  %792 = getelementptr inbounds i8, ptr %791, i64 4
  %793 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %794 = load ptr, ptr %793, align 8, !tbaa !58
  %795 = icmp ugt ptr %792, %794
  br i1 %795, label %796, label %813

796:                                              ; preds = %789
  %797 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %798 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %799 = load i64, ptr %798, align 8, !tbaa !57
  %800 = load ptr, ptr %797, align 8, !tbaa !56
  %801 = ptrtoint ptr %791 to i64
  %802 = ptrtoint ptr %800 to i64
  %803 = sub i64 %801, %802
  %804 = shl i64 %799, 32
  %805 = add i64 %804, 35197256990720
  %806 = ashr exact i64 %805, 32
  %807 = and i64 %806, -8192
  %808 = call ptr @Perl_safesysrealloc(ptr noundef %800, i64 noundef %807) #10
  store ptr %808, ptr %797, align 8, !tbaa !56
  store i64 %807, ptr %798, align 8, !tbaa !57
  %809 = shl i64 %803, 32
  %810 = ashr exact i64 %809, 32
  %811 = getelementptr inbounds i8, ptr %808, i64 %810
  store ptr %811, ptr %790, align 8, !tbaa !55
  %812 = getelementptr inbounds i8, ptr %808, i64 %807
  store ptr %812, ptr %793, align 8, !tbaa !58
  br label %813

813:                                              ; preds = %796, %789
  %814 = load ptr, ptr %790, align 8, !tbaa !55
  %815 = ptrtoint ptr %814 to i64
  %816 = and i64 %815, 3
  %817 = icmp eq i64 %816, 0
  %818 = load i32, ptr %5, align 4
  br i1 %817, label %819, label %820

819:                                              ; preds = %813
  store i32 %818, ptr %814, align 4, !tbaa !43
  br label %821

820:                                              ; preds = %813
  store i32 %818, ptr %814, align 1
  br label %821

821:                                              ; preds = %820, %819
  %822 = load ptr, ptr %790, align 8, !tbaa !55
  %823 = getelementptr inbounds i8, ptr %822, i64 4
  store ptr %823, ptr %790, align 8, !tbaa !55
  br label %867

824:                                              ; preds = %785
  %825 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %787, ptr noundef nonnull %5, i64 noundef 4) #10
  %826 = icmp eq i64 %825, 4
  br i1 %826, label %867, label %1328

827:                                              ; preds = %732
  %828 = load i32, ptr %5, align 4, !tbaa !43
  %829 = trunc i32 %828 to i8
  %830 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %831 = load ptr, ptr %830, align 8, !tbaa !69
  %832 = icmp eq ptr %831, null
  br i1 %832, label %833, label %856

833:                                              ; preds = %827
  %834 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %835 = load ptr, ptr %834, align 8, !tbaa !55
  %836 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %837 = load ptr, ptr %836, align 8, !tbaa !58
  %838 = icmp ult ptr %835, %837
  br i1 %838, label %860, label %839

839:                                              ; preds = %833
  %840 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %841 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %842 = load i64, ptr %841, align 8, !tbaa !57
  %843 = load ptr, ptr %840, align 8, !tbaa !56
  %844 = ptrtoint ptr %835 to i64
  %845 = ptrtoint ptr %843 to i64
  %846 = sub i64 %844, %845
  %847 = shl i64 %842, 32
  %848 = and i64 %847, -35184372088832
  %849 = add i64 %848, 35184372088832
  %850 = ashr exact i64 %849, 32
  %851 = call ptr @Perl_safesysrealloc(ptr noundef %843, i64 noundef %850) #10
  store ptr %851, ptr %840, align 8, !tbaa !56
  store i64 %850, ptr %841, align 8, !tbaa !57
  %852 = shl i64 %846, 32
  %853 = ashr exact i64 %852, 32
  %854 = getelementptr inbounds i8, ptr %851, i64 %853
  store ptr %854, ptr %834, align 8, !tbaa !55
  %855 = getelementptr inbounds i8, ptr %851, i64 %850
  store ptr %855, ptr %836, align 8, !tbaa !58
  br label %860

856:                                              ; preds = %827
  %857 = and i32 %828, 255
  %858 = call i32 @PerlIO_putc(ptr noundef nonnull %831, i32 noundef %857) #10
  %859 = icmp eq i32 %858, -1
  br i1 %859, label %864, label %863

860:                                              ; preds = %833, %839
  %861 = phi ptr [ %854, %839 ], [ %835, %833 ]
  %862 = getelementptr inbounds i8, ptr %861, i64 1
  store ptr %862, ptr %834, align 8, !tbaa !55
  store i8 %829, ptr %861, align 1, !tbaa !41
  br label %863

863:                                              ; preds = %860, %856
  br label %864

864:                                              ; preds = %863, %856
  %865 = phi i1 [ true, %863 ], [ false, %856 ]
  %866 = phi i32 [ %434, %863 ], [ -1, %856 ]
  br i1 %865, label %867, label %1328

867:                                              ; preds = %864, %824, %821, %782
  %868 = phi i32 [ %784, %782 ], [ %434, %824 ], [ %434, %821 ], [ %866, %864 ]
  %869 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %870 = load ptr, ptr %869, align 8, !tbaa !69
  %871 = icmp eq ptr %870, null
  br i1 %871, label %872, label %907

872:                                              ; preds = %867
  %873 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %874 = load ptr, ptr %873, align 8, !tbaa !55
  %875 = load i32, ptr %5, align 4, !tbaa !43
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds i8, ptr %874, i64 %876
  %878 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %879 = load ptr, ptr %878, align 8, !tbaa !58
  %880 = icmp ugt ptr %877, %879
  br i1 %880, label %881, label %899

881:                                              ; preds = %872
  %882 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %883 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %884 = load i64, ptr %883, align 8, !tbaa !57
  %885 = trunc i64 %884 to i32
  %886 = add i32 %875, 8191
  %887 = add i32 %886, %885
  %888 = and i32 %887, -8192
  %889 = load ptr, ptr %882, align 8, !tbaa !56
  %890 = ptrtoint ptr %874 to i64
  %891 = ptrtoint ptr %889 to i64
  %892 = sub i64 %890, %891
  %893 = sext i32 %888 to i64
  %894 = call ptr @Perl_safesysrealloc(ptr noundef %889, i64 noundef %893) #10
  store ptr %894, ptr %882, align 8, !tbaa !56
  store i64 %893, ptr %883, align 8, !tbaa !57
  %895 = shl i64 %892, 32
  %896 = ashr exact i64 %895, 32
  %897 = getelementptr inbounds i8, ptr %894, i64 %896
  store ptr %897, ptr %873, align 8, !tbaa !55
  %898 = getelementptr inbounds i8, ptr %894, i64 %893
  store ptr %898, ptr %878, align 8, !tbaa !58
  br label %899

899:                                              ; preds = %881, %872
  %900 = load ptr, ptr %873, align 8, !tbaa !55
  %901 = load i32, ptr %5, align 4, !tbaa !43
  %902 = sext i32 %901 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %900, ptr nonnull align 1 %68, i64 %902, i1 false)
  %903 = load i32, ptr %5, align 4, !tbaa !43
  %904 = load ptr, ptr %873, align 8, !tbaa !55
  %905 = sext i32 %903 to i64
  %906 = getelementptr inbounds i8, ptr %904, i64 %905
  store ptr %906, ptr %873, align 8, !tbaa !55
  br label %914

907:                                              ; preds = %867
  %908 = load i32, ptr %5, align 4, !tbaa !43
  %909 = sext i32 %908 to i64
  %910 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %870, ptr noundef nonnull %68, i64 noundef %909) #10
  %911 = load i32, ptr %5, align 4, !tbaa !43
  %912 = sext i32 %911 to i64
  %913 = icmp eq i64 %910, %912
  br i1 %913, label %914, label %1328

914:                                              ; preds = %907, %899, %729, %689, %686, %647
  %915 = phi i32 [ %649, %647 ], [ %434, %689 ], [ %434, %686 ], [ %731, %729 ], [ %868, %907 ], [ %868, %899 ]
  %916 = and i32 %592, 8
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %1018, label %918

918:                                              ; preds = %914
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  %919 = load i64, ptr %6, align 8, !tbaa !82
  %920 = trunc i64 %919 to i32
  store i32 %920, ptr %10, align 4, !tbaa !43
  %921 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %922 = load i32, ptr %921, align 8, !tbaa !62
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %971, label %924

924:                                              ; preds = %918
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  %925 = call i32 @llvm.bswap.i32(i32 %920)
  store i32 %925, ptr %11, align 4, !tbaa !43
  %926 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %927 = load ptr, ptr %926, align 8, !tbaa !69
  %928 = icmp eq ptr %927, null
  br i1 %928, label %929, label %964

929:                                              ; preds = %924
  %930 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %931 = load ptr, ptr %930, align 8, !tbaa !55
  %932 = getelementptr inbounds i8, ptr %931, i64 4
  %933 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %934 = load ptr, ptr %933, align 8, !tbaa !58
  %935 = icmp ugt ptr %932, %934
  br i1 %935, label %936, label %953

936:                                              ; preds = %929
  %937 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %938 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %939 = load i64, ptr %938, align 8, !tbaa !57
  %940 = load ptr, ptr %937, align 8, !tbaa !56
  %941 = ptrtoint ptr %931 to i64
  %942 = ptrtoint ptr %940 to i64
  %943 = sub i64 %941, %942
  %944 = shl i64 %939, 32
  %945 = add i64 %944, 35197256990720
  %946 = ashr exact i64 %945, 32
  %947 = and i64 %946, -8192
  %948 = call ptr @Perl_safesysrealloc(ptr noundef %940, i64 noundef %947) #10
  store ptr %948, ptr %937, align 8, !tbaa !56
  store i64 %947, ptr %938, align 8, !tbaa !57
  %949 = shl i64 %943, 32
  %950 = ashr exact i64 %949, 32
  %951 = getelementptr inbounds i8, ptr %948, i64 %950
  store ptr %951, ptr %930, align 8, !tbaa !55
  %952 = getelementptr inbounds i8, ptr %948, i64 %947
  store ptr %952, ptr %933, align 8, !tbaa !58
  br label %953

953:                                              ; preds = %936, %929
  %954 = load ptr, ptr %930, align 8, !tbaa !55
  %955 = ptrtoint ptr %954 to i64
  %956 = and i64 %955, 3
  %957 = icmp eq i64 %956, 0
  %958 = load i32, ptr %11, align 4
  br i1 %957, label %959, label %960

959:                                              ; preds = %953
  store i32 %958, ptr %954, align 4, !tbaa !43
  br label %961

960:                                              ; preds = %953
  store i32 %958, ptr %954, align 1
  br label %961

961:                                              ; preds = %960, %959
  %962 = load ptr, ptr %930, align 8, !tbaa !55
  %963 = getelementptr inbounds i8, ptr %962, i64 4
  store ptr %963, ptr %930, align 8, !tbaa !55
  br label %967

964:                                              ; preds = %924
  %965 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %927, ptr noundef nonnull %11, i64 noundef 4) #10
  %966 = icmp eq i64 %965, 4
  br i1 %966, label %967, label %968

967:                                              ; preds = %964, %961
  br label %968

968:                                              ; preds = %967, %964
  %969 = phi i1 [ true, %967 ], [ false, %964 ]
  %970 = phi i32 [ %915, %967 ], [ -1, %964 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  br i1 %969, label %1013, label %1015

971:                                              ; preds = %918
  %972 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %973 = load ptr, ptr %972, align 8, !tbaa !69
  %974 = icmp eq ptr %973, null
  br i1 %974, label %975, label %1010

975:                                              ; preds = %971
  %976 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %977 = load ptr, ptr %976, align 8, !tbaa !55
  %978 = getelementptr inbounds i8, ptr %977, i64 4
  %979 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %980 = load ptr, ptr %979, align 8, !tbaa !58
  %981 = icmp ugt ptr %978, %980
  br i1 %981, label %982, label %999

982:                                              ; preds = %975
  %983 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %984 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %985 = load i64, ptr %984, align 8, !tbaa !57
  %986 = load ptr, ptr %983, align 8, !tbaa !56
  %987 = ptrtoint ptr %977 to i64
  %988 = ptrtoint ptr %986 to i64
  %989 = sub i64 %987, %988
  %990 = shl i64 %985, 32
  %991 = add i64 %990, 35197256990720
  %992 = ashr exact i64 %991, 32
  %993 = and i64 %992, -8192
  %994 = call ptr @Perl_safesysrealloc(ptr noundef %986, i64 noundef %993) #10
  store ptr %994, ptr %983, align 8, !tbaa !56
  store i64 %993, ptr %984, align 8, !tbaa !57
  %995 = shl i64 %989, 32
  %996 = ashr exact i64 %995, 32
  %997 = getelementptr inbounds i8, ptr %994, i64 %996
  store ptr %997, ptr %976, align 8, !tbaa !55
  %998 = getelementptr inbounds i8, ptr %994, i64 %993
  store ptr %998, ptr %979, align 8, !tbaa !58
  br label %999

999:                                              ; preds = %982, %975
  %1000 = load ptr, ptr %976, align 8, !tbaa !55
  %1001 = ptrtoint ptr %1000 to i64
  %1002 = and i64 %1001, 3
  %1003 = icmp eq i64 %1002, 0
  %1004 = load i32, ptr %10, align 4
  br i1 %1003, label %1005, label %1006

1005:                                             ; preds = %999
  store i32 %1004, ptr %1000, align 4, !tbaa !43
  br label %1007

1006:                                             ; preds = %999
  store i32 %1004, ptr %1000, align 1
  br label %1007

1007:                                             ; preds = %1006, %1005
  %1008 = load ptr, ptr %976, align 8, !tbaa !55
  %1009 = getelementptr inbounds i8, ptr %1008, i64 4
  store ptr %1009, ptr %976, align 8, !tbaa !55
  br label %1013

1010:                                             ; preds = %971
  %1011 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %973, ptr noundef nonnull %10, i64 noundef 4) #10
  %1012 = icmp eq i64 %1011, 4
  br i1 %1012, label %1013, label %1015

1013:                                             ; preds = %1010, %1007, %968
  %1014 = phi i32 [ %970, %968 ], [ %915, %1010 ], [ %915, %1007 ]
  br label %1015

1015:                                             ; preds = %1010, %1013, %968
  %1016 = phi i1 [ true, %1013 ], [ false, %968 ], [ false, %1010 ]
  %1017 = phi i32 [ %1014, %1013 ], [ %970, %968 ], [ -1, %1010 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  br i1 %1016, label %1059, label %1328

1018:                                             ; preds = %914
  %1019 = load i64, ptr %6, align 8, !tbaa !82
  %1020 = trunc i64 %1019 to i8
  %1021 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %1022 = load ptr, ptr %1021, align 8, !tbaa !69
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %1024, label %1047

1024:                                             ; preds = %1018
  %1025 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1026 = load ptr, ptr %1025, align 8, !tbaa !55
  %1027 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1028 = load ptr, ptr %1027, align 8, !tbaa !58
  %1029 = icmp ult ptr %1026, %1028
  br i1 %1029, label %1052, label %1030

1030:                                             ; preds = %1024
  %1031 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1032 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1033 = load i64, ptr %1032, align 8, !tbaa !57
  %1034 = load ptr, ptr %1031, align 8, !tbaa !56
  %1035 = ptrtoint ptr %1026 to i64
  %1036 = ptrtoint ptr %1034 to i64
  %1037 = sub i64 %1035, %1036
  %1038 = shl i64 %1033, 32
  %1039 = and i64 %1038, -35184372088832
  %1040 = add i64 %1039, 35184372088832
  %1041 = ashr exact i64 %1040, 32
  %1042 = call ptr @Perl_safesysrealloc(ptr noundef %1034, i64 noundef %1041) #10
  store ptr %1042, ptr %1031, align 8, !tbaa !56
  store i64 %1041, ptr %1032, align 8, !tbaa !57
  %1043 = shl i64 %1037, 32
  %1044 = ashr exact i64 %1043, 32
  %1045 = getelementptr inbounds i8, ptr %1042, i64 %1044
  store ptr %1045, ptr %1025, align 8, !tbaa !55
  %1046 = getelementptr inbounds i8, ptr %1042, i64 %1041
  store ptr %1046, ptr %1027, align 8, !tbaa !58
  br label %1052

1047:                                             ; preds = %1018
  %1048 = trunc i64 %1019 to i32
  %1049 = and i32 %1048, 255
  %1050 = call i32 @PerlIO_putc(ptr noundef nonnull %1022, i32 noundef %1049) #10
  %1051 = icmp eq i32 %1050, -1
  br i1 %1051, label %1056, label %1055

1052:                                             ; preds = %1024, %1030
  %1053 = phi ptr [ %1045, %1030 ], [ %1026, %1024 ]
  %1054 = getelementptr inbounds i8, ptr %1053, i64 1
  store ptr %1054, ptr %1025, align 8, !tbaa !55
  store i8 %1020, ptr %1053, align 1, !tbaa !41
  br label %1055

1055:                                             ; preds = %1052, %1047
  br label %1056

1056:                                             ; preds = %1055, %1047
  %1057 = phi i1 [ true, %1055 ], [ false, %1047 ]
  %1058 = phi i32 [ %915, %1055 ], [ -1, %1047 ]
  br i1 %1057, label %1059, label %1328

1059:                                             ; preds = %1056, %1015
  %1060 = phi i32 [ %1017, %1015 ], [ %1058, %1056 ]
  %1061 = load i64, ptr %6, align 8, !tbaa !82
  %1062 = icmp eq i64 %1061, 0
  br i1 %1062, label %1102, label %1063

1063:                                             ; preds = %1059
  %1064 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %1065 = load ptr, ptr %1064, align 8, !tbaa !69
  %1066 = icmp eq ptr %1065, null
  br i1 %1066, label %1067, label %1098

1067:                                             ; preds = %1063
  %1068 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1069 = load ptr, ptr %1068, align 8, !tbaa !55
  %1070 = getelementptr inbounds i8, ptr %1069, i64 %1061
  %1071 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1072 = load ptr, ptr %1071, align 8, !tbaa !58
  %1073 = icmp ugt ptr %1070, %1072
  br i1 %1073, label %1074, label %1092

1074:                                             ; preds = %1067
  %1075 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1076 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1077 = load i64, ptr %1076, align 8, !tbaa !57
  %1078 = add i64 %1077, %1061
  %1079 = load ptr, ptr %1075, align 8, !tbaa !56
  %1080 = ptrtoint ptr %1069 to i64
  %1081 = ptrtoint ptr %1079 to i64
  %1082 = sub i64 %1080, %1081
  %1083 = shl i64 %1078, 32
  %1084 = add i64 %1083, 35180077121536
  %1085 = ashr exact i64 %1084, 32
  %1086 = and i64 %1085, -8192
  %1087 = call ptr @Perl_safesysrealloc(ptr noundef %1079, i64 noundef %1086) #10
  store ptr %1087, ptr %1075, align 8, !tbaa !56
  store i64 %1086, ptr %1076, align 8, !tbaa !57
  %1088 = shl i64 %1082, 32
  %1089 = ashr exact i64 %1088, 32
  %1090 = getelementptr inbounds i8, ptr %1087, i64 %1089
  store ptr %1090, ptr %1068, align 8, !tbaa !55
  %1091 = getelementptr inbounds i8, ptr %1087, i64 %1086
  store ptr %1091, ptr %1071, align 8, !tbaa !58
  br label %1092

1092:                                             ; preds = %1074, %1067
  %1093 = load ptr, ptr %1068, align 8, !tbaa !55
  %1094 = load i64, ptr %6, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1093, ptr align 1 %213, i64 %1094, i1 false)
  %1095 = load i64, ptr %6, align 8, !tbaa !82
  %1096 = load ptr, ptr %1068, align 8, !tbaa !55
  %1097 = getelementptr inbounds i8, ptr %1096, i64 %1095
  store ptr %1097, ptr %1068, align 8, !tbaa !55
  br label %1102

1098:                                             ; preds = %1063
  %1099 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1065, ptr noundef %213, i64 noundef %1061) #10
  %1100 = load i64, ptr %6, align 8, !tbaa !82
  %1101 = icmp eq i64 %1099, %1100
  br i1 %1101, label %1102, label %1328

1102:                                             ; preds = %1098, %1092, %1059
  %1103 = icmp sgt i8 %458, -1
  br i1 %1103, label %1303, label %1104

1104:                                             ; preds = %1102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  store i32 %149, ptr %12, align 4, !tbaa !43
  %1105 = and i32 %592, 16
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1200, label %1107

1107:                                             ; preds = %1104
  %1108 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %1109 = load i32, ptr %1108, align 8, !tbaa !62
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1158, label %1111

1111:                                             ; preds = %1107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #10
  %1112 = call i32 @llvm.bswap.i32(i32 %149)
  store i32 %1112, ptr %13, align 4, !tbaa !43
  %1113 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %1114 = load ptr, ptr %1113, align 8, !tbaa !69
  %1115 = icmp eq ptr %1114, null
  br i1 %1115, label %1116, label %1151

1116:                                             ; preds = %1111
  %1117 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1118 = load ptr, ptr %1117, align 8, !tbaa !55
  %1119 = getelementptr inbounds i8, ptr %1118, i64 4
  %1120 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1121 = load ptr, ptr %1120, align 8, !tbaa !58
  %1122 = icmp ugt ptr %1119, %1121
  br i1 %1122, label %1123, label %1140

1123:                                             ; preds = %1116
  %1124 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1125 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1126 = load i64, ptr %1125, align 8, !tbaa !57
  %1127 = load ptr, ptr %1124, align 8, !tbaa !56
  %1128 = ptrtoint ptr %1118 to i64
  %1129 = ptrtoint ptr %1127 to i64
  %1130 = sub i64 %1128, %1129
  %1131 = shl i64 %1126, 32
  %1132 = add i64 %1131, 35197256990720
  %1133 = ashr exact i64 %1132, 32
  %1134 = and i64 %1133, -8192
  %1135 = call ptr @Perl_safesysrealloc(ptr noundef %1127, i64 noundef %1134) #10
  store ptr %1135, ptr %1124, align 8, !tbaa !56
  store i64 %1134, ptr %1125, align 8, !tbaa !57
  %1136 = shl i64 %1130, 32
  %1137 = ashr exact i64 %1136, 32
  %1138 = getelementptr inbounds i8, ptr %1135, i64 %1137
  store ptr %1138, ptr %1117, align 8, !tbaa !55
  %1139 = getelementptr inbounds i8, ptr %1135, i64 %1134
  store ptr %1139, ptr %1120, align 8, !tbaa !58
  br label %1140

1140:                                             ; preds = %1123, %1116
  %1141 = load ptr, ptr %1117, align 8, !tbaa !55
  %1142 = ptrtoint ptr %1141 to i64
  %1143 = and i64 %1142, 3
  %1144 = icmp eq i64 %1143, 0
  %1145 = load i32, ptr %13, align 4
  br i1 %1144, label %1146, label %1147

1146:                                             ; preds = %1140
  store i32 %1145, ptr %1141, align 4, !tbaa !43
  br label %1148

1147:                                             ; preds = %1140
  store i32 %1145, ptr %1141, align 1
  br label %1148

1148:                                             ; preds = %1147, %1146
  %1149 = load ptr, ptr %1117, align 8, !tbaa !55
  %1150 = getelementptr inbounds i8, ptr %1149, i64 4
  store ptr %1150, ptr %1117, align 8, !tbaa !55
  br label %1154

1151:                                             ; preds = %1111
  %1152 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1114, ptr noundef nonnull %13, i64 noundef 4) #10
  %1153 = icmp eq i64 %1152, 4
  br i1 %1153, label %1154, label %1155

1154:                                             ; preds = %1151, %1148
  br label %1155

1155:                                             ; preds = %1154, %1151
  %1156 = phi i1 [ true, %1154 ], [ false, %1151 ]
  %1157 = phi i32 [ %1060, %1154 ], [ -1, %1151 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  br i1 %1156, label %1239, label %1300

1158:                                             ; preds = %1107
  %1159 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %1160 = load ptr, ptr %1159, align 8, !tbaa !69
  %1161 = icmp eq ptr %1160, null
  br i1 %1161, label %1162, label %1197

1162:                                             ; preds = %1158
  %1163 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1164 = load ptr, ptr %1163, align 8, !tbaa !55
  %1165 = getelementptr inbounds i8, ptr %1164, i64 4
  %1166 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1167 = load ptr, ptr %1166, align 8, !tbaa !58
  %1168 = icmp ugt ptr %1165, %1167
  br i1 %1168, label %1169, label %1186

1169:                                             ; preds = %1162
  %1170 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1171 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1172 = load i64, ptr %1171, align 8, !tbaa !57
  %1173 = load ptr, ptr %1170, align 8, !tbaa !56
  %1174 = ptrtoint ptr %1164 to i64
  %1175 = ptrtoint ptr %1173 to i64
  %1176 = sub i64 %1174, %1175
  %1177 = shl i64 %1172, 32
  %1178 = add i64 %1177, 35197256990720
  %1179 = ashr exact i64 %1178, 32
  %1180 = and i64 %1179, -8192
  %1181 = call ptr @Perl_safesysrealloc(ptr noundef %1173, i64 noundef %1180) #10
  store ptr %1181, ptr %1170, align 8, !tbaa !56
  store i64 %1180, ptr %1171, align 8, !tbaa !57
  %1182 = shl i64 %1176, 32
  %1183 = ashr exact i64 %1182, 32
  %1184 = getelementptr inbounds i8, ptr %1181, i64 %1183
  store ptr %1184, ptr %1163, align 8, !tbaa !55
  %1185 = getelementptr inbounds i8, ptr %1181, i64 %1180
  store ptr %1185, ptr %1166, align 8, !tbaa !58
  br label %1186

1186:                                             ; preds = %1169, %1162
  %1187 = load ptr, ptr %1163, align 8, !tbaa !55
  %1188 = ptrtoint ptr %1187 to i64
  %1189 = and i64 %1188, 3
  %1190 = icmp eq i64 %1189, 0
  %1191 = load i32, ptr %12, align 4
  br i1 %1190, label %1192, label %1193

1192:                                             ; preds = %1186
  store i32 %1191, ptr %1187, align 4, !tbaa !43
  br label %1194

1193:                                             ; preds = %1186
  store i32 %1191, ptr %1187, align 1
  br label %1194

1194:                                             ; preds = %1193, %1192
  %1195 = load ptr, ptr %1163, align 8, !tbaa !55
  %1196 = getelementptr inbounds i8, ptr %1195, i64 4
  store ptr %1196, ptr %1163, align 8, !tbaa !55
  br label %1239

1197:                                             ; preds = %1158
  %1198 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1160, ptr noundef nonnull %12, i64 noundef 4) #10
  %1199 = icmp eq i64 %1198, 4
  br i1 %1199, label %1239, label %1300

1200:                                             ; preds = %1104
  %1201 = trunc i64 %148 to i8
  %1202 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %1203 = load ptr, ptr %1202, align 8, !tbaa !69
  %1204 = icmp eq ptr %1203, null
  br i1 %1204, label %1205, label %1228

1205:                                             ; preds = %1200
  %1206 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1207 = load ptr, ptr %1206, align 8, !tbaa !55
  %1208 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1209 = load ptr, ptr %1208, align 8, !tbaa !58
  %1210 = icmp ult ptr %1207, %1209
  br i1 %1210, label %1232, label %1211

1211:                                             ; preds = %1205
  %1212 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1213 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1214 = load i64, ptr %1213, align 8, !tbaa !57
  %1215 = load ptr, ptr %1212, align 8, !tbaa !56
  %1216 = ptrtoint ptr %1207 to i64
  %1217 = ptrtoint ptr %1215 to i64
  %1218 = sub i64 %1216, %1217
  %1219 = shl i64 %1214, 32
  %1220 = and i64 %1219, -35184372088832
  %1221 = add i64 %1220, 35184372088832
  %1222 = ashr exact i64 %1221, 32
  %1223 = call ptr @Perl_safesysrealloc(ptr noundef %1215, i64 noundef %1222) #10
  store ptr %1223, ptr %1212, align 8, !tbaa !56
  store i64 %1222, ptr %1213, align 8, !tbaa !57
  %1224 = shl i64 %1218, 32
  %1225 = ashr exact i64 %1224, 32
  %1226 = getelementptr inbounds i8, ptr %1223, i64 %1225
  store ptr %1226, ptr %1206, align 8, !tbaa !55
  %1227 = getelementptr inbounds i8, ptr %1223, i64 %1222
  store ptr %1227, ptr %1208, align 8, !tbaa !58
  br label %1232

1228:                                             ; preds = %1200
  %1229 = and i32 %149, 255
  %1230 = call i32 @PerlIO_putc(ptr noundef nonnull %1203, i32 noundef %1229) #10
  %1231 = icmp eq i32 %1230, -1
  br i1 %1231, label %1236, label %1235

1232:                                             ; preds = %1205, %1211
  %1233 = phi ptr [ %1226, %1211 ], [ %1207, %1205 ]
  %1234 = getelementptr inbounds i8, ptr %1233, i64 1
  store ptr %1234, ptr %1206, align 8, !tbaa !55
  store i8 %1201, ptr %1233, align 1, !tbaa !41
  br label %1235

1235:                                             ; preds = %1232, %1228
  br label %1236

1236:                                             ; preds = %1235, %1228
  %1237 = phi i1 [ true, %1235 ], [ false, %1228 ]
  %1238 = phi i32 [ %1060, %1235 ], [ -1, %1228 ]
  br i1 %1237, label %1239, label %1300

1239:                                             ; preds = %1236, %1197, %1194, %1155
  %1240 = phi i32 [ %1157, %1155 ], [ %1060, %1197 ], [ %1060, %1194 ], [ %1238, %1236 ]
  %1241 = icmp sgt i32 %150, 1
  br i1 %1241, label %1242, label %1300

1242:                                             ; preds = %1239
  %1243 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %1244 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1245 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1246 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1247 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1248 = zext nneg i32 %150 to i64
  br label %1249

1249:                                             ; preds = %1294, %1242
  %1250 = phi i64 [ 1, %1242 ], [ %1297, %1294 ]
  %1251 = phi i32 [ %1240, %1242 ], [ %1296, %1294 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  %1252 = getelementptr inbounds ptr, ptr %198, i64 %1250
  %1253 = load ptr, ptr %1252, align 8, !tbaa !42
  %1254 = ptrtoint ptr %1253 to i64
  %1255 = trunc i64 %1254 to i32
  %1256 = call i32 @llvm.bswap.i32(i32 %1255)
  store i32 %1256, ptr %14, align 4, !tbaa !43
  %1257 = load ptr, ptr %1243, align 8, !tbaa !69
  %1258 = icmp eq ptr %1257, null
  br i1 %1258, label %1259, label %1290

1259:                                             ; preds = %1249
  %1260 = load ptr, ptr %1244, align 8, !tbaa !55
  %1261 = getelementptr inbounds i8, ptr %1260, i64 4
  %1262 = load ptr, ptr %1245, align 8, !tbaa !58
  %1263 = icmp ugt ptr %1261, %1262
  br i1 %1263, label %1264, label %1279

1264:                                             ; preds = %1259
  %1265 = load i64, ptr %1247, align 8, !tbaa !57
  %1266 = load ptr, ptr %1246, align 8, !tbaa !56
  %1267 = ptrtoint ptr %1260 to i64
  %1268 = ptrtoint ptr %1266 to i64
  %1269 = sub i64 %1267, %1268
  %1270 = shl i64 %1265, 32
  %1271 = add i64 %1270, 35197256990720
  %1272 = ashr exact i64 %1271, 32
  %1273 = and i64 %1272, -8192
  %1274 = call ptr @Perl_safesysrealloc(ptr noundef %1266, i64 noundef %1273) #10
  store ptr %1274, ptr %1246, align 8, !tbaa !56
  store i64 %1273, ptr %1247, align 8, !tbaa !57
  %1275 = shl i64 %1269, 32
  %1276 = ashr exact i64 %1275, 32
  %1277 = getelementptr inbounds i8, ptr %1274, i64 %1276
  store ptr %1277, ptr %1244, align 8, !tbaa !55
  %1278 = getelementptr inbounds i8, ptr %1274, i64 %1273
  store ptr %1278, ptr %1245, align 8, !tbaa !58
  br label %1279

1279:                                             ; preds = %1264, %1259
  %1280 = load ptr, ptr %1244, align 8, !tbaa !55
  %1281 = ptrtoint ptr %1280 to i64
  %1282 = and i64 %1281, 3
  %1283 = icmp eq i64 %1282, 0
  %1284 = load i32, ptr %14, align 4
  br i1 %1283, label %1285, label %1286

1285:                                             ; preds = %1279
  store i32 %1284, ptr %1280, align 4, !tbaa !43
  br label %1287

1286:                                             ; preds = %1279
  store i32 %1284, ptr %1280, align 1
  br label %1287

1287:                                             ; preds = %1286, %1285
  %1288 = load ptr, ptr %1244, align 8, !tbaa !55
  %1289 = getelementptr inbounds i8, ptr %1288, i64 4
  store ptr %1289, ptr %1244, align 8, !tbaa !55
  br label %1293

1290:                                             ; preds = %1249
  %1291 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1257, ptr noundef nonnull %14, i64 noundef 4) #10
  %1292 = icmp eq i64 %1291, 4
  br i1 %1292, label %1293, label %1294

1293:                                             ; preds = %1290, %1287
  br label %1294

1294:                                             ; preds = %1293, %1290
  %1295 = phi i1 [ true, %1293 ], [ false, %1290 ]
  %1296 = phi i32 [ %1251, %1293 ], [ -1, %1290 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  %1297 = add nuw nsw i64 %1250, 1
  %1298 = icmp ne i64 %1297, %1248
  %1299 = select i1 %1295, i1 %1298, i1 false
  br i1 %1299, label %1249, label %1300, !llvm.loop !112

1300:                                             ; preds = %1294, %1239, %1197, %1155, %1236
  %1301 = phi i1 [ false, %1236 ], [ false, %1155 ], [ false, %1197 ], [ true, %1239 ], [ %1295, %1294 ]
  %1302 = phi i32 [ %1238, %1236 ], [ %1157, %1155 ], [ -1, %1197 ], [ %1240, %1239 ], [ %1296, %1294 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  br i1 %1301, label %1303, label %1328

1303:                                             ; preds = %1300, %1102
  %1304 = phi i32 [ %1302, %1300 ], [ %1060, %1102 ]
  br i1 %453, label %1305, label %1308

1305:                                             ; preds = %1303
  %1306 = load ptr, ptr %112, align 8, !tbaa !103
  %1307 = getelementptr inbounds %struct.xpvav, ptr %1306, i64 0, i32 2
  store i64 0, ptr %1307, align 8, !tbaa !105
  br label %1308

1308:                                             ; preds = %1305, %1303
  call void @Perl_av_undef(ptr noundef nonnull %112) #10
  call void @Perl_sv_free(ptr noundef nonnull %112) #10
  br i1 %40, label %1309, label %1327

1309:                                             ; preds = %1308
  %1310 = call ptr @Perl_mg_find(ptr noundef %1, i32 noundef %39) #10
  %1311 = icmp eq ptr %1310, null
  br i1 %1311, label %1312, label %1321

1312:                                             ; preds = %1309
  %1313 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %1314 = load i32, ptr %1313, align 4, !tbaa !53
  %1315 = and i32 %1314, 255
  %1316 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %1316, align 8, !tbaa !50
  %1317 = icmp eq i32 %1315, 12
  %1318 = icmp eq i32 %1315, 11
  %1319 = select i1 %1318, ptr @.str.34, ptr @.str.35
  %1320 = select i1 %1317, ptr @.str.33, ptr %1319
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.32, i32 noundef %39, ptr noundef nonnull %1320) #10
  br label %1321

1321:                                             ; preds = %1312, %1309
  %1322 = getelementptr inbounds %struct.magic, ptr %1310, i64 0, i32 6
  %1323 = load ptr, ptr %1322, align 8, !tbaa !113
  %1324 = call fastcc i32 @store(ptr noundef %0, ptr noundef %1323)
  %1325 = icmp eq i32 %1324, 0
  %1326 = select i1 %1325, i32 %1304, i32 %1324
  br i1 %1325, label %1327, label %1328

1327:                                             ; preds = %1321, %1308
  br label %1328

1328:                                             ; preds = %428, %1300, %1098, %1056, %907, %824, %782, %689, %647, %556, %519, %189, %225, %487, %587, %729, %864, %1015, %1321, %1327
  %1329 = phi i32 [ undef, %225 ], [ 0, %1327 ], [ %1326, %1321 ], [ %1017, %1015 ], [ %731, %729 ], [ %866, %864 ], [ %195, %189 ], [ -1, %487 ], [ -1, %587 ], [ -1, %519 ], [ -1, %556 ], [ %649, %647 ], [ -1, %689 ], [ %784, %782 ], [ -1, %824 ], [ -1, %907 ], [ %1058, %1056 ], [ -1, %1098 ], [ %1302, %1300 ], [ %431, %428 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %1792

1330:                                             ; preds = %4
  %1331 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 2
  %1332 = load i32, ptr %1331, align 4, !tbaa !98
  %1333 = and i32 %1332, 33554432
  %1334 = icmp ne i32 %1333, 0
  tail call void @llvm.assume(i1 %1334)
  %1335 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 3
  %1336 = load ptr, ptr %1335, align 8, !tbaa !41
  %1337 = load ptr, ptr %3, align 8, !tbaa !73
  %1338 = getelementptr inbounds %struct.xpvhv, ptr %1337, i64 0, i32 3
  %1339 = load i64, ptr %1338, align 8, !tbaa !75
  %1340 = getelementptr ptr, ptr %1336, i64 %1339
  %1341 = getelementptr i8, ptr %1340, i64 36
  %1342 = load i32, ptr %1341, align 4, !tbaa !99
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1349, label %1344

1344:                                             ; preds = %1330
  %1345 = getelementptr ptr, ptr %1340, i64 1
  %1346 = load ptr, ptr %1345, align 8, !tbaa !41, !nonnull !101, !noundef !101
  %1347 = load ptr, ptr %1346, align 8, !tbaa !42
  %1348 = icmp ne ptr %1347, null
  tail call void @llvm.assume(i1 %1348)
  br label %1349

1349:                                             ; preds = %1344, %1330
  %1350 = getelementptr ptr, ptr %1340, i64 1
  br i1 %1343, label %1353, label %1351

1351:                                             ; preds = %1349
  %1352 = load ptr, ptr %1350, align 8, !tbaa !41
  br label %1353

1353:                                             ; preds = %1349, %1351
  %1354 = phi ptr [ %1352, %1351 ], [ %1350, %1349 ]
  %1355 = load ptr, ptr %1354, align 8, !tbaa !41
  %1356 = getelementptr inbounds %struct.hek, ptr %1355, i64 0, i32 2
  %1357 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1356) #11
  %1358 = trunc i64 %1357 to i32
  store i32 %1358, ptr %15, align 4, !tbaa !43
  %1359 = call fastcc i32 @known_class(ptr noundef %0, ptr noundef nonnull %1356, i32 noundef %1358, ptr noundef nonnull %16), !range !49
  %1360 = icmp eq i32 %1359, 0
  %1361 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %1362 = load ptr, ptr %1361, align 8, !tbaa !69
  %1363 = icmp eq ptr %1362, null
  br i1 %1360, label %1553, label %1364

1364:                                             ; preds = %1353
  br i1 %1363, label %1365, label %1388

1365:                                             ; preds = %1364
  %1366 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1367 = load ptr, ptr %1366, align 8, !tbaa !55
  %1368 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1369 = load ptr, ptr %1368, align 8, !tbaa !58
  %1370 = icmp ult ptr %1367, %1369
  br i1 %1370, label %1391, label %1371

1371:                                             ; preds = %1365
  %1372 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1373 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1374 = load i64, ptr %1373, align 8, !tbaa !57
  %1375 = load ptr, ptr %1372, align 8, !tbaa !56
  %1376 = ptrtoint ptr %1367 to i64
  %1377 = ptrtoint ptr %1375 to i64
  %1378 = sub i64 %1376, %1377
  %1379 = shl i64 %1374, 32
  %1380 = and i64 %1379, -35184372088832
  %1381 = add i64 %1380, 35184372088832
  %1382 = ashr exact i64 %1381, 32
  %1383 = tail call ptr @Perl_safesysrealloc(ptr noundef %1375, i64 noundef %1382) #10
  store ptr %1383, ptr %1372, align 8, !tbaa !56
  store i64 %1382, ptr %1373, align 8, !tbaa !57
  %1384 = shl i64 %1378, 32
  %1385 = ashr exact i64 %1384, 32
  %1386 = getelementptr inbounds i8, ptr %1383, i64 %1385
  store ptr %1386, ptr %1366, align 8, !tbaa !55
  %1387 = getelementptr inbounds i8, ptr %1383, i64 %1382
  store ptr %1387, ptr %1368, align 8, !tbaa !58
  br label %1391

1388:                                             ; preds = %1364
  %1389 = tail call i32 @PerlIO_putc(ptr noundef nonnull %1362, i32 noundef 18) #10
  %1390 = icmp eq i32 %1389, -1
  br i1 %1390, label %1792, label %1394

1391:                                             ; preds = %1365, %1371
  %1392 = phi ptr [ %1386, %1371 ], [ %1367, %1365 ]
  %1393 = getelementptr inbounds i8, ptr %1392, i64 1
  store ptr %1393, ptr %1366, align 8, !tbaa !55
  store i8 18, ptr %1392, align 1, !tbaa !41
  br label %1394

1394:                                             ; preds = %1391, %1388
  %1395 = load i32, ptr %16, align 4, !tbaa !43
  %1396 = icmp slt i32 %1395, 128
  br i1 %1396, label %1397, label %1431

1397:                                             ; preds = %1394
  %1398 = trunc i32 %1395 to i8
  %1399 = load ptr, ptr %1361, align 8, !tbaa !69
  %1400 = icmp eq ptr %1399, null
  br i1 %1400, label %1401, label %1427

1401:                                             ; preds = %1397
  %1402 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1403 = load ptr, ptr %1402, align 8, !tbaa !55
  %1404 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1405 = load ptr, ptr %1404, align 8, !tbaa !58
  %1406 = icmp ult ptr %1403, %1405
  br i1 %1406, label %1407, label %1409

1407:                                             ; preds = %1401
  %1408 = getelementptr inbounds i8, ptr %1403, i64 1
  store ptr %1408, ptr %1402, align 8, !tbaa !55
  store i8 %1398, ptr %1403, align 1, !tbaa !41
  br label %1787

1409:                                             ; preds = %1401
  %1410 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1411 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1412 = load i64, ptr %1411, align 8, !tbaa !57
  %1413 = load ptr, ptr %1410, align 8, !tbaa !56
  %1414 = ptrtoint ptr %1403 to i64
  %1415 = ptrtoint ptr %1413 to i64
  %1416 = sub i64 %1414, %1415
  %1417 = shl i64 %1412, 32
  %1418 = and i64 %1417, -35184372088832
  %1419 = add i64 %1418, 35184372088832
  %1420 = ashr exact i64 %1419, 32
  %1421 = tail call ptr @Perl_safesysrealloc(ptr noundef %1413, i64 noundef %1420) #10
  store ptr %1421, ptr %1410, align 8, !tbaa !56
  store i64 %1420, ptr %1411, align 8, !tbaa !57
  %1422 = shl i64 %1416, 32
  %1423 = ashr exact i64 %1422, 32
  %1424 = getelementptr inbounds i8, ptr %1421, i64 %1423
  store ptr %1424, ptr %1402, align 8, !tbaa !55
  %1425 = getelementptr inbounds i8, ptr %1421, i64 %1420
  store ptr %1425, ptr %1404, align 8, !tbaa !58
  %1426 = getelementptr inbounds i8, ptr %1424, i64 1
  store ptr %1426, ptr %1402, align 8, !tbaa !55
  store i8 %1398, ptr %1424, align 1, !tbaa !41
  br label %1787

1427:                                             ; preds = %1397
  %1428 = and i32 %1395, 255
  %1429 = tail call i32 @PerlIO_putc(ptr noundef nonnull %1399, i32 noundef %1428) #10
  %1430 = icmp eq i32 %1429, -1
  br i1 %1430, label %1792, label %1787

1431:                                             ; preds = %1394
  %1432 = load ptr, ptr %1361, align 8, !tbaa !69
  %1433 = icmp eq ptr %1432, null
  br i1 %1433, label %1434, label %1457

1434:                                             ; preds = %1431
  %1435 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1436 = load ptr, ptr %1435, align 8, !tbaa !55
  %1437 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1438 = load ptr, ptr %1437, align 8, !tbaa !58
  %1439 = icmp ult ptr %1436, %1438
  br i1 %1439, label %1460, label %1440

1440:                                             ; preds = %1434
  %1441 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1442 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1443 = load i64, ptr %1442, align 8, !tbaa !57
  %1444 = load ptr, ptr %1441, align 8, !tbaa !56
  %1445 = ptrtoint ptr %1436 to i64
  %1446 = ptrtoint ptr %1444 to i64
  %1447 = sub i64 %1445, %1446
  %1448 = shl i64 %1443, 32
  %1449 = and i64 %1448, -35184372088832
  %1450 = add i64 %1449, 35184372088832
  %1451 = ashr exact i64 %1450, 32
  %1452 = tail call ptr @Perl_safesysrealloc(ptr noundef %1444, i64 noundef %1451) #10
  store ptr %1452, ptr %1441, align 8, !tbaa !56
  store i64 %1451, ptr %1442, align 8, !tbaa !57
  %1453 = shl i64 %1447, 32
  %1454 = ashr exact i64 %1453, 32
  %1455 = getelementptr inbounds i8, ptr %1452, i64 %1454
  store ptr %1455, ptr %1435, align 8, !tbaa !55
  %1456 = getelementptr inbounds i8, ptr %1452, i64 %1451
  store ptr %1456, ptr %1437, align 8, !tbaa !58
  br label %1460

1457:                                             ; preds = %1431
  %1458 = tail call i32 @PerlIO_putc(ptr noundef nonnull %1432, i32 noundef 128) #10
  %1459 = icmp eq i32 %1458, -1
  br i1 %1459, label %1792, label %1463

1460:                                             ; preds = %1434, %1440
  %1461 = phi ptr [ %1455, %1440 ], [ %1436, %1434 ]
  %1462 = getelementptr inbounds i8, ptr %1461, i64 1
  store ptr %1462, ptr %1435, align 8, !tbaa !55
  store i8 -128, ptr %1461, align 1, !tbaa !41
  br label %1463

1463:                                             ; preds = %1460, %1457
  %1464 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %1465 = load i32, ptr %1464, align 8, !tbaa !62
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1512, label %1467

1467:                                             ; preds = %1463
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #10
  %1468 = load i32, ptr %16, align 4, !tbaa !43
  %1469 = tail call i32 @llvm.bswap.i32(i32 %1468)
  store i32 %1469, ptr %17, align 4, !tbaa !43
  %1470 = load ptr, ptr %1361, align 8, !tbaa !69
  %1471 = icmp eq ptr %1470, null
  br i1 %1471, label %1472, label %1507

1472:                                             ; preds = %1467
  %1473 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1474 = load ptr, ptr %1473, align 8, !tbaa !55
  %1475 = getelementptr inbounds i8, ptr %1474, i64 4
  %1476 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1477 = load ptr, ptr %1476, align 8, !tbaa !58
  %1478 = icmp ugt ptr %1475, %1477
  br i1 %1478, label %1479, label %1496

1479:                                             ; preds = %1472
  %1480 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1481 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1482 = load i64, ptr %1481, align 8, !tbaa !57
  %1483 = load ptr, ptr %1480, align 8, !tbaa !56
  %1484 = ptrtoint ptr %1474 to i64
  %1485 = ptrtoint ptr %1483 to i64
  %1486 = sub i64 %1484, %1485
  %1487 = shl i64 %1482, 32
  %1488 = add i64 %1487, 35197256990720
  %1489 = ashr exact i64 %1488, 32
  %1490 = and i64 %1489, -8192
  %1491 = tail call ptr @Perl_safesysrealloc(ptr noundef %1483, i64 noundef %1490) #10
  store ptr %1491, ptr %1480, align 8, !tbaa !56
  store i64 %1490, ptr %1481, align 8, !tbaa !57
  %1492 = shl i64 %1486, 32
  %1493 = ashr exact i64 %1492, 32
  %1494 = getelementptr inbounds i8, ptr %1491, i64 %1493
  store ptr %1494, ptr %1473, align 8, !tbaa !55
  %1495 = getelementptr inbounds i8, ptr %1491, i64 %1490
  store ptr %1495, ptr %1476, align 8, !tbaa !58
  br label %1496

1496:                                             ; preds = %1479, %1472
  %1497 = load ptr, ptr %1473, align 8, !tbaa !55
  %1498 = ptrtoint ptr %1497 to i64
  %1499 = and i64 %1498, 3
  %1500 = icmp eq i64 %1499, 0
  %1501 = load i32, ptr %17, align 4
  br i1 %1500, label %1502, label %1503

1502:                                             ; preds = %1496
  store i32 %1501, ptr %1497, align 4, !tbaa !43
  br label %1504

1503:                                             ; preds = %1496
  store i32 %1501, ptr %1497, align 1
  br label %1504

1504:                                             ; preds = %1503, %1502
  %1505 = load ptr, ptr %1473, align 8, !tbaa !55
  %1506 = getelementptr inbounds i8, ptr %1505, i64 4
  store ptr %1506, ptr %1473, align 8, !tbaa !55
  br label %1510

1507:                                             ; preds = %1467
  %1508 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1470, ptr noundef nonnull %17, i64 noundef 4) #10
  %1509 = icmp eq i64 %1508, 4
  br i1 %1509, label %1510, label %1511

1510:                                             ; preds = %1507, %1504
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #10
  br label %1787

1511:                                             ; preds = %1507
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #10
  br label %1792

1512:                                             ; preds = %1463
  %1513 = load ptr, ptr %1361, align 8, !tbaa !69
  %1514 = icmp eq ptr %1513, null
  br i1 %1514, label %1515, label %1550

1515:                                             ; preds = %1512
  %1516 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1517 = load ptr, ptr %1516, align 8, !tbaa !55
  %1518 = getelementptr inbounds i8, ptr %1517, i64 4
  %1519 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1520 = load ptr, ptr %1519, align 8, !tbaa !58
  %1521 = icmp ugt ptr %1518, %1520
  br i1 %1521, label %1522, label %1539

1522:                                             ; preds = %1515
  %1523 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1524 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1525 = load i64, ptr %1524, align 8, !tbaa !57
  %1526 = load ptr, ptr %1523, align 8, !tbaa !56
  %1527 = ptrtoint ptr %1517 to i64
  %1528 = ptrtoint ptr %1526 to i64
  %1529 = sub i64 %1527, %1528
  %1530 = shl i64 %1525, 32
  %1531 = add i64 %1530, 35197256990720
  %1532 = ashr exact i64 %1531, 32
  %1533 = and i64 %1532, -8192
  %1534 = tail call ptr @Perl_safesysrealloc(ptr noundef %1526, i64 noundef %1533) #10
  store ptr %1534, ptr %1523, align 8, !tbaa !56
  store i64 %1533, ptr %1524, align 8, !tbaa !57
  %1535 = shl i64 %1529, 32
  %1536 = ashr exact i64 %1535, 32
  %1537 = getelementptr inbounds i8, ptr %1534, i64 %1536
  store ptr %1537, ptr %1516, align 8, !tbaa !55
  %1538 = getelementptr inbounds i8, ptr %1534, i64 %1533
  store ptr %1538, ptr %1519, align 8, !tbaa !58
  br label %1539

1539:                                             ; preds = %1522, %1515
  %1540 = load ptr, ptr %1516, align 8, !tbaa !55
  %1541 = ptrtoint ptr %1540 to i64
  %1542 = and i64 %1541, 3
  %1543 = icmp eq i64 %1542, 0
  %1544 = load i32, ptr %16, align 4
  br i1 %1543, label %1545, label %1546

1545:                                             ; preds = %1539
  store i32 %1544, ptr %1540, align 4, !tbaa !43
  br label %1547

1546:                                             ; preds = %1539
  store i32 %1544, ptr %1540, align 1
  br label %1547

1547:                                             ; preds = %1546, %1545
  %1548 = load ptr, ptr %1516, align 8, !tbaa !55
  %1549 = getelementptr inbounds i8, ptr %1548, i64 4
  store ptr %1549, ptr %1516, align 8, !tbaa !55
  br label %1787

1550:                                             ; preds = %1512
  %1551 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1513, ptr noundef nonnull %16, i64 noundef 4) #10
  %1552 = icmp eq i64 %1551, 4
  br i1 %1552, label %1787, label %1792

1553:                                             ; preds = %1353
  br i1 %1363, label %1554, label %1577

1554:                                             ; preds = %1553
  %1555 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1556 = load ptr, ptr %1555, align 8, !tbaa !55
  %1557 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1558 = load ptr, ptr %1557, align 8, !tbaa !58
  %1559 = icmp ult ptr %1556, %1558
  br i1 %1559, label %1580, label %1560

1560:                                             ; preds = %1554
  %1561 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1562 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1563 = load i64, ptr %1562, align 8, !tbaa !57
  %1564 = load ptr, ptr %1561, align 8, !tbaa !56
  %1565 = ptrtoint ptr %1556 to i64
  %1566 = ptrtoint ptr %1564 to i64
  %1567 = sub i64 %1565, %1566
  %1568 = shl i64 %1563, 32
  %1569 = and i64 %1568, -35184372088832
  %1570 = add i64 %1569, 35184372088832
  %1571 = ashr exact i64 %1570, 32
  %1572 = tail call ptr @Perl_safesysrealloc(ptr noundef %1564, i64 noundef %1571) #10
  store ptr %1572, ptr %1561, align 8, !tbaa !56
  store i64 %1571, ptr %1562, align 8, !tbaa !57
  %1573 = shl i64 %1567, 32
  %1574 = ashr exact i64 %1573, 32
  %1575 = getelementptr inbounds i8, ptr %1572, i64 %1574
  store ptr %1575, ptr %1555, align 8, !tbaa !55
  %1576 = getelementptr inbounds i8, ptr %1572, i64 %1571
  store ptr %1576, ptr %1557, align 8, !tbaa !58
  br label %1580

1577:                                             ; preds = %1553
  %1578 = tail call i32 @PerlIO_putc(ptr noundef nonnull %1362, i32 noundef 17) #10
  %1579 = icmp eq i32 %1578, -1
  br i1 %1579, label %1792, label %1583

1580:                                             ; preds = %1554, %1560
  %1581 = phi ptr [ %1575, %1560 ], [ %1556, %1554 ]
  %1582 = getelementptr inbounds i8, ptr %1581, i64 1
  store ptr %1582, ptr %1555, align 8, !tbaa !55
  store i8 17, ptr %1581, align 1, !tbaa !41
  br label %1583

1583:                                             ; preds = %1580, %1577
  %1584 = load i32, ptr %15, align 4, !tbaa !43
  %1585 = icmp slt i32 %1584, 128
  br i1 %1585, label %1586, label %1620

1586:                                             ; preds = %1583
  %1587 = trunc i32 %1584 to i8
  %1588 = load ptr, ptr %1361, align 8, !tbaa !69
  %1589 = icmp eq ptr %1588, null
  br i1 %1589, label %1590, label %1616

1590:                                             ; preds = %1586
  %1591 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1592 = load ptr, ptr %1591, align 8, !tbaa !55
  %1593 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1594 = load ptr, ptr %1593, align 8, !tbaa !58
  %1595 = icmp ult ptr %1592, %1594
  br i1 %1595, label %1596, label %1598

1596:                                             ; preds = %1590
  %1597 = getelementptr inbounds i8, ptr %1592, i64 1
  store ptr %1597, ptr %1591, align 8, !tbaa !55
  store i8 %1587, ptr %1592, align 1, !tbaa !41
  br label %1742

1598:                                             ; preds = %1590
  %1599 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1600 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1601 = load i64, ptr %1600, align 8, !tbaa !57
  %1602 = load ptr, ptr %1599, align 8, !tbaa !56
  %1603 = ptrtoint ptr %1592 to i64
  %1604 = ptrtoint ptr %1602 to i64
  %1605 = sub i64 %1603, %1604
  %1606 = shl i64 %1601, 32
  %1607 = and i64 %1606, -35184372088832
  %1608 = add i64 %1607, 35184372088832
  %1609 = ashr exact i64 %1608, 32
  %1610 = tail call ptr @Perl_safesysrealloc(ptr noundef %1602, i64 noundef %1609) #10
  store ptr %1610, ptr %1599, align 8, !tbaa !56
  store i64 %1609, ptr %1600, align 8, !tbaa !57
  %1611 = shl i64 %1605, 32
  %1612 = ashr exact i64 %1611, 32
  %1613 = getelementptr inbounds i8, ptr %1610, i64 %1612
  store ptr %1613, ptr %1591, align 8, !tbaa !55
  %1614 = getelementptr inbounds i8, ptr %1610, i64 %1609
  store ptr %1614, ptr %1593, align 8, !tbaa !58
  %1615 = getelementptr inbounds i8, ptr %1613, i64 1
  store ptr %1615, ptr %1591, align 8, !tbaa !55
  store i8 %1587, ptr %1613, align 1, !tbaa !41
  br label %1742

1616:                                             ; preds = %1586
  %1617 = and i32 %1584, 255
  %1618 = tail call i32 @PerlIO_putc(ptr noundef nonnull %1588, i32 noundef %1617) #10
  %1619 = icmp eq i32 %1618, -1
  br i1 %1619, label %1792, label %1742

1620:                                             ; preds = %1583
  %1621 = load ptr, ptr %1361, align 8, !tbaa !69
  %1622 = icmp eq ptr %1621, null
  br i1 %1622, label %1623, label %1646

1623:                                             ; preds = %1620
  %1624 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1625 = load ptr, ptr %1624, align 8, !tbaa !55
  %1626 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1627 = load ptr, ptr %1626, align 8, !tbaa !58
  %1628 = icmp ult ptr %1625, %1627
  br i1 %1628, label %1649, label %1629

1629:                                             ; preds = %1623
  %1630 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1631 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1632 = load i64, ptr %1631, align 8, !tbaa !57
  %1633 = load ptr, ptr %1630, align 8, !tbaa !56
  %1634 = ptrtoint ptr %1625 to i64
  %1635 = ptrtoint ptr %1633 to i64
  %1636 = sub i64 %1634, %1635
  %1637 = shl i64 %1632, 32
  %1638 = and i64 %1637, -35184372088832
  %1639 = add i64 %1638, 35184372088832
  %1640 = ashr exact i64 %1639, 32
  %1641 = tail call ptr @Perl_safesysrealloc(ptr noundef %1633, i64 noundef %1640) #10
  store ptr %1641, ptr %1630, align 8, !tbaa !56
  store i64 %1640, ptr %1631, align 8, !tbaa !57
  %1642 = shl i64 %1636, 32
  %1643 = ashr exact i64 %1642, 32
  %1644 = getelementptr inbounds i8, ptr %1641, i64 %1643
  store ptr %1644, ptr %1624, align 8, !tbaa !55
  %1645 = getelementptr inbounds i8, ptr %1641, i64 %1640
  store ptr %1645, ptr %1626, align 8, !tbaa !58
  br label %1649

1646:                                             ; preds = %1620
  %1647 = tail call i32 @PerlIO_putc(ptr noundef nonnull %1621, i32 noundef 128) #10
  %1648 = icmp eq i32 %1647, -1
  br i1 %1648, label %1792, label %1652

1649:                                             ; preds = %1623, %1629
  %1650 = phi ptr [ %1644, %1629 ], [ %1625, %1623 ]
  %1651 = getelementptr inbounds i8, ptr %1650, i64 1
  store ptr %1651, ptr %1624, align 8, !tbaa !55
  store i8 -128, ptr %1650, align 1, !tbaa !41
  br label %1652

1652:                                             ; preds = %1649, %1646
  %1653 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %1654 = load i32, ptr %1653, align 8, !tbaa !62
  %1655 = icmp eq i32 %1654, 0
  br i1 %1655, label %1701, label %1656

1656:                                             ; preds = %1652
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #10
  %1657 = load i32, ptr %15, align 4, !tbaa !43
  %1658 = tail call i32 @llvm.bswap.i32(i32 %1657)
  store i32 %1658, ptr %18, align 4, !tbaa !43
  %1659 = load ptr, ptr %1361, align 8, !tbaa !69
  %1660 = icmp eq ptr %1659, null
  br i1 %1660, label %1661, label %1696

1661:                                             ; preds = %1656
  %1662 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1663 = load ptr, ptr %1662, align 8, !tbaa !55
  %1664 = getelementptr inbounds i8, ptr %1663, i64 4
  %1665 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1666 = load ptr, ptr %1665, align 8, !tbaa !58
  %1667 = icmp ugt ptr %1664, %1666
  br i1 %1667, label %1668, label %1685

1668:                                             ; preds = %1661
  %1669 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1670 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1671 = load i64, ptr %1670, align 8, !tbaa !57
  %1672 = load ptr, ptr %1669, align 8, !tbaa !56
  %1673 = ptrtoint ptr %1663 to i64
  %1674 = ptrtoint ptr %1672 to i64
  %1675 = sub i64 %1673, %1674
  %1676 = shl i64 %1671, 32
  %1677 = add i64 %1676, 35197256990720
  %1678 = ashr exact i64 %1677, 32
  %1679 = and i64 %1678, -8192
  %1680 = tail call ptr @Perl_safesysrealloc(ptr noundef %1672, i64 noundef %1679) #10
  store ptr %1680, ptr %1669, align 8, !tbaa !56
  store i64 %1679, ptr %1670, align 8, !tbaa !57
  %1681 = shl i64 %1675, 32
  %1682 = ashr exact i64 %1681, 32
  %1683 = getelementptr inbounds i8, ptr %1680, i64 %1682
  store ptr %1683, ptr %1662, align 8, !tbaa !55
  %1684 = getelementptr inbounds i8, ptr %1680, i64 %1679
  store ptr %1684, ptr %1665, align 8, !tbaa !58
  br label %1685

1685:                                             ; preds = %1668, %1661
  %1686 = load ptr, ptr %1662, align 8, !tbaa !55
  %1687 = ptrtoint ptr %1686 to i64
  %1688 = and i64 %1687, 3
  %1689 = icmp eq i64 %1688, 0
  %1690 = load i32, ptr %18, align 4
  br i1 %1689, label %1691, label %1692

1691:                                             ; preds = %1685
  store i32 %1690, ptr %1686, align 4, !tbaa !43
  br label %1693

1692:                                             ; preds = %1685
  store i32 %1690, ptr %1686, align 1
  br label %1693

1693:                                             ; preds = %1692, %1691
  %1694 = load ptr, ptr %1662, align 8, !tbaa !55
  %1695 = getelementptr inbounds i8, ptr %1694, i64 4
  store ptr %1695, ptr %1662, align 8, !tbaa !55
  br label %1699

1696:                                             ; preds = %1656
  %1697 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1659, ptr noundef nonnull %18, i64 noundef 4) #10
  %1698 = icmp eq i64 %1697, 4
  br i1 %1698, label %1699, label %1700

1699:                                             ; preds = %1696, %1693
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #10
  br label %1742

1700:                                             ; preds = %1696
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #10
  br label %1792

1701:                                             ; preds = %1652
  %1702 = load ptr, ptr %1361, align 8, !tbaa !69
  %1703 = icmp eq ptr %1702, null
  br i1 %1703, label %1704, label %1739

1704:                                             ; preds = %1701
  %1705 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1706 = load ptr, ptr %1705, align 8, !tbaa !55
  %1707 = getelementptr inbounds i8, ptr %1706, i64 4
  %1708 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1709 = load ptr, ptr %1708, align 8, !tbaa !58
  %1710 = icmp ugt ptr %1707, %1709
  br i1 %1710, label %1711, label %1728

1711:                                             ; preds = %1704
  %1712 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1713 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1714 = load i64, ptr %1713, align 8, !tbaa !57
  %1715 = load ptr, ptr %1712, align 8, !tbaa !56
  %1716 = ptrtoint ptr %1706 to i64
  %1717 = ptrtoint ptr %1715 to i64
  %1718 = sub i64 %1716, %1717
  %1719 = shl i64 %1714, 32
  %1720 = add i64 %1719, 35197256990720
  %1721 = ashr exact i64 %1720, 32
  %1722 = and i64 %1721, -8192
  %1723 = tail call ptr @Perl_safesysrealloc(ptr noundef %1715, i64 noundef %1722) #10
  store ptr %1723, ptr %1712, align 8, !tbaa !56
  store i64 %1722, ptr %1713, align 8, !tbaa !57
  %1724 = shl i64 %1718, 32
  %1725 = ashr exact i64 %1724, 32
  %1726 = getelementptr inbounds i8, ptr %1723, i64 %1725
  store ptr %1726, ptr %1705, align 8, !tbaa !55
  %1727 = getelementptr inbounds i8, ptr %1723, i64 %1722
  store ptr %1727, ptr %1708, align 8, !tbaa !58
  br label %1728

1728:                                             ; preds = %1711, %1704
  %1729 = load ptr, ptr %1705, align 8, !tbaa !55
  %1730 = ptrtoint ptr %1729 to i64
  %1731 = and i64 %1730, 3
  %1732 = icmp eq i64 %1731, 0
  %1733 = load i32, ptr %15, align 4
  br i1 %1732, label %1734, label %1735

1734:                                             ; preds = %1728
  store i32 %1733, ptr %1729, align 4, !tbaa !43
  br label %1736

1735:                                             ; preds = %1728
  store i32 %1733, ptr %1729, align 1
  br label %1736

1736:                                             ; preds = %1735, %1734
  %1737 = load ptr, ptr %1705, align 8, !tbaa !55
  %1738 = getelementptr inbounds i8, ptr %1737, i64 4
  store ptr %1738, ptr %1705, align 8, !tbaa !55
  br label %1742

1739:                                             ; preds = %1701
  %1740 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1702, ptr noundef nonnull %15, i64 noundef 4) #10
  %1741 = icmp eq i64 %1740, 4
  br i1 %1741, label %1742, label %1792

1742:                                             ; preds = %1739, %1736, %1699, %1598, %1596, %1616
  %1743 = load ptr, ptr %1361, align 8, !tbaa !69
  %1744 = icmp eq ptr %1743, null
  br i1 %1744, label %1745, label %1780

1745:                                             ; preds = %1742
  %1746 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1747 = load ptr, ptr %1746, align 8, !tbaa !55
  %1748 = load i32, ptr %15, align 4, !tbaa !43
  %1749 = sext i32 %1748 to i64
  %1750 = getelementptr inbounds i8, ptr %1747, i64 %1749
  %1751 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1752 = load ptr, ptr %1751, align 8, !tbaa !58
  %1753 = icmp ugt ptr %1750, %1752
  br i1 %1753, label %1754, label %1772

1754:                                             ; preds = %1745
  %1755 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1756 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1757 = load i64, ptr %1756, align 8, !tbaa !57
  %1758 = trunc i64 %1757 to i32
  %1759 = add i32 %1748, 8191
  %1760 = add i32 %1759, %1758
  %1761 = and i32 %1760, -8192
  %1762 = load ptr, ptr %1755, align 8, !tbaa !56
  %1763 = ptrtoint ptr %1747 to i64
  %1764 = ptrtoint ptr %1762 to i64
  %1765 = sub i64 %1763, %1764
  %1766 = sext i32 %1761 to i64
  %1767 = call ptr @Perl_safesysrealloc(ptr noundef %1762, i64 noundef %1766) #10
  store ptr %1767, ptr %1755, align 8, !tbaa !56
  store i64 %1766, ptr %1756, align 8, !tbaa !57
  %1768 = shl i64 %1765, 32
  %1769 = ashr exact i64 %1768, 32
  %1770 = getelementptr inbounds i8, ptr %1767, i64 %1769
  store ptr %1770, ptr %1746, align 8, !tbaa !55
  %1771 = getelementptr inbounds i8, ptr %1767, i64 %1766
  store ptr %1771, ptr %1751, align 8, !tbaa !58
  br label %1772

1772:                                             ; preds = %1754, %1745
  %1773 = load ptr, ptr %1746, align 8, !tbaa !55
  %1774 = load i32, ptr %15, align 4, !tbaa !43
  %1775 = sext i32 %1774 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1773, ptr nonnull align 1 %1356, i64 %1775, i1 false)
  %1776 = load i32, ptr %15, align 4, !tbaa !43
  %1777 = load ptr, ptr %1746, align 8, !tbaa !55
  %1778 = sext i32 %1776 to i64
  %1779 = getelementptr inbounds i8, ptr %1777, i64 %1778
  store ptr %1779, ptr %1746, align 8, !tbaa !55
  br label %1787

1780:                                             ; preds = %1742
  %1781 = load i32, ptr %15, align 4, !tbaa !43
  %1782 = sext i32 %1781 to i64
  %1783 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1743, ptr noundef nonnull %1356, i64 noundef %1782) #10
  %1784 = load i32, ptr %15, align 4, !tbaa !43
  %1785 = sext i32 %1784 to i64
  %1786 = icmp eq i64 %1783, %1785
  br i1 %1786, label %1787, label %1792

1787:                                             ; preds = %1550, %1547, %1510, %1409, %1407, %1427, %1772, %1780
  %1788 = zext nneg i32 %2 to i64
  %1789 = getelementptr inbounds [8 x ptr], ptr @sv_store, i64 0, i64 %1788
  %1790 = load ptr, ptr %1789, align 8, !tbaa !42
  %1791 = call i32 %1790(ptr noundef %0, ptr noundef %1) #10
  br label %1792

1792:                                             ; preds = %1739, %1550, %1427, %1780, %1646, %1700, %1616, %1577, %1457, %1511, %1388, %1787, %1328
  %1793 = phi i32 [ %1329, %1328 ], [ %1791, %1787 ], [ -1, %1388 ], [ -1, %1511 ], [ -1, %1457 ], [ -1, %1577 ], [ -1, %1616 ], [ -1, %1700 ], [ -1, %1646 ], [ -1, %1780 ], [ -1, %1427 ], [ -1, %1550 ], [ -1, %1739 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #10
  ret i32 %1793
}

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @pkg_can(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !98
  %6 = and i32 %5, 33554432
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = load ptr, ptr %1, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.xpvhv, ptr %11, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !75
  %14 = getelementptr ptr, ptr %10, i64 %13
  %15 = getelementptr ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %8
  %19 = getelementptr i8, ptr %14, i64 36
  %20 = load i32, ptr %19, align 4, !tbaa !99
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %16, align 8, !tbaa !42
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18, %22
  %26 = phi ptr [ %15, %18 ], [ %16, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct.hek, ptr %27, i64 0, i32 2
  br label %29

29:                                               ; preds = %3, %8, %22, %25
  %30 = phi ptr [ %28, %25 ], [ null, %22 ], [ null, %8 ], [ null, %3 ]
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #11
  %32 = trunc i64 %31 to i32
  %33 = tail call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef %30, i32 noundef %32, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %33, align 8, !tbaa !42
  br label %84

37:                                               ; preds = %29
  %38 = load i32, ptr %4, align 4, !tbaa !98
  %39 = and i32 %38, 33554432
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !41
  %44 = load ptr, ptr %1, align 8, !tbaa !73
  %45 = getelementptr inbounds %struct.xpvhv, ptr %44, i64 0, i32 3
  %46 = load i64, ptr %45, align 8, !tbaa !75
  %47 = getelementptr ptr, ptr %43, i64 %46
  %48 = getelementptr ptr, ptr %47, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !41
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %41
  %52 = getelementptr i8, ptr %47, i64 36
  %53 = load i32, ptr %52, align 4, !tbaa !99
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %49, align 8, !tbaa !42
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %55, %51
  %59 = phi ptr [ %49, %55 ], [ %48, %51 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !41
  %61 = getelementptr inbounds %struct.hek, ptr %60, i64 0, i32 2
  br label %62

62:                                               ; preds = %58, %55, %41, %37
  %63 = phi ptr [ %61, %58 ], [ null, %55 ], [ null, %41 ], [ null, %37 ]
  %64 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef %1, ptr noundef %2, i32 noundef 0) #10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.gv, ptr %64, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !109
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.gv, ptr %64, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !41
  %74 = getelementptr inbounds %struct.gp, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !116
  %76 = tail call ptr @Perl_newRV(ptr noundef %75) #10
  br label %79

77:                                               ; preds = %66, %62
  %78 = tail call ptr @Perl_newSVsv(ptr noundef nonnull @PL_sv_undef) #10
  br label %79

79:                                               ; preds = %71, %77
  %80 = phi ptr [ %76, %71 ], [ %78, %77 ]
  %81 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %63) #11
  %82 = trunc i64 %81 to i32
  %83 = tail call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef %63, i32 noundef %82, i32 noundef 36, ptr noundef %80, i32 noundef 0) #10
  br label %84

84:                                               ; preds = %35, %79
  %85 = phi ptr [ %36, %35 ], [ %80, %79 ]
  %86 = getelementptr inbounds %struct.sv, ptr %85, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !53
  %88 = and i32 %87, 65280
  %89 = icmp ne i32 %88, 0
  %90 = and i32 %87, 255
  %91 = icmp eq i32 %90, 8
  %92 = or i1 %89, %91
  %93 = and i32 %87, 16777471
  %94 = icmp eq i32 %93, 16777226
  %95 = or i1 %94, %92
  %96 = select i1 %95, ptr %85, ptr null
  ret ptr %96
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @known_class(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !34 {
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = tail call ptr @Perl_hv_common_key_len(ptr noundef %6, ptr noundef %1, i32 noundef %2, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !42
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 4294967295
  br label %24

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 11
  %15 = load i64, ptr %14, align 8, !tbaa !118
  %16 = add nsw i64 %15, 1
  store i64 %16, ptr %14, align 8, !tbaa !118
  %17 = inttoptr i64 %16 to ptr
  %18 = tail call ptr @Perl_hv_common_key_len(ptr noundef %6, ptr noundef %1, i32 noundef %2, i32 noundef 36, ptr noundef %17, i32 noundef 0) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %21, align 8, !tbaa !50
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.36) #10
  br label %22

22:                                               ; preds = %20, %13
  %23 = load i64, ptr %14, align 8, !tbaa !118
  br label %24

24:                                               ; preds = %22, %9
  %25 = phi i64 [ %23, %22 ], [ %12, %9 ]
  %26 = phi i32 [ 0, %22 ], [ 1, %9 ]
  %27 = trunc i64 %25 to i32
  store i32 %27, ptr %3, align 4, !tbaa !43
  ret i32 %26
}

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_gv_fetchmethod_autoload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_markstack_grow() local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_free_tmps() local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal i32 @store_ref(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !53
  %5 = and i32 %4, -2147481600
  %6 = icmp eq i32 %5, -2147481600
  %7 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !53
  %11 = and i32 %10, 1048576
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %117, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %8, align 8, !tbaa !85
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %81, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hv, ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !98
  %20 = and i32 %19, 33554432
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hv, ptr %15, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = load ptr, ptr %15, align 8, !tbaa !73
  %26 = getelementptr inbounds %struct.xpvhv, ptr %25, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !75
  %28 = getelementptr ptr, ptr %24, i64 %27
  %29 = getelementptr ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !41
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %22
  %33 = getelementptr i8, ptr %28, i64 36
  %34 = load i32, ptr %33, align 4, !tbaa !99
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %30, align 8, !tbaa !42
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32, %36
  %40 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %15, i1 noundef zeroext false) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %17, %22, %39
  %43 = load i32, ptr %18, align 4, !tbaa !98
  %44 = and i32 %43, -268435457
  store i32 %44, ptr %18, align 4, !tbaa !98
  br label %81

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %47 = load ptr, ptr %46, align 8, !tbaa !69
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !55
  %52 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !58
  %54 = icmp ult ptr %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = select i1 %6, i8 28, i8 20
  %57 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %57, ptr %50, align 8, !tbaa !55
  store i8 %56, ptr %51, align 1, !tbaa !41
  br label %153

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %60 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !57
  %62 = load ptr, ptr %59, align 8, !tbaa !56
  %63 = ptrtoint ptr %51 to i64
  %64 = ptrtoint ptr %62 to i64
  %65 = sub i64 %63, %64
  %66 = shl i64 %61, 32
  %67 = and i64 %66, -35184372088832
  %68 = add i64 %67, 35184372088832
  %69 = ashr exact i64 %68, 32
  %70 = tail call ptr @Perl_safesysrealloc(ptr noundef %62, i64 noundef %69) #10
  store ptr %70, ptr %59, align 8, !tbaa !56
  store i64 %69, ptr %60, align 8, !tbaa !57
  %71 = shl i64 %65, 32
  %72 = ashr exact i64 %71, 32
  %73 = getelementptr inbounds i8, ptr %70, i64 %72
  store ptr %73, ptr %50, align 8, !tbaa !55
  %74 = getelementptr inbounds i8, ptr %70, i64 %69
  store ptr %74, ptr %52, align 8, !tbaa !58
  %75 = select i1 %6, i8 28, i8 20
  %76 = getelementptr inbounds i8, ptr %73, i64 1
  store ptr %76, ptr %50, align 8, !tbaa !55
  store i8 %75, ptr %73, align 1, !tbaa !41
  br label %153

77:                                               ; preds = %45
  %78 = select i1 %6, i32 28, i32 20
  %79 = tail call i32 @PerlIO_putc(ptr noundef nonnull %47, i32 noundef %78) #10
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %155, label %153

81:                                               ; preds = %13, %42
  %82 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %83 = load ptr, ptr %82, align 8, !tbaa !69
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %113

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !55
  %88 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !58
  %90 = icmp ult ptr %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = select i1 %6, i8 27, i8 4
  %93 = getelementptr inbounds i8, ptr %87, i64 1
  store ptr %93, ptr %86, align 8, !tbaa !55
  store i8 %92, ptr %87, align 1, !tbaa !41
  br label %153

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %96 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !57
  %98 = load ptr, ptr %95, align 8, !tbaa !56
  %99 = ptrtoint ptr %87 to i64
  %100 = ptrtoint ptr %98 to i64
  %101 = sub i64 %99, %100
  %102 = shl i64 %97, 32
  %103 = and i64 %102, -35184372088832
  %104 = add i64 %103, 35184372088832
  %105 = ashr exact i64 %104, 32
  %106 = tail call ptr @Perl_safesysrealloc(ptr noundef %98, i64 noundef %105) #10
  store ptr %106, ptr %95, align 8, !tbaa !56
  store i64 %105, ptr %96, align 8, !tbaa !57
  %107 = shl i64 %101, 32
  %108 = ashr exact i64 %107, 32
  %109 = getelementptr inbounds i8, ptr %106, i64 %108
  store ptr %109, ptr %86, align 8, !tbaa !55
  %110 = getelementptr inbounds i8, ptr %106, i64 %105
  store ptr %110, ptr %88, align 8, !tbaa !58
  %111 = select i1 %6, i8 27, i8 4
  %112 = getelementptr inbounds i8, ptr %109, i64 1
  store ptr %112, ptr %86, align 8, !tbaa !55
  store i8 %111, ptr %109, align 1, !tbaa !41
  br label %153

113:                                              ; preds = %81
  %114 = select i1 %6, i32 27, i32 4
  %115 = tail call i32 @PerlIO_putc(ptr noundef nonnull %83, i32 noundef %114) #10
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %155, label %153

117:                                              ; preds = %2
  %118 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %119 = load ptr, ptr %118, align 8, !tbaa !69
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %149

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !55
  %124 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !58
  %126 = icmp ult ptr %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = select i1 %6, i8 27, i8 4
  %129 = getelementptr inbounds i8, ptr %123, i64 1
  store ptr %129, ptr %122, align 8, !tbaa !55
  store i8 %128, ptr %123, align 1, !tbaa !41
  br label %153

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %132 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !57
  %134 = load ptr, ptr %131, align 8, !tbaa !56
  %135 = ptrtoint ptr %123 to i64
  %136 = ptrtoint ptr %134 to i64
  %137 = sub i64 %135, %136
  %138 = shl i64 %133, 32
  %139 = and i64 %138, -35184372088832
  %140 = add i64 %139, 35184372088832
  %141 = ashr exact i64 %140, 32
  %142 = tail call ptr @Perl_safesysrealloc(ptr noundef %134, i64 noundef %141) #10
  store ptr %142, ptr %131, align 8, !tbaa !56
  store i64 %141, ptr %132, align 8, !tbaa !57
  %143 = shl i64 %137, 32
  %144 = ashr exact i64 %143, 32
  %145 = getelementptr inbounds i8, ptr %142, i64 %144
  store ptr %145, ptr %122, align 8, !tbaa !55
  %146 = getelementptr inbounds i8, ptr %142, i64 %141
  store ptr %146, ptr %124, align 8, !tbaa !58
  %147 = select i1 %6, i8 27, i8 4
  %148 = getelementptr inbounds i8, ptr %145, i64 1
  store ptr %148, ptr %122, align 8, !tbaa !55
  store i8 %147, ptr %145, align 1, !tbaa !41
  br label %153

149:                                              ; preds = %117
  %150 = select i1 %6, i32 27, i32 4
  %151 = tail call i32 @PerlIO_putc(ptr noundef nonnull %119, i32 noundef %150) #10
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %155, label %153

153:                                              ; preds = %77, %55, %58, %113, %91, %94, %130, %127, %149
  %154 = tail call fastcc i32 @store(ptr noundef %0, ptr noundef %8)
  br label %155

155:                                              ; preds = %113, %77, %149, %153
  %156 = phi i32 [ %154, %153 ], [ -1, %149 ], [ -1, %77 ], [ -1, %113 ]
  ret i32 %156
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @store_scalar(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %12 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !53
  %14 = and i32 %13, 65280
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %82

16:                                               ; preds = %2
  %17 = icmp eq ptr %1, @PL_sv_undef
  %18 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %17, label %21, label %51

21:                                               ; preds = %16
  br i1 %20, label %22, label %48

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = icmp ult ptr %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %29, ptr %23, align 8, !tbaa !55
  store i8 14, ptr %24, align 1, !tbaa !41
  br label %81

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %32 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !57
  %34 = load ptr, ptr %31, align 8, !tbaa !56
  %35 = ptrtoint ptr %24 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = shl i64 %33, 32
  %39 = and i64 %38, -35184372088832
  %40 = add i64 %39, 35184372088832
  %41 = ashr exact i64 %40, 32
  %42 = tail call ptr @Perl_safesysrealloc(ptr noundef %34, i64 noundef %41) #10
  store ptr %42, ptr %31, align 8, !tbaa !56
  store i64 %41, ptr %32, align 8, !tbaa !57
  %43 = shl i64 %37, 32
  %44 = ashr exact i64 %43, 32
  %45 = getelementptr inbounds i8, ptr %42, i64 %44
  store ptr %45, ptr %23, align 8, !tbaa !55
  %46 = getelementptr inbounds i8, ptr %42, i64 %41
  store ptr %46, ptr %25, align 8, !tbaa !58
  %47 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %47, ptr %23, align 8, !tbaa !55
  store i8 14, ptr %45, align 1, !tbaa !41
  br label %81

48:                                               ; preds = %21
  %49 = tail call i32 @PerlIO_putc(ptr noundef nonnull %19, i32 noundef 14) #10
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %1441, label %81

51:                                               ; preds = %16
  br i1 %20, label %52, label %78

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !55
  %55 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !58
  %57 = icmp ult ptr %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %59, ptr %53, align 8, !tbaa !55
  store i8 5, ptr %54, align 1, !tbaa !41
  br label %81

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %62 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !57
  %64 = load ptr, ptr %61, align 8, !tbaa !56
  %65 = ptrtoint ptr %54 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %65, %66
  %68 = shl i64 %63, 32
  %69 = and i64 %68, -35184372088832
  %70 = add i64 %69, 35184372088832
  %71 = ashr exact i64 %70, 32
  %72 = tail call ptr @Perl_safesysrealloc(ptr noundef %64, i64 noundef %71) #10
  store ptr %72, ptr %61, align 8, !tbaa !56
  store i64 %71, ptr %62, align 8, !tbaa !57
  %73 = shl i64 %67, 32
  %74 = ashr exact i64 %73, 32
  %75 = getelementptr inbounds i8, ptr %72, i64 %74
  store ptr %75, ptr %53, align 8, !tbaa !55
  %76 = getelementptr inbounds i8, ptr %72, i64 %71
  store ptr %76, ptr %55, align 8, !tbaa !58
  %77 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %77, ptr %53, align 8, !tbaa !55
  store i8 5, ptr %75, align 1, !tbaa !41
  br label %81

78:                                               ; preds = %51
  %79 = tail call i32 @PerlIO_putc(ptr noundef nonnull %19, i32 noundef 5) #10
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %1441, label %81

81:                                               ; preds = %60, %58, %78, %30, %28, %48
  br label %1441

82:                                               ; preds = %2
  %83 = and i32 %13, 134219264
  %84 = icmp eq i32 %83, 134219264
  br i1 %84, label %85, label %166

85:                                               ; preds = %82
  %86 = icmp eq ptr %1, @PL_sv_yes
  br i1 %86, label %87, label %120

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %89 = load ptr, ptr %88, align 8, !tbaa !69
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %117

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !55
  %94 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !58
  %96 = icmp ult ptr %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = getelementptr inbounds i8, ptr %93, i64 1
  store ptr %98, ptr %92, align 8, !tbaa !55
  store i8 15, ptr %93, align 1, !tbaa !41
  br label %1440

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %101 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !57
  %103 = load ptr, ptr %100, align 8, !tbaa !56
  %104 = ptrtoint ptr %93 to i64
  %105 = ptrtoint ptr %103 to i64
  %106 = sub i64 %104, %105
  %107 = shl i64 %102, 32
  %108 = and i64 %107, -35184372088832
  %109 = add i64 %108, 35184372088832
  %110 = ashr exact i64 %109, 32
  %111 = tail call ptr @Perl_safesysrealloc(ptr noundef %103, i64 noundef %110) #10
  store ptr %111, ptr %100, align 8, !tbaa !56
  store i64 %110, ptr %101, align 8, !tbaa !57
  %112 = shl i64 %106, 32
  %113 = ashr exact i64 %112, 32
  %114 = getelementptr inbounds i8, ptr %111, i64 %113
  store ptr %114, ptr %92, align 8, !tbaa !55
  %115 = getelementptr inbounds i8, ptr %111, i64 %110
  store ptr %115, ptr %94, align 8, !tbaa !58
  %116 = getelementptr inbounds i8, ptr %114, i64 1
  store ptr %116, ptr %92, align 8, !tbaa !55
  store i8 15, ptr %114, align 1, !tbaa !41
  br label %1440

117:                                              ; preds = %87
  %118 = tail call i32 @PerlIO_putc(ptr noundef nonnull %89, i32 noundef 15) #10
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %1441, label %1440

120:                                              ; preds = %85
  %121 = icmp eq ptr %1, @PL_sv_no
  br i1 %121, label %122, label %155

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %124 = load ptr, ptr %123, align 8, !tbaa !69
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %152

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !55
  %129 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !58
  %131 = icmp ult ptr %128, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %133, ptr %127, align 8, !tbaa !55
  store i8 16, ptr %128, align 1, !tbaa !41
  br label %1440

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %136 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %137 = load i64, ptr %136, align 8, !tbaa !57
  %138 = load ptr, ptr %135, align 8, !tbaa !56
  %139 = ptrtoint ptr %128 to i64
  %140 = ptrtoint ptr %138 to i64
  %141 = sub i64 %139, %140
  %142 = shl i64 %137, 32
  %143 = and i64 %142, -35184372088832
  %144 = add i64 %143, 35184372088832
  %145 = ashr exact i64 %144, 32
  %146 = tail call ptr @Perl_safesysrealloc(ptr noundef %138, i64 noundef %145) #10
  store ptr %146, ptr %135, align 8, !tbaa !56
  store i64 %145, ptr %136, align 8, !tbaa !57
  %147 = shl i64 %141, 32
  %148 = ashr exact i64 %147, 32
  %149 = getelementptr inbounds i8, ptr %146, i64 %148
  store ptr %149, ptr %127, align 8, !tbaa !55
  %150 = getelementptr inbounds i8, ptr %146, i64 %145
  store ptr %150, ptr %129, align 8, !tbaa !58
  %151 = getelementptr inbounds i8, ptr %149, i64 1
  store ptr %151, ptr %127, align 8, !tbaa !55
  store i8 16, ptr %149, align 1, !tbaa !41
  br label %1440

152:                                              ; preds = %122
  %153 = tail call i32 @PerlIO_putc(ptr noundef nonnull %124, i32 noundef 16) #10
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %1441, label %1440

155:                                              ; preds = %120
  %156 = and i32 %13, 2098176
  %157 = icmp eq i32 %156, 1024
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load ptr, ptr %1, align 8, !tbaa !85
  %160 = getelementptr inbounds %struct.xpv, ptr %159, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !107
  store i64 %161, ptr %4, align 8, !tbaa !82
  %162 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !41
  br label %566

164:                                              ; preds = %155
  %165 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2) #10
  br label %566

166:                                              ; preds = %82
  %167 = and i32 %13, 1024
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %554

169:                                              ; preds = %166
  %170 = and i32 %13, 256
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %443, label %172

172:                                              ; preds = %169
  %173 = and i32 %13, 2097408
  %174 = icmp eq i32 %173, 256
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load ptr, ptr %1, align 8, !tbaa !85
  %177 = getelementptr inbounds %struct.xpviv, ptr %176, i64 0, i32 4
  %178 = load i64, ptr %177, align 8, !tbaa !41
  br label %181

179:                                              ; preds = %172
  %180 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %1, i32 noundef 2) #10
  br label %181

181:                                              ; preds = %179, %175
  %182 = phi i64 [ %178, %175 ], [ %180, %179 ]
  store i64 %182, ptr %3, align 8, !tbaa !82
  br label %183

183:                                              ; preds = %549, %181
  %184 = icmp sgt i32 %13, -1
  br i1 %184, label %198, label %185

185:                                              ; preds = %183
  %186 = load i32, ptr %12, align 4, !tbaa !53
  %187 = and i32 %186, -2145386240
  %188 = icmp eq i32 %187, -2147483392
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load ptr, ptr %1, align 8, !tbaa !85
  %191 = getelementptr inbounds %struct.xpvuv, ptr %190, i64 0, i32 4
  %192 = load i64, ptr %191, align 8, !tbaa !41
  br label %195

193:                                              ; preds = %185
  %194 = call i64 @Perl_sv_2uv_flags(ptr noundef %1, i32 noundef 2) #10
  br label %195

195:                                              ; preds = %193, %189
  %196 = phi i64 [ %192, %189 ], [ %194, %193 ]
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %554, label %198

198:                                              ; preds = %195, %183
  %199 = load i64, ptr %3, align 8
  %200 = add i64 %199, 128
  %201 = icmp ult i64 %200, 256
  br i1 %201, label %202, label %270

202:                                              ; preds = %198
  %203 = trunc i64 %199 to i8
  %204 = xor i8 %203, -128
  %205 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %206 = load ptr, ptr %205, align 8, !tbaa !69
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %231

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !55
  %211 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !58
  %213 = icmp ult ptr %210, %212
  br i1 %213, label %234, label %214

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %216 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %217 = load i64, ptr %216, align 8, !tbaa !57
  %218 = load ptr, ptr %215, align 8, !tbaa !56
  %219 = ptrtoint ptr %210 to i64
  %220 = ptrtoint ptr %218 to i64
  %221 = sub i64 %219, %220
  %222 = shl i64 %217, 32
  %223 = and i64 %222, -35184372088832
  %224 = add i64 %223, 35184372088832
  %225 = ashr exact i64 %224, 32
  %226 = call ptr @Perl_safesysrealloc(ptr noundef %218, i64 noundef %225) #10
  store ptr %226, ptr %215, align 8, !tbaa !56
  store i64 %225, ptr %216, align 8, !tbaa !57
  %227 = shl i64 %221, 32
  %228 = ashr exact i64 %227, 32
  %229 = getelementptr inbounds i8, ptr %226, i64 %228
  store ptr %229, ptr %209, align 8, !tbaa !55
  %230 = getelementptr inbounds i8, ptr %226, i64 %225
  store ptr %230, ptr %211, align 8, !tbaa !58
  br label %234

231:                                              ; preds = %202
  %232 = call i32 @PerlIO_putc(ptr noundef nonnull %206, i32 noundef 8) #10
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %1441, label %237

234:                                              ; preds = %208, %214
  %235 = phi ptr [ %229, %214 ], [ %210, %208 ]
  %236 = getelementptr inbounds i8, ptr %235, i64 1
  store ptr %236, ptr %209, align 8, !tbaa !55
  store i8 8, ptr %235, align 1, !tbaa !41
  br label %237

237:                                              ; preds = %234, %231
  %238 = load ptr, ptr %205, align 8, !tbaa !69
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %266

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !55
  %243 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !58
  %245 = icmp ult ptr %242, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = getelementptr inbounds i8, ptr %242, i64 1
  store ptr %247, ptr %241, align 8, !tbaa !55
  store i8 %204, ptr %242, align 1, !tbaa !41
  br label %1440

248:                                              ; preds = %240
  %249 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %250 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !57
  %252 = load ptr, ptr %249, align 8, !tbaa !56
  %253 = ptrtoint ptr %242 to i64
  %254 = ptrtoint ptr %252 to i64
  %255 = sub i64 %253, %254
  %256 = shl i64 %251, 32
  %257 = and i64 %256, -35184372088832
  %258 = add i64 %257, 35184372088832
  %259 = ashr exact i64 %258, 32
  %260 = call ptr @Perl_safesysrealloc(ptr noundef %252, i64 noundef %259) #10
  store ptr %260, ptr %249, align 8, !tbaa !56
  store i64 %259, ptr %250, align 8, !tbaa !57
  %261 = shl i64 %255, 32
  %262 = ashr exact i64 %261, 32
  %263 = getelementptr inbounds i8, ptr %260, i64 %262
  store ptr %263, ptr %241, align 8, !tbaa !55
  %264 = getelementptr inbounds i8, ptr %260, i64 %259
  store ptr %264, ptr %243, align 8, !tbaa !58
  %265 = getelementptr inbounds i8, ptr %263, i64 1
  store ptr %265, ptr %241, align 8, !tbaa !55
  store i8 %204, ptr %263, align 1, !tbaa !41
  br label %1440

266:                                              ; preds = %237
  %267 = zext i8 %204 to i32
  %268 = call i32 @PerlIO_putc(ptr noundef nonnull %238, i32 noundef %267) #10
  %269 = icmp eq i32 %268, -1
  br i1 %269, label %1441, label %1440

270:                                              ; preds = %198
  %271 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %272 = load i32, ptr %271, align 8, !tbaa !62
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %375, label %274

274:                                              ; preds = %270
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  br i1 %184, label %291, label %275

275:                                              ; preds = %274
  %276 = load i32, ptr %12, align 4, !tbaa !53
  %277 = and i32 %276, -2145386240
  %278 = icmp eq i32 %277, -2147483392
  br i1 %278, label %279, label %283

279:                                              ; preds = %275
  %280 = load ptr, ptr %1, align 8, !tbaa !85
  %281 = getelementptr inbounds %struct.xpvuv, ptr %280, i64 0, i32 4
  %282 = load i64, ptr %281, align 8, !tbaa !41
  br label %285

283:                                              ; preds = %275
  %284 = call i64 @Perl_sv_2uv_flags(ptr noundef %1, i32 noundef 2) #10
  br label %285

285:                                              ; preds = %283, %279
  %286 = phi i64 [ %282, %279 ], [ %284, %283 ]
  %287 = icmp ugt i64 %286, 2147483647
  %288 = load i64, ptr %3, align 8
  %289 = icmp sgt i64 %288, 2147483647
  %290 = select i1 %287, i1 true, i1 %289
  br i1 %290, label %373, label %293

291:                                              ; preds = %274
  %292 = icmp sgt i64 %199, 2147483647
  br i1 %292, label %373, label %293

293:                                              ; preds = %285, %291
  %294 = load i64, ptr %3, align 8, !tbaa !82
  %295 = icmp slt i64 %294, -2147483648
  br i1 %295, label %373, label %296

296:                                              ; preds = %293
  %297 = trunc i64 %294 to i32
  %298 = call i32 @llvm.bswap.i32(i32 %297)
  store i32 %298, ptr %5, align 4, !tbaa !43
  %299 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %300 = load ptr, ptr %299, align 8, !tbaa !69
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %325

302:                                              ; preds = %296
  %303 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !55
  %305 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %306 = load ptr, ptr %305, align 8, !tbaa !58
  %307 = icmp ult ptr %304, %306
  br i1 %307, label %328, label %308

308:                                              ; preds = %302
  %309 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %310 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %311 = load i64, ptr %310, align 8, !tbaa !57
  %312 = load ptr, ptr %309, align 8, !tbaa !56
  %313 = ptrtoint ptr %304 to i64
  %314 = ptrtoint ptr %312 to i64
  %315 = sub i64 %313, %314
  %316 = shl i64 %311, 32
  %317 = and i64 %316, -35184372088832
  %318 = add i64 %317, 35184372088832
  %319 = ashr exact i64 %318, 32
  %320 = call ptr @Perl_safesysrealloc(ptr noundef %312, i64 noundef %319) #10
  store ptr %320, ptr %309, align 8, !tbaa !56
  store i64 %319, ptr %310, align 8, !tbaa !57
  %321 = shl i64 %315, 32
  %322 = ashr exact i64 %321, 32
  %323 = getelementptr inbounds i8, ptr %320, i64 %322
  store ptr %323, ptr %303, align 8, !tbaa !55
  %324 = getelementptr inbounds i8, ptr %320, i64 %319
  store ptr %324, ptr %305, align 8, !tbaa !58
  br label %328

325:                                              ; preds = %296
  %326 = call i32 @PerlIO_putc(ptr noundef nonnull %300, i32 noundef 9) #10
  %327 = icmp eq i32 %326, -1
  br i1 %327, label %373, label %331

328:                                              ; preds = %302, %308
  %329 = phi ptr [ %323, %308 ], [ %304, %302 ]
  %330 = getelementptr inbounds i8, ptr %329, i64 1
  store ptr %330, ptr %303, align 8, !tbaa !55
  store i8 9, ptr %329, align 1, !tbaa !41
  br label %331

331:                                              ; preds = %328, %325
  %332 = load ptr, ptr %299, align 8, !tbaa !69
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %369

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %336 = load ptr, ptr %335, align 8, !tbaa !55
  %337 = getelementptr inbounds i8, ptr %336, i64 4
  %338 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %339 = load ptr, ptr %338, align 8, !tbaa !58
  %340 = icmp ugt ptr %337, %339
  br i1 %340, label %341, label %358

341:                                              ; preds = %334
  %342 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %343 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %344 = load i64, ptr %343, align 8, !tbaa !57
  %345 = load ptr, ptr %342, align 8, !tbaa !56
  %346 = ptrtoint ptr %336 to i64
  %347 = ptrtoint ptr %345 to i64
  %348 = sub i64 %346, %347
  %349 = shl i64 %344, 32
  %350 = add i64 %349, 35197256990720
  %351 = ashr exact i64 %350, 32
  %352 = and i64 %351, -8192
  %353 = call ptr @Perl_safesysrealloc(ptr noundef %345, i64 noundef %352) #10
  store ptr %353, ptr %342, align 8, !tbaa !56
  store i64 %352, ptr %343, align 8, !tbaa !57
  %354 = shl i64 %348, 32
  %355 = ashr exact i64 %354, 32
  %356 = getelementptr inbounds i8, ptr %353, i64 %355
  store ptr %356, ptr %335, align 8, !tbaa !55
  %357 = getelementptr inbounds i8, ptr %353, i64 %352
  store ptr %357, ptr %338, align 8, !tbaa !58
  br label %358

358:                                              ; preds = %341, %334
  %359 = load ptr, ptr %335, align 8, !tbaa !55
  %360 = ptrtoint ptr %359 to i64
  %361 = and i64 %360, 3
  %362 = icmp eq i64 %361, 0
  %363 = load i32, ptr %5, align 4
  br i1 %362, label %364, label %365

364:                                              ; preds = %358
  store i32 %363, ptr %359, align 4, !tbaa !43
  br label %366

365:                                              ; preds = %358
  store i32 %363, ptr %359, align 1
  br label %366

366:                                              ; preds = %365, %364
  %367 = load ptr, ptr %335, align 8, !tbaa !55
  %368 = getelementptr inbounds i8, ptr %367, i64 4
  store ptr %368, ptr %335, align 8, !tbaa !55
  br label %372

369:                                              ; preds = %331
  %370 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %332, ptr noundef nonnull %5, i64 noundef 4) #10
  %371 = icmp eq i64 %370, 4
  br i1 %371, label %372, label %373

372:                                              ; preds = %369, %366
  br label %373

373:                                              ; preds = %293, %369, %325, %285, %291, %372
  %374 = phi i32 [ 0, %372 ], [ 27, %291 ], [ 27, %285 ], [ 1, %325 ], [ 1, %369 ], [ 27, %293 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  switch i32 %374, label %1441 [
    i32 0, label %1440
    i32 27, label %554
  ]

375:                                              ; preds = %270
  %376 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %377 = load ptr, ptr %376, align 8, !tbaa !69
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %402

379:                                              ; preds = %375
  %380 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %381 = load ptr, ptr %380, align 8, !tbaa !55
  %382 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %383 = load ptr, ptr %382, align 8, !tbaa !58
  %384 = icmp ult ptr %381, %383
  br i1 %384, label %405, label %385

385:                                              ; preds = %379
  %386 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %387 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %388 = load i64, ptr %387, align 8, !tbaa !57
  %389 = load ptr, ptr %386, align 8, !tbaa !56
  %390 = ptrtoint ptr %381 to i64
  %391 = ptrtoint ptr %389 to i64
  %392 = sub i64 %390, %391
  %393 = shl i64 %388, 32
  %394 = and i64 %393, -35184372088832
  %395 = add i64 %394, 35184372088832
  %396 = ashr exact i64 %395, 32
  %397 = call ptr @Perl_safesysrealloc(ptr noundef %389, i64 noundef %396) #10
  store ptr %397, ptr %386, align 8, !tbaa !56
  store i64 %396, ptr %387, align 8, !tbaa !57
  %398 = shl i64 %392, 32
  %399 = ashr exact i64 %398, 32
  %400 = getelementptr inbounds i8, ptr %397, i64 %399
  store ptr %400, ptr %380, align 8, !tbaa !55
  %401 = getelementptr inbounds i8, ptr %397, i64 %396
  store ptr %401, ptr %382, align 8, !tbaa !58
  br label %405

402:                                              ; preds = %375
  %403 = call i32 @PerlIO_putc(ptr noundef nonnull %377, i32 noundef 6) #10
  %404 = icmp eq i32 %403, -1
  br i1 %404, label %1441, label %408

405:                                              ; preds = %379, %385
  %406 = phi ptr [ %400, %385 ], [ %381, %379 ]
  %407 = getelementptr inbounds i8, ptr %406, i64 1
  store ptr %407, ptr %380, align 8, !tbaa !55
  store i8 6, ptr %406, align 1, !tbaa !41
  br label %408

408:                                              ; preds = %405, %402
  %409 = load ptr, ptr %376, align 8, !tbaa !69
  %410 = icmp eq ptr %409, null
  br i1 %410, label %411, label %440

411:                                              ; preds = %408
  %412 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %413 = load ptr, ptr %412, align 8, !tbaa !55
  %414 = getelementptr inbounds i8, ptr %413, i64 8
  %415 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %416 = load ptr, ptr %415, align 8, !tbaa !58
  %417 = icmp ugt ptr %414, %416
  br i1 %417, label %418, label %435

418:                                              ; preds = %411
  %419 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %420 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %421 = load i64, ptr %420, align 8, !tbaa !57
  %422 = load ptr, ptr %419, align 8, !tbaa !56
  %423 = ptrtoint ptr %413 to i64
  %424 = ptrtoint ptr %422 to i64
  %425 = sub i64 %423, %424
  %426 = shl i64 %421, 32
  %427 = add i64 %426, 35214436859904
  %428 = ashr exact i64 %427, 32
  %429 = and i64 %428, -8192
  %430 = call ptr @Perl_safesysrealloc(ptr noundef %422, i64 noundef %429) #10
  store ptr %430, ptr %419, align 8, !tbaa !56
  store i64 %429, ptr %420, align 8, !tbaa !57
  %431 = shl i64 %425, 32
  %432 = ashr exact i64 %431, 32
  %433 = getelementptr inbounds i8, ptr %430, i64 %432
  store ptr %433, ptr %412, align 8, !tbaa !55
  %434 = getelementptr inbounds i8, ptr %430, i64 %429
  store ptr %434, ptr %415, align 8, !tbaa !58
  br label %435

435:                                              ; preds = %418, %411
  %436 = load ptr, ptr %412, align 8, !tbaa !55
  %437 = load i64, ptr %3, align 8
  store i64 %437, ptr %436, align 1
  %438 = load ptr, ptr %412, align 8, !tbaa !55
  %439 = getelementptr inbounds i8, ptr %438, i64 8
  store ptr %439, ptr %412, align 8, !tbaa !55
  br label %1440

440:                                              ; preds = %408
  %441 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %409, ptr noundef nonnull %3, i64 noundef 8) #10
  %442 = icmp eq i64 %441, 8
  br i1 %442, label %1440, label %1441

443:                                              ; preds = %169
  %444 = and i32 %13, 512
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %551, label %446

446:                                              ; preds = %443
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %447 = and i32 %13, 4096
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %451

449:                                              ; preds = %446
  %450 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %1, i32 noundef 2) #10
  br label %451

451:                                              ; preds = %449, %446
  %452 = load i32, ptr %12, align 4, !tbaa !53
  %453 = and i32 %452, -2147483392
  %454 = icmp eq i32 %453, 256
  br i1 %454, label %455, label %466

455:                                              ; preds = %451
  %456 = and i32 %452, 2097408
  %457 = icmp eq i32 %456, 256
  br i1 %457, label %458, label %462

458:                                              ; preds = %455
  %459 = load ptr, ptr %1, align 8, !tbaa !85
  %460 = getelementptr inbounds %struct.xpviv, ptr %459, i64 0, i32 4
  %461 = load i64, ptr %460, align 8, !tbaa !41
  br label %464

462:                                              ; preds = %455
  %463 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %1, i32 noundef 2) #10
  br label %464

464:                                              ; preds = %462, %458
  %465 = phi i64 [ %461, %458 ], [ %463, %462 ]
  store i64 %465, ptr %3, align 8, !tbaa !82
  br label %549

466:                                              ; preds = %451
  %467 = and i32 %452, 2097664
  %468 = icmp eq i32 %467, 512
  br i1 %468, label %469, label %473

469:                                              ; preds = %466
  %470 = load ptr, ptr %1, align 8, !tbaa !85
  %471 = getelementptr inbounds %struct.xpvnv, ptr %470, i64 0, i32 5
  %472 = load double, ptr %471, align 8, !tbaa !41
  br label %475

473:                                              ; preds = %466
  %474 = tail call double @Perl_sv_2nv_flags(ptr noundef %1, i32 noundef 2) #10
  br label %475

475:                                              ; preds = %473, %469
  %476 = phi double [ %472, %469 ], [ %474, %473 ]
  store double %476, ptr %6, align 8, !tbaa !119
  %477 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %478 = load i32, ptr %477, align 8, !tbaa !62
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %549

480:                                              ; preds = %475
  %481 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %482 = load ptr, ptr %481, align 8, !tbaa !69
  %483 = icmp eq ptr %482, null
  br i1 %483, label %484, label %507

484:                                              ; preds = %480
  %485 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %486 = load ptr, ptr %485, align 8, !tbaa !55
  %487 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %488 = load ptr, ptr %487, align 8, !tbaa !58
  %489 = icmp ult ptr %486, %488
  br i1 %489, label %510, label %490

490:                                              ; preds = %484
  %491 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %492 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %493 = load i64, ptr %492, align 8, !tbaa !57
  %494 = load ptr, ptr %491, align 8, !tbaa !56
  %495 = ptrtoint ptr %486 to i64
  %496 = ptrtoint ptr %494 to i64
  %497 = sub i64 %495, %496
  %498 = shl i64 %493, 32
  %499 = and i64 %498, -35184372088832
  %500 = add i64 %499, 35184372088832
  %501 = ashr exact i64 %500, 32
  %502 = tail call ptr @Perl_safesysrealloc(ptr noundef %494, i64 noundef %501) #10
  store ptr %502, ptr %491, align 8, !tbaa !56
  store i64 %501, ptr %492, align 8, !tbaa !57
  %503 = shl i64 %497, 32
  %504 = ashr exact i64 %503, 32
  %505 = getelementptr inbounds i8, ptr %502, i64 %504
  store ptr %505, ptr %485, align 8, !tbaa !55
  %506 = getelementptr inbounds i8, ptr %502, i64 %501
  store ptr %506, ptr %487, align 8, !tbaa !58
  br label %510

507:                                              ; preds = %480
  %508 = tail call i32 @PerlIO_putc(ptr noundef nonnull %482, i32 noundef 7) #10
  %509 = icmp eq i32 %508, -1
  br i1 %509, label %549, label %513

510:                                              ; preds = %484, %490
  %511 = phi ptr [ %505, %490 ], [ %486, %484 ]
  %512 = getelementptr inbounds i8, ptr %511, i64 1
  store ptr %512, ptr %485, align 8, !tbaa !55
  store i8 7, ptr %511, align 1, !tbaa !41
  br label %513

513:                                              ; preds = %510, %507
  %514 = load ptr, ptr %481, align 8, !tbaa !69
  %515 = icmp eq ptr %514, null
  br i1 %515, label %516, label %545

516:                                              ; preds = %513
  %517 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %518 = load ptr, ptr %517, align 8, !tbaa !55
  %519 = getelementptr inbounds i8, ptr %518, i64 8
  %520 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %521 = load ptr, ptr %520, align 8, !tbaa !58
  %522 = icmp ugt ptr %519, %521
  br i1 %522, label %523, label %540

523:                                              ; preds = %516
  %524 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %525 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %526 = load i64, ptr %525, align 8, !tbaa !57
  %527 = load ptr, ptr %524, align 8, !tbaa !56
  %528 = ptrtoint ptr %518 to i64
  %529 = ptrtoint ptr %527 to i64
  %530 = sub i64 %528, %529
  %531 = shl i64 %526, 32
  %532 = add i64 %531, 35214436859904
  %533 = ashr exact i64 %532, 32
  %534 = and i64 %533, -8192
  %535 = tail call ptr @Perl_safesysrealloc(ptr noundef %527, i64 noundef %534) #10
  store ptr %535, ptr %524, align 8, !tbaa !56
  store i64 %534, ptr %525, align 8, !tbaa !57
  %536 = shl i64 %530, 32
  %537 = ashr exact i64 %536, 32
  %538 = getelementptr inbounds i8, ptr %535, i64 %537
  store ptr %538, ptr %517, align 8, !tbaa !55
  %539 = getelementptr inbounds i8, ptr %535, i64 %534
  store ptr %539, ptr %520, align 8, !tbaa !58
  br label %540

540:                                              ; preds = %523, %516
  %541 = load ptr, ptr %517, align 8, !tbaa !55
  %542 = load i64, ptr %6, align 8
  store i64 %542, ptr %541, align 1
  %543 = load ptr, ptr %517, align 8, !tbaa !55
  %544 = getelementptr inbounds i8, ptr %543, i64 8
  store ptr %544, ptr %517, align 8, !tbaa !55
  br label %548

545:                                              ; preds = %513
  %546 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %514, ptr noundef nonnull %6, i64 noundef 8) #10
  %547 = icmp eq i64 %546, 8
  br i1 %547, label %548, label %549

548:                                              ; preds = %545, %540
  br label %549

549:                                              ; preds = %545, %507, %475, %548, %464
  %550 = phi i32 [ 28, %464 ], [ 0, %548 ], [ 27, %475 ], [ 1, %507 ], [ 1, %545 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  switch i32 %550, label %1441 [
    i32 0, label %1440
    i32 28, label %183
    i32 27, label %554
  ]

551:                                              ; preds = %443
  %552 = and i32 %13, 28672
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %1436, label %554

554:                                              ; preds = %549, %373, %551, %195, %166
  %555 = load i32, ptr %12, align 4, !tbaa !53
  %556 = and i32 %555, 2098176
  %557 = icmp eq i32 %556, 1024
  br i1 %557, label %558, label %564

558:                                              ; preds = %554
  %559 = load ptr, ptr %1, align 8, !tbaa !85
  %560 = getelementptr inbounds %struct.xpv, ptr %559, i64 0, i32 2
  %561 = load i64, ptr %560, align 8, !tbaa !107
  store i64 %561, ptr %4, align 8, !tbaa !82
  %562 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %563 = load ptr, ptr %562, align 8, !tbaa !41
  br label %566

564:                                              ; preds = %554
  %565 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2) #10
  br label %566

566:                                              ; preds = %558, %564, %158, %164
  %567 = phi ptr [ %163, %158 ], [ %165, %164 ], [ %563, %558 ], [ %565, %564 ]
  %568 = load i32, ptr %12, align 4, !tbaa !53
  %569 = and i32 %568, 14680064
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %865, label %571

571:                                              ; preds = %566
  %572 = call ptr @Perl_mg_find(ptr noundef %1, i32 noundef 86) #10
  %573 = icmp eq ptr %572, null
  br i1 %573, label %865, label %574

574:                                              ; preds = %571
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  %575 = getelementptr inbounds %struct.magic, ptr %572, i64 0, i32 5
  %576 = load i64, ptr %575, align 8, !tbaa !121
  %577 = trunc i64 %576 to i32
  store i32 %577, ptr %8, align 4, !tbaa !43
  %578 = icmp slt i32 %577, 256
  br i1 %578, label %579, label %691

579:                                              ; preds = %574
  %580 = trunc i64 %576 to i8
  %581 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %582 = load ptr, ptr %581, align 8, !tbaa !69
  %583 = icmp eq ptr %582, null
  br i1 %583, label %584, label %607

584:                                              ; preds = %579
  %585 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %586 = load ptr, ptr %585, align 8, !tbaa !55
  %587 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %588 = load ptr, ptr %587, align 8, !tbaa !58
  %589 = icmp ult ptr %586, %588
  br i1 %589, label %610, label %590

590:                                              ; preds = %584
  %591 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %592 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %593 = load i64, ptr %592, align 8, !tbaa !57
  %594 = load ptr, ptr %591, align 8, !tbaa !56
  %595 = ptrtoint ptr %586 to i64
  %596 = ptrtoint ptr %594 to i64
  %597 = sub i64 %595, %596
  %598 = shl i64 %593, 32
  %599 = and i64 %598, -35184372088832
  %600 = add i64 %599, 35184372088832
  %601 = ashr exact i64 %600, 32
  %602 = call ptr @Perl_safesysrealloc(ptr noundef %594, i64 noundef %601) #10
  store ptr %602, ptr %591, align 8, !tbaa !56
  store i64 %601, ptr %592, align 8, !tbaa !57
  %603 = shl i64 %597, 32
  %604 = ashr exact i64 %603, 32
  %605 = getelementptr inbounds i8, ptr %602, i64 %604
  store ptr %605, ptr %585, align 8, !tbaa !55
  %606 = getelementptr inbounds i8, ptr %602, i64 %601
  store ptr %606, ptr %587, align 8, !tbaa !58
  br label %610

607:                                              ; preds = %579
  %608 = call i32 @PerlIO_putc(ptr noundef nonnull %582, i32 noundef 29) #10
  %609 = icmp eq i32 %608, -1
  br i1 %609, label %864, label %613

610:                                              ; preds = %584, %590
  %611 = phi ptr [ %605, %590 ], [ %586, %584 ]
  %612 = getelementptr inbounds i8, ptr %611, i64 1
  store ptr %612, ptr %585, align 8, !tbaa !55
  store i8 29, ptr %611, align 1, !tbaa !41
  br label %613

613:                                              ; preds = %610, %607
  %614 = load ptr, ptr %581, align 8, !tbaa !69
  %615 = icmp eq ptr %614, null
  br i1 %615, label %616, label %639

616:                                              ; preds = %613
  %617 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %618 = load ptr, ptr %617, align 8, !tbaa !55
  %619 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %620 = load ptr, ptr %619, align 8, !tbaa !58
  %621 = icmp ult ptr %618, %620
  br i1 %621, label %643, label %622

622:                                              ; preds = %616
  %623 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %624 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %625 = load i64, ptr %624, align 8, !tbaa !57
  %626 = load ptr, ptr %623, align 8, !tbaa !56
  %627 = ptrtoint ptr %618 to i64
  %628 = ptrtoint ptr %626 to i64
  %629 = sub i64 %627, %628
  %630 = shl i64 %625, 32
  %631 = and i64 %630, -35184372088832
  %632 = add i64 %631, 35184372088832
  %633 = ashr exact i64 %632, 32
  %634 = call ptr @Perl_safesysrealloc(ptr noundef %626, i64 noundef %633) #10
  store ptr %634, ptr %623, align 8, !tbaa !56
  store i64 %633, ptr %624, align 8, !tbaa !57
  %635 = shl i64 %629, 32
  %636 = ashr exact i64 %635, 32
  %637 = getelementptr inbounds i8, ptr %634, i64 %636
  store ptr %637, ptr %617, align 8, !tbaa !55
  %638 = getelementptr inbounds i8, ptr %634, i64 %633
  store ptr %638, ptr %619, align 8, !tbaa !58
  br label %643

639:                                              ; preds = %613
  %640 = and i32 %577, 255
  %641 = call i32 @PerlIO_putc(ptr noundef nonnull %614, i32 noundef %640) #10
  %642 = icmp eq i32 %641, -1
  br i1 %642, label %864, label %646

643:                                              ; preds = %616, %622
  %644 = phi ptr [ %637, %622 ], [ %618, %616 ]
  %645 = getelementptr inbounds i8, ptr %644, i64 1
  store ptr %645, ptr %617, align 8, !tbaa !55
  store i8 %580, ptr %644, align 1, !tbaa !41
  br label %646

646:                                              ; preds = %643, %639
  %647 = load i32, ptr %8, align 4, !tbaa !43
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %863, label %649

649:                                              ; preds = %646
  %650 = load ptr, ptr %581, align 8, !tbaa !69
  %651 = icmp eq ptr %650, null
  %652 = sext i32 %647 to i64
  br i1 %651, label %653, label %684

653:                                              ; preds = %649
  %654 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %655 = load ptr, ptr %654, align 8, !tbaa !55
  %656 = getelementptr inbounds i8, ptr %655, i64 %652
  %657 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %658 = load ptr, ptr %657, align 8, !tbaa !58
  %659 = icmp ugt ptr %656, %658
  br i1 %659, label %660, label %678

660:                                              ; preds = %653
  %661 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %662 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %663 = load i64, ptr %662, align 8, !tbaa !57
  %664 = trunc i64 %663 to i32
  %665 = add i32 %647, 8191
  %666 = add i32 %665, %664
  %667 = and i32 %666, -8192
  %668 = load ptr, ptr %661, align 8, !tbaa !56
  %669 = ptrtoint ptr %655 to i64
  %670 = ptrtoint ptr %668 to i64
  %671 = sub i64 %669, %670
  %672 = sext i32 %667 to i64
  %673 = call ptr @Perl_safesysrealloc(ptr noundef %668, i64 noundef %672) #10
  store ptr %673, ptr %661, align 8, !tbaa !56
  store i64 %672, ptr %662, align 8, !tbaa !57
  %674 = shl i64 %671, 32
  %675 = ashr exact i64 %674, 32
  %676 = getelementptr inbounds i8, ptr %673, i64 %675
  store ptr %676, ptr %654, align 8, !tbaa !55
  %677 = getelementptr inbounds i8, ptr %673, i64 %672
  store ptr %677, ptr %657, align 8, !tbaa !58
  br label %678

678:                                              ; preds = %660, %653
  %679 = load ptr, ptr %654, align 8, !tbaa !55
  %680 = getelementptr inbounds %struct.magic, ptr %572, i64 0, i32 7
  %681 = load ptr, ptr %680, align 8, !tbaa !122
  %682 = load i32, ptr %8, align 4, !tbaa !43
  %683 = sext i32 %682 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %679, ptr align 1 %681, i64 %683, i1 false)
  br label %857

684:                                              ; preds = %649
  %685 = getelementptr inbounds %struct.magic, ptr %572, i64 0, i32 7
  %686 = load ptr, ptr %685, align 8, !tbaa !122
  %687 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %650, ptr noundef %686, i64 noundef %652) #10
  %688 = load i32, ptr %8, align 4, !tbaa !43
  %689 = sext i32 %688 to i64
  %690 = icmp eq i64 %687, %689
  br i1 %690, label %863, label %864

691:                                              ; preds = %574
  %692 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %693 = load ptr, ptr %692, align 8, !tbaa !69
  %694 = icmp eq ptr %693, null
  br i1 %694, label %695, label %718

695:                                              ; preds = %691
  %696 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %697 = load ptr, ptr %696, align 8, !tbaa !55
  %698 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %699 = load ptr, ptr %698, align 8, !tbaa !58
  %700 = icmp ult ptr %697, %699
  br i1 %700, label %721, label %701

701:                                              ; preds = %695
  %702 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %703 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %704 = load i64, ptr %703, align 8, !tbaa !57
  %705 = load ptr, ptr %702, align 8, !tbaa !56
  %706 = ptrtoint ptr %697 to i64
  %707 = ptrtoint ptr %705 to i64
  %708 = sub i64 %706, %707
  %709 = shl i64 %704, 32
  %710 = and i64 %709, -35184372088832
  %711 = add i64 %710, 35184372088832
  %712 = ashr exact i64 %711, 32
  %713 = call ptr @Perl_safesysrealloc(ptr noundef %705, i64 noundef %712) #10
  store ptr %713, ptr %702, align 8, !tbaa !56
  store i64 %712, ptr %703, align 8, !tbaa !57
  %714 = shl i64 %708, 32
  %715 = ashr exact i64 %714, 32
  %716 = getelementptr inbounds i8, ptr %713, i64 %715
  store ptr %716, ptr %696, align 8, !tbaa !55
  %717 = getelementptr inbounds i8, ptr %713, i64 %712
  store ptr %717, ptr %698, align 8, !tbaa !58
  br label %721

718:                                              ; preds = %691
  %719 = call i32 @PerlIO_putc(ptr noundef nonnull %693, i32 noundef 30) #10
  %720 = icmp eq i32 %719, -1
  br i1 %720, label %864, label %724

721:                                              ; preds = %695, %701
  %722 = phi ptr [ %716, %701 ], [ %697, %695 ]
  %723 = getelementptr inbounds i8, ptr %722, i64 1
  store ptr %723, ptr %696, align 8, !tbaa !55
  store i8 30, ptr %722, align 1, !tbaa !41
  br label %724

724:                                              ; preds = %721, %718
  %725 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %726 = load i32, ptr %725, align 8, !tbaa !62
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %773, label %728

728:                                              ; preds = %724
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  %729 = load i32, ptr %8, align 4, !tbaa !43
  %730 = call i32 @llvm.bswap.i32(i32 %729)
  store i32 %730, ptr %9, align 4, !tbaa !43
  %731 = load ptr, ptr %692, align 8, !tbaa !69
  %732 = icmp eq ptr %731, null
  br i1 %732, label %733, label %768

733:                                              ; preds = %728
  %734 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %735 = load ptr, ptr %734, align 8, !tbaa !55
  %736 = getelementptr inbounds i8, ptr %735, i64 4
  %737 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %738 = load ptr, ptr %737, align 8, !tbaa !58
  %739 = icmp ugt ptr %736, %738
  br i1 %739, label %740, label %757

740:                                              ; preds = %733
  %741 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %742 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %743 = load i64, ptr %742, align 8, !tbaa !57
  %744 = load ptr, ptr %741, align 8, !tbaa !56
  %745 = ptrtoint ptr %735 to i64
  %746 = ptrtoint ptr %744 to i64
  %747 = sub i64 %745, %746
  %748 = shl i64 %743, 32
  %749 = add i64 %748, 35197256990720
  %750 = ashr exact i64 %749, 32
  %751 = and i64 %750, -8192
  %752 = call ptr @Perl_safesysrealloc(ptr noundef %744, i64 noundef %751) #10
  store ptr %752, ptr %741, align 8, !tbaa !56
  store i64 %751, ptr %742, align 8, !tbaa !57
  %753 = shl i64 %747, 32
  %754 = ashr exact i64 %753, 32
  %755 = getelementptr inbounds i8, ptr %752, i64 %754
  store ptr %755, ptr %734, align 8, !tbaa !55
  %756 = getelementptr inbounds i8, ptr %752, i64 %751
  store ptr %756, ptr %737, align 8, !tbaa !58
  br label %757

757:                                              ; preds = %740, %733
  %758 = load ptr, ptr %734, align 8, !tbaa !55
  %759 = ptrtoint ptr %758 to i64
  %760 = and i64 %759, 3
  %761 = icmp eq i64 %760, 0
  %762 = load i32, ptr %9, align 4
  br i1 %761, label %763, label %764

763:                                              ; preds = %757
  store i32 %762, ptr %758, align 4, !tbaa !43
  br label %765

764:                                              ; preds = %757
  store i32 %762, ptr %758, align 1
  br label %765

765:                                              ; preds = %764, %763
  %766 = load ptr, ptr %734, align 8, !tbaa !55
  %767 = getelementptr inbounds i8, ptr %766, i64 4
  store ptr %767, ptr %734, align 8, !tbaa !55
  br label %771

768:                                              ; preds = %728
  %769 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %731, ptr noundef nonnull %9, i64 noundef 4) #10
  %770 = icmp eq i64 %769, 4
  br i1 %770, label %771, label %772

771:                                              ; preds = %768, %765
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  br label %814

772:                                              ; preds = %768
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  br label %864

773:                                              ; preds = %724
  %774 = load ptr, ptr %692, align 8, !tbaa !69
  %775 = icmp eq ptr %774, null
  br i1 %775, label %776, label %811

776:                                              ; preds = %773
  %777 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %778 = load ptr, ptr %777, align 8, !tbaa !55
  %779 = getelementptr inbounds i8, ptr %778, i64 4
  %780 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %781 = load ptr, ptr %780, align 8, !tbaa !58
  %782 = icmp ugt ptr %779, %781
  br i1 %782, label %783, label %800

783:                                              ; preds = %776
  %784 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %785 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %786 = load i64, ptr %785, align 8, !tbaa !57
  %787 = load ptr, ptr %784, align 8, !tbaa !56
  %788 = ptrtoint ptr %778 to i64
  %789 = ptrtoint ptr %787 to i64
  %790 = sub i64 %788, %789
  %791 = shl i64 %786, 32
  %792 = add i64 %791, 35197256990720
  %793 = ashr exact i64 %792, 32
  %794 = and i64 %793, -8192
  %795 = call ptr @Perl_safesysrealloc(ptr noundef %787, i64 noundef %794) #10
  store ptr %795, ptr %784, align 8, !tbaa !56
  store i64 %794, ptr %785, align 8, !tbaa !57
  %796 = shl i64 %790, 32
  %797 = ashr exact i64 %796, 32
  %798 = getelementptr inbounds i8, ptr %795, i64 %797
  store ptr %798, ptr %777, align 8, !tbaa !55
  %799 = getelementptr inbounds i8, ptr %795, i64 %794
  store ptr %799, ptr %780, align 8, !tbaa !58
  br label %800

800:                                              ; preds = %783, %776
  %801 = load ptr, ptr %777, align 8, !tbaa !55
  %802 = ptrtoint ptr %801 to i64
  %803 = and i64 %802, 3
  %804 = icmp eq i64 %803, 0
  %805 = load i32, ptr %8, align 4
  br i1 %804, label %806, label %807

806:                                              ; preds = %800
  store i32 %805, ptr %801, align 4, !tbaa !43
  br label %808

807:                                              ; preds = %800
  store i32 %805, ptr %801, align 1
  br label %808

808:                                              ; preds = %807, %806
  %809 = load ptr, ptr %777, align 8, !tbaa !55
  %810 = getelementptr inbounds i8, ptr %809, i64 4
  store ptr %810, ptr %777, align 8, !tbaa !55
  br label %814

811:                                              ; preds = %773
  %812 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %774, ptr noundef nonnull %8, i64 noundef 4) #10
  %813 = icmp eq i64 %812, 4
  br i1 %813, label %814, label %864

814:                                              ; preds = %771, %811, %808
  %815 = load ptr, ptr %692, align 8, !tbaa !69
  %816 = icmp eq ptr %815, null
  %817 = load i32, ptr %8, align 4, !tbaa !43
  %818 = sext i32 %817 to i64
  br i1 %816, label %819, label %850

819:                                              ; preds = %814
  %820 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %821 = load ptr, ptr %820, align 8, !tbaa !55
  %822 = getelementptr inbounds i8, ptr %821, i64 %818
  %823 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %824 = load ptr, ptr %823, align 8, !tbaa !58
  %825 = icmp ugt ptr %822, %824
  br i1 %825, label %826, label %844

826:                                              ; preds = %819
  %827 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %828 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %829 = load i64, ptr %828, align 8, !tbaa !57
  %830 = trunc i64 %829 to i32
  %831 = add i32 %817, 8191
  %832 = add i32 %831, %830
  %833 = and i32 %832, -8192
  %834 = load ptr, ptr %827, align 8, !tbaa !56
  %835 = ptrtoint ptr %821 to i64
  %836 = ptrtoint ptr %834 to i64
  %837 = sub i64 %835, %836
  %838 = sext i32 %833 to i64
  %839 = call ptr @Perl_safesysrealloc(ptr noundef %834, i64 noundef %838) #10
  store ptr %839, ptr %827, align 8, !tbaa !56
  store i64 %838, ptr %828, align 8, !tbaa !57
  %840 = shl i64 %837, 32
  %841 = ashr exact i64 %840, 32
  %842 = getelementptr inbounds i8, ptr %839, i64 %841
  store ptr %842, ptr %820, align 8, !tbaa !55
  %843 = getelementptr inbounds i8, ptr %839, i64 %838
  store ptr %843, ptr %823, align 8, !tbaa !58
  br label %844

844:                                              ; preds = %826, %819
  %845 = load ptr, ptr %820, align 8, !tbaa !55
  %846 = getelementptr inbounds %struct.magic, ptr %572, i64 0, i32 7
  %847 = load ptr, ptr %846, align 8, !tbaa !122
  %848 = load i32, ptr %8, align 4, !tbaa !43
  %849 = sext i32 %848 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %845, ptr align 1 %847, i64 %849, i1 false)
  br label %857

850:                                              ; preds = %814
  %851 = getelementptr inbounds %struct.magic, ptr %572, i64 0, i32 7
  %852 = load ptr, ptr %851, align 8, !tbaa !122
  %853 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %815, ptr noundef %852, i64 noundef %818) #10
  %854 = load i32, ptr %8, align 4, !tbaa !43
  %855 = sext i32 %854 to i64
  %856 = icmp eq i64 %853, %855
  br i1 %856, label %863, label %864

857:                                              ; preds = %844, %678
  %858 = phi ptr [ %654, %678 ], [ %820, %844 ]
  %859 = load i32, ptr %8, align 4, !tbaa !43
  %860 = load ptr, ptr %858, align 8, !tbaa !55
  %861 = sext i32 %859 to i64
  %862 = getelementptr inbounds i8, ptr %860, i64 %861
  store ptr %862, ptr %858, align 8, !tbaa !55
  br label %863

863:                                              ; preds = %857, %646, %684, %850
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  br label %865

864:                                              ; preds = %850, %684, %811, %772, %718, %607, %639
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  br label %1441

865:                                              ; preds = %863, %571, %566
  %866 = load i64, ptr %4, align 8, !tbaa !82
  %867 = trunc i64 %866 to i32
  store i32 %867, ptr %7, align 4, !tbaa !43
  %868 = load i32, ptr %12, align 4, !tbaa !53
  %869 = and i32 %868, 536870912
  %870 = icmp eq i32 %869, 0
  %871 = icmp slt i32 %867, 256
  br i1 %870, label %1154, label %872

872:                                              ; preds = %865
  br i1 %871, label %873, label %986

873:                                              ; preds = %872
  %874 = trunc i64 %866 to i8
  %875 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %876 = load ptr, ptr %875, align 8, !tbaa !69
  %877 = icmp eq ptr %876, null
  br i1 %877, label %878, label %901

878:                                              ; preds = %873
  %879 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %880 = load ptr, ptr %879, align 8, !tbaa !55
  %881 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %882 = load ptr, ptr %881, align 8, !tbaa !58
  %883 = icmp ult ptr %880, %882
  br i1 %883, label %904, label %884

884:                                              ; preds = %878
  %885 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %886 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %887 = load i64, ptr %886, align 8, !tbaa !57
  %888 = load ptr, ptr %885, align 8, !tbaa !56
  %889 = ptrtoint ptr %880 to i64
  %890 = ptrtoint ptr %888 to i64
  %891 = sub i64 %889, %890
  %892 = shl i64 %887, 32
  %893 = and i64 %892, -35184372088832
  %894 = add i64 %893, 35184372088832
  %895 = ashr exact i64 %894, 32
  %896 = call ptr @Perl_safesysrealloc(ptr noundef %888, i64 noundef %895) #10
  store ptr %896, ptr %885, align 8, !tbaa !56
  store i64 %895, ptr %886, align 8, !tbaa !57
  %897 = shl i64 %891, 32
  %898 = ashr exact i64 %897, 32
  %899 = getelementptr inbounds i8, ptr %896, i64 %898
  store ptr %899, ptr %879, align 8, !tbaa !55
  %900 = getelementptr inbounds i8, ptr %896, i64 %895
  store ptr %900, ptr %881, align 8, !tbaa !58
  br label %904

901:                                              ; preds = %873
  %902 = call i32 @PerlIO_putc(ptr noundef nonnull %876, i32 noundef 23) #10
  %903 = icmp eq i32 %902, -1
  br i1 %903, label %1441, label %907

904:                                              ; preds = %878, %884
  %905 = phi ptr [ %899, %884 ], [ %880, %878 ]
  %906 = getelementptr inbounds i8, ptr %905, i64 1
  store ptr %906, ptr %879, align 8, !tbaa !55
  store i8 23, ptr %905, align 1, !tbaa !41
  br label %907

907:                                              ; preds = %904, %901
  %908 = load ptr, ptr %875, align 8, !tbaa !69
  %909 = icmp eq ptr %908, null
  br i1 %909, label %910, label %933

910:                                              ; preds = %907
  %911 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %912 = load ptr, ptr %911, align 8, !tbaa !55
  %913 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %914 = load ptr, ptr %913, align 8, !tbaa !58
  %915 = icmp ult ptr %912, %914
  br i1 %915, label %937, label %916

916:                                              ; preds = %910
  %917 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %918 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %919 = load i64, ptr %918, align 8, !tbaa !57
  %920 = load ptr, ptr %917, align 8, !tbaa !56
  %921 = ptrtoint ptr %912 to i64
  %922 = ptrtoint ptr %920 to i64
  %923 = sub i64 %921, %922
  %924 = shl i64 %919, 32
  %925 = and i64 %924, -35184372088832
  %926 = add i64 %925, 35184372088832
  %927 = ashr exact i64 %926, 32
  %928 = call ptr @Perl_safesysrealloc(ptr noundef %920, i64 noundef %927) #10
  store ptr %928, ptr %917, align 8, !tbaa !56
  store i64 %927, ptr %918, align 8, !tbaa !57
  %929 = shl i64 %923, 32
  %930 = ashr exact i64 %929, 32
  %931 = getelementptr inbounds i8, ptr %928, i64 %930
  store ptr %931, ptr %911, align 8, !tbaa !55
  %932 = getelementptr inbounds i8, ptr %928, i64 %927
  store ptr %932, ptr %913, align 8, !tbaa !58
  br label %937

933:                                              ; preds = %907
  %934 = and i32 %867, 255
  %935 = call i32 @PerlIO_putc(ptr noundef nonnull %908, i32 noundef %934) #10
  %936 = icmp eq i32 %935, -1
  br i1 %936, label %1441, label %940

937:                                              ; preds = %910, %916
  %938 = phi ptr [ %931, %916 ], [ %912, %910 ]
  %939 = getelementptr inbounds i8, ptr %938, i64 1
  store ptr %939, ptr %911, align 8, !tbaa !55
  store i8 %874, ptr %938, align 1, !tbaa !41
  br label %940

940:                                              ; preds = %937, %933
  %941 = load i32, ptr %7, align 4, !tbaa !43
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %1440, label %943

943:                                              ; preds = %940
  %944 = load ptr, ptr %875, align 8, !tbaa !69
  %945 = icmp eq ptr %944, null
  br i1 %945, label %946, label %980

946:                                              ; preds = %943
  %947 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %948 = load ptr, ptr %947, align 8, !tbaa !55
  %949 = sext i32 %941 to i64
  %950 = getelementptr inbounds i8, ptr %948, i64 %949
  %951 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %952 = load ptr, ptr %951, align 8, !tbaa !58
  %953 = icmp ugt ptr %950, %952
  br i1 %953, label %954, label %972

954:                                              ; preds = %946
  %955 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %956 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %957 = load i64, ptr %956, align 8, !tbaa !57
  %958 = trunc i64 %957 to i32
  %959 = add i32 %941, 8191
  %960 = add i32 %959, %958
  %961 = and i32 %960, -8192
  %962 = load ptr, ptr %955, align 8, !tbaa !56
  %963 = ptrtoint ptr %948 to i64
  %964 = ptrtoint ptr %962 to i64
  %965 = sub i64 %963, %964
  %966 = sext i32 %961 to i64
  %967 = call ptr @Perl_safesysrealloc(ptr noundef %962, i64 noundef %966) #10
  store ptr %967, ptr %955, align 8, !tbaa !56
  store i64 %966, ptr %956, align 8, !tbaa !57
  %968 = shl i64 %965, 32
  %969 = ashr exact i64 %968, 32
  %970 = getelementptr inbounds i8, ptr %967, i64 %969
  store ptr %970, ptr %947, align 8, !tbaa !55
  %971 = getelementptr inbounds i8, ptr %967, i64 %966
  store ptr %971, ptr %951, align 8, !tbaa !58
  br label %972

972:                                              ; preds = %954, %946
  %973 = load ptr, ptr %947, align 8, !tbaa !55
  %974 = load i32, ptr %7, align 4, !tbaa !43
  %975 = sext i32 %974 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %973, ptr align 1 %567, i64 %975, i1 false)
  %976 = load i32, ptr %7, align 4, !tbaa !43
  %977 = load ptr, ptr %947, align 8, !tbaa !55
  %978 = sext i32 %976 to i64
  %979 = getelementptr inbounds i8, ptr %977, i64 %978
  store ptr %979, ptr %947, align 8, !tbaa !55
  br label %1440

980:                                              ; preds = %943
  %981 = sext i32 %941 to i64
  %982 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %944, ptr noundef %567, i64 noundef %981) #10
  %983 = load i32, ptr %7, align 4, !tbaa !43
  %984 = sext i32 %983 to i64
  %985 = icmp eq i64 %982, %984
  br i1 %985, label %1440, label %1441

986:                                              ; preds = %872
  %987 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %988 = load ptr, ptr %987, align 8, !tbaa !69
  %989 = icmp eq ptr %988, null
  br i1 %989, label %990, label %1013

990:                                              ; preds = %986
  %991 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %992 = load ptr, ptr %991, align 8, !tbaa !55
  %993 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %994 = load ptr, ptr %993, align 8, !tbaa !58
  %995 = icmp ult ptr %992, %994
  br i1 %995, label %1016, label %996

996:                                              ; preds = %990
  %997 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %998 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %999 = load i64, ptr %998, align 8, !tbaa !57
  %1000 = load ptr, ptr %997, align 8, !tbaa !56
  %1001 = ptrtoint ptr %992 to i64
  %1002 = ptrtoint ptr %1000 to i64
  %1003 = sub i64 %1001, %1002
  %1004 = shl i64 %999, 32
  %1005 = and i64 %1004, -35184372088832
  %1006 = add i64 %1005, 35184372088832
  %1007 = ashr exact i64 %1006, 32
  %1008 = call ptr @Perl_safesysrealloc(ptr noundef %1000, i64 noundef %1007) #10
  store ptr %1008, ptr %997, align 8, !tbaa !56
  store i64 %1007, ptr %998, align 8, !tbaa !57
  %1009 = shl i64 %1003, 32
  %1010 = ashr exact i64 %1009, 32
  %1011 = getelementptr inbounds i8, ptr %1008, i64 %1010
  store ptr %1011, ptr %991, align 8, !tbaa !55
  %1012 = getelementptr inbounds i8, ptr %1008, i64 %1007
  store ptr %1012, ptr %993, align 8, !tbaa !58
  br label %1016

1013:                                             ; preds = %986
  %1014 = call i32 @PerlIO_putc(ptr noundef nonnull %988, i32 noundef 24) #10
  %1015 = icmp eq i32 %1014, -1
  br i1 %1015, label %1441, label %1019

1016:                                             ; preds = %990, %996
  %1017 = phi ptr [ %1011, %996 ], [ %992, %990 ]
  %1018 = getelementptr inbounds i8, ptr %1017, i64 1
  store ptr %1018, ptr %991, align 8, !tbaa !55
  store i8 24, ptr %1017, align 1, !tbaa !41
  br label %1019

1019:                                             ; preds = %1016, %1013
  %1020 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %1021 = load i32, ptr %1020, align 8, !tbaa !62
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1068, label %1023

1023:                                             ; preds = %1019
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  %1024 = load i32, ptr %7, align 4, !tbaa !43
  %1025 = call i32 @llvm.bswap.i32(i32 %1024)
  store i32 %1025, ptr %10, align 4, !tbaa !43
  %1026 = load ptr, ptr %987, align 8, !tbaa !69
  %1027 = icmp eq ptr %1026, null
  br i1 %1027, label %1028, label %1063

1028:                                             ; preds = %1023
  %1029 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1030 = load ptr, ptr %1029, align 8, !tbaa !55
  %1031 = getelementptr inbounds i8, ptr %1030, i64 4
  %1032 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1033 = load ptr, ptr %1032, align 8, !tbaa !58
  %1034 = icmp ugt ptr %1031, %1033
  br i1 %1034, label %1035, label %1052

1035:                                             ; preds = %1028
  %1036 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1037 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1038 = load i64, ptr %1037, align 8, !tbaa !57
  %1039 = load ptr, ptr %1036, align 8, !tbaa !56
  %1040 = ptrtoint ptr %1030 to i64
  %1041 = ptrtoint ptr %1039 to i64
  %1042 = sub i64 %1040, %1041
  %1043 = shl i64 %1038, 32
  %1044 = add i64 %1043, 35197256990720
  %1045 = ashr exact i64 %1044, 32
  %1046 = and i64 %1045, -8192
  %1047 = call ptr @Perl_safesysrealloc(ptr noundef %1039, i64 noundef %1046) #10
  store ptr %1047, ptr %1036, align 8, !tbaa !56
  store i64 %1046, ptr %1037, align 8, !tbaa !57
  %1048 = shl i64 %1042, 32
  %1049 = ashr exact i64 %1048, 32
  %1050 = getelementptr inbounds i8, ptr %1047, i64 %1049
  store ptr %1050, ptr %1029, align 8, !tbaa !55
  %1051 = getelementptr inbounds i8, ptr %1047, i64 %1046
  store ptr %1051, ptr %1032, align 8, !tbaa !58
  br label %1052

1052:                                             ; preds = %1035, %1028
  %1053 = load ptr, ptr %1029, align 8, !tbaa !55
  %1054 = ptrtoint ptr %1053 to i64
  %1055 = and i64 %1054, 3
  %1056 = icmp eq i64 %1055, 0
  %1057 = load i32, ptr %10, align 4
  br i1 %1056, label %1058, label %1059

1058:                                             ; preds = %1052
  store i32 %1057, ptr %1053, align 4, !tbaa !43
  br label %1060

1059:                                             ; preds = %1052
  store i32 %1057, ptr %1053, align 1
  br label %1060

1060:                                             ; preds = %1059, %1058
  %1061 = load ptr, ptr %1029, align 8, !tbaa !55
  %1062 = getelementptr inbounds i8, ptr %1061, i64 4
  store ptr %1062, ptr %1029, align 8, !tbaa !55
  br label %1066

1063:                                             ; preds = %1023
  %1064 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1026, ptr noundef nonnull %10, i64 noundef 4) #10
  %1065 = icmp eq i64 %1064, 4
  br i1 %1065, label %1066, label %1067

1066:                                             ; preds = %1063, %1060
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  br label %1109

1067:                                             ; preds = %1063
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  br label %1441

1068:                                             ; preds = %1019
  %1069 = load ptr, ptr %987, align 8, !tbaa !69
  %1070 = icmp eq ptr %1069, null
  br i1 %1070, label %1071, label %1106

1071:                                             ; preds = %1068
  %1072 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1073 = load ptr, ptr %1072, align 8, !tbaa !55
  %1074 = getelementptr inbounds i8, ptr %1073, i64 4
  %1075 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1076 = load ptr, ptr %1075, align 8, !tbaa !58
  %1077 = icmp ugt ptr %1074, %1076
  br i1 %1077, label %1078, label %1095

1078:                                             ; preds = %1071
  %1079 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1080 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1081 = load i64, ptr %1080, align 8, !tbaa !57
  %1082 = load ptr, ptr %1079, align 8, !tbaa !56
  %1083 = ptrtoint ptr %1073 to i64
  %1084 = ptrtoint ptr %1082 to i64
  %1085 = sub i64 %1083, %1084
  %1086 = shl i64 %1081, 32
  %1087 = add i64 %1086, 35197256990720
  %1088 = ashr exact i64 %1087, 32
  %1089 = and i64 %1088, -8192
  %1090 = call ptr @Perl_safesysrealloc(ptr noundef %1082, i64 noundef %1089) #10
  store ptr %1090, ptr %1079, align 8, !tbaa !56
  store i64 %1089, ptr %1080, align 8, !tbaa !57
  %1091 = shl i64 %1085, 32
  %1092 = ashr exact i64 %1091, 32
  %1093 = getelementptr inbounds i8, ptr %1090, i64 %1092
  store ptr %1093, ptr %1072, align 8, !tbaa !55
  %1094 = getelementptr inbounds i8, ptr %1090, i64 %1089
  store ptr %1094, ptr %1075, align 8, !tbaa !58
  br label %1095

1095:                                             ; preds = %1078, %1071
  %1096 = load ptr, ptr %1072, align 8, !tbaa !55
  %1097 = ptrtoint ptr %1096 to i64
  %1098 = and i64 %1097, 3
  %1099 = icmp eq i64 %1098, 0
  %1100 = load i32, ptr %7, align 4
  br i1 %1099, label %1101, label %1102

1101:                                             ; preds = %1095
  store i32 %1100, ptr %1096, align 4, !tbaa !43
  br label %1103

1102:                                             ; preds = %1095
  store i32 %1100, ptr %1096, align 1
  br label %1103

1103:                                             ; preds = %1102, %1101
  %1104 = load ptr, ptr %1072, align 8, !tbaa !55
  %1105 = getelementptr inbounds i8, ptr %1104, i64 4
  store ptr %1105, ptr %1072, align 8, !tbaa !55
  br label %1109

1106:                                             ; preds = %1068
  %1107 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1069, ptr noundef nonnull %7, i64 noundef 4) #10
  %1108 = icmp eq i64 %1107, 4
  br i1 %1108, label %1109, label %1441

1109:                                             ; preds = %1066, %1106, %1103
  %1110 = load ptr, ptr %987, align 8, !tbaa !69
  %1111 = icmp eq ptr %1110, null
  br i1 %1111, label %1112, label %1147

1112:                                             ; preds = %1109
  %1113 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1114 = load ptr, ptr %1113, align 8, !tbaa !55
  %1115 = load i32, ptr %7, align 4, !tbaa !43
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds i8, ptr %1114, i64 %1116
  %1118 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1119 = load ptr, ptr %1118, align 8, !tbaa !58
  %1120 = icmp ugt ptr %1117, %1119
  br i1 %1120, label %1121, label %1139

1121:                                             ; preds = %1112
  %1122 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1123 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1124 = load i64, ptr %1123, align 8, !tbaa !57
  %1125 = trunc i64 %1124 to i32
  %1126 = add i32 %1115, 8191
  %1127 = add i32 %1126, %1125
  %1128 = and i32 %1127, -8192
  %1129 = load ptr, ptr %1122, align 8, !tbaa !56
  %1130 = ptrtoint ptr %1114 to i64
  %1131 = ptrtoint ptr %1129 to i64
  %1132 = sub i64 %1130, %1131
  %1133 = sext i32 %1128 to i64
  %1134 = call ptr @Perl_safesysrealloc(ptr noundef %1129, i64 noundef %1133) #10
  store ptr %1134, ptr %1122, align 8, !tbaa !56
  store i64 %1133, ptr %1123, align 8, !tbaa !57
  %1135 = shl i64 %1132, 32
  %1136 = ashr exact i64 %1135, 32
  %1137 = getelementptr inbounds i8, ptr %1134, i64 %1136
  store ptr %1137, ptr %1113, align 8, !tbaa !55
  %1138 = getelementptr inbounds i8, ptr %1134, i64 %1133
  store ptr %1138, ptr %1118, align 8, !tbaa !58
  br label %1139

1139:                                             ; preds = %1121, %1112
  %1140 = load ptr, ptr %1113, align 8, !tbaa !55
  %1141 = load i32, ptr %7, align 4, !tbaa !43
  %1142 = sext i32 %1141 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1140, ptr align 1 %567, i64 %1142, i1 false)
  %1143 = load i32, ptr %7, align 4, !tbaa !43
  %1144 = load ptr, ptr %1113, align 8, !tbaa !55
  %1145 = sext i32 %1143 to i64
  %1146 = getelementptr inbounds i8, ptr %1144, i64 %1145
  store ptr %1146, ptr %1113, align 8, !tbaa !55
  br label %1440

1147:                                             ; preds = %1109
  %1148 = load i32, ptr %7, align 4, !tbaa !43
  %1149 = sext i32 %1148 to i64
  %1150 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1110, ptr noundef %567, i64 noundef %1149) #10
  %1151 = load i32, ptr %7, align 4, !tbaa !43
  %1152 = sext i32 %1151 to i64
  %1153 = icmp eq i64 %1150, %1152
  br i1 %1153, label %1440, label %1441

1154:                                             ; preds = %865
  br i1 %871, label %1155, label %1268

1155:                                             ; preds = %1154
  %1156 = trunc i64 %866 to i8
  %1157 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %1158 = load ptr, ptr %1157, align 8, !tbaa !69
  %1159 = icmp eq ptr %1158, null
  br i1 %1159, label %1160, label %1183

1160:                                             ; preds = %1155
  %1161 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1162 = load ptr, ptr %1161, align 8, !tbaa !55
  %1163 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1164 = load ptr, ptr %1163, align 8, !tbaa !58
  %1165 = icmp ult ptr %1162, %1164
  br i1 %1165, label %1186, label %1166

1166:                                             ; preds = %1160
  %1167 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1168 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1169 = load i64, ptr %1168, align 8, !tbaa !57
  %1170 = load ptr, ptr %1167, align 8, !tbaa !56
  %1171 = ptrtoint ptr %1162 to i64
  %1172 = ptrtoint ptr %1170 to i64
  %1173 = sub i64 %1171, %1172
  %1174 = shl i64 %1169, 32
  %1175 = and i64 %1174, -35184372088832
  %1176 = add i64 %1175, 35184372088832
  %1177 = ashr exact i64 %1176, 32
  %1178 = call ptr @Perl_safesysrealloc(ptr noundef %1170, i64 noundef %1177) #10
  store ptr %1178, ptr %1167, align 8, !tbaa !56
  store i64 %1177, ptr %1168, align 8, !tbaa !57
  %1179 = shl i64 %1173, 32
  %1180 = ashr exact i64 %1179, 32
  %1181 = getelementptr inbounds i8, ptr %1178, i64 %1180
  store ptr %1181, ptr %1161, align 8, !tbaa !55
  %1182 = getelementptr inbounds i8, ptr %1178, i64 %1177
  store ptr %1182, ptr %1163, align 8, !tbaa !58
  br label %1186

1183:                                             ; preds = %1155
  %1184 = call i32 @PerlIO_putc(ptr noundef nonnull %1158, i32 noundef 10) #10
  %1185 = icmp eq i32 %1184, -1
  br i1 %1185, label %1441, label %1189

1186:                                             ; preds = %1160, %1166
  %1187 = phi ptr [ %1181, %1166 ], [ %1162, %1160 ]
  %1188 = getelementptr inbounds i8, ptr %1187, i64 1
  store ptr %1188, ptr %1161, align 8, !tbaa !55
  store i8 10, ptr %1187, align 1, !tbaa !41
  br label %1189

1189:                                             ; preds = %1186, %1183
  %1190 = load ptr, ptr %1157, align 8, !tbaa !69
  %1191 = icmp eq ptr %1190, null
  br i1 %1191, label %1192, label %1215

1192:                                             ; preds = %1189
  %1193 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1194 = load ptr, ptr %1193, align 8, !tbaa !55
  %1195 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1196 = load ptr, ptr %1195, align 8, !tbaa !58
  %1197 = icmp ult ptr %1194, %1196
  br i1 %1197, label %1219, label %1198

1198:                                             ; preds = %1192
  %1199 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1200 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1201 = load i64, ptr %1200, align 8, !tbaa !57
  %1202 = load ptr, ptr %1199, align 8, !tbaa !56
  %1203 = ptrtoint ptr %1194 to i64
  %1204 = ptrtoint ptr %1202 to i64
  %1205 = sub i64 %1203, %1204
  %1206 = shl i64 %1201, 32
  %1207 = and i64 %1206, -35184372088832
  %1208 = add i64 %1207, 35184372088832
  %1209 = ashr exact i64 %1208, 32
  %1210 = call ptr @Perl_safesysrealloc(ptr noundef %1202, i64 noundef %1209) #10
  store ptr %1210, ptr %1199, align 8, !tbaa !56
  store i64 %1209, ptr %1200, align 8, !tbaa !57
  %1211 = shl i64 %1205, 32
  %1212 = ashr exact i64 %1211, 32
  %1213 = getelementptr inbounds i8, ptr %1210, i64 %1212
  store ptr %1213, ptr %1193, align 8, !tbaa !55
  %1214 = getelementptr inbounds i8, ptr %1210, i64 %1209
  store ptr %1214, ptr %1195, align 8, !tbaa !58
  br label %1219

1215:                                             ; preds = %1189
  %1216 = and i32 %867, 255
  %1217 = call i32 @PerlIO_putc(ptr noundef nonnull %1190, i32 noundef %1216) #10
  %1218 = icmp eq i32 %1217, -1
  br i1 %1218, label %1441, label %1222

1219:                                             ; preds = %1192, %1198
  %1220 = phi ptr [ %1213, %1198 ], [ %1194, %1192 ]
  %1221 = getelementptr inbounds i8, ptr %1220, i64 1
  store ptr %1221, ptr %1193, align 8, !tbaa !55
  store i8 %1156, ptr %1220, align 1, !tbaa !41
  br label %1222

1222:                                             ; preds = %1219, %1215
  %1223 = load i32, ptr %7, align 4, !tbaa !43
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1440, label %1225

1225:                                             ; preds = %1222
  %1226 = load ptr, ptr %1157, align 8, !tbaa !69
  %1227 = icmp eq ptr %1226, null
  br i1 %1227, label %1228, label %1262

1228:                                             ; preds = %1225
  %1229 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1230 = load ptr, ptr %1229, align 8, !tbaa !55
  %1231 = sext i32 %1223 to i64
  %1232 = getelementptr inbounds i8, ptr %1230, i64 %1231
  %1233 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1234 = load ptr, ptr %1233, align 8, !tbaa !58
  %1235 = icmp ugt ptr %1232, %1234
  br i1 %1235, label %1236, label %1254

1236:                                             ; preds = %1228
  %1237 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1238 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1239 = load i64, ptr %1238, align 8, !tbaa !57
  %1240 = trunc i64 %1239 to i32
  %1241 = add i32 %1223, 8191
  %1242 = add i32 %1241, %1240
  %1243 = and i32 %1242, -8192
  %1244 = load ptr, ptr %1237, align 8, !tbaa !56
  %1245 = ptrtoint ptr %1230 to i64
  %1246 = ptrtoint ptr %1244 to i64
  %1247 = sub i64 %1245, %1246
  %1248 = sext i32 %1243 to i64
  %1249 = call ptr @Perl_safesysrealloc(ptr noundef %1244, i64 noundef %1248) #10
  store ptr %1249, ptr %1237, align 8, !tbaa !56
  store i64 %1248, ptr %1238, align 8, !tbaa !57
  %1250 = shl i64 %1247, 32
  %1251 = ashr exact i64 %1250, 32
  %1252 = getelementptr inbounds i8, ptr %1249, i64 %1251
  store ptr %1252, ptr %1229, align 8, !tbaa !55
  %1253 = getelementptr inbounds i8, ptr %1249, i64 %1248
  store ptr %1253, ptr %1233, align 8, !tbaa !58
  br label %1254

1254:                                             ; preds = %1236, %1228
  %1255 = load ptr, ptr %1229, align 8, !tbaa !55
  %1256 = load i32, ptr %7, align 4, !tbaa !43
  %1257 = sext i32 %1256 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1255, ptr align 1 %567, i64 %1257, i1 false)
  %1258 = load i32, ptr %7, align 4, !tbaa !43
  %1259 = load ptr, ptr %1229, align 8, !tbaa !55
  %1260 = sext i32 %1258 to i64
  %1261 = getelementptr inbounds i8, ptr %1259, i64 %1260
  store ptr %1261, ptr %1229, align 8, !tbaa !55
  br label %1440

1262:                                             ; preds = %1225
  %1263 = sext i32 %1223 to i64
  %1264 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1226, ptr noundef %567, i64 noundef %1263) #10
  %1265 = load i32, ptr %7, align 4, !tbaa !43
  %1266 = sext i32 %1265 to i64
  %1267 = icmp eq i64 %1264, %1266
  br i1 %1267, label %1440, label %1441

1268:                                             ; preds = %1154
  %1269 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %1270 = load ptr, ptr %1269, align 8, !tbaa !69
  %1271 = icmp eq ptr %1270, null
  br i1 %1271, label %1272, label %1295

1272:                                             ; preds = %1268
  %1273 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1274 = load ptr, ptr %1273, align 8, !tbaa !55
  %1275 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1276 = load ptr, ptr %1275, align 8, !tbaa !58
  %1277 = icmp ult ptr %1274, %1276
  br i1 %1277, label %1298, label %1278

1278:                                             ; preds = %1272
  %1279 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1280 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1281 = load i64, ptr %1280, align 8, !tbaa !57
  %1282 = load ptr, ptr %1279, align 8, !tbaa !56
  %1283 = ptrtoint ptr %1274 to i64
  %1284 = ptrtoint ptr %1282 to i64
  %1285 = sub i64 %1283, %1284
  %1286 = shl i64 %1281, 32
  %1287 = and i64 %1286, -35184372088832
  %1288 = add i64 %1287, 35184372088832
  %1289 = ashr exact i64 %1288, 32
  %1290 = call ptr @Perl_safesysrealloc(ptr noundef %1282, i64 noundef %1289) #10
  store ptr %1290, ptr %1279, align 8, !tbaa !56
  store i64 %1289, ptr %1280, align 8, !tbaa !57
  %1291 = shl i64 %1285, 32
  %1292 = ashr exact i64 %1291, 32
  %1293 = getelementptr inbounds i8, ptr %1290, i64 %1292
  store ptr %1293, ptr %1273, align 8, !tbaa !55
  %1294 = getelementptr inbounds i8, ptr %1290, i64 %1289
  store ptr %1294, ptr %1275, align 8, !tbaa !58
  br label %1298

1295:                                             ; preds = %1268
  %1296 = call i32 @PerlIO_putc(ptr noundef nonnull %1270, i32 noundef 1) #10
  %1297 = icmp eq i32 %1296, -1
  br i1 %1297, label %1441, label %1301

1298:                                             ; preds = %1272, %1278
  %1299 = phi ptr [ %1293, %1278 ], [ %1274, %1272 ]
  %1300 = getelementptr inbounds i8, ptr %1299, i64 1
  store ptr %1300, ptr %1273, align 8, !tbaa !55
  store i8 1, ptr %1299, align 1, !tbaa !41
  br label %1301

1301:                                             ; preds = %1298, %1295
  %1302 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %1303 = load i32, ptr %1302, align 8, !tbaa !62
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1350, label %1305

1305:                                             ; preds = %1301
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  %1306 = load i32, ptr %7, align 4, !tbaa !43
  %1307 = call i32 @llvm.bswap.i32(i32 %1306)
  store i32 %1307, ptr %11, align 4, !tbaa !43
  %1308 = load ptr, ptr %1269, align 8, !tbaa !69
  %1309 = icmp eq ptr %1308, null
  br i1 %1309, label %1310, label %1345

1310:                                             ; preds = %1305
  %1311 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1312 = load ptr, ptr %1311, align 8, !tbaa !55
  %1313 = getelementptr inbounds i8, ptr %1312, i64 4
  %1314 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1315 = load ptr, ptr %1314, align 8, !tbaa !58
  %1316 = icmp ugt ptr %1313, %1315
  br i1 %1316, label %1317, label %1334

1317:                                             ; preds = %1310
  %1318 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1319 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1320 = load i64, ptr %1319, align 8, !tbaa !57
  %1321 = load ptr, ptr %1318, align 8, !tbaa !56
  %1322 = ptrtoint ptr %1312 to i64
  %1323 = ptrtoint ptr %1321 to i64
  %1324 = sub i64 %1322, %1323
  %1325 = shl i64 %1320, 32
  %1326 = add i64 %1325, 35197256990720
  %1327 = ashr exact i64 %1326, 32
  %1328 = and i64 %1327, -8192
  %1329 = call ptr @Perl_safesysrealloc(ptr noundef %1321, i64 noundef %1328) #10
  store ptr %1329, ptr %1318, align 8, !tbaa !56
  store i64 %1328, ptr %1319, align 8, !tbaa !57
  %1330 = shl i64 %1324, 32
  %1331 = ashr exact i64 %1330, 32
  %1332 = getelementptr inbounds i8, ptr %1329, i64 %1331
  store ptr %1332, ptr %1311, align 8, !tbaa !55
  %1333 = getelementptr inbounds i8, ptr %1329, i64 %1328
  store ptr %1333, ptr %1314, align 8, !tbaa !58
  br label %1334

1334:                                             ; preds = %1317, %1310
  %1335 = load ptr, ptr %1311, align 8, !tbaa !55
  %1336 = ptrtoint ptr %1335 to i64
  %1337 = and i64 %1336, 3
  %1338 = icmp eq i64 %1337, 0
  %1339 = load i32, ptr %11, align 4
  br i1 %1338, label %1340, label %1341

1340:                                             ; preds = %1334
  store i32 %1339, ptr %1335, align 4, !tbaa !43
  br label %1342

1341:                                             ; preds = %1334
  store i32 %1339, ptr %1335, align 1
  br label %1342

1342:                                             ; preds = %1341, %1340
  %1343 = load ptr, ptr %1311, align 8, !tbaa !55
  %1344 = getelementptr inbounds i8, ptr %1343, i64 4
  store ptr %1344, ptr %1311, align 8, !tbaa !55
  br label %1348

1345:                                             ; preds = %1305
  %1346 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1308, ptr noundef nonnull %11, i64 noundef 4) #10
  %1347 = icmp eq i64 %1346, 4
  br i1 %1347, label %1348, label %1349

1348:                                             ; preds = %1345, %1342
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  br label %1391

1349:                                             ; preds = %1345
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  br label %1441

1350:                                             ; preds = %1301
  %1351 = load ptr, ptr %1269, align 8, !tbaa !69
  %1352 = icmp eq ptr %1351, null
  br i1 %1352, label %1353, label %1388

1353:                                             ; preds = %1350
  %1354 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1355 = load ptr, ptr %1354, align 8, !tbaa !55
  %1356 = getelementptr inbounds i8, ptr %1355, i64 4
  %1357 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1358 = load ptr, ptr %1357, align 8, !tbaa !58
  %1359 = icmp ugt ptr %1356, %1358
  br i1 %1359, label %1360, label %1377

1360:                                             ; preds = %1353
  %1361 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1362 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1363 = load i64, ptr %1362, align 8, !tbaa !57
  %1364 = load ptr, ptr %1361, align 8, !tbaa !56
  %1365 = ptrtoint ptr %1355 to i64
  %1366 = ptrtoint ptr %1364 to i64
  %1367 = sub i64 %1365, %1366
  %1368 = shl i64 %1363, 32
  %1369 = add i64 %1368, 35197256990720
  %1370 = ashr exact i64 %1369, 32
  %1371 = and i64 %1370, -8192
  %1372 = call ptr @Perl_safesysrealloc(ptr noundef %1364, i64 noundef %1371) #10
  store ptr %1372, ptr %1361, align 8, !tbaa !56
  store i64 %1371, ptr %1362, align 8, !tbaa !57
  %1373 = shl i64 %1367, 32
  %1374 = ashr exact i64 %1373, 32
  %1375 = getelementptr inbounds i8, ptr %1372, i64 %1374
  store ptr %1375, ptr %1354, align 8, !tbaa !55
  %1376 = getelementptr inbounds i8, ptr %1372, i64 %1371
  store ptr %1376, ptr %1357, align 8, !tbaa !58
  br label %1377

1377:                                             ; preds = %1360, %1353
  %1378 = load ptr, ptr %1354, align 8, !tbaa !55
  %1379 = ptrtoint ptr %1378 to i64
  %1380 = and i64 %1379, 3
  %1381 = icmp eq i64 %1380, 0
  %1382 = load i32, ptr %7, align 4
  br i1 %1381, label %1383, label %1384

1383:                                             ; preds = %1377
  store i32 %1382, ptr %1378, align 4, !tbaa !43
  br label %1385

1384:                                             ; preds = %1377
  store i32 %1382, ptr %1378, align 1
  br label %1385

1385:                                             ; preds = %1384, %1383
  %1386 = load ptr, ptr %1354, align 8, !tbaa !55
  %1387 = getelementptr inbounds i8, ptr %1386, i64 4
  store ptr %1387, ptr %1354, align 8, !tbaa !55
  br label %1391

1388:                                             ; preds = %1350
  %1389 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1351, ptr noundef nonnull %7, i64 noundef 4) #10
  %1390 = icmp eq i64 %1389, 4
  br i1 %1390, label %1391, label %1441

1391:                                             ; preds = %1348, %1388, %1385
  %1392 = load ptr, ptr %1269, align 8, !tbaa !69
  %1393 = icmp eq ptr %1392, null
  br i1 %1393, label %1394, label %1429

1394:                                             ; preds = %1391
  %1395 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1396 = load ptr, ptr %1395, align 8, !tbaa !55
  %1397 = load i32, ptr %7, align 4, !tbaa !43
  %1398 = sext i32 %1397 to i64
  %1399 = getelementptr inbounds i8, ptr %1396, i64 %1398
  %1400 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1401 = load ptr, ptr %1400, align 8, !tbaa !58
  %1402 = icmp ugt ptr %1399, %1401
  br i1 %1402, label %1403, label %1421

1403:                                             ; preds = %1394
  %1404 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1405 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1406 = load i64, ptr %1405, align 8, !tbaa !57
  %1407 = trunc i64 %1406 to i32
  %1408 = add i32 %1397, 8191
  %1409 = add i32 %1408, %1407
  %1410 = and i32 %1409, -8192
  %1411 = load ptr, ptr %1404, align 8, !tbaa !56
  %1412 = ptrtoint ptr %1396 to i64
  %1413 = ptrtoint ptr %1411 to i64
  %1414 = sub i64 %1412, %1413
  %1415 = sext i32 %1410 to i64
  %1416 = call ptr @Perl_safesysrealloc(ptr noundef %1411, i64 noundef %1415) #10
  store ptr %1416, ptr %1404, align 8, !tbaa !56
  store i64 %1415, ptr %1405, align 8, !tbaa !57
  %1417 = shl i64 %1414, 32
  %1418 = ashr exact i64 %1417, 32
  %1419 = getelementptr inbounds i8, ptr %1416, i64 %1418
  store ptr %1419, ptr %1395, align 8, !tbaa !55
  %1420 = getelementptr inbounds i8, ptr %1416, i64 %1415
  store ptr %1420, ptr %1400, align 8, !tbaa !58
  br label %1421

1421:                                             ; preds = %1403, %1394
  %1422 = load ptr, ptr %1395, align 8, !tbaa !55
  %1423 = load i32, ptr %7, align 4, !tbaa !43
  %1424 = sext i32 %1423 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1422, ptr align 1 %567, i64 %1424, i1 false)
  %1425 = load i32, ptr %7, align 4, !tbaa !43
  %1426 = load ptr, ptr %1395, align 8, !tbaa !55
  %1427 = sext i32 %1425 to i64
  %1428 = getelementptr inbounds i8, ptr %1426, i64 %1427
  store ptr %1428, ptr %1395, align 8, !tbaa !55
  br label %1440

1429:                                             ; preds = %1391
  %1430 = load i32, ptr %7, align 4, !tbaa !43
  %1431 = sext i32 %1430 to i64
  %1432 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1392, ptr noundef %567, i64 noundef %1431) #10
  %1433 = load i32, ptr %7, align 4, !tbaa !43
  %1434 = sext i32 %1433 to i64
  %1435 = icmp eq i64 %1432, %1434
  br i1 %1435, label %1440, label %1441

1436:                                             ; preds = %551
  %1437 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %1437, align 8, !tbaa !50
  %1438 = tail call ptr @Perl_sv_reftype(ptr noundef %1, i32 noundef 0) #10
  %1439 = ptrtoint ptr %1 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.37, ptr noundef %1438, i64 noundef %1439) #10
  br label %1440

1440:                                             ; preds = %549, %373, %1222, %1262, %1254, %940, %980, %972, %248, %246, %266, %1139, %1147, %1421, %1429, %1436, %435, %440, %117, %97, %99, %134, %132, %152
  br label %1441

1441:                                             ; preds = %1429, %1262, %1215, %1147, %980, %933, %440, %266, %152, %48, %1388, %1349, %1295, %1183, %1106, %1067, %1013, %901, %864, %402, %231, %117, %78, %1440, %549, %373, %81
  %1442 = phi i32 [ 0, %1440 ], [ -1, %1067 ], [ -1, %1349 ], [ -1, %864 ], [ -1, %373 ], [ -1, %549 ], [ 0, %81 ], [ -1, %78 ], [ -1, %117 ], [ -1, %231 ], [ -1, %402 ], [ -1, %901 ], [ -1, %1013 ], [ -1, %1106 ], [ -1, %1183 ], [ -1, %1295 ], [ -1, %1388 ], [ -1, %48 ], [ -1, %152 ], [ -1, %266 ], [ -1, %440 ], [ -1, %933 ], [ -1, %980 ], [ -1, %1147 ], [ -1, %1215 ], [ -1, %1262 ], [ -1, %1429 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %1442
}

; Function Attrs: cold nounwind uwtable
define internal i32 @store_array(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %5 = tail call i64 @Perl_av_len(ptr noundef %1) #10
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, 1
  store i32 %7, ptr %3, align 4, !tbaa !43
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = icmp ult ptr %13, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !57
  %21 = load ptr, ptr %18, align 8, !tbaa !56
  %22 = ptrtoint ptr %13 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = shl i64 %20, 32
  %26 = and i64 %25, -35184372088832
  %27 = add i64 %26, 35184372088832
  %28 = ashr exact i64 %27, 32
  %29 = tail call ptr @Perl_safesysrealloc(ptr noundef %21, i64 noundef %28) #10
  store ptr %29, ptr %18, align 8, !tbaa !56
  store i64 %28, ptr %19, align 8, !tbaa !57
  %30 = shl i64 %24, 32
  %31 = ashr exact i64 %30, 32
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  store ptr %32, ptr %12, align 8, !tbaa !55
  %33 = getelementptr inbounds i8, ptr %29, i64 %28
  store ptr %33, ptr %14, align 8, !tbaa !58
  br label %37

34:                                               ; preds = %2
  %35 = tail call i32 @PerlIO_putc(ptr noundef nonnull %9, i32 noundef 2) #10
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %219, label %40

37:                                               ; preds = %11, %17
  %38 = phi ptr [ %32, %17 ], [ %13, %11 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %39, ptr %12, align 8, !tbaa !55
  store i8 2, ptr %38, align 1, !tbaa !41
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %42 = load i32, ptr %41, align 8, !tbaa !62
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %89, label %44

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %45 = load i32, ptr %3, align 4, !tbaa !43
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  store i32 %46, ptr %4, align 4, !tbaa !43
  %47 = load ptr, ptr %8, align 8, !tbaa !69
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %84

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !55
  %52 = getelementptr inbounds i8, ptr %51, i64 4
  %53 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !58
  %55 = icmp ugt ptr %52, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %58 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !57
  %60 = load ptr, ptr %57, align 8, !tbaa !56
  %61 = ptrtoint ptr %51 to i64
  %62 = ptrtoint ptr %60 to i64
  %63 = sub i64 %61, %62
  %64 = shl i64 %59, 32
  %65 = add i64 %64, 35197256990720
  %66 = ashr exact i64 %65, 32
  %67 = and i64 %66, -8192
  %68 = tail call ptr @Perl_safesysrealloc(ptr noundef %60, i64 noundef %67) #10
  store ptr %68, ptr %57, align 8, !tbaa !56
  store i64 %67, ptr %58, align 8, !tbaa !57
  %69 = shl i64 %63, 32
  %70 = ashr exact i64 %69, 32
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  store ptr %71, ptr %50, align 8, !tbaa !55
  %72 = getelementptr inbounds i8, ptr %68, i64 %67
  store ptr %72, ptr %53, align 8, !tbaa !58
  br label %73

73:                                               ; preds = %56, %49
  %74 = load ptr, ptr %50, align 8, !tbaa !55
  %75 = ptrtoint ptr %74 to i64
  %76 = and i64 %75, 3
  %77 = icmp eq i64 %76, 0
  %78 = load i32, ptr %4, align 4
  br i1 %77, label %79, label %80

79:                                               ; preds = %73
  store i32 %78, ptr %74, align 4, !tbaa !43
  br label %81

80:                                               ; preds = %73
  store i32 %78, ptr %74, align 1
  br label %81

81:                                               ; preds = %80, %79
  %82 = load ptr, ptr %50, align 8, !tbaa !55
  %83 = getelementptr inbounds i8, ptr %82, i64 4
  store ptr %83, ptr %50, align 8, !tbaa !55
  br label %87

84:                                               ; preds = %44
  %85 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %47, ptr noundef nonnull %4, i64 noundef 4) #10
  %86 = icmp eq i64 %85, 4
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %130

88:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %219

89:                                               ; preds = %40
  %90 = load ptr, ptr %8, align 8, !tbaa !69
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %127

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !55
  %95 = getelementptr inbounds i8, ptr %94, i64 4
  %96 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !58
  %98 = icmp ugt ptr %95, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %101 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !57
  %103 = load ptr, ptr %100, align 8, !tbaa !56
  %104 = ptrtoint ptr %94 to i64
  %105 = ptrtoint ptr %103 to i64
  %106 = sub i64 %104, %105
  %107 = shl i64 %102, 32
  %108 = add i64 %107, 35197256990720
  %109 = ashr exact i64 %108, 32
  %110 = and i64 %109, -8192
  %111 = tail call ptr @Perl_safesysrealloc(ptr noundef %103, i64 noundef %110) #10
  store ptr %111, ptr %100, align 8, !tbaa !56
  store i64 %110, ptr %101, align 8, !tbaa !57
  %112 = shl i64 %106, 32
  %113 = ashr exact i64 %112, 32
  %114 = getelementptr inbounds i8, ptr %111, i64 %113
  store ptr %114, ptr %93, align 8, !tbaa !55
  %115 = getelementptr inbounds i8, ptr %111, i64 %110
  store ptr %115, ptr %96, align 8, !tbaa !58
  br label %116

116:                                              ; preds = %99, %92
  %117 = load ptr, ptr %93, align 8, !tbaa !55
  %118 = ptrtoint ptr %117 to i64
  %119 = and i64 %118, 3
  %120 = icmp eq i64 %119, 0
  %121 = load i32, ptr %3, align 4
  br i1 %120, label %122, label %123

122:                                              ; preds = %116
  store i32 %121, ptr %117, align 4, !tbaa !43
  br label %124

123:                                              ; preds = %116
  store i32 %121, ptr %117, align 1
  br label %124

124:                                              ; preds = %123, %122
  %125 = load ptr, ptr %93, align 8, !tbaa !55
  %126 = getelementptr inbounds i8, ptr %125, i64 4
  store ptr %126, ptr %93, align 8, !tbaa !55
  br label %130

127:                                              ; preds = %89
  %128 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %90, ptr noundef nonnull %3, i64 noundef 4) #10
  %129 = icmp eq i64 %128, 4
  br i1 %129, label %130, label %219

130:                                              ; preds = %87, %124, %127
  %131 = load i32, ptr %3, align 4, !tbaa !43
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %219

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %135 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %136 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %137 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %138 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %139 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %140 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %141 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %142 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %143 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  br label %144

144:                                              ; preds = %133, %214
  %145 = phi i64 [ 0, %133 ], [ %215, %214 ]
  %146 = call ptr @Perl_av_fetch(ptr noundef %1, i64 noundef %145, i32 noundef 0) #10
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %178

148:                                              ; preds = %144
  %149 = load i64, ptr %139, align 8, !tbaa !83
  %150 = add nsw i64 %149, 1
  store i64 %150, ptr %139, align 8, !tbaa !83
  %151 = load ptr, ptr %8, align 8, !tbaa !69
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %175

153:                                              ; preds = %148
  %154 = load ptr, ptr %140, align 8, !tbaa !55
  %155 = load ptr, ptr %141, align 8, !tbaa !58
  %156 = icmp ult ptr %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = getelementptr inbounds i8, ptr %154, i64 1
  store ptr %158, ptr %140, align 8, !tbaa !55
  store i8 14, ptr %154, align 1, !tbaa !41
  br label %214

159:                                              ; preds = %153
  %160 = load i64, ptr %143, align 8, !tbaa !57
  %161 = load ptr, ptr %142, align 8, !tbaa !56
  %162 = ptrtoint ptr %154 to i64
  %163 = ptrtoint ptr %161 to i64
  %164 = sub i64 %162, %163
  %165 = shl i64 %160, 32
  %166 = and i64 %165, -35184372088832
  %167 = add i64 %166, 35184372088832
  %168 = ashr exact i64 %167, 32
  %169 = call ptr @Perl_safesysrealloc(ptr noundef %161, i64 noundef %168) #10
  store ptr %169, ptr %142, align 8, !tbaa !56
  store i64 %168, ptr %143, align 8, !tbaa !57
  %170 = shl i64 %164, 32
  %171 = ashr exact i64 %170, 32
  %172 = getelementptr inbounds i8, ptr %169, i64 %171
  store ptr %172, ptr %140, align 8, !tbaa !55
  %173 = getelementptr inbounds i8, ptr %169, i64 %168
  store ptr %173, ptr %141, align 8, !tbaa !58
  %174 = getelementptr inbounds i8, ptr %172, i64 1
  store ptr %174, ptr %140, align 8, !tbaa !55
  store i8 14, ptr %172, align 1, !tbaa !41
  br label %214

175:                                              ; preds = %148
  %176 = call i32 @PerlIO_putc(ptr noundef nonnull %151, i32 noundef 14) #10
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %219, label %214

178:                                              ; preds = %144
  %179 = load ptr, ptr %146, align 8, !tbaa !42
  %180 = icmp eq ptr %179, @PL_sv_undef
  br i1 %180, label %181, label %211

181:                                              ; preds = %178
  %182 = load i64, ptr %134, align 8, !tbaa !83
  %183 = add nsw i64 %182, 1
  store i64 %183, ptr %134, align 8, !tbaa !83
  %184 = load ptr, ptr %8, align 8, !tbaa !69
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %208

186:                                              ; preds = %181
  %187 = load ptr, ptr %135, align 8, !tbaa !55
  %188 = load ptr, ptr %136, align 8, !tbaa !58
  %189 = icmp ult ptr %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = getelementptr inbounds i8, ptr %187, i64 1
  store ptr %191, ptr %135, align 8, !tbaa !55
  store i8 31, ptr %187, align 1, !tbaa !41
  br label %214

192:                                              ; preds = %186
  %193 = load i64, ptr %138, align 8, !tbaa !57
  %194 = load ptr, ptr %137, align 8, !tbaa !56
  %195 = ptrtoint ptr %187 to i64
  %196 = ptrtoint ptr %194 to i64
  %197 = sub i64 %195, %196
  %198 = shl i64 %193, 32
  %199 = and i64 %198, -35184372088832
  %200 = add i64 %199, 35184372088832
  %201 = ashr exact i64 %200, 32
  %202 = call ptr @Perl_safesysrealloc(ptr noundef %194, i64 noundef %201) #10
  store ptr %202, ptr %137, align 8, !tbaa !56
  store i64 %201, ptr %138, align 8, !tbaa !57
  %203 = shl i64 %197, 32
  %204 = ashr exact i64 %203, 32
  %205 = getelementptr inbounds i8, ptr %202, i64 %204
  store ptr %205, ptr %135, align 8, !tbaa !55
  %206 = getelementptr inbounds i8, ptr %202, i64 %201
  store ptr %206, ptr %136, align 8, !tbaa !58
  %207 = getelementptr inbounds i8, ptr %205, i64 1
  store ptr %207, ptr %135, align 8, !tbaa !55
  store i8 31, ptr %205, align 1, !tbaa !41
  br label %214

208:                                              ; preds = %181
  %209 = call i32 @PerlIO_putc(ptr noundef nonnull %184, i32 noundef 31) #10
  %210 = icmp eq i32 %209, -1
  br i1 %210, label %219, label %214

211:                                              ; preds = %178
  %212 = call fastcc i32 @store(ptr noundef %0, ptr noundef %179)
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %211, %192, %190, %208, %159, %157, %175
  %215 = add nuw nsw i64 %145, 1
  %216 = load i32, ptr %3, align 4, !tbaa !43
  %217 = sext i32 %216 to i64
  %218 = icmp slt i64 %215, %217
  br i1 %218, label %144, label %219, !llvm.loop !123

219:                                              ; preds = %211, %214, %175, %208, %130, %127, %88, %34
  %220 = phi i32 [ -1, %88 ], [ -1, %34 ], [ -1, %127 ], [ 0, %130 ], [ -1, %208 ], [ -1, %175 ], [ 0, %214 ], [ %212, %211 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %220
}

; Function Attrs: cold nounwind uwtable
define internal i32 @store_hash(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %11 = load ptr, ptr %1, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.xpvhv, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !124
  %14 = trunc i64 %13 to i32
  store i32 %14, ptr %3, align 4, !tbaa !43
  %15 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !98
  %17 = and i32 %16, 134283264
  %18 = and i32 %16, -2013200384
  %19 = icmp eq i32 %18, 0
  %20 = icmp ne i32 %17, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %23 = load ptr, ptr %22, align 8, !tbaa !69
  %24 = icmp eq ptr %23, null
  br i1 %19, label %88, label %25

25:                                               ; preds = %2
  br i1 %24, label %26, label %49

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = icmp ult ptr %28, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %34 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !57
  %36 = load ptr, ptr %33, align 8, !tbaa !56
  %37 = ptrtoint ptr %28 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = shl i64 %35, 32
  %41 = and i64 %40, -35184372088832
  %42 = add i64 %41, 35184372088832
  %43 = ashr exact i64 %42, 32
  %44 = tail call ptr @Perl_safesysrealloc(ptr noundef %36, i64 noundef %43) #10
  store ptr %44, ptr %33, align 8, !tbaa !56
  store i64 %43, ptr %34, align 8, !tbaa !57
  %45 = shl i64 %39, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  store ptr %47, ptr %27, align 8, !tbaa !55
  %48 = getelementptr inbounds i8, ptr %44, i64 %43
  store ptr %48, ptr %29, align 8, !tbaa !58
  br label %52

49:                                               ; preds = %25
  %50 = tail call i32 @PerlIO_putc(ptr noundef nonnull %23, i32 noundef 25) #10
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %879, label %55

52:                                               ; preds = %26, %32
  %53 = phi ptr [ %47, %32 ], [ %28, %26 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %54, ptr %27, align 8, !tbaa !55
  store i8 25, ptr %53, align 1, !tbaa !41
  br label %55

55:                                               ; preds = %52, %49
  %56 = load ptr, ptr %22, align 8, !tbaa !69
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !55
  %61 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !58
  %63 = icmp ult ptr %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %65, ptr %59, align 8, !tbaa !55
  store i8 %21, ptr %60, align 1, !tbaa !41
  br label %118

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %68 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !57
  %70 = load ptr, ptr %67, align 8, !tbaa !56
  %71 = ptrtoint ptr %60 to i64
  %72 = ptrtoint ptr %70 to i64
  %73 = sub i64 %71, %72
  %74 = shl i64 %69, 32
  %75 = and i64 %74, -35184372088832
  %76 = add i64 %75, 35184372088832
  %77 = ashr exact i64 %76, 32
  %78 = tail call ptr @Perl_safesysrealloc(ptr noundef %70, i64 noundef %77) #10
  store ptr %78, ptr %67, align 8, !tbaa !56
  store i64 %77, ptr %68, align 8, !tbaa !57
  %79 = shl i64 %73, 32
  %80 = ashr exact i64 %79, 32
  %81 = getelementptr inbounds i8, ptr %78, i64 %80
  store ptr %81, ptr %59, align 8, !tbaa !55
  %82 = getelementptr inbounds i8, ptr %78, i64 %77
  store ptr %82, ptr %61, align 8, !tbaa !58
  %83 = getelementptr inbounds i8, ptr %81, i64 1
  store ptr %83, ptr %59, align 8, !tbaa !55
  store i8 %21, ptr %81, align 1, !tbaa !41
  br label %118

84:                                               ; preds = %55
  %85 = zext i1 %20 to i32
  %86 = tail call i32 @PerlIO_putc(ptr noundef nonnull %56, i32 noundef %85) #10
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %879, label %118

88:                                               ; preds = %2
  br i1 %24, label %89, label %115

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !55
  %92 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !58
  %94 = icmp ult ptr %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = getelementptr inbounds i8, ptr %91, i64 1
  store ptr %96, ptr %90, align 8, !tbaa !55
  store i8 3, ptr %91, align 1, !tbaa !41
  br label %118

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %99 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !57
  %101 = load ptr, ptr %98, align 8, !tbaa !56
  %102 = ptrtoint ptr %91 to i64
  %103 = ptrtoint ptr %101 to i64
  %104 = sub i64 %102, %103
  %105 = shl i64 %100, 32
  %106 = and i64 %105, -35184372088832
  %107 = add i64 %106, 35184372088832
  %108 = ashr exact i64 %107, 32
  %109 = tail call ptr @Perl_safesysrealloc(ptr noundef %101, i64 noundef %108) #10
  store ptr %109, ptr %98, align 8, !tbaa !56
  store i64 %108, ptr %99, align 8, !tbaa !57
  %110 = shl i64 %104, 32
  %111 = ashr exact i64 %110, 32
  %112 = getelementptr inbounds i8, ptr %109, i64 %111
  store ptr %112, ptr %90, align 8, !tbaa !55
  %113 = getelementptr inbounds i8, ptr %109, i64 %108
  store ptr %113, ptr %92, align 8, !tbaa !58
  %114 = getelementptr inbounds i8, ptr %112, i64 1
  store ptr %114, ptr %90, align 8, !tbaa !55
  store i8 3, ptr %112, align 1, !tbaa !41
  br label %118

115:                                              ; preds = %88
  %116 = tail call i32 @PerlIO_putc(ptr noundef nonnull %23, i32 noundef 3) #10
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %879, label %118

118:                                              ; preds = %84, %64, %66, %115, %95, %97
  %119 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %120 = load i32, ptr %119, align 8, !tbaa !62
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %168, label %122

122:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %123 = load i32, ptr %3, align 4, !tbaa !43
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  store i32 %124, ptr %4, align 4, !tbaa !43
  %125 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %126 = load ptr, ptr %125, align 8, !tbaa !69
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %163

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !55
  %131 = getelementptr inbounds i8, ptr %130, i64 4
  %132 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !58
  %134 = icmp ugt ptr %131, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %137 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !57
  %139 = load ptr, ptr %136, align 8, !tbaa !56
  %140 = ptrtoint ptr %130 to i64
  %141 = ptrtoint ptr %139 to i64
  %142 = sub i64 %140, %141
  %143 = shl i64 %138, 32
  %144 = add i64 %143, 35197256990720
  %145 = ashr exact i64 %144, 32
  %146 = and i64 %145, -8192
  %147 = tail call ptr @Perl_safesysrealloc(ptr noundef %139, i64 noundef %146) #10
  store ptr %147, ptr %136, align 8, !tbaa !56
  store i64 %146, ptr %137, align 8, !tbaa !57
  %148 = shl i64 %142, 32
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds i8, ptr %147, i64 %149
  store ptr %150, ptr %129, align 8, !tbaa !55
  %151 = getelementptr inbounds i8, ptr %147, i64 %146
  store ptr %151, ptr %132, align 8, !tbaa !58
  br label %152

152:                                              ; preds = %135, %128
  %153 = load ptr, ptr %129, align 8, !tbaa !55
  %154 = ptrtoint ptr %153 to i64
  %155 = and i64 %154, 3
  %156 = icmp eq i64 %155, 0
  %157 = load i32, ptr %4, align 4
  br i1 %156, label %158, label %159

158:                                              ; preds = %152
  store i32 %157, ptr %153, align 4, !tbaa !43
  br label %160

159:                                              ; preds = %152
  store i32 %157, ptr %153, align 1
  br label %160

160:                                              ; preds = %159, %158
  %161 = load ptr, ptr %129, align 8, !tbaa !55
  %162 = getelementptr inbounds i8, ptr %161, i64 4
  store ptr %162, ptr %129, align 8, !tbaa !55
  br label %166

163:                                              ; preds = %122
  %164 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %126, ptr noundef nonnull %4, i64 noundef 4) #10
  %165 = icmp eq i64 %164, 4
  br i1 %165, label %166, label %167

166:                                              ; preds = %163, %160
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %210

167:                                              ; preds = %163
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %879

168:                                              ; preds = %118
  %169 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %170 = load ptr, ptr %169, align 8, !tbaa !69
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %207

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !55
  %175 = getelementptr inbounds i8, ptr %174, i64 4
  %176 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !58
  %178 = icmp ugt ptr %175, %177
  br i1 %178, label %179, label %196

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %181 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %182 = load i64, ptr %181, align 8, !tbaa !57
  %183 = load ptr, ptr %180, align 8, !tbaa !56
  %184 = ptrtoint ptr %174 to i64
  %185 = ptrtoint ptr %183 to i64
  %186 = sub i64 %184, %185
  %187 = shl i64 %182, 32
  %188 = add i64 %187, 35197256990720
  %189 = ashr exact i64 %188, 32
  %190 = and i64 %189, -8192
  %191 = tail call ptr @Perl_safesysrealloc(ptr noundef %183, i64 noundef %190) #10
  store ptr %191, ptr %180, align 8, !tbaa !56
  store i64 %190, ptr %181, align 8, !tbaa !57
  %192 = shl i64 %186, 32
  %193 = ashr exact i64 %192, 32
  %194 = getelementptr inbounds i8, ptr %191, i64 %193
  store ptr %194, ptr %173, align 8, !tbaa !55
  %195 = getelementptr inbounds i8, ptr %191, i64 %190
  store ptr %195, ptr %176, align 8, !tbaa !58
  br label %196

196:                                              ; preds = %179, %172
  %197 = load ptr, ptr %173, align 8, !tbaa !55
  %198 = ptrtoint ptr %197 to i64
  %199 = and i64 %198, 3
  %200 = icmp eq i64 %199, 0
  %201 = load i32, ptr %3, align 4
  br i1 %200, label %202, label %203

202:                                              ; preds = %196
  store i32 %201, ptr %197, align 4, !tbaa !43
  br label %204

203:                                              ; preds = %196
  store i32 %201, ptr %197, align 1
  br label %204

204:                                              ; preds = %203, %202
  %205 = load ptr, ptr %173, align 8, !tbaa !55
  %206 = getelementptr inbounds i8, ptr %205, i64 4
  store ptr %206, ptr %173, align 8, !tbaa !55
  br label %210

207:                                              ; preds = %168
  %208 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %170, ptr noundef nonnull %3, i64 noundef 4) #10
  %209 = icmp eq i64 %208, 4
  br i1 %209, label %210, label %879

210:                                              ; preds = %166, %204, %207
  %211 = load i32, ptr %15, align 4, !tbaa !98
  %212 = and i32 %211, 33554432
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %223, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !41
  %217 = load ptr, ptr %1, align 8, !tbaa !73
  %218 = getelementptr inbounds %struct.xpvhv, ptr %217, i64 0, i32 3
  %219 = load i64, ptr %218, align 8, !tbaa !75
  %220 = getelementptr ptr, ptr %216, i64 %219
  %221 = getelementptr ptr, ptr %220, i64 4
  %222 = load i32, ptr %221, align 8, !tbaa !125
  br label %223

223:                                              ; preds = %210, %214
  %224 = phi i32 [ %222, %214 ], [ -1, %210 ]
  br i1 %213, label %234, label %225

225:                                              ; preds = %223
  %226 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %227 = load ptr, ptr %226, align 8, !tbaa !41
  %228 = load ptr, ptr %1, align 8, !tbaa !73
  %229 = getelementptr inbounds %struct.xpvhv, ptr %228, i64 0, i32 3
  %230 = load i64, ptr %229, align 8, !tbaa !75
  %231 = getelementptr ptr, ptr %227, i64 %230
  %232 = getelementptr ptr, ptr %231, i64 3
  %233 = load ptr, ptr %232, align 8, !tbaa !126
  br label %234

234:                                              ; preds = %223, %225
  %235 = phi ptr [ %233, %225 ], [ null, %223 ]
  %236 = call i32 @Perl_hv_iterinit(ptr noundef nonnull %1) #10
  %237 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 1
  %238 = load i32, ptr %237, align 4, !tbaa !61
  %239 = and i32 %238, 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %637

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 17
  %243 = load i32, ptr %242, align 8, !tbaa !68
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %345, label %245

245:                                              ; preds = %241
  %246 = icmp slt i32 %243, 0
  br i1 %246, label %247, label %637

247:                                              ; preds = %245
  %248 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  %249 = icmp eq ptr %248, null
  br i1 %249, label %636, label %250

250:                                              ; preds = %247
  %251 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  %252 = getelementptr inbounds %struct.sv, ptr %251, i64 0, i32 2
  %253 = load i32, ptr %252, align 4, !tbaa !53
  %254 = and i32 %253, 2097152
  %255 = icmp eq i32 %254, 0
  %256 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  br i1 %255, label %259, label %257

257:                                              ; preds = %250
  %258 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %256, i32 noundef 2) #10
  br label %341

259:                                              ; preds = %250
  %260 = getelementptr inbounds %struct.sv, ptr %256, i64 0, i32 2
  %261 = load i32, ptr %260, align 4, !tbaa !53
  %262 = and i32 %261, 65280
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %276

264:                                              ; preds = %259
  %265 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  %266 = getelementptr inbounds %struct.sv, ptr %265, i64 0, i32 2
  %267 = load i32, ptr %266, align 4, !tbaa !53
  %268 = and i32 %267, 255
  %269 = icmp eq i32 %268, 8
  br i1 %269, label %276, label %270

270:                                              ; preds = %264
  %271 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  %272 = getelementptr inbounds %struct.sv, ptr %271, i64 0, i32 2
  %273 = load i32, ptr %272, align 4, !tbaa !53
  %274 = and i32 %273, 16826623
  %275 = icmp eq i32 %274, 16777226
  br i1 %275, label %276, label %636

276:                                              ; preds = %270, %264, %259
  %277 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  %278 = getelementptr inbounds %struct.sv, ptr %277, i64 0, i32 2
  %279 = load i32, ptr %278, align 4, !tbaa !53
  %280 = and i32 %279, 1024
  %281 = icmp eq i32 %280, 0
  %282 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  br i1 %281, label %304, label %283

283:                                              ; preds = %276
  %284 = load ptr, ptr %282, align 8, !tbaa !85
  %285 = icmp eq ptr %284, null
  br i1 %285, label %636, label %286

286:                                              ; preds = %283
  %287 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  %288 = load ptr, ptr %287, align 8, !tbaa !85
  %289 = getelementptr inbounds %struct.xpv, ptr %288, i64 0, i32 2
  %290 = load i64, ptr %289, align 8, !tbaa !107
  %291 = icmp ugt i64 %290, 1
  br i1 %291, label %344, label %292

292:                                              ; preds = %286
  %293 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  %294 = load ptr, ptr %293, align 8, !tbaa !85
  %295 = getelementptr inbounds %struct.xpv, ptr %294, i64 0, i32 2
  %296 = load i64, ptr %295, align 8, !tbaa !107
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %636, label %298

298:                                              ; preds = %292
  %299 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  %300 = getelementptr inbounds %struct.sv, ptr %299, i64 0, i32 3
  %301 = load ptr, ptr %300, align 8, !tbaa !41
  %302 = load i8, ptr %301, align 1, !tbaa !41
  %303 = icmp ne i8 %302, 48
  br label %341

304:                                              ; preds = %276
  %305 = getelementptr inbounds %struct.sv, ptr %282, i64 0, i32 2
  %306 = load i32, ptr %305, align 4, !tbaa !53
  %307 = and i32 %306, 768
  %308 = icmp eq i32 %307, 0
  %309 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  br i1 %308, label %339, label %310

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.sv, ptr %309, i64 0, i32 2
  %312 = load i32, ptr %311, align 4, !tbaa !53
  %313 = and i32 %312, 256
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %321, label %315

315:                                              ; preds = %310
  %316 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  %317 = load ptr, ptr %316, align 8, !tbaa !85
  %318 = getelementptr inbounds %struct.xpviv, ptr %317, i64 0, i32 4
  %319 = load i64, ptr %318, align 8, !tbaa !41
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %321, label %344

321:                                              ; preds = %315, %310
  %322 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  %323 = getelementptr inbounds %struct.sv, ptr %322, i64 0, i32 2
  %324 = load i32, ptr %323, align 4, !tbaa !53
  %325 = and i32 %324, 512
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %636, label %327

327:                                              ; preds = %321
  %328 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  %329 = load ptr, ptr %328, align 8, !tbaa !85
  %330 = getelementptr inbounds %struct.xpvnv, ptr %329, i64 0, i32 5
  %331 = load double, ptr %330, align 8, !tbaa !41
  %332 = fcmp uno double %331, 0.000000e+00
  br i1 %332, label %344, label %333

333:                                              ; preds = %327
  %334 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #10
  %335 = load ptr, ptr %334, align 8, !tbaa !85
  %336 = getelementptr inbounds %struct.xpvnv, ptr %335, i64 0, i32 5
  %337 = load double, ptr %336, align 8, !tbaa !41
  %338 = fcmp une double %337, 0.000000e+00
  br label %341

339:                                              ; preds = %304
  %340 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %309, i32 noundef 0) #10
  br label %341

341:                                              ; preds = %257, %339, %298, %333
  %342 = phi i1 [ %258, %257 ], [ %340, %339 ], [ %303, %298 ], [ %338, %333 ]
  %343 = zext i1 %342 to i32
  store i32 %343, ptr %242, align 8, !tbaa !68
  br i1 %342, label %345, label %637

344:                                              ; preds = %327, %315, %286
  store i32 1, ptr %242, align 8, !tbaa !68
  br label %345

345:                                              ; preds = %344, %341, %241
  %346 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  %347 = load i32, ptr %3, align 4, !tbaa !43
  %348 = icmp sgt i32 %347, 0
  br i1 %348, label %349, label %367

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  br label %351

351:                                              ; preds = %349, %357
  %352 = phi i32 [ 0, %349 ], [ %364, %357 ]
  %353 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %1, i32 noundef 1) #10
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %357

355:                                              ; preds = %351
  store i32 1, ptr %350, align 8, !tbaa !50
  %356 = load i32, ptr %3, align 4, !tbaa !43
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39, ptr noundef nonnull %1, i32 noundef %356, i32 noundef %352) #10
  br label %357

357:                                              ; preds = %355, %351
  %358 = call ptr @Perl_hv_iterkeysv(ptr noundef %353) #10
  %359 = load ptr, ptr %346, align 8, !tbaa !103
  %360 = getelementptr inbounds %struct.xpvav, ptr %359, i64 0, i32 2
  %361 = load i64, ptr %360, align 8, !tbaa !105
  %362 = add nsw i64 %361, 1
  %363 = call ptr @Perl_av_store(ptr noundef nonnull %346, i64 noundef %362, ptr noundef %358) #10
  %364 = add nuw nsw i32 %352, 1
  %365 = load i32, ptr %3, align 4, !tbaa !43
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %351, label %367, !llvm.loop !127

367:                                              ; preds = %357, %345
  %368 = phi i32 [ %347, %345 ], [ %365, %357 ]
  %369 = getelementptr inbounds %struct.av, ptr %346, i64 0, i32 3
  %370 = load ptr, ptr %369, align 8, !tbaa !41
  %371 = sext i32 %368 to i64
  call void @Perl_sortsv(ptr noundef %370, i64 noundef %371, ptr noundef nonnull @Perl_sv_cmp) #10
  %372 = load i32, ptr %3, align 4, !tbaa !43
  %373 = icmp sgt i32 %372, 0
  br i1 %373, label %378, label %629

374:                                              ; preds = %624
  %375 = add nuw nsw i32 %380, 1
  %376 = load i32, ptr %3, align 4, !tbaa !43
  %377 = icmp slt i32 %375, %376
  br i1 %377, label %378, label %629, !llvm.loop !128

378:                                              ; preds = %367, %374
  %379 = phi i32 [ %628, %374 ], [ -1, %367 ]
  %380 = phi i32 [ %375, %374 ], [ 0, %367 ]
  %381 = phi i32 [ %627, %374 ], [ 0, %367 ]
  %382 = load ptr, ptr %1, align 8, !tbaa !73
  %383 = getelementptr inbounds %struct.xpvmg, ptr %382, i64 0, i32 1
  %384 = load ptr, ptr %383, align 8, !tbaa !41
  %385 = icmp eq ptr %384, null
  br i1 %385, label %388, label %386

386:                                              ; preds = %378
  %387 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %1) #10
  br label %388

388:                                              ; preds = %378, %386
  %389 = phi i32 [ %387, %386 ], [ 0, %378 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %390 = call ptr @Perl_av_shift(ptr noundef %346) #10
  %391 = call ptr @Perl_hv_common(ptr noundef nonnull %1, ptr noundef %390, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  %392 = icmp eq ptr %391, null
  br i1 %392, label %397, label %393

393:                                              ; preds = %388
  %394 = getelementptr inbounds %struct.he, ptr %391, i64 0, i32 2
  %395 = load ptr, ptr %394, align 8, !tbaa !41
  %396 = icmp eq ptr %395, null
  br i1 %396, label %624, label %399

397:                                              ; preds = %388
  %398 = icmp slt i32 %389, 0
  br i1 %398, label %624, label %399

399:                                              ; preds = %397, %393
  %400 = phi ptr [ %395, %393 ], [ @PL_sv_undef, %397 ]
  %401 = phi i8 [ 0, %393 ], [ 16, %397 ]
  %402 = call fastcc i32 @store(ptr noundef %0, ptr noundef nonnull %400)
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %624

404:                                              ; preds = %399
  br i1 %20, label %405, label %412

405:                                              ; preds = %404
  %406 = getelementptr inbounds %struct.sv, ptr %400, i64 0, i32 2
  %407 = load i32, ptr %406, align 4, !tbaa !53
  %408 = and i32 %407, 134283264
  %409 = icmp eq i32 %408, 0
  %410 = or disjoint i8 %401, 4
  %411 = select i1 %409, i8 %401, i8 %410
  br label %412

412:                                              ; preds = %405, %404
  %413 = phi i8 [ %401, %404 ], [ %411, %405 ]
  %414 = getelementptr inbounds %struct.sv, ptr %390, i64 0, i32 2
  %415 = load i32, ptr %414, align 4, !tbaa !53
  %416 = and i32 %415, 2098176
  %417 = icmp eq i32 %416, 1024
  br i1 %417, label %418, label %424

418:                                              ; preds = %412
  %419 = load ptr, ptr %390, align 8, !tbaa !85
  %420 = getelementptr inbounds %struct.xpv, ptr %419, i64 0, i32 2
  %421 = load i64, ptr %420, align 8, !tbaa !107
  store i64 %421, ptr %5, align 8, !tbaa !82
  %422 = getelementptr inbounds %struct.sv, ptr %390, i64 0, i32 3
  %423 = load ptr, ptr %422, align 8, !tbaa !41
  br label %426

424:                                              ; preds = %412
  %425 = call ptr @Perl_sv_2pv_flags(ptr noundef %390, ptr noundef nonnull %5, i32 noundef 2) #10
  br label %426

426:                                              ; preds = %424, %418
  %427 = phi ptr [ %423, %418 ], [ %425, %424 ]
  %428 = load i64, ptr %5, align 8, !tbaa !82
  %429 = trunc i64 %428 to i32
  store i32 %429, ptr %6, align 4, !tbaa !43
  %430 = load i32, ptr %414, align 4, !tbaa !53
  %431 = and i32 %430, 536870912
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %442, label %433

433:                                              ; preds = %426
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 1, ptr %7, align 1, !tbaa !129
  %434 = call ptr @Perl_bytes_from_utf8(ptr noundef %427, ptr noundef nonnull %5, ptr noundef nonnull %7) #10
  %435 = icmp eq ptr %434, %427
  br i1 %435, label %439, label %436

436:                                              ; preds = %433
  %437 = load i64, ptr %5, align 8, !tbaa !82
  %438 = trunc i64 %437 to i32
  store i32 %438, ptr %6, align 4, !tbaa !43
  br label %439

439:                                              ; preds = %433, %436
  %440 = phi i8 [ 2, %436 ], [ 1, %433 ]
  %441 = or i8 %413, %440
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  br label %442

442:                                              ; preds = %439, %426
  %443 = phi ptr [ %434, %439 ], [ %427, %426 ]
  %444 = phi i8 [ %441, %439 ], [ %413, %426 ]
  br i1 %19, label %479, label %445

445:                                              ; preds = %442
  %446 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %447 = load ptr, ptr %446, align 8, !tbaa !69
  %448 = icmp eq ptr %447, null
  br i1 %448, label %449, label %472

449:                                              ; preds = %445
  %450 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %451 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %452 = load ptr, ptr %450, align 8, !tbaa !55
  %453 = load ptr, ptr %451, align 8, !tbaa !58
  %454 = icmp ult ptr %452, %453
  br i1 %454, label %476, label %455

455:                                              ; preds = %449
  %456 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %457 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %458 = load i64, ptr %457, align 8, !tbaa !57
  %459 = load ptr, ptr %456, align 8, !tbaa !56
  %460 = ptrtoint ptr %452 to i64
  %461 = ptrtoint ptr %459 to i64
  %462 = sub i64 %460, %461
  %463 = shl i64 %458, 32
  %464 = and i64 %463, -35184372088832
  %465 = add i64 %464, 35184372088832
  %466 = ashr exact i64 %465, 32
  %467 = call ptr @Perl_safesysrealloc(ptr noundef %459, i64 noundef %466) #10
  store ptr %467, ptr %456, align 8, !tbaa !56
  store i64 %466, ptr %457, align 8, !tbaa !57
  %468 = shl i64 %462, 32
  %469 = ashr exact i64 %468, 32
  %470 = getelementptr inbounds i8, ptr %467, i64 %469
  store ptr %470, ptr %450, align 8, !tbaa !55
  %471 = getelementptr inbounds i8, ptr %467, i64 %466
  store ptr %471, ptr %451, align 8, !tbaa !58
  br label %476

472:                                              ; preds = %445
  %473 = zext i8 %444 to i32
  %474 = call i32 @PerlIO_putc(ptr noundef nonnull %447, i32 noundef %473) #10
  %475 = icmp eq i32 %474, -1
  br i1 %475, label %624, label %479

476:                                              ; preds = %449, %455
  %477 = phi ptr [ %470, %455 ], [ %452, %449 ]
  %478 = getelementptr inbounds i8, ptr %477, i64 1
  store ptr %478, ptr %450, align 8, !tbaa !55
  store i8 %444, ptr %477, align 1, !tbaa !41
  br label %479

479:                                              ; preds = %476, %472, %442
  %480 = load i32, ptr %119, align 8, !tbaa !62
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %530, label %482

482:                                              ; preds = %479
  %483 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  %484 = load i32, ptr %6, align 4, !tbaa !43
  %485 = call i32 @llvm.bswap.i32(i32 %484)
  store i32 %485, ptr %8, align 4, !tbaa !43
  %486 = load ptr, ptr %483, align 8, !tbaa !69
  %487 = icmp eq ptr %486, null
  br i1 %487, label %488, label %523

488:                                              ; preds = %482
  %489 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %490 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %491 = load ptr, ptr %489, align 8, !tbaa !55
  %492 = getelementptr inbounds i8, ptr %491, i64 4
  %493 = load ptr, ptr %490, align 8, !tbaa !58
  %494 = icmp ugt ptr %492, %493
  br i1 %494, label %495, label %512

495:                                              ; preds = %488
  %496 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %497 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %498 = load i64, ptr %497, align 8, !tbaa !57
  %499 = load ptr, ptr %496, align 8, !tbaa !56
  %500 = ptrtoint ptr %491 to i64
  %501 = ptrtoint ptr %499 to i64
  %502 = sub i64 %500, %501
  %503 = shl i64 %498, 32
  %504 = add i64 %503, 35197256990720
  %505 = ashr exact i64 %504, 32
  %506 = and i64 %505, -8192
  %507 = call ptr @Perl_safesysrealloc(ptr noundef %499, i64 noundef %506) #10
  store ptr %507, ptr %496, align 8, !tbaa !56
  store i64 %506, ptr %497, align 8, !tbaa !57
  %508 = shl i64 %502, 32
  %509 = ashr exact i64 %508, 32
  %510 = getelementptr inbounds i8, ptr %507, i64 %509
  store ptr %510, ptr %489, align 8, !tbaa !55
  %511 = getelementptr inbounds i8, ptr %507, i64 %506
  store ptr %511, ptr %490, align 8, !tbaa !58
  br label %512

512:                                              ; preds = %495, %488
  %513 = load ptr, ptr %489, align 8, !tbaa !55
  %514 = ptrtoint ptr %513 to i64
  %515 = and i64 %514, 3
  %516 = icmp eq i64 %515, 0
  %517 = load i32, ptr %8, align 4
  br i1 %516, label %518, label %519

518:                                              ; preds = %512
  store i32 %517, ptr %513, align 4, !tbaa !43
  br label %520

519:                                              ; preds = %512
  store i32 %517, ptr %513, align 1
  br label %520

520:                                              ; preds = %519, %518
  %521 = load ptr, ptr %489, align 8, !tbaa !55
  %522 = getelementptr inbounds i8, ptr %521, i64 4
  store ptr %522, ptr %489, align 8, !tbaa !55
  br label %526

523:                                              ; preds = %482
  %524 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %486, ptr noundef nonnull %8, i64 noundef 4) #10
  %525 = icmp eq i64 %524, 4
  br i1 %525, label %526, label %527

526:                                              ; preds = %523, %520
  br label %527

527:                                              ; preds = %523, %526
  %528 = phi i1 [ true, %526 ], [ false, %523 ]
  %529 = phi i32 [ %379, %526 ], [ -1, %523 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  br i1 %528, label %572, label %624

530:                                              ; preds = %479
  %531 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %532 = load ptr, ptr %531, align 8, !tbaa !69
  %533 = icmp eq ptr %532, null
  br i1 %533, label %534, label %569

534:                                              ; preds = %530
  %535 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %536 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %537 = load ptr, ptr %535, align 8, !tbaa !55
  %538 = getelementptr inbounds i8, ptr %537, i64 4
  %539 = load ptr, ptr %536, align 8, !tbaa !58
  %540 = icmp ugt ptr %538, %539
  br i1 %540, label %541, label %558

541:                                              ; preds = %534
  %542 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %543 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %544 = load i64, ptr %543, align 8, !tbaa !57
  %545 = load ptr, ptr %542, align 8, !tbaa !56
  %546 = ptrtoint ptr %537 to i64
  %547 = ptrtoint ptr %545 to i64
  %548 = sub i64 %546, %547
  %549 = shl i64 %544, 32
  %550 = add i64 %549, 35197256990720
  %551 = ashr exact i64 %550, 32
  %552 = and i64 %551, -8192
  %553 = call ptr @Perl_safesysrealloc(ptr noundef %545, i64 noundef %552) #10
  store ptr %553, ptr %542, align 8, !tbaa !56
  store i64 %552, ptr %543, align 8, !tbaa !57
  %554 = shl i64 %548, 32
  %555 = ashr exact i64 %554, 32
  %556 = getelementptr inbounds i8, ptr %553, i64 %555
  store ptr %556, ptr %535, align 8, !tbaa !55
  %557 = getelementptr inbounds i8, ptr %553, i64 %552
  store ptr %557, ptr %536, align 8, !tbaa !58
  br label %558

558:                                              ; preds = %541, %534
  %559 = load ptr, ptr %535, align 8, !tbaa !55
  %560 = ptrtoint ptr %559 to i64
  %561 = and i64 %560, 3
  %562 = icmp eq i64 %561, 0
  %563 = load i32, ptr %6, align 4
  br i1 %562, label %564, label %565

564:                                              ; preds = %558
  store i32 %563, ptr %559, align 4, !tbaa !43
  br label %566

565:                                              ; preds = %558
  store i32 %563, ptr %559, align 1
  br label %566

566:                                              ; preds = %565, %564
  %567 = load ptr, ptr %535, align 8, !tbaa !55
  %568 = getelementptr inbounds i8, ptr %567, i64 4
  store ptr %568, ptr %535, align 8, !tbaa !55
  br label %572

569:                                              ; preds = %530
  %570 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %532, ptr noundef nonnull %6, i64 noundef 4) #10
  %571 = icmp eq i64 %570, 4
  br i1 %571, label %572, label %624

572:                                              ; preds = %566, %569, %527
  %573 = phi i32 [ %529, %527 ], [ %379, %569 ], [ %379, %566 ]
  %574 = load i32, ptr %6, align 4, !tbaa !43
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %620, label %576

576:                                              ; preds = %572
  %577 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %578 = load ptr, ptr %577, align 8, !tbaa !69
  %579 = icmp eq ptr %578, null
  br i1 %579, label %580, label %614

580:                                              ; preds = %576
  %581 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %582 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %583 = load ptr, ptr %581, align 8, !tbaa !55
  %584 = sext i32 %574 to i64
  %585 = getelementptr inbounds i8, ptr %583, i64 %584
  %586 = load ptr, ptr %582, align 8, !tbaa !58
  %587 = icmp ugt ptr %585, %586
  br i1 %587, label %588, label %606

588:                                              ; preds = %580
  %589 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %590 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %591 = load i64, ptr %590, align 8, !tbaa !57
  %592 = trunc i64 %591 to i32
  %593 = add i32 %574, 8191
  %594 = add i32 %593, %592
  %595 = and i32 %594, -8192
  %596 = load ptr, ptr %589, align 8, !tbaa !56
  %597 = ptrtoint ptr %583 to i64
  %598 = ptrtoint ptr %596 to i64
  %599 = sub i64 %597, %598
  %600 = sext i32 %595 to i64
  %601 = call ptr @Perl_safesysrealloc(ptr noundef %596, i64 noundef %600) #10
  store ptr %601, ptr %589, align 8, !tbaa !56
  store i64 %600, ptr %590, align 8, !tbaa !57
  %602 = shl i64 %599, 32
  %603 = ashr exact i64 %602, 32
  %604 = getelementptr inbounds i8, ptr %601, i64 %603
  store ptr %604, ptr %581, align 8, !tbaa !55
  %605 = getelementptr inbounds i8, ptr %601, i64 %600
  store ptr %605, ptr %582, align 8, !tbaa !58
  br label %606

606:                                              ; preds = %588, %580
  %607 = load ptr, ptr %581, align 8, !tbaa !55
  %608 = load i32, ptr %6, align 4, !tbaa !43
  %609 = sext i32 %608 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %607, ptr align 1 %443, i64 %609, i1 false)
  %610 = load i32, ptr %6, align 4, !tbaa !43
  %611 = load ptr, ptr %581, align 8, !tbaa !55
  %612 = sext i32 %610 to i64
  %613 = getelementptr inbounds i8, ptr %611, i64 %612
  store ptr %613, ptr %581, align 8, !tbaa !55
  br label %620

614:                                              ; preds = %576
  %615 = sext i32 %574 to i64
  %616 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %578, ptr noundef %443, i64 noundef %615) #10
  %617 = load i32, ptr %6, align 4, !tbaa !43
  %618 = sext i32 %617 to i64
  %619 = icmp eq i64 %616, %618
  br i1 %619, label %620, label %624

620:                                              ; preds = %572, %606, %614
  %621 = and i8 %444, 2
  %622 = icmp eq i8 %621, 0
  br i1 %622, label %624, label %623

623:                                              ; preds = %620
  call void @Perl_safesysfree(ptr noundef %443) #10
  br label %624

624:                                              ; preds = %614, %569, %397, %393, %620, %623, %472, %399, %527
  %625 = phi i1 [ false, %527 ], [ false, %399 ], [ false, %472 ], [ true, %623 ], [ true, %620 ], [ false, %393 ], [ false, %397 ], [ false, %569 ], [ false, %614 ]
  %626 = phi i32 [ 1, %527 ], [ 42, %399 ], [ 1, %472 ], [ 0, %623 ], [ 0, %620 ], [ 1, %393 ], [ 1, %397 ], [ 1, %569 ], [ 1, %614 ]
  %627 = phi i32 [ 0, %527 ], [ %402, %399 ], [ 0, %472 ], [ 0, %623 ], [ 0, %620 ], [ %381, %393 ], [ %381, %397 ], [ 0, %569 ], [ 0, %614 ]
  %628 = phi i32 [ %529, %527 ], [ %379, %399 ], [ -1, %472 ], [ %573, %623 ], [ %573, %620 ], [ 1, %393 ], [ 1, %397 ], [ -1, %569 ], [ -1, %614 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br i1 %625, label %374, label %632

629:                                              ; preds = %374, %367
  %630 = phi i32 [ 0, %367 ], [ %627, %374 ]
  %631 = phi i32 [ -1, %367 ], [ %628, %374 ]
  call void @Perl_av_undef(ptr noundef %346) #10
  call void @Perl_sv_free(ptr noundef %346) #10
  br label %632

632:                                              ; preds = %624, %629
  %633 = phi i32 [ 0, %629 ], [ %626, %624 ]
  %634 = phi i32 [ %630, %629 ], [ %627, %624 ]
  %635 = phi i32 [ %631, %629 ], [ %628, %624 ]
  switch i32 %633, label %879 [
    i32 0, label %877
    i32 42, label %877
  ]

636:                                              ; preds = %321, %292, %283, %270, %247
  store i32 0, ptr %242, align 8, !tbaa !68
  br label %637

637:                                              ; preds = %636, %341, %245, %234
  %638 = load i32, ptr %3, align 4, !tbaa !43
  %639 = icmp sgt i32 %638, 0
  br i1 %639, label %640, label %877

640:                                              ; preds = %637, %873
  %641 = phi i32 [ %872, %873 ], [ -1, %637 ]
  %642 = phi i32 [ %874, %873 ], [ 0, %637 ]
  %643 = phi i32 [ %871, %873 ], [ 0, %637 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  %644 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %1, i32 noundef 1) #10
  %645 = icmp eq ptr %644, null
  br i1 %645, label %648, label %646

646:                                              ; preds = %640
  %647 = call ptr @Perl_hv_iterval(ptr noundef nonnull %1, ptr noundef nonnull %644) #10
  br label %648

648:                                              ; preds = %640, %646
  %649 = phi ptr [ %647, %646 ], [ null, %640 ]
  %650 = icmp eq ptr %649, null
  br i1 %650, label %869, label %651

651:                                              ; preds = %648
  br i1 %20, label %652, label %657

652:                                              ; preds = %651
  %653 = getelementptr inbounds %struct.sv, ptr %649, i64 0, i32 2
  %654 = load i32, ptr %653, align 4, !tbaa !53
  %655 = and i32 %654, 134283264
  %656 = icmp ne i32 %655, 0
  br label %657

657:                                              ; preds = %652, %651
  %658 = phi i1 [ false, %651 ], [ %656, %652 ]
  %659 = select i1 %658, i8 4, i8 0
  %660 = icmp eq ptr %649, @PL_sv_placeholder
  %661 = or disjoint i8 %659, 16
  %662 = select i1 %660, i8 %661, i8 %659
  %663 = select i1 %660, ptr @PL_sv_undef, ptr %649
  %664 = call fastcc i32 @store(ptr noundef %0, ptr noundef nonnull %663)
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %869

666:                                              ; preds = %657
  %667 = getelementptr inbounds %struct.he, ptr %644, i64 0, i32 1
  %668 = load ptr, ptr %667, align 8, !tbaa !131
  %669 = getelementptr inbounds %struct.hek, ptr %668, i64 0, i32 1
  %670 = load i32, ptr %669, align 4, !tbaa !133
  store i32 %670, ptr %9, align 4, !tbaa !43
  %671 = icmp eq i32 %670, -2
  %672 = getelementptr inbounds %struct.hek, ptr %668, i64 0, i32 2
  br i1 %671, label %673, label %676

673:                                              ; preds = %666
  %674 = load ptr, ptr %672, align 4, !tbaa !42
  %675 = or disjoint i8 %662, 8
  br label %683

676:                                              ; preds = %666
  %677 = sext i32 %670 to i64
  %678 = getelementptr inbounds i8, ptr %672, i64 %677
  %679 = getelementptr inbounds i8, ptr %678, i64 1
  %680 = load i8, ptr %679, align 1, !tbaa !41
  %681 = and i8 %680, 3
  %682 = or disjoint i8 %681, %662
  br label %683

683:                                              ; preds = %676, %673
  %684 = phi i8 [ %675, %673 ], [ %682, %676 ]
  %685 = phi ptr [ %674, %673 ], [ null, %676 ]
  %686 = phi ptr [ null, %673 ], [ %672, %676 ]
  br i1 %19, label %721, label %687

687:                                              ; preds = %683
  %688 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %689 = load ptr, ptr %688, align 8, !tbaa !69
  %690 = icmp eq ptr %689, null
  br i1 %690, label %691, label %714

691:                                              ; preds = %687
  %692 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %693 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %694 = load ptr, ptr %692, align 8, !tbaa !55
  %695 = load ptr, ptr %693, align 8, !tbaa !58
  %696 = icmp ult ptr %694, %695
  br i1 %696, label %718, label %697

697:                                              ; preds = %691
  %698 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %699 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %700 = load i64, ptr %699, align 8, !tbaa !57
  %701 = load ptr, ptr %698, align 8, !tbaa !56
  %702 = ptrtoint ptr %694 to i64
  %703 = ptrtoint ptr %701 to i64
  %704 = sub i64 %702, %703
  %705 = shl i64 %700, 32
  %706 = and i64 %705, -35184372088832
  %707 = add i64 %706, 35184372088832
  %708 = ashr exact i64 %707, 32
  %709 = call ptr @Perl_safesysrealloc(ptr noundef %701, i64 noundef %708) #10
  store ptr %709, ptr %698, align 8, !tbaa !56
  store i64 %708, ptr %699, align 8, !tbaa !57
  %710 = shl i64 %704, 32
  %711 = ashr exact i64 %710, 32
  %712 = getelementptr inbounds i8, ptr %709, i64 %711
  store ptr %712, ptr %692, align 8, !tbaa !55
  %713 = getelementptr inbounds i8, ptr %709, i64 %708
  store ptr %713, ptr %693, align 8, !tbaa !58
  br label %718

714:                                              ; preds = %687
  %715 = zext nneg i8 %684 to i32
  %716 = call i32 @PerlIO_putc(ptr noundef nonnull %689, i32 noundef %715) #10
  %717 = icmp eq i32 %716, -1
  br i1 %717, label %869, label %721

718:                                              ; preds = %691, %697
  %719 = phi ptr [ %712, %697 ], [ %694, %691 ]
  %720 = getelementptr inbounds i8, ptr %719, i64 1
  store ptr %720, ptr %692, align 8, !tbaa !55
  store i8 %684, ptr %719, align 1, !tbaa !41
  br label %721

721:                                              ; preds = %718, %683, %714
  %722 = and i8 %684, 8
  %723 = icmp eq i8 %722, 0
  br i1 %723, label %726, label %724

724:                                              ; preds = %721
  %725 = call fastcc i32 @store(ptr noundef %0, ptr noundef %685)
  br label %869

726:                                              ; preds = %721
  %727 = load i32, ptr %119, align 8, !tbaa !62
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %777, label %729

729:                                              ; preds = %726
  %730 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  %731 = load i32, ptr %9, align 4, !tbaa !43
  %732 = call i32 @llvm.bswap.i32(i32 %731)
  store i32 %732, ptr %10, align 4, !tbaa !43
  %733 = load ptr, ptr %730, align 8, !tbaa !69
  %734 = icmp eq ptr %733, null
  br i1 %734, label %735, label %770

735:                                              ; preds = %729
  %736 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %737 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %738 = load ptr, ptr %736, align 8, !tbaa !55
  %739 = getelementptr inbounds i8, ptr %738, i64 4
  %740 = load ptr, ptr %737, align 8, !tbaa !58
  %741 = icmp ugt ptr %739, %740
  br i1 %741, label %742, label %759

742:                                              ; preds = %735
  %743 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %744 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %745 = load i64, ptr %744, align 8, !tbaa !57
  %746 = load ptr, ptr %743, align 8, !tbaa !56
  %747 = ptrtoint ptr %738 to i64
  %748 = ptrtoint ptr %746 to i64
  %749 = sub i64 %747, %748
  %750 = shl i64 %745, 32
  %751 = add i64 %750, 35197256990720
  %752 = ashr exact i64 %751, 32
  %753 = and i64 %752, -8192
  %754 = call ptr @Perl_safesysrealloc(ptr noundef %746, i64 noundef %753) #10
  store ptr %754, ptr %743, align 8, !tbaa !56
  store i64 %753, ptr %744, align 8, !tbaa !57
  %755 = shl i64 %749, 32
  %756 = ashr exact i64 %755, 32
  %757 = getelementptr inbounds i8, ptr %754, i64 %756
  store ptr %757, ptr %736, align 8, !tbaa !55
  %758 = getelementptr inbounds i8, ptr %754, i64 %753
  store ptr %758, ptr %737, align 8, !tbaa !58
  br label %759

759:                                              ; preds = %742, %735
  %760 = load ptr, ptr %736, align 8, !tbaa !55
  %761 = ptrtoint ptr %760 to i64
  %762 = and i64 %761, 3
  %763 = icmp eq i64 %762, 0
  %764 = load i32, ptr %10, align 4
  br i1 %763, label %765, label %766

765:                                              ; preds = %759
  store i32 %764, ptr %760, align 4, !tbaa !43
  br label %767

766:                                              ; preds = %759
  store i32 %764, ptr %760, align 1
  br label %767

767:                                              ; preds = %766, %765
  %768 = load ptr, ptr %736, align 8, !tbaa !55
  %769 = getelementptr inbounds i8, ptr %768, i64 4
  store ptr %769, ptr %736, align 8, !tbaa !55
  br label %773

770:                                              ; preds = %729
  %771 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %733, ptr noundef nonnull %10, i64 noundef 4) #10
  %772 = icmp eq i64 %771, 4
  br i1 %772, label %773, label %774

773:                                              ; preds = %770, %767
  br label %774

774:                                              ; preds = %770, %773
  %775 = phi i1 [ true, %773 ], [ false, %770 ]
  %776 = phi i32 [ %641, %773 ], [ -1, %770 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  br i1 %775, label %819, label %869

777:                                              ; preds = %726
  %778 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %779 = load ptr, ptr %778, align 8, !tbaa !69
  %780 = icmp eq ptr %779, null
  br i1 %780, label %781, label %816

781:                                              ; preds = %777
  %782 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %783 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %784 = load ptr, ptr %782, align 8, !tbaa !55
  %785 = getelementptr inbounds i8, ptr %784, i64 4
  %786 = load ptr, ptr %783, align 8, !tbaa !58
  %787 = icmp ugt ptr %785, %786
  br i1 %787, label %788, label %805

788:                                              ; preds = %781
  %789 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %790 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %791 = load i64, ptr %790, align 8, !tbaa !57
  %792 = load ptr, ptr %789, align 8, !tbaa !56
  %793 = ptrtoint ptr %784 to i64
  %794 = ptrtoint ptr %792 to i64
  %795 = sub i64 %793, %794
  %796 = shl i64 %791, 32
  %797 = add i64 %796, 35197256990720
  %798 = ashr exact i64 %797, 32
  %799 = and i64 %798, -8192
  %800 = call ptr @Perl_safesysrealloc(ptr noundef %792, i64 noundef %799) #10
  store ptr %800, ptr %789, align 8, !tbaa !56
  store i64 %799, ptr %790, align 8, !tbaa !57
  %801 = shl i64 %795, 32
  %802 = ashr exact i64 %801, 32
  %803 = getelementptr inbounds i8, ptr %800, i64 %802
  store ptr %803, ptr %782, align 8, !tbaa !55
  %804 = getelementptr inbounds i8, ptr %800, i64 %799
  store ptr %804, ptr %783, align 8, !tbaa !58
  br label %805

805:                                              ; preds = %788, %781
  %806 = load ptr, ptr %782, align 8, !tbaa !55
  %807 = ptrtoint ptr %806 to i64
  %808 = and i64 %807, 3
  %809 = icmp eq i64 %808, 0
  %810 = load i32, ptr %9, align 4
  br i1 %809, label %811, label %812

811:                                              ; preds = %805
  store i32 %810, ptr %806, align 4, !tbaa !43
  br label %813

812:                                              ; preds = %805
  store i32 %810, ptr %806, align 1
  br label %813

813:                                              ; preds = %812, %811
  %814 = load ptr, ptr %782, align 8, !tbaa !55
  %815 = getelementptr inbounds i8, ptr %814, i64 4
  store ptr %815, ptr %782, align 8, !tbaa !55
  br label %819

816:                                              ; preds = %777
  %817 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %779, ptr noundef nonnull %9, i64 noundef 4) #10
  %818 = icmp eq i64 %817, 4
  br i1 %818, label %819, label %869

819:                                              ; preds = %813, %816, %774
  %820 = phi i32 [ %776, %774 ], [ %641, %816 ], [ %641, %813 ]
  %821 = load i32, ptr %9, align 4, !tbaa !43
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %869, label %823

823:                                              ; preds = %819
  %824 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %825 = load ptr, ptr %824, align 8, !tbaa !69
  %826 = icmp eq ptr %825, null
  br i1 %826, label %827, label %861

827:                                              ; preds = %823
  %828 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %829 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %830 = load ptr, ptr %828, align 8, !tbaa !55
  %831 = sext i32 %821 to i64
  %832 = getelementptr inbounds i8, ptr %830, i64 %831
  %833 = load ptr, ptr %829, align 8, !tbaa !58
  %834 = icmp ugt ptr %832, %833
  br i1 %834, label %835, label %853

835:                                              ; preds = %827
  %836 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %837 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %838 = load i64, ptr %837, align 8, !tbaa !57
  %839 = trunc i64 %838 to i32
  %840 = add i32 %821, 8191
  %841 = add i32 %840, %839
  %842 = and i32 %841, -8192
  %843 = load ptr, ptr %836, align 8, !tbaa !56
  %844 = ptrtoint ptr %830 to i64
  %845 = ptrtoint ptr %843 to i64
  %846 = sub i64 %844, %845
  %847 = sext i32 %842 to i64
  %848 = call ptr @Perl_safesysrealloc(ptr noundef %843, i64 noundef %847) #10
  store ptr %848, ptr %836, align 8, !tbaa !56
  store i64 %847, ptr %837, align 8, !tbaa !57
  %849 = shl i64 %846, 32
  %850 = ashr exact i64 %849, 32
  %851 = getelementptr inbounds i8, ptr %848, i64 %850
  store ptr %851, ptr %828, align 8, !tbaa !55
  %852 = getelementptr inbounds i8, ptr %848, i64 %847
  store ptr %852, ptr %829, align 8, !tbaa !58
  br label %853

853:                                              ; preds = %835, %827
  %854 = load ptr, ptr %828, align 8, !tbaa !55
  %855 = load i32, ptr %9, align 4, !tbaa !43
  %856 = sext i32 %855 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %854, ptr align 1 %686, i64 %856, i1 false)
  %857 = load i32, ptr %9, align 4, !tbaa !43
  %858 = load ptr, ptr %828, align 8, !tbaa !55
  %859 = sext i32 %857 to i64
  %860 = getelementptr inbounds i8, ptr %858, i64 %859
  store ptr %860, ptr %828, align 8, !tbaa !55
  br label %869

861:                                              ; preds = %823
  %862 = sext i32 %821 to i64
  %863 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %825, ptr noundef %686, i64 noundef %862) #10
  %864 = load i32, ptr %9, align 4, !tbaa !43
  %865 = sext i32 %864 to i64
  %866 = icmp ne i64 %863, %865
  %867 = zext i1 %866 to i32
  %868 = select i1 %866, i32 -1, i32 %820
  br label %869

869:                                              ; preds = %819, %816, %861, %724, %853, %714, %657, %648, %774
  %870 = phi i32 [ 1, %774 ], [ 1, %648 ], [ 42, %657 ], [ 1, %714 ], [ 0, %853 ], [ 0, %724 ], [ %867, %861 ], [ 1, %816 ], [ 0, %819 ]
  %871 = phi i32 [ 0, %774 ], [ %643, %648 ], [ %664, %657 ], [ 0, %714 ], [ 0, %853 ], [ 0, %724 ], [ 0, %861 ], [ 0, %816 ], [ 0, %819 ]
  %872 = phi i32 [ %776, %774 ], [ 1, %648 ], [ %641, %657 ], [ -1, %714 ], [ %820, %853 ], [ %641, %724 ], [ %868, %861 ], [ -1, %816 ], [ %820, %819 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  switch i32 %870, label %879 [
    i32 0, label %873
    i32 42, label %877
  ]

873:                                              ; preds = %869
  %874 = add nuw nsw i32 %642, 1
  %875 = load i32, ptr %3, align 4, !tbaa !43
  %876 = icmp slt i32 %874, %875
  br i1 %876, label %640, label %877, !llvm.loop !135

877:                                              ; preds = %869, %873, %637, %632, %632
  %878 = phi i32 [ %634, %632 ], [ %634, %632 ], [ 0, %637 ], [ %871, %873 ], [ %871, %869 ]
  call void @Perl_hv_riter_set(ptr noundef nonnull %1, i32 noundef %224) #10
  call void @Perl_hv_eiter_set(ptr noundef nonnull %1, ptr noundef %235) #10
  br label %879

879:                                              ; preds = %869, %632, %115, %207, %167, %84, %49, %877
  %880 = phi i32 [ %878, %877 ], [ -1, %167 ], [ -1, %49 ], [ -1, %84 ], [ -1, %207 ], [ -1, %115 ], [ %635, %632 ], [ %872, %869 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %880
}

; Function Attrs: cold nounwind uwtable
define internal i32 @store_tied(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !53
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = icmp ult ptr %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %18, ptr %12, align 8, !tbaa !55
  store i8 12, ptr %13, align 1, !tbaa !41
  br label %105

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !57
  %23 = load ptr, ptr %20, align 8, !tbaa !56
  %24 = ptrtoint ptr %13 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = shl i64 %22, 32
  %28 = and i64 %27, -35184372088832
  %29 = add i64 %28, 35184372088832
  %30 = ashr exact i64 %29, 32
  %31 = tail call ptr @Perl_safesysrealloc(ptr noundef %23, i64 noundef %30) #10
  store ptr %31, ptr %20, align 8, !tbaa !56
  store i64 %30, ptr %21, align 8, !tbaa !57
  %32 = shl i64 %26, 32
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds i8, ptr %31, i64 %33
  store ptr %34, ptr %12, align 8, !tbaa !55
  %35 = getelementptr inbounds i8, ptr %31, i64 %30
  store ptr %35, ptr %14, align 8, !tbaa !58
  %36 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %36, ptr %12, align 8, !tbaa !55
  store i8 12, ptr %34, align 1, !tbaa !41
  br label %105

37:                                               ; preds = %7
  %38 = tail call i32 @PerlIO_putc(ptr noundef nonnull %9, i32 noundef 12) #10
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %123, label %105

40:                                               ; preds = %2
  %41 = icmp eq i32 %5, 11
  %42 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %43 = load ptr, ptr %42, align 8, !tbaa !69
  %44 = icmp eq ptr %43, null
  br i1 %41, label %45, label %75

45:                                               ; preds = %40
  br i1 %44, label %46, label %72

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !55
  %49 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !58
  %51 = icmp ult ptr %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %53, ptr %47, align 8, !tbaa !55
  store i8 11, ptr %48, align 1, !tbaa !41
  br label %105

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %56 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !57
  %58 = load ptr, ptr %55, align 8, !tbaa !56
  %59 = ptrtoint ptr %48 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = shl i64 %57, 32
  %63 = and i64 %62, -35184372088832
  %64 = add i64 %63, 35184372088832
  %65 = ashr exact i64 %64, 32
  %66 = tail call ptr @Perl_safesysrealloc(ptr noundef %58, i64 noundef %65) #10
  store ptr %66, ptr %55, align 8, !tbaa !56
  store i64 %65, ptr %56, align 8, !tbaa !57
  %67 = shl i64 %61, 32
  %68 = ashr exact i64 %67, 32
  %69 = getelementptr inbounds i8, ptr %66, i64 %68
  store ptr %69, ptr %47, align 8, !tbaa !55
  %70 = getelementptr inbounds i8, ptr %66, i64 %65
  store ptr %70, ptr %49, align 8, !tbaa !58
  %71 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %71, ptr %47, align 8, !tbaa !55
  store i8 11, ptr %69, align 1, !tbaa !41
  br label %105

72:                                               ; preds = %45
  %73 = tail call i32 @PerlIO_putc(ptr noundef nonnull %43, i32 noundef 11) #10
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %123, label %105

75:                                               ; preds = %40
  br i1 %44, label %76, label %102

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !55
  %79 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !58
  %81 = icmp ult ptr %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, ptr %78, i64 1
  store ptr %83, ptr %77, align 8, !tbaa !55
  store i8 13, ptr %78, align 1, !tbaa !41
  br label %105

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %86 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !57
  %88 = load ptr, ptr %85, align 8, !tbaa !56
  %89 = ptrtoint ptr %78 to i64
  %90 = ptrtoint ptr %88 to i64
  %91 = sub i64 %89, %90
  %92 = shl i64 %87, 32
  %93 = and i64 %92, -35184372088832
  %94 = add i64 %93, 35184372088832
  %95 = ashr exact i64 %94, 32
  %96 = tail call ptr @Perl_safesysrealloc(ptr noundef %88, i64 noundef %95) #10
  store ptr %96, ptr %85, align 8, !tbaa !56
  store i64 %95, ptr %86, align 8, !tbaa !57
  %97 = shl i64 %91, 32
  %98 = ashr exact i64 %97, 32
  %99 = getelementptr inbounds i8, ptr %96, i64 %98
  store ptr %99, ptr %77, align 8, !tbaa !55
  %100 = getelementptr inbounds i8, ptr %96, i64 %95
  store ptr %100, ptr %79, align 8, !tbaa !58
  %101 = getelementptr inbounds i8, ptr %99, i64 1
  store ptr %101, ptr %77, align 8, !tbaa !55
  store i8 13, ptr %99, align 1, !tbaa !41
  br label %105

102:                                              ; preds = %75
  %103 = tail call i32 @PerlIO_putc(ptr noundef nonnull %43, i32 noundef 13) #10
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %123, label %105

105:                                              ; preds = %84, %82, %102, %72, %52, %54, %19, %17, %37
  %106 = phi i32 [ 80, %37 ], [ 80, %17 ], [ 80, %19 ], [ 80, %72 ], [ 80, %52 ], [ 80, %54 ], [ 113, %102 ], [ 113, %82 ], [ 113, %84 ]
  %107 = tail call ptr @Perl_mg_find(ptr noundef %1, i32 noundef %106) #10
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %110, align 8, !tbaa !50
  %111 = icmp eq i32 %5, 11
  %112 = select i1 %111, ptr @.str.34, ptr @.str.35
  %113 = select i1 %6, ptr @.str.33, ptr %112
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.40, i32 noundef %106, ptr noundef nonnull %113) #10
  br label %114

114:                                              ; preds = %109, %105
  %115 = getelementptr inbounds %struct.magic, ptr %107, i64 0, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !113
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  br label %120

120:                                              ; preds = %114, %118
  %121 = phi ptr [ %119, %118 ], [ %116, %114 ]
  %122 = tail call fastcc i32 @store(ptr noundef %0, ptr noundef %121)
  br label %123

123:                                              ; preds = %102, %72, %120, %37
  %124 = phi i32 [ -1, %37 ], [ %122, %120 ], [ -1, %72 ], [ -1, %102 ]
  ret i32 %124
}

; Function Attrs: cold nounwind uwtable
define internal i32 @store_tied_item(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @Perl_mg_find(ptr noundef %1, i32 noundef 112) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %8, align 8, !tbaa !50
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.41) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.magic, ptr %5, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = icmp eq ptr %11, null
  br i1 %12, label %55, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp ult ptr %19, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %25 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !57
  %27 = load ptr, ptr %24, align 8, !tbaa !56
  %28 = ptrtoint ptr %19 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = shl i64 %26, 32
  %32 = and i64 %31, -35184372088832
  %33 = add i64 %32, 35184372088832
  %34 = ashr exact i64 %33, 32
  %35 = tail call ptr @Perl_safesysrealloc(ptr noundef %27, i64 noundef %34) #10
  store ptr %35, ptr %24, align 8, !tbaa !56
  store i64 %34, ptr %25, align 8, !tbaa !57
  %36 = shl i64 %30, 32
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  store ptr %38, ptr %18, align 8, !tbaa !55
  %39 = getelementptr inbounds i8, ptr %35, i64 %34
  store ptr %39, ptr %20, align 8, !tbaa !58
  br label %43

40:                                               ; preds = %13
  %41 = tail call i32 @PerlIO_putc(ptr noundef nonnull %15, i32 noundef 21) #10
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %191, label %46

43:                                               ; preds = %17, %23
  %44 = phi ptr [ %38, %23 ], [ %19, %17 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %45, ptr %18, align 8, !tbaa !55
  store i8 21, ptr %44, align 1, !tbaa !41
  br label %46

46:                                               ; preds = %43, %40
  %47 = getelementptr inbounds %struct.magic, ptr %5, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !113
  %49 = tail call fastcc i32 @store(ptr noundef %0, ptr noundef %48)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %191

51:                                               ; preds = %46
  %52 = load ptr, ptr %10, align 8, !tbaa !122
  %53 = tail call fastcc i32 @store(ptr noundef %0, ptr noundef %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %190, label %191

55:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %56 = getelementptr inbounds %struct.magic, ptr %5, i64 0, i32 5
  %57 = load i64, ptr %56, align 8, !tbaa !121
  %58 = trunc i64 %57 to i32
  store i32 %58, ptr %3, align 4, !tbaa !43
  %59 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %60 = load ptr, ptr %59, align 8, !tbaa !69
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !55
  %65 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !58
  %67 = icmp ult ptr %64, %66
  br i1 %67, label %88, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %70 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !57
  %72 = load ptr, ptr %69, align 8, !tbaa !56
  %73 = ptrtoint ptr %64 to i64
  %74 = ptrtoint ptr %72 to i64
  %75 = sub i64 %73, %74
  %76 = shl i64 %71, 32
  %77 = and i64 %76, -35184372088832
  %78 = add i64 %77, 35184372088832
  %79 = ashr exact i64 %78, 32
  %80 = tail call ptr @Perl_safesysrealloc(ptr noundef %72, i64 noundef %79) #10
  store ptr %80, ptr %69, align 8, !tbaa !56
  store i64 %79, ptr %70, align 8, !tbaa !57
  %81 = shl i64 %75, 32
  %82 = ashr exact i64 %81, 32
  %83 = getelementptr inbounds i8, ptr %80, i64 %82
  store ptr %83, ptr %63, align 8, !tbaa !55
  %84 = getelementptr inbounds i8, ptr %80, i64 %79
  store ptr %84, ptr %65, align 8, !tbaa !58
  br label %88

85:                                               ; preds = %55
  %86 = tail call i32 @PerlIO_putc(ptr noundef nonnull %60, i32 noundef 22) #10
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %187, label %91

88:                                               ; preds = %62, %68
  %89 = phi ptr [ %83, %68 ], [ %64, %62 ]
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %90, ptr %63, align 8, !tbaa !55
  store i8 22, ptr %89, align 1, !tbaa !41
  br label %91

91:                                               ; preds = %88, %85
  %92 = getelementptr inbounds %struct.magic, ptr %5, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !113
  %94 = tail call fastcc i32 @store(ptr noundef %0, ptr noundef %93)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %187

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %98 = load i32, ptr %97, align 8, !tbaa !62
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %145, label %100

100:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %101 = load i32, ptr %3, align 4, !tbaa !43
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  store i32 %102, ptr %4, align 4, !tbaa !43
  %103 = load ptr, ptr %59, align 8, !tbaa !69
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %140

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !55
  %108 = getelementptr inbounds i8, ptr %107, i64 4
  %109 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !58
  %111 = icmp ugt ptr %108, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %114 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !57
  %116 = load ptr, ptr %113, align 8, !tbaa !56
  %117 = ptrtoint ptr %107 to i64
  %118 = ptrtoint ptr %116 to i64
  %119 = sub i64 %117, %118
  %120 = shl i64 %115, 32
  %121 = add i64 %120, 35197256990720
  %122 = ashr exact i64 %121, 32
  %123 = and i64 %122, -8192
  %124 = tail call ptr @Perl_safesysrealloc(ptr noundef %116, i64 noundef %123) #10
  store ptr %124, ptr %113, align 8, !tbaa !56
  store i64 %123, ptr %114, align 8, !tbaa !57
  %125 = shl i64 %119, 32
  %126 = ashr exact i64 %125, 32
  %127 = getelementptr inbounds i8, ptr %124, i64 %126
  store ptr %127, ptr %106, align 8, !tbaa !55
  %128 = getelementptr inbounds i8, ptr %124, i64 %123
  store ptr %128, ptr %109, align 8, !tbaa !58
  br label %129

129:                                              ; preds = %112, %105
  %130 = load ptr, ptr %106, align 8, !tbaa !55
  %131 = ptrtoint ptr %130 to i64
  %132 = and i64 %131, 3
  %133 = icmp eq i64 %132, 0
  %134 = load i32, ptr %4, align 4
  br i1 %133, label %135, label %136

135:                                              ; preds = %129
  store i32 %134, ptr %130, align 4, !tbaa !43
  br label %137

136:                                              ; preds = %129
  store i32 %134, ptr %130, align 1
  br label %137

137:                                              ; preds = %136, %135
  %138 = load ptr, ptr %106, align 8, !tbaa !55
  %139 = getelementptr inbounds i8, ptr %138, i64 4
  store ptr %139, ptr %106, align 8, !tbaa !55
  br label %143

140:                                              ; preds = %100
  %141 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %103, ptr noundef nonnull %4, i64 noundef 4) #10
  %142 = icmp eq i64 %141, 4
  br i1 %142, label %143, label %144

143:                                              ; preds = %140, %137
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %186

144:                                              ; preds = %140
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %187

145:                                              ; preds = %96
  %146 = load ptr, ptr %59, align 8, !tbaa !69
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %183

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !55
  %151 = getelementptr inbounds i8, ptr %150, i64 4
  %152 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !58
  %154 = icmp ugt ptr %151, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %157 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %158 = load i64, ptr %157, align 8, !tbaa !57
  %159 = load ptr, ptr %156, align 8, !tbaa !56
  %160 = ptrtoint ptr %150 to i64
  %161 = ptrtoint ptr %159 to i64
  %162 = sub i64 %160, %161
  %163 = shl i64 %158, 32
  %164 = add i64 %163, 35197256990720
  %165 = ashr exact i64 %164, 32
  %166 = and i64 %165, -8192
  %167 = tail call ptr @Perl_safesysrealloc(ptr noundef %159, i64 noundef %166) #10
  store ptr %167, ptr %156, align 8, !tbaa !56
  store i64 %166, ptr %157, align 8, !tbaa !57
  %168 = shl i64 %162, 32
  %169 = ashr exact i64 %168, 32
  %170 = getelementptr inbounds i8, ptr %167, i64 %169
  store ptr %170, ptr %149, align 8, !tbaa !55
  %171 = getelementptr inbounds i8, ptr %167, i64 %166
  store ptr %171, ptr %152, align 8, !tbaa !58
  br label %172

172:                                              ; preds = %155, %148
  %173 = load ptr, ptr %149, align 8, !tbaa !55
  %174 = ptrtoint ptr %173 to i64
  %175 = and i64 %174, 3
  %176 = icmp eq i64 %175, 0
  %177 = load i32, ptr %3, align 4
  br i1 %176, label %178, label %179

178:                                              ; preds = %172
  store i32 %177, ptr %173, align 4, !tbaa !43
  br label %180

179:                                              ; preds = %172
  store i32 %177, ptr %173, align 1
  br label %180

180:                                              ; preds = %179, %178
  %181 = load ptr, ptr %149, align 8, !tbaa !55
  %182 = getelementptr inbounds i8, ptr %181, i64 4
  store ptr %182, ptr %149, align 8, !tbaa !55
  br label %186

183:                                              ; preds = %145
  %184 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %146, ptr noundef nonnull %3, i64 noundef 4) #10
  %185 = icmp eq i64 %184, 4
  br i1 %185, label %186, label %187

186:                                              ; preds = %143, %180, %183
  br label %187

187:                                              ; preds = %85, %183, %144, %91, %186
  %188 = phi i1 [ true, %186 ], [ false, %144 ], [ false, %91 ], [ false, %183 ], [ false, %85 ]
  %189 = phi i32 [ -1, %186 ], [ -1, %144 ], [ %94, %91 ], [ -1, %183 ], [ -1, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br i1 %188, label %190, label %191

190:                                              ; preds = %51, %187
  br label %191

191:                                              ; preds = %40, %51, %46, %187, %190
  %192 = phi i32 [ 0, %190 ], [ %189, %187 ], [ %49, %46 ], [ %53, %51 ], [ -1, %40 ]
  ret i32 %192
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @store_code(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %6 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %109, label %9

9:                                                ; preds = %2
  %10 = icmp slt i32 %7, 0
  br i1 %10, label %11, label %112

11:                                               ; preds = %9
  %12 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %108, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !53
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  %20 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  br i1 %19, label %23, label %21

21:                                               ; preds = %14
  %22 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %20, i32 noundef 2) #10
  br label %105

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = and i32 %25, 65280
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  %30 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !53
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !53
  %38 = and i32 %37, 16826623
  %39 = icmp eq i32 %38, 16777226
  br i1 %39, label %40, label %108

40:                                               ; preds = %34, %28, %23
  %41 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !53
  %44 = and i32 %43, 1024
  %45 = icmp eq i32 %44, 0
  %46 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  br i1 %45, label %68, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %46, align 8, !tbaa !85
  %49 = icmp eq ptr %48, null
  br i1 %49, label %108, label %50

50:                                               ; preds = %47
  %51 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  %52 = load ptr, ptr %51, align 8, !tbaa !85
  %53 = getelementptr inbounds %struct.xpv, ptr %52, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !107
  %55 = icmp ugt i64 %54, 1
  br i1 %55, label %111, label %56

56:                                               ; preds = %50
  %57 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  %58 = load ptr, ptr %57, align 8, !tbaa !85
  %59 = getelementptr inbounds %struct.xpv, ptr %58, i64 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !107
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %108, label %62

62:                                               ; preds = %56
  %63 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  %64 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !41
  %66 = load i8, ptr %65, align 1, !tbaa !41
  %67 = icmp ne i8 %66, 48
  br label %105

68:                                               ; preds = %40
  %69 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !53
  %71 = and i32 %70, 768
  %72 = icmp eq i32 %71, 0
  %73 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  br i1 %72, label %103, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.sv, ptr %73, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !53
  %77 = and i32 %76, 256
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  %81 = load ptr, ptr %80, align 8, !tbaa !85
  %82 = getelementptr inbounds %struct.xpviv, ptr %81, i64 0, i32 4
  %83 = load i64, ptr %82, align 8, !tbaa !41
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %79, %74
  %86 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  %87 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !53
  %89 = and i32 %88, 512
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %85
  %92 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  %93 = load ptr, ptr %92, align 8, !tbaa !85
  %94 = getelementptr inbounds %struct.xpvnv, ptr %93, i64 0, i32 5
  %95 = load double, ptr %94, align 8, !tbaa !41
  %96 = fcmp uno double %95, 0.000000e+00
  br i1 %96, label %111, label %97

97:                                               ; preds = %91
  %98 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #10
  %99 = load ptr, ptr %98, align 8, !tbaa !85
  %100 = getelementptr inbounds %struct.xpvnv, ptr %99, i64 0, i32 5
  %101 = load double, ptr %100, align 8, !tbaa !41
  %102 = fcmp une double %101, 0.000000e+00
  br label %105

103:                                              ; preds = %68
  %104 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %73, i32 noundef 0) #10
  br label %105

105:                                              ; preds = %21, %103, %62, %97
  %106 = phi i1 [ %22, %21 ], [ %104, %103 ], [ %67, %62 ], [ %102, %97 ]
  %107 = zext i1 %106 to i32
  store i32 %107, ptr %6, align 4, !tbaa !66
  br i1 %106, label %112, label %109

108:                                              ; preds = %85, %56, %47, %34, %11
  store i32 0, ptr %6, align 4, !tbaa !66
  br label %109

109:                                              ; preds = %108, %105, %2
  %110 = tail call i32 @store_other(ptr noundef %0, ptr noundef %1), !range !136
  br label %908

111:                                              ; preds = %91, %79, %50
  store i32 1, ptr %6, align 4, !tbaa !66
  br label %112

112:                                              ; preds = %111, %105, %9
  %113 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.43, i64 noundef 10) #10
  %114 = tail call ptr @Perl_newSVnv(double noundef 6.100000e-01) #10
  tail call void (i32, ptr, ptr, ...) @Perl_load_module(i32 noundef 2, ptr noundef %113, ptr noundef %114) #10
  %115 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  tail call void @Perl_push_scope() #10
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #10
  %116 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !82
  store i64 %116, ptr @PL_tmps_floor, align 8, !tbaa !82
  %117 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %118 = getelementptr inbounds i32, ptr %117, i64 1
  store ptr %118, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %119 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !42
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = tail call ptr @Perl_markstack_grow() #10
  br label %123

123:                                              ; preds = %112, %121
  %124 = phi ptr [ %122, %121 ], [ %118, %112 ]
  %125 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %126 = ptrtoint ptr %115 to i64
  %127 = ptrtoint ptr %125 to i64
  %128 = sub i64 %126, %127
  %129 = lshr exact i64 %128, 3
  %130 = trunc i64 %129 to i32
  store i32 %130, ptr %124, align 4, !tbaa !43
  %131 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %132 = ptrtoint ptr %131 to i64
  %133 = sub i64 %132, %126
  %134 = icmp slt i64 %133, 8
  br i1 %134, label %135, label %137

135:                                              ; preds = %123
  %136 = tail call ptr @Perl_stack_grow(ptr noundef %115, ptr noundef %115, i64 noundef 1) #10
  br label %137

137:                                              ; preds = %123, %135
  %138 = phi ptr [ %136, %135 ], [ %115, %123 ]
  %139 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.43, i64 noundef 10, i32 noundef 524288) #10
  %140 = getelementptr inbounds ptr, ptr %138, i64 1
  store ptr %139, ptr %140, align 8, !tbaa !42
  store ptr %140, ptr @PL_stack_sp, align 8, !tbaa !42
  %141 = tail call i32 @Perl_call_method(ptr noundef nonnull @.str.44, i32 noundef 2) #10
  %142 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %143 = icmp eq i32 %141, 1
  br i1 %143, label %146, label %144

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %145, align 8, !tbaa !50
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #10
  br label %146

146:                                              ; preds = %144, %137
  %147 = getelementptr inbounds ptr, ptr %142, i64 -1
  %148 = load ptr, ptr %142, align 8, !tbaa !42
  %149 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %150 = getelementptr inbounds i32, ptr %149, i64 1
  store ptr %150, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %151 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !42
  %152 = icmp eq ptr %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = tail call ptr @Perl_markstack_grow() #10
  br label %155

155:                                              ; preds = %146, %153
  %156 = phi ptr [ %154, %153 ], [ %150, %146 ]
  %157 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %158 = ptrtoint ptr %147 to i64
  %159 = ptrtoint ptr %157 to i64
  %160 = sub i64 %158, %159
  %161 = lshr exact i64 %160, 3
  %162 = trunc i64 %161 to i32
  store i32 %162, ptr %156, align 4, !tbaa !43
  %163 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %164 = ptrtoint ptr %163 to i64
  %165 = sub i64 %164, %158
  %166 = icmp slt i64 %165, 8
  br i1 %166, label %167, label %169

167:                                              ; preds = %155
  %168 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %147, ptr noundef nonnull %147, i64 noundef 1) #10
  br label %169

169:                                              ; preds = %155, %167
  %170 = phi ptr [ %168, %167 ], [ %147, %155 ]
  %171 = getelementptr inbounds ptr, ptr %170, i64 1
  store ptr %148, ptr %171, align 8, !tbaa !42
  %172 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %173 = ptrtoint ptr %172 to i64
  %174 = ptrtoint ptr %171 to i64
  %175 = sub i64 %173, %174
  %176 = icmp slt i64 %175, 8
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  %178 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %171, ptr noundef nonnull %171, i64 noundef 1) #10
  br label %179

179:                                              ; preds = %169, %177
  %180 = phi ptr [ %178, %177 ], [ %171, %169 ]
  %181 = tail call ptr @Perl_newRV(ptr noundef %1) #10
  %182 = tail call ptr @Perl_sv_2mortal(ptr noundef %181) #10
  %183 = getelementptr inbounds ptr, ptr %180, i64 1
  store ptr %182, ptr %183, align 8, !tbaa !42
  store ptr %183, ptr @PL_stack_sp, align 8, !tbaa !42
  %184 = tail call i32 @Perl_call_method(ptr noundef nonnull @.str.46, i32 noundef 2) #10
  %185 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %186 = icmp eq i32 %184, 1
  br i1 %186, label %189, label %187

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %188, align 8, !tbaa !50
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47) #10
  br label %189

189:                                              ; preds = %187, %179
  %190 = load ptr, ptr %185, align 8, !tbaa !42
  %191 = load ptr, ptr %190, align 8, !tbaa !85
  %192 = getelementptr inbounds %struct.xpv, ptr %191, i64 0, i32 2
  %193 = load i64, ptr %192, align 8, !tbaa !107
  %194 = trunc i64 %193 to i32
  store i32 %194, ptr %3, align 4, !tbaa !43
  %195 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 2
  %196 = load i32, ptr %195, align 4, !tbaa !53
  %197 = and i32 %196, 2098176
  %198 = icmp eq i32 %197, 1024
  br i1 %198, label %199, label %202

199:                                              ; preds = %189
  %200 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !41
  br label %204

202:                                              ; preds = %189
  %203 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %190, ptr noundef null, i32 noundef 2) #10
  br label %204

204:                                              ; preds = %202, %199
  %205 = phi ptr [ %201, %199 ], [ %203, %202 ]
  %206 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %205) #11
  %207 = load i32, ptr %3, align 4, !tbaa !43
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %226, label %209

209:                                              ; preds = %204
  %210 = load i32, ptr %195, align 4, !tbaa !53
  %211 = and i32 %210, 2098176
  %212 = icmp eq i32 %211, 1024
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !41
  br label %218

216:                                              ; preds = %209
  %217 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %190, ptr noundef null, i32 noundef 2) #10
  br label %218

218:                                              ; preds = %216, %213
  %219 = phi ptr [ %215, %213 ], [ %217, %216 ]
  %220 = shl i64 %206, 32
  %221 = ashr exact i64 %220, 32
  %222 = getelementptr inbounds i8, ptr %219, i64 %221
  %223 = getelementptr inbounds i8, ptr %222, i64 -1
  %224 = load i8, ptr %223, align 1, !tbaa !41
  %225 = icmp eq i8 %224, 59
  br i1 %225, label %226, label %228

226:                                              ; preds = %204, %218
  %227 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %227, align 8, !tbaa !50
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #10
  br label %228

228:                                              ; preds = %218, %226
  %229 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %230 = load ptr, ptr %229, align 8, !tbaa !69
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %255

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !55
  %235 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %236 = load ptr, ptr %235, align 8, !tbaa !58
  %237 = icmp ult ptr %234, %236
  br i1 %237, label %258, label %238

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %240 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %241 = load i64, ptr %240, align 8, !tbaa !57
  %242 = load ptr, ptr %239, align 8, !tbaa !56
  %243 = ptrtoint ptr %234 to i64
  %244 = ptrtoint ptr %242 to i64
  %245 = sub i64 %243, %244
  %246 = shl i64 %241, 32
  %247 = and i64 %246, -35184372088832
  %248 = add i64 %247, 35184372088832
  %249 = ashr exact i64 %248, 32
  %250 = tail call ptr @Perl_safesysrealloc(ptr noundef %242, i64 noundef %249) #10
  store ptr %250, ptr %239, align 8, !tbaa !56
  store i64 %249, ptr %240, align 8, !tbaa !57
  %251 = shl i64 %245, 32
  %252 = ashr exact i64 %251, 32
  %253 = getelementptr inbounds i8, ptr %250, i64 %252
  store ptr %253, ptr %233, align 8, !tbaa !55
  %254 = getelementptr inbounds i8, ptr %250, i64 %249
  store ptr %254, ptr %235, align 8, !tbaa !58
  br label %258

255:                                              ; preds = %228
  %256 = tail call i32 @PerlIO_putc(ptr noundef nonnull %230, i32 noundef 26) #10
  %257 = icmp eq i32 %256, -1
  br i1 %257, label %908, label %261

258:                                              ; preds = %232, %238
  %259 = phi ptr [ %253, %238 ], [ %234, %232 ]
  %260 = getelementptr inbounds i8, ptr %259, i64 1
  store ptr %260, ptr %233, align 8, !tbaa !55
  store i8 26, ptr %259, align 1, !tbaa !41
  br label %261

261:                                              ; preds = %258, %255
  %262 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %263 = load i64, ptr %262, align 8, !tbaa !83
  %264 = add nsw i64 %263, 1
  store i64 %264, ptr %262, align 8, !tbaa !83
  %265 = load i32, ptr %195, align 4, !tbaa !53
  %266 = and i32 %265, 536870912
  %267 = icmp eq i32 %266, 0
  %268 = load i32, ptr %3, align 4, !tbaa !43
  %269 = icmp slt i32 %268, 256
  br i1 %267, label %583, label %270

270:                                              ; preds = %261
  br i1 %269, label %271, label %400

271:                                              ; preds = %270
  %272 = trunc i32 %268 to i8
  %273 = load ptr, ptr %229, align 8, !tbaa !69
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %298

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !55
  %278 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %279 = load ptr, ptr %278, align 8, !tbaa !58
  %280 = icmp ult ptr %277, %279
  br i1 %280, label %301, label %281

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %283 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %284 = load i64, ptr %283, align 8, !tbaa !57
  %285 = load ptr, ptr %282, align 8, !tbaa !56
  %286 = ptrtoint ptr %277 to i64
  %287 = ptrtoint ptr %285 to i64
  %288 = sub i64 %286, %287
  %289 = shl i64 %284, 32
  %290 = and i64 %289, -35184372088832
  %291 = add i64 %290, 35184372088832
  %292 = ashr exact i64 %291, 32
  %293 = tail call ptr @Perl_safesysrealloc(ptr noundef %285, i64 noundef %292) #10
  store ptr %293, ptr %282, align 8, !tbaa !56
  store i64 %292, ptr %283, align 8, !tbaa !57
  %294 = shl i64 %288, 32
  %295 = ashr exact i64 %294, 32
  %296 = getelementptr inbounds i8, ptr %293, i64 %295
  store ptr %296, ptr %276, align 8, !tbaa !55
  %297 = getelementptr inbounds i8, ptr %293, i64 %292
  store ptr %297, ptr %278, align 8, !tbaa !58
  br label %301

298:                                              ; preds = %271
  %299 = tail call i32 @PerlIO_putc(ptr noundef nonnull %273, i32 noundef 23) #10
  %300 = icmp eq i32 %299, -1
  br i1 %300, label %908, label %304

301:                                              ; preds = %275, %281
  %302 = phi ptr [ %296, %281 ], [ %277, %275 ]
  %303 = getelementptr inbounds i8, ptr %302, i64 1
  store ptr %303, ptr %276, align 8, !tbaa !55
  store i8 23, ptr %302, align 1, !tbaa !41
  br label %304

304:                                              ; preds = %301, %298
  %305 = load ptr, ptr %229, align 8, !tbaa !69
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %330

307:                                              ; preds = %304
  %308 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %309 = load ptr, ptr %308, align 8, !tbaa !55
  %310 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %311 = load ptr, ptr %310, align 8, !tbaa !58
  %312 = icmp ult ptr %309, %311
  br i1 %312, label %334, label %313

313:                                              ; preds = %307
  %314 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %315 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %316 = load i64, ptr %315, align 8, !tbaa !57
  %317 = load ptr, ptr %314, align 8, !tbaa !56
  %318 = ptrtoint ptr %309 to i64
  %319 = ptrtoint ptr %317 to i64
  %320 = sub i64 %318, %319
  %321 = shl i64 %316, 32
  %322 = and i64 %321, -35184372088832
  %323 = add i64 %322, 35184372088832
  %324 = ashr exact i64 %323, 32
  %325 = tail call ptr @Perl_safesysrealloc(ptr noundef %317, i64 noundef %324) #10
  store ptr %325, ptr %314, align 8, !tbaa !56
  store i64 %324, ptr %315, align 8, !tbaa !57
  %326 = shl i64 %320, 32
  %327 = ashr exact i64 %326, 32
  %328 = getelementptr inbounds i8, ptr %325, i64 %327
  store ptr %328, ptr %308, align 8, !tbaa !55
  %329 = getelementptr inbounds i8, ptr %325, i64 %324
  store ptr %329, ptr %310, align 8, !tbaa !58
  br label %334

330:                                              ; preds = %304
  %331 = and i32 %268, 255
  %332 = tail call i32 @PerlIO_putc(ptr noundef nonnull %305, i32 noundef %331) #10
  %333 = icmp eq i32 %332, -1
  br i1 %333, label %908, label %337

334:                                              ; preds = %307, %313
  %335 = phi ptr [ %328, %313 ], [ %309, %307 ]
  %336 = getelementptr inbounds i8, ptr %335, i64 1
  store ptr %336, ptr %308, align 8, !tbaa !55
  store i8 %272, ptr %335, align 1, !tbaa !41
  br label %337

337:                                              ; preds = %334, %330
  %338 = load i32, ptr %3, align 4, !tbaa !43
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %902, label %340

340:                                              ; preds = %337
  %341 = load ptr, ptr %229, align 8, !tbaa !69
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %383

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !55
  %346 = sext i32 %338 to i64
  %347 = getelementptr inbounds i8, ptr %345, i64 %346
  %348 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %349 = load ptr, ptr %348, align 8, !tbaa !58
  %350 = icmp ugt ptr %347, %349
  br i1 %350, label %351, label %369

351:                                              ; preds = %343
  %352 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %353 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %354 = load i64, ptr %353, align 8, !tbaa !57
  %355 = trunc i64 %354 to i32
  %356 = add i32 %338, 8191
  %357 = add i32 %356, %355
  %358 = and i32 %357, -8192
  %359 = load ptr, ptr %352, align 8, !tbaa !56
  %360 = ptrtoint ptr %345 to i64
  %361 = ptrtoint ptr %359 to i64
  %362 = sub i64 %360, %361
  %363 = sext i32 %358 to i64
  %364 = tail call ptr @Perl_safesysrealloc(ptr noundef %359, i64 noundef %363) #10
  store ptr %364, ptr %352, align 8, !tbaa !56
  store i64 %363, ptr %353, align 8, !tbaa !57
  %365 = shl i64 %362, 32
  %366 = ashr exact i64 %365, 32
  %367 = getelementptr inbounds i8, ptr %364, i64 %366
  store ptr %367, ptr %344, align 8, !tbaa !55
  %368 = getelementptr inbounds i8, ptr %364, i64 %363
  store ptr %368, ptr %348, align 8, !tbaa !58
  br label %369

369:                                              ; preds = %351, %343
  %370 = load ptr, ptr %344, align 8, !tbaa !55
  %371 = load i32, ptr %195, align 4, !tbaa !53
  %372 = and i32 %371, 2098176
  %373 = icmp eq i32 %372, 1024
  br i1 %373, label %374, label %377

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %376 = load ptr, ptr %375, align 8, !tbaa !41
  br label %379

377:                                              ; preds = %369
  %378 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %190, ptr noundef null, i32 noundef 2) #10
  br label %379

379:                                              ; preds = %377, %374
  %380 = phi ptr [ %376, %374 ], [ %378, %377 ]
  %381 = load i32, ptr %3, align 4, !tbaa !43
  %382 = sext i32 %381 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %370, ptr align 1 %380, i64 %382, i1 false)
  br label %896

383:                                              ; preds = %340
  %384 = load i32, ptr %195, align 4, !tbaa !53
  %385 = and i32 %384, 2098176
  %386 = icmp eq i32 %385, 1024
  br i1 %386, label %387, label %390

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %389 = load ptr, ptr %388, align 8, !tbaa !41
  br label %392

390:                                              ; preds = %383
  %391 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %190, ptr noundef null, i32 noundef 2) #10
  br label %392

392:                                              ; preds = %390, %387
  %393 = phi ptr [ %389, %387 ], [ %391, %390 ]
  %394 = load i32, ptr %3, align 4, !tbaa !43
  %395 = sext i32 %394 to i64
  %396 = tail call i64 @Perl_PerlIO_write(ptr noundef nonnull %341, ptr noundef %393, i64 noundef %395) #10
  %397 = load i32, ptr %3, align 4, !tbaa !43
  %398 = sext i32 %397 to i64
  %399 = icmp eq i64 %396, %398
  br i1 %399, label %902, label %908

400:                                              ; preds = %270
  %401 = load ptr, ptr %229, align 8, !tbaa !69
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %426

403:                                              ; preds = %400
  %404 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %405 = load ptr, ptr %404, align 8, !tbaa !55
  %406 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %407 = load ptr, ptr %406, align 8, !tbaa !58
  %408 = icmp ult ptr %405, %407
  br i1 %408, label %429, label %409

409:                                              ; preds = %403
  %410 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %411 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %412 = load i64, ptr %411, align 8, !tbaa !57
  %413 = load ptr, ptr %410, align 8, !tbaa !56
  %414 = ptrtoint ptr %405 to i64
  %415 = ptrtoint ptr %413 to i64
  %416 = sub i64 %414, %415
  %417 = shl i64 %412, 32
  %418 = and i64 %417, -35184372088832
  %419 = add i64 %418, 35184372088832
  %420 = ashr exact i64 %419, 32
  %421 = tail call ptr @Perl_safesysrealloc(ptr noundef %413, i64 noundef %420) #10
  store ptr %421, ptr %410, align 8, !tbaa !56
  store i64 %420, ptr %411, align 8, !tbaa !57
  %422 = shl i64 %416, 32
  %423 = ashr exact i64 %422, 32
  %424 = getelementptr inbounds i8, ptr %421, i64 %423
  store ptr %424, ptr %404, align 8, !tbaa !55
  %425 = getelementptr inbounds i8, ptr %421, i64 %420
  store ptr %425, ptr %406, align 8, !tbaa !58
  br label %429

426:                                              ; preds = %400
  %427 = tail call i32 @PerlIO_putc(ptr noundef nonnull %401, i32 noundef 24) #10
  %428 = icmp eq i32 %427, -1
  br i1 %428, label %908, label %432

429:                                              ; preds = %403, %409
  %430 = phi ptr [ %424, %409 ], [ %405, %403 ]
  %431 = getelementptr inbounds i8, ptr %430, i64 1
  store ptr %431, ptr %404, align 8, !tbaa !55
  store i8 24, ptr %430, align 1, !tbaa !41
  br label %432

432:                                              ; preds = %429, %426
  %433 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %434 = load i32, ptr %433, align 8, !tbaa !62
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %481, label %436

436:                                              ; preds = %432
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %437 = load i32, ptr %3, align 4, !tbaa !43
  %438 = tail call i32 @llvm.bswap.i32(i32 %437)
  store i32 %438, ptr %4, align 4, !tbaa !43
  %439 = load ptr, ptr %229, align 8, !tbaa !69
  %440 = icmp eq ptr %439, null
  br i1 %440, label %441, label %476

441:                                              ; preds = %436
  %442 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %443 = load ptr, ptr %442, align 8, !tbaa !55
  %444 = getelementptr inbounds i8, ptr %443, i64 4
  %445 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %446 = load ptr, ptr %445, align 8, !tbaa !58
  %447 = icmp ugt ptr %444, %446
  br i1 %447, label %448, label %465

448:                                              ; preds = %441
  %449 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %450 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %451 = load i64, ptr %450, align 8, !tbaa !57
  %452 = load ptr, ptr %449, align 8, !tbaa !56
  %453 = ptrtoint ptr %443 to i64
  %454 = ptrtoint ptr %452 to i64
  %455 = sub i64 %453, %454
  %456 = shl i64 %451, 32
  %457 = add i64 %456, 35197256990720
  %458 = ashr exact i64 %457, 32
  %459 = and i64 %458, -8192
  %460 = tail call ptr @Perl_safesysrealloc(ptr noundef %452, i64 noundef %459) #10
  store ptr %460, ptr %449, align 8, !tbaa !56
  store i64 %459, ptr %450, align 8, !tbaa !57
  %461 = shl i64 %455, 32
  %462 = ashr exact i64 %461, 32
  %463 = getelementptr inbounds i8, ptr %460, i64 %462
  store ptr %463, ptr %442, align 8, !tbaa !55
  %464 = getelementptr inbounds i8, ptr %460, i64 %459
  store ptr %464, ptr %445, align 8, !tbaa !58
  br label %465

465:                                              ; preds = %448, %441
  %466 = load ptr, ptr %442, align 8, !tbaa !55
  %467 = ptrtoint ptr %466 to i64
  %468 = and i64 %467, 3
  %469 = icmp eq i64 %468, 0
  %470 = load i32, ptr %4, align 4
  br i1 %469, label %471, label %472

471:                                              ; preds = %465
  store i32 %470, ptr %466, align 4, !tbaa !43
  br label %473

472:                                              ; preds = %465
  store i32 %470, ptr %466, align 1
  br label %473

473:                                              ; preds = %472, %471
  %474 = load ptr, ptr %442, align 8, !tbaa !55
  %475 = getelementptr inbounds i8, ptr %474, i64 4
  store ptr %475, ptr %442, align 8, !tbaa !55
  br label %479

476:                                              ; preds = %436
  %477 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %439, ptr noundef nonnull %4, i64 noundef 4) #10
  %478 = icmp eq i64 %477, 4
  br i1 %478, label %479, label %480

479:                                              ; preds = %476, %473
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %522

480:                                              ; preds = %476
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %908

481:                                              ; preds = %432
  %482 = load ptr, ptr %229, align 8, !tbaa !69
  %483 = icmp eq ptr %482, null
  br i1 %483, label %484, label %519

484:                                              ; preds = %481
  %485 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %486 = load ptr, ptr %485, align 8, !tbaa !55
  %487 = getelementptr inbounds i8, ptr %486, i64 4
  %488 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %489 = load ptr, ptr %488, align 8, !tbaa !58
  %490 = icmp ugt ptr %487, %489
  br i1 %490, label %491, label %508

491:                                              ; preds = %484
  %492 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %493 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %494 = load i64, ptr %493, align 8, !tbaa !57
  %495 = load ptr, ptr %492, align 8, !tbaa !56
  %496 = ptrtoint ptr %486 to i64
  %497 = ptrtoint ptr %495 to i64
  %498 = sub i64 %496, %497
  %499 = shl i64 %494, 32
  %500 = add i64 %499, 35197256990720
  %501 = ashr exact i64 %500, 32
  %502 = and i64 %501, -8192
  %503 = tail call ptr @Perl_safesysrealloc(ptr noundef %495, i64 noundef %502) #10
  store ptr %503, ptr %492, align 8, !tbaa !56
  store i64 %502, ptr %493, align 8, !tbaa !57
  %504 = shl i64 %498, 32
  %505 = ashr exact i64 %504, 32
  %506 = getelementptr inbounds i8, ptr %503, i64 %505
  store ptr %506, ptr %485, align 8, !tbaa !55
  %507 = getelementptr inbounds i8, ptr %503, i64 %502
  store ptr %507, ptr %488, align 8, !tbaa !58
  br label %508

508:                                              ; preds = %491, %484
  %509 = load ptr, ptr %485, align 8, !tbaa !55
  %510 = ptrtoint ptr %509 to i64
  %511 = and i64 %510, 3
  %512 = icmp eq i64 %511, 0
  %513 = load i32, ptr %3, align 4
  br i1 %512, label %514, label %515

514:                                              ; preds = %508
  store i32 %513, ptr %509, align 4, !tbaa !43
  br label %516

515:                                              ; preds = %508
  store i32 %513, ptr %509, align 1
  br label %516

516:                                              ; preds = %515, %514
  %517 = load ptr, ptr %485, align 8, !tbaa !55
  %518 = getelementptr inbounds i8, ptr %517, i64 4
  store ptr %518, ptr %485, align 8, !tbaa !55
  br label %522

519:                                              ; preds = %481
  %520 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %482, ptr noundef nonnull %3, i64 noundef 4) #10
  %521 = icmp eq i64 %520, 4
  br i1 %521, label %522, label %908

522:                                              ; preds = %479, %519, %516
  %523 = load ptr, ptr %229, align 8, !tbaa !69
  %524 = icmp eq ptr %523, null
  br i1 %524, label %525, label %566

525:                                              ; preds = %522
  %526 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %527 = load ptr, ptr %526, align 8, !tbaa !55
  %528 = load i32, ptr %3, align 4, !tbaa !43
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i8, ptr %527, i64 %529
  %531 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %532 = load ptr, ptr %531, align 8, !tbaa !58
  %533 = icmp ugt ptr %530, %532
  br i1 %533, label %534, label %552

534:                                              ; preds = %525
  %535 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %536 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %537 = load i64, ptr %536, align 8, !tbaa !57
  %538 = trunc i64 %537 to i32
  %539 = add i32 %528, 8191
  %540 = add i32 %539, %538
  %541 = and i32 %540, -8192
  %542 = load ptr, ptr %535, align 8, !tbaa !56
  %543 = ptrtoint ptr %527 to i64
  %544 = ptrtoint ptr %542 to i64
  %545 = sub i64 %543, %544
  %546 = sext i32 %541 to i64
  %547 = call ptr @Perl_safesysrealloc(ptr noundef %542, i64 noundef %546) #10
  store ptr %547, ptr %535, align 8, !tbaa !56
  store i64 %546, ptr %536, align 8, !tbaa !57
  %548 = shl i64 %545, 32
  %549 = ashr exact i64 %548, 32
  %550 = getelementptr inbounds i8, ptr %547, i64 %549
  store ptr %550, ptr %526, align 8, !tbaa !55
  %551 = getelementptr inbounds i8, ptr %547, i64 %546
  store ptr %551, ptr %531, align 8, !tbaa !58
  br label %552

552:                                              ; preds = %534, %525
  %553 = load ptr, ptr %526, align 8, !tbaa !55
  %554 = load i32, ptr %195, align 4, !tbaa !53
  %555 = and i32 %554, 2098176
  %556 = icmp eq i32 %555, 1024
  br i1 %556, label %557, label %560

557:                                              ; preds = %552
  %558 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %559 = load ptr, ptr %558, align 8, !tbaa !41
  br label %562

560:                                              ; preds = %552
  %561 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %190, ptr noundef null, i32 noundef 2) #10
  br label %562

562:                                              ; preds = %560, %557
  %563 = phi ptr [ %559, %557 ], [ %561, %560 ]
  %564 = load i32, ptr %3, align 4, !tbaa !43
  %565 = sext i32 %564 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %553, ptr align 1 %563, i64 %565, i1 false)
  br label %896

566:                                              ; preds = %522
  %567 = load i32, ptr %195, align 4, !tbaa !53
  %568 = and i32 %567, 2098176
  %569 = icmp eq i32 %568, 1024
  br i1 %569, label %570, label %573

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %572 = load ptr, ptr %571, align 8, !tbaa !41
  br label %575

573:                                              ; preds = %566
  %574 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %190, ptr noundef null, i32 noundef 2) #10
  br label %575

575:                                              ; preds = %573, %570
  %576 = phi ptr [ %572, %570 ], [ %574, %573 ]
  %577 = load i32, ptr %3, align 4, !tbaa !43
  %578 = sext i32 %577 to i64
  %579 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %523, ptr noundef %576, i64 noundef %578) #10
  %580 = load i32, ptr %3, align 4, !tbaa !43
  %581 = sext i32 %580 to i64
  %582 = icmp eq i64 %579, %581
  br i1 %582, label %902, label %908

583:                                              ; preds = %261
  br i1 %269, label %584, label %713

584:                                              ; preds = %583
  %585 = trunc i32 %268 to i8
  %586 = load ptr, ptr %229, align 8, !tbaa !69
  %587 = icmp eq ptr %586, null
  br i1 %587, label %588, label %611

588:                                              ; preds = %584
  %589 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %590 = load ptr, ptr %589, align 8, !tbaa !55
  %591 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %592 = load ptr, ptr %591, align 8, !tbaa !58
  %593 = icmp ult ptr %590, %592
  br i1 %593, label %614, label %594

594:                                              ; preds = %588
  %595 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %596 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %597 = load i64, ptr %596, align 8, !tbaa !57
  %598 = load ptr, ptr %595, align 8, !tbaa !56
  %599 = ptrtoint ptr %590 to i64
  %600 = ptrtoint ptr %598 to i64
  %601 = sub i64 %599, %600
  %602 = shl i64 %597, 32
  %603 = and i64 %602, -35184372088832
  %604 = add i64 %603, 35184372088832
  %605 = ashr exact i64 %604, 32
  %606 = tail call ptr @Perl_safesysrealloc(ptr noundef %598, i64 noundef %605) #10
  store ptr %606, ptr %595, align 8, !tbaa !56
  store i64 %605, ptr %596, align 8, !tbaa !57
  %607 = shl i64 %601, 32
  %608 = ashr exact i64 %607, 32
  %609 = getelementptr inbounds i8, ptr %606, i64 %608
  store ptr %609, ptr %589, align 8, !tbaa !55
  %610 = getelementptr inbounds i8, ptr %606, i64 %605
  store ptr %610, ptr %591, align 8, !tbaa !58
  br label %614

611:                                              ; preds = %584
  %612 = tail call i32 @PerlIO_putc(ptr noundef nonnull %586, i32 noundef 10) #10
  %613 = icmp eq i32 %612, -1
  br i1 %613, label %908, label %617

614:                                              ; preds = %588, %594
  %615 = phi ptr [ %609, %594 ], [ %590, %588 ]
  %616 = getelementptr inbounds i8, ptr %615, i64 1
  store ptr %616, ptr %589, align 8, !tbaa !55
  store i8 10, ptr %615, align 1, !tbaa !41
  br label %617

617:                                              ; preds = %614, %611
  %618 = load ptr, ptr %229, align 8, !tbaa !69
  %619 = icmp eq ptr %618, null
  br i1 %619, label %620, label %643

620:                                              ; preds = %617
  %621 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %622 = load ptr, ptr %621, align 8, !tbaa !55
  %623 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %624 = load ptr, ptr %623, align 8, !tbaa !58
  %625 = icmp ult ptr %622, %624
  br i1 %625, label %647, label %626

626:                                              ; preds = %620
  %627 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %628 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %629 = load i64, ptr %628, align 8, !tbaa !57
  %630 = load ptr, ptr %627, align 8, !tbaa !56
  %631 = ptrtoint ptr %622 to i64
  %632 = ptrtoint ptr %630 to i64
  %633 = sub i64 %631, %632
  %634 = shl i64 %629, 32
  %635 = and i64 %634, -35184372088832
  %636 = add i64 %635, 35184372088832
  %637 = ashr exact i64 %636, 32
  %638 = tail call ptr @Perl_safesysrealloc(ptr noundef %630, i64 noundef %637) #10
  store ptr %638, ptr %627, align 8, !tbaa !56
  store i64 %637, ptr %628, align 8, !tbaa !57
  %639 = shl i64 %633, 32
  %640 = ashr exact i64 %639, 32
  %641 = getelementptr inbounds i8, ptr %638, i64 %640
  store ptr %641, ptr %621, align 8, !tbaa !55
  %642 = getelementptr inbounds i8, ptr %638, i64 %637
  store ptr %642, ptr %623, align 8, !tbaa !58
  br label %647

643:                                              ; preds = %617
  %644 = and i32 %268, 255
  %645 = tail call i32 @PerlIO_putc(ptr noundef nonnull %618, i32 noundef %644) #10
  %646 = icmp eq i32 %645, -1
  br i1 %646, label %908, label %650

647:                                              ; preds = %620, %626
  %648 = phi ptr [ %641, %626 ], [ %622, %620 ]
  %649 = getelementptr inbounds i8, ptr %648, i64 1
  store ptr %649, ptr %621, align 8, !tbaa !55
  store i8 %585, ptr %648, align 1, !tbaa !41
  br label %650

650:                                              ; preds = %647, %643
  %651 = load i32, ptr %3, align 4, !tbaa !43
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %902, label %653

653:                                              ; preds = %650
  %654 = load ptr, ptr %229, align 8, !tbaa !69
  %655 = icmp eq ptr %654, null
  br i1 %655, label %656, label %696

656:                                              ; preds = %653
  %657 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %658 = load ptr, ptr %657, align 8, !tbaa !55
  %659 = sext i32 %651 to i64
  %660 = getelementptr inbounds i8, ptr %658, i64 %659
  %661 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %662 = load ptr, ptr %661, align 8, !tbaa !58
  %663 = icmp ugt ptr %660, %662
  br i1 %663, label %664, label %682

664:                                              ; preds = %656
  %665 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %666 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %667 = load i64, ptr %666, align 8, !tbaa !57
  %668 = trunc i64 %667 to i32
  %669 = add i32 %651, 8191
  %670 = add i32 %669, %668
  %671 = and i32 %670, -8192
  %672 = load ptr, ptr %665, align 8, !tbaa !56
  %673 = ptrtoint ptr %658 to i64
  %674 = ptrtoint ptr %672 to i64
  %675 = sub i64 %673, %674
  %676 = sext i32 %671 to i64
  %677 = tail call ptr @Perl_safesysrealloc(ptr noundef %672, i64 noundef %676) #10
  store ptr %677, ptr %665, align 8, !tbaa !56
  store i64 %676, ptr %666, align 8, !tbaa !57
  %678 = shl i64 %675, 32
  %679 = ashr exact i64 %678, 32
  %680 = getelementptr inbounds i8, ptr %677, i64 %679
  store ptr %680, ptr %657, align 8, !tbaa !55
  %681 = getelementptr inbounds i8, ptr %677, i64 %676
  store ptr %681, ptr %661, align 8, !tbaa !58
  br label %682

682:                                              ; preds = %664, %656
  %683 = load ptr, ptr %657, align 8, !tbaa !55
  %684 = load i32, ptr %195, align 4, !tbaa !53
  %685 = and i32 %684, 2098176
  %686 = icmp eq i32 %685, 1024
  br i1 %686, label %687, label %690

687:                                              ; preds = %682
  %688 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %689 = load ptr, ptr %688, align 8, !tbaa !41
  br label %692

690:                                              ; preds = %682
  %691 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %190, ptr noundef null, i32 noundef 2) #10
  br label %692

692:                                              ; preds = %690, %687
  %693 = phi ptr [ %689, %687 ], [ %691, %690 ]
  %694 = load i32, ptr %3, align 4, !tbaa !43
  %695 = sext i32 %694 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %683, ptr align 1 %693, i64 %695, i1 false)
  br label %896

696:                                              ; preds = %653
  %697 = load i32, ptr %195, align 4, !tbaa !53
  %698 = and i32 %697, 2098176
  %699 = icmp eq i32 %698, 1024
  br i1 %699, label %700, label %703

700:                                              ; preds = %696
  %701 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %702 = load ptr, ptr %701, align 8, !tbaa !41
  br label %705

703:                                              ; preds = %696
  %704 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %190, ptr noundef null, i32 noundef 2) #10
  br label %705

705:                                              ; preds = %703, %700
  %706 = phi ptr [ %702, %700 ], [ %704, %703 ]
  %707 = load i32, ptr %3, align 4, !tbaa !43
  %708 = sext i32 %707 to i64
  %709 = tail call i64 @Perl_PerlIO_write(ptr noundef nonnull %654, ptr noundef %706, i64 noundef %708) #10
  %710 = load i32, ptr %3, align 4, !tbaa !43
  %711 = sext i32 %710 to i64
  %712 = icmp eq i64 %709, %711
  br i1 %712, label %902, label %908

713:                                              ; preds = %583
  %714 = load ptr, ptr %229, align 8, !tbaa !69
  %715 = icmp eq ptr %714, null
  br i1 %715, label %716, label %739

716:                                              ; preds = %713
  %717 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %718 = load ptr, ptr %717, align 8, !tbaa !55
  %719 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %720 = load ptr, ptr %719, align 8, !tbaa !58
  %721 = icmp ult ptr %718, %720
  br i1 %721, label %742, label %722

722:                                              ; preds = %716
  %723 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %724 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %725 = load i64, ptr %724, align 8, !tbaa !57
  %726 = load ptr, ptr %723, align 8, !tbaa !56
  %727 = ptrtoint ptr %718 to i64
  %728 = ptrtoint ptr %726 to i64
  %729 = sub i64 %727, %728
  %730 = shl i64 %725, 32
  %731 = and i64 %730, -35184372088832
  %732 = add i64 %731, 35184372088832
  %733 = ashr exact i64 %732, 32
  %734 = tail call ptr @Perl_safesysrealloc(ptr noundef %726, i64 noundef %733) #10
  store ptr %734, ptr %723, align 8, !tbaa !56
  store i64 %733, ptr %724, align 8, !tbaa !57
  %735 = shl i64 %729, 32
  %736 = ashr exact i64 %735, 32
  %737 = getelementptr inbounds i8, ptr %734, i64 %736
  store ptr %737, ptr %717, align 8, !tbaa !55
  %738 = getelementptr inbounds i8, ptr %734, i64 %733
  store ptr %738, ptr %719, align 8, !tbaa !58
  br label %742

739:                                              ; preds = %713
  %740 = tail call i32 @PerlIO_putc(ptr noundef nonnull %714, i32 noundef 1) #10
  %741 = icmp eq i32 %740, -1
  br i1 %741, label %908, label %745

742:                                              ; preds = %716, %722
  %743 = phi ptr [ %737, %722 ], [ %718, %716 ]
  %744 = getelementptr inbounds i8, ptr %743, i64 1
  store ptr %744, ptr %717, align 8, !tbaa !55
  store i8 1, ptr %743, align 1, !tbaa !41
  br label %745

745:                                              ; preds = %742, %739
  %746 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %747 = load i32, ptr %746, align 8, !tbaa !62
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %794, label %749

749:                                              ; preds = %745
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %750 = load i32, ptr %3, align 4, !tbaa !43
  %751 = tail call i32 @llvm.bswap.i32(i32 %750)
  store i32 %751, ptr %5, align 4, !tbaa !43
  %752 = load ptr, ptr %229, align 8, !tbaa !69
  %753 = icmp eq ptr %752, null
  br i1 %753, label %754, label %789

754:                                              ; preds = %749
  %755 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %756 = load ptr, ptr %755, align 8, !tbaa !55
  %757 = getelementptr inbounds i8, ptr %756, i64 4
  %758 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %759 = load ptr, ptr %758, align 8, !tbaa !58
  %760 = icmp ugt ptr %757, %759
  br i1 %760, label %761, label %778

761:                                              ; preds = %754
  %762 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %763 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %764 = load i64, ptr %763, align 8, !tbaa !57
  %765 = load ptr, ptr %762, align 8, !tbaa !56
  %766 = ptrtoint ptr %756 to i64
  %767 = ptrtoint ptr %765 to i64
  %768 = sub i64 %766, %767
  %769 = shl i64 %764, 32
  %770 = add i64 %769, 35197256990720
  %771 = ashr exact i64 %770, 32
  %772 = and i64 %771, -8192
  %773 = tail call ptr @Perl_safesysrealloc(ptr noundef %765, i64 noundef %772) #10
  store ptr %773, ptr %762, align 8, !tbaa !56
  store i64 %772, ptr %763, align 8, !tbaa !57
  %774 = shl i64 %768, 32
  %775 = ashr exact i64 %774, 32
  %776 = getelementptr inbounds i8, ptr %773, i64 %775
  store ptr %776, ptr %755, align 8, !tbaa !55
  %777 = getelementptr inbounds i8, ptr %773, i64 %772
  store ptr %777, ptr %758, align 8, !tbaa !58
  br label %778

778:                                              ; preds = %761, %754
  %779 = load ptr, ptr %755, align 8, !tbaa !55
  %780 = ptrtoint ptr %779 to i64
  %781 = and i64 %780, 3
  %782 = icmp eq i64 %781, 0
  %783 = load i32, ptr %5, align 4
  br i1 %782, label %784, label %785

784:                                              ; preds = %778
  store i32 %783, ptr %779, align 4, !tbaa !43
  br label %786

785:                                              ; preds = %778
  store i32 %783, ptr %779, align 1
  br label %786

786:                                              ; preds = %785, %784
  %787 = load ptr, ptr %755, align 8, !tbaa !55
  %788 = getelementptr inbounds i8, ptr %787, i64 4
  store ptr %788, ptr %755, align 8, !tbaa !55
  br label %792

789:                                              ; preds = %749
  %790 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %752, ptr noundef nonnull %5, i64 noundef 4) #10
  %791 = icmp eq i64 %790, 4
  br i1 %791, label %792, label %793

792:                                              ; preds = %789, %786
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %835

793:                                              ; preds = %789
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %908

794:                                              ; preds = %745
  %795 = load ptr, ptr %229, align 8, !tbaa !69
  %796 = icmp eq ptr %795, null
  br i1 %796, label %797, label %832

797:                                              ; preds = %794
  %798 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %799 = load ptr, ptr %798, align 8, !tbaa !55
  %800 = getelementptr inbounds i8, ptr %799, i64 4
  %801 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %802 = load ptr, ptr %801, align 8, !tbaa !58
  %803 = icmp ugt ptr %800, %802
  br i1 %803, label %804, label %821

804:                                              ; preds = %797
  %805 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %806 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %807 = load i64, ptr %806, align 8, !tbaa !57
  %808 = load ptr, ptr %805, align 8, !tbaa !56
  %809 = ptrtoint ptr %799 to i64
  %810 = ptrtoint ptr %808 to i64
  %811 = sub i64 %809, %810
  %812 = shl i64 %807, 32
  %813 = add i64 %812, 35197256990720
  %814 = ashr exact i64 %813, 32
  %815 = and i64 %814, -8192
  %816 = tail call ptr @Perl_safesysrealloc(ptr noundef %808, i64 noundef %815) #10
  store ptr %816, ptr %805, align 8, !tbaa !56
  store i64 %815, ptr %806, align 8, !tbaa !57
  %817 = shl i64 %811, 32
  %818 = ashr exact i64 %817, 32
  %819 = getelementptr inbounds i8, ptr %816, i64 %818
  store ptr %819, ptr %798, align 8, !tbaa !55
  %820 = getelementptr inbounds i8, ptr %816, i64 %815
  store ptr %820, ptr %801, align 8, !tbaa !58
  br label %821

821:                                              ; preds = %804, %797
  %822 = load ptr, ptr %798, align 8, !tbaa !55
  %823 = ptrtoint ptr %822 to i64
  %824 = and i64 %823, 3
  %825 = icmp eq i64 %824, 0
  %826 = load i32, ptr %3, align 4
  br i1 %825, label %827, label %828

827:                                              ; preds = %821
  store i32 %826, ptr %822, align 4, !tbaa !43
  br label %829

828:                                              ; preds = %821
  store i32 %826, ptr %822, align 1
  br label %829

829:                                              ; preds = %828, %827
  %830 = load ptr, ptr %798, align 8, !tbaa !55
  %831 = getelementptr inbounds i8, ptr %830, i64 4
  store ptr %831, ptr %798, align 8, !tbaa !55
  br label %835

832:                                              ; preds = %794
  %833 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %795, ptr noundef nonnull %3, i64 noundef 4) #10
  %834 = icmp eq i64 %833, 4
  br i1 %834, label %835, label %908

835:                                              ; preds = %792, %832, %829
  %836 = load ptr, ptr %229, align 8, !tbaa !69
  %837 = icmp eq ptr %836, null
  br i1 %837, label %838, label %879

838:                                              ; preds = %835
  %839 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %840 = load ptr, ptr %839, align 8, !tbaa !55
  %841 = load i32, ptr %3, align 4, !tbaa !43
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds i8, ptr %840, i64 %842
  %844 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %845 = load ptr, ptr %844, align 8, !tbaa !58
  %846 = icmp ugt ptr %843, %845
  br i1 %846, label %847, label %865

847:                                              ; preds = %838
  %848 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %849 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %850 = load i64, ptr %849, align 8, !tbaa !57
  %851 = trunc i64 %850 to i32
  %852 = add i32 %841, 8191
  %853 = add i32 %852, %851
  %854 = and i32 %853, -8192
  %855 = load ptr, ptr %848, align 8, !tbaa !56
  %856 = ptrtoint ptr %840 to i64
  %857 = ptrtoint ptr %855 to i64
  %858 = sub i64 %856, %857
  %859 = sext i32 %854 to i64
  %860 = call ptr @Perl_safesysrealloc(ptr noundef %855, i64 noundef %859) #10
  store ptr %860, ptr %848, align 8, !tbaa !56
  store i64 %859, ptr %849, align 8, !tbaa !57
  %861 = shl i64 %858, 32
  %862 = ashr exact i64 %861, 32
  %863 = getelementptr inbounds i8, ptr %860, i64 %862
  store ptr %863, ptr %839, align 8, !tbaa !55
  %864 = getelementptr inbounds i8, ptr %860, i64 %859
  store ptr %864, ptr %844, align 8, !tbaa !58
  br label %865

865:                                              ; preds = %847, %838
  %866 = load ptr, ptr %839, align 8, !tbaa !55
  %867 = load i32, ptr %195, align 4, !tbaa !53
  %868 = and i32 %867, 2098176
  %869 = icmp eq i32 %868, 1024
  br i1 %869, label %870, label %873

870:                                              ; preds = %865
  %871 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %872 = load ptr, ptr %871, align 8, !tbaa !41
  br label %875

873:                                              ; preds = %865
  %874 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %190, ptr noundef null, i32 noundef 2) #10
  br label %875

875:                                              ; preds = %873, %870
  %876 = phi ptr [ %872, %870 ], [ %874, %873 ]
  %877 = load i32, ptr %3, align 4, !tbaa !43
  %878 = sext i32 %877 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %866, ptr align 1 %876, i64 %878, i1 false)
  br label %896

879:                                              ; preds = %835
  %880 = load i32, ptr %195, align 4, !tbaa !53
  %881 = and i32 %880, 2098176
  %882 = icmp eq i32 %881, 1024
  br i1 %882, label %883, label %886

883:                                              ; preds = %879
  %884 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %885 = load ptr, ptr %884, align 8, !tbaa !41
  br label %888

886:                                              ; preds = %879
  %887 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %190, ptr noundef null, i32 noundef 2) #10
  br label %888

888:                                              ; preds = %886, %883
  %889 = phi ptr [ %885, %883 ], [ %887, %886 ]
  %890 = load i32, ptr %3, align 4, !tbaa !43
  %891 = sext i32 %890 to i64
  %892 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %836, ptr noundef %889, i64 noundef %891) #10
  %893 = load i32, ptr %3, align 4, !tbaa !43
  %894 = sext i32 %893 to i64
  %895 = icmp eq i64 %892, %894
  br i1 %895, label %902, label %908

896:                                              ; preds = %562, %875, %379, %692
  %897 = phi ptr [ %657, %692 ], [ %344, %379 ], [ %839, %875 ], [ %526, %562 ]
  %898 = load i32, ptr %3, align 4, !tbaa !43
  %899 = load ptr, ptr %897, align 8, !tbaa !55
  %900 = sext i32 %898 to i64
  %901 = getelementptr inbounds i8, ptr %899, i64 %900
  store ptr %901, ptr %897, align 8, !tbaa !55
  br label %902

902:                                              ; preds = %896, %650, %705, %337, %392, %888, %575
  %903 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !82
  %904 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !82
  %905 = icmp sgt i64 %903, %904
  br i1 %905, label %906, label %907

906:                                              ; preds = %902
  call void @Perl_free_tmps() #10
  br label %907

907:                                              ; preds = %906, %902
  call void @Perl_pop_scope() #10
  br label %908

908:                                              ; preds = %888, %705, %643, %575, %392, %832, %793, %739, %611, %519, %480, %426, %298, %330, %255, %907, %109
  %909 = phi i32 [ %110, %109 ], [ 0, %907 ], [ -1, %480 ], [ -1, %793 ], [ -1, %255 ], [ -1, %330 ], [ -1, %298 ], [ -1, %426 ], [ -1, %519 ], [ -1, %611 ], [ -1, %739 ], [ -1, %832 ], [ -1, %392 ], [ -1, %575 ], [ -1, %643 ], [ -1, %705 ], [ -1, %888 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %909
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @store_other(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca [80 x i8], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #10
  %6 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %109, label %9

9:                                                ; preds = %2
  %10 = icmp slt i32 %7, 0
  br i1 %10, label %11, label %113

11:                                               ; preds = %9
  %12 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %108, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !53
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  %20 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  br i1 %19, label %23, label %21

21:                                               ; preds = %14
  %22 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %20, i32 noundef 2) #10
  br label %105

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = and i32 %25, 65280
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %30 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !53
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !53
  %38 = and i32 %37, 16826623
  %39 = icmp eq i32 %38, 16777226
  br i1 %39, label %40, label %108

40:                                               ; preds = %34, %28, %23
  %41 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !53
  %44 = and i32 %43, 1024
  %45 = icmp eq i32 %44, 0
  %46 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  br i1 %45, label %68, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %46, align 8, !tbaa !85
  %49 = icmp eq ptr %48, null
  br i1 %49, label %108, label %50

50:                                               ; preds = %47
  %51 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %52 = load ptr, ptr %51, align 8, !tbaa !85
  %53 = getelementptr inbounds %struct.xpv, ptr %52, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !107
  %55 = icmp ugt i64 %54, 1
  br i1 %55, label %112, label %56

56:                                               ; preds = %50
  %57 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %58 = load ptr, ptr %57, align 8, !tbaa !85
  %59 = getelementptr inbounds %struct.xpv, ptr %58, i64 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !107
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %108, label %62

62:                                               ; preds = %56
  %63 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %64 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !41
  %66 = load i8, ptr %65, align 1, !tbaa !41
  %67 = icmp ne i8 %66, 48
  br label %105

68:                                               ; preds = %40
  %69 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !53
  %71 = and i32 %70, 768
  %72 = icmp eq i32 %71, 0
  %73 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  br i1 %72, label %103, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.sv, ptr %73, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !53
  %77 = and i32 %76, 256
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %81 = load ptr, ptr %80, align 8, !tbaa !85
  %82 = getelementptr inbounds %struct.xpviv, ptr %81, i64 0, i32 4
  %83 = load i64, ptr %82, align 8, !tbaa !41
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %79, %74
  %86 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %87 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !53
  %89 = and i32 %88, 512
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %85
  %92 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %93 = load ptr, ptr %92, align 8, !tbaa !85
  %94 = getelementptr inbounds %struct.xpvnv, ptr %93, i64 0, i32 5
  %95 = load double, ptr %94, align 8, !tbaa !41
  %96 = fcmp uno double %95, 0.000000e+00
  br i1 %96, label %112, label %97

97:                                               ; preds = %91
  %98 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %99 = load ptr, ptr %98, align 8, !tbaa !85
  %100 = getelementptr inbounds %struct.xpvnv, ptr %99, i64 0, i32 5
  %101 = load double, ptr %100, align 8, !tbaa !41
  %102 = fcmp une double %101, 0.000000e+00
  br label %105

103:                                              ; preds = %68
  %104 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %73, i32 noundef 0) #10
  br label %105

105:                                              ; preds = %21, %103, %62, %97
  %106 = phi i1 [ %22, %21 ], [ %104, %103 ], [ %67, %62 ], [ %102, %97 ]
  %107 = zext i1 %106 to i32
  store i32 %107, ptr %6, align 8, !tbaa !64
  br i1 %106, label %113, label %109

108:                                              ; preds = %85, %56, %47, %34, %11
  store i32 0, ptr %6, align 8, !tbaa !64
  br label %109

109:                                              ; preds = %108, %2, %105
  %110 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %110, align 8, !tbaa !50
  %111 = tail call ptr @Perl_sv_reftype(ptr noundef %1, i32 noundef 0) #10
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.50, ptr noundef %111) #10
  br label %113

112:                                              ; preds = %91, %79, %50
  store i32 1, ptr %6, align 8, !tbaa !64
  br label %113

113:                                              ; preds = %112, %109, %105, %9
  %114 = tail call ptr @Perl_sv_reftype(ptr noundef %1, i32 noundef 0) #10
  %115 = ptrtoint ptr %1 to i64
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.51, ptr noundef %114, i64 noundef %115) #10
  %116 = tail call ptr @Perl_sv_reftype(ptr noundef %1, i32 noundef 0) #10
  %117 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef %116, i64 noundef %115, i32 noundef 0) #10
  %118 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #11
  %119 = trunc i64 %118 to i32
  store i32 %119, ptr %3, align 4, !tbaa !43
  %120 = icmp slt i32 %119, 256
  br i1 %120, label %121, label %230

121:                                              ; preds = %113
  %122 = trunc i64 %118 to i8
  %123 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %124 = load ptr, ptr %123, align 8, !tbaa !69
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %149

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !55
  %129 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !58
  %131 = icmp ult ptr %128, %130
  br i1 %131, label %152, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %134 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %135 = load i64, ptr %134, align 8, !tbaa !57
  %136 = load ptr, ptr %133, align 8, !tbaa !56
  %137 = ptrtoint ptr %128 to i64
  %138 = ptrtoint ptr %136 to i64
  %139 = sub i64 %137, %138
  %140 = shl i64 %135, 32
  %141 = and i64 %140, -35184372088832
  %142 = add i64 %141, 35184372088832
  %143 = ashr exact i64 %142, 32
  %144 = tail call ptr @Perl_safesysrealloc(ptr noundef %136, i64 noundef %143) #10
  store ptr %144, ptr %133, align 8, !tbaa !56
  store i64 %143, ptr %134, align 8, !tbaa !57
  %145 = shl i64 %139, 32
  %146 = ashr exact i64 %145, 32
  %147 = getelementptr inbounds i8, ptr %144, i64 %146
  store ptr %147, ptr %127, align 8, !tbaa !55
  %148 = getelementptr inbounds i8, ptr %144, i64 %143
  store ptr %148, ptr %129, align 8, !tbaa !58
  br label %152

149:                                              ; preds = %121
  %150 = tail call i32 @PerlIO_putc(ptr noundef nonnull %124, i32 noundef 10) #10
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %401, label %155

152:                                              ; preds = %126, %132
  %153 = phi ptr [ %147, %132 ], [ %128, %126 ]
  %154 = getelementptr inbounds i8, ptr %153, i64 1
  store ptr %154, ptr %127, align 8, !tbaa !55
  store i8 10, ptr %153, align 1, !tbaa !41
  br label %155

155:                                              ; preds = %152, %149
  %156 = load ptr, ptr %123, align 8, !tbaa !69
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %181

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !55
  %161 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !58
  %163 = icmp ult ptr %160, %162
  br i1 %163, label %185, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %166 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %167 = load i64, ptr %166, align 8, !tbaa !57
  %168 = load ptr, ptr %165, align 8, !tbaa !56
  %169 = ptrtoint ptr %160 to i64
  %170 = ptrtoint ptr %168 to i64
  %171 = sub i64 %169, %170
  %172 = shl i64 %167, 32
  %173 = and i64 %172, -35184372088832
  %174 = add i64 %173, 35184372088832
  %175 = ashr exact i64 %174, 32
  %176 = tail call ptr @Perl_safesysrealloc(ptr noundef %168, i64 noundef %175) #10
  store ptr %176, ptr %165, align 8, !tbaa !56
  store i64 %175, ptr %166, align 8, !tbaa !57
  %177 = shl i64 %171, 32
  %178 = ashr exact i64 %177, 32
  %179 = getelementptr inbounds i8, ptr %176, i64 %178
  store ptr %179, ptr %159, align 8, !tbaa !55
  %180 = getelementptr inbounds i8, ptr %176, i64 %175
  store ptr %180, ptr %161, align 8, !tbaa !58
  br label %185

181:                                              ; preds = %155
  %182 = and i32 %119, 255
  %183 = tail call i32 @PerlIO_putc(ptr noundef nonnull %156, i32 noundef %182) #10
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %401, label %188

185:                                              ; preds = %158, %164
  %186 = phi ptr [ %179, %164 ], [ %160, %158 ]
  %187 = getelementptr inbounds i8, ptr %186, i64 1
  store ptr %187, ptr %159, align 8, !tbaa !55
  store i8 %122, ptr %186, align 1, !tbaa !41
  br label %188

188:                                              ; preds = %185, %181
  %189 = load i32, ptr %3, align 4, !tbaa !43
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %400, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %123, align 8, !tbaa !69
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %224

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !55
  %197 = sext i32 %189 to i64
  %198 = getelementptr inbounds i8, ptr %196, i64 %197
  %199 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !58
  %201 = icmp ugt ptr %198, %200
  br i1 %201, label %202, label %220

202:                                              ; preds = %194
  %203 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %204 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %205 = load i64, ptr %204, align 8, !tbaa !57
  %206 = trunc i64 %205 to i32
  %207 = add i32 %189, 8191
  %208 = add i32 %207, %206
  %209 = and i32 %208, -8192
  %210 = load ptr, ptr %203, align 8, !tbaa !56
  %211 = ptrtoint ptr %196 to i64
  %212 = ptrtoint ptr %210 to i64
  %213 = sub i64 %211, %212
  %214 = sext i32 %209 to i64
  %215 = tail call ptr @Perl_safesysrealloc(ptr noundef %210, i64 noundef %214) #10
  store ptr %215, ptr %203, align 8, !tbaa !56
  store i64 %214, ptr %204, align 8, !tbaa !57
  %216 = shl i64 %213, 32
  %217 = ashr exact i64 %216, 32
  %218 = getelementptr inbounds i8, ptr %215, i64 %217
  store ptr %218, ptr %195, align 8, !tbaa !55
  %219 = getelementptr inbounds i8, ptr %215, i64 %214
  store ptr %219, ptr %199, align 8, !tbaa !58
  br label %220

220:                                              ; preds = %202, %194
  %221 = load ptr, ptr %195, align 8, !tbaa !55
  %222 = load i32, ptr %3, align 4, !tbaa !43
  %223 = sext i32 %222 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %221, ptr nonnull align 16 %4, i64 %223, i1 false)
  br label %394

224:                                              ; preds = %191
  %225 = sext i32 %189 to i64
  %226 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %192, ptr noundef nonnull %4, i64 noundef %225) #10
  %227 = load i32, ptr %3, align 4, !tbaa !43
  %228 = sext i32 %227 to i64
  %229 = icmp eq i64 %226, %228
  br i1 %229, label %400, label %401

230:                                              ; preds = %113
  %231 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %232 = load ptr, ptr %231, align 8, !tbaa !69
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %257

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !55
  %237 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !58
  %239 = icmp ult ptr %236, %238
  br i1 %239, label %260, label %240

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %242 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %243 = load i64, ptr %242, align 8, !tbaa !57
  %244 = load ptr, ptr %241, align 8, !tbaa !56
  %245 = ptrtoint ptr %236 to i64
  %246 = ptrtoint ptr %244 to i64
  %247 = sub i64 %245, %246
  %248 = shl i64 %243, 32
  %249 = and i64 %248, -35184372088832
  %250 = add i64 %249, 35184372088832
  %251 = ashr exact i64 %250, 32
  %252 = tail call ptr @Perl_safesysrealloc(ptr noundef %244, i64 noundef %251) #10
  store ptr %252, ptr %241, align 8, !tbaa !56
  store i64 %251, ptr %242, align 8, !tbaa !57
  %253 = shl i64 %247, 32
  %254 = ashr exact i64 %253, 32
  %255 = getelementptr inbounds i8, ptr %252, i64 %254
  store ptr %255, ptr %235, align 8, !tbaa !55
  %256 = getelementptr inbounds i8, ptr %252, i64 %251
  store ptr %256, ptr %237, align 8, !tbaa !58
  br label %260

257:                                              ; preds = %230
  %258 = tail call i32 @PerlIO_putc(ptr noundef nonnull %232, i32 noundef 1) #10
  %259 = icmp eq i32 %258, -1
  br i1 %259, label %401, label %263

260:                                              ; preds = %234, %240
  %261 = phi ptr [ %255, %240 ], [ %236, %234 ]
  %262 = getelementptr inbounds i8, ptr %261, i64 1
  store ptr %262, ptr %235, align 8, !tbaa !55
  store i8 1, ptr %261, align 1, !tbaa !41
  br label %263

263:                                              ; preds = %260, %257
  %264 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %265 = load i32, ptr %264, align 8, !tbaa !62
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %312, label %267

267:                                              ; preds = %263
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %268 = load i32, ptr %3, align 4, !tbaa !43
  %269 = tail call i32 @llvm.bswap.i32(i32 %268)
  store i32 %269, ptr %5, align 4, !tbaa !43
  %270 = load ptr, ptr %231, align 8, !tbaa !69
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %307

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !55
  %275 = getelementptr inbounds i8, ptr %274, i64 4
  %276 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %277 = load ptr, ptr %276, align 8, !tbaa !58
  %278 = icmp ugt ptr %275, %277
  br i1 %278, label %279, label %296

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %281 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %282 = load i64, ptr %281, align 8, !tbaa !57
  %283 = load ptr, ptr %280, align 8, !tbaa !56
  %284 = ptrtoint ptr %274 to i64
  %285 = ptrtoint ptr %283 to i64
  %286 = sub i64 %284, %285
  %287 = shl i64 %282, 32
  %288 = add i64 %287, 35197256990720
  %289 = ashr exact i64 %288, 32
  %290 = and i64 %289, -8192
  %291 = tail call ptr @Perl_safesysrealloc(ptr noundef %283, i64 noundef %290) #10
  store ptr %291, ptr %280, align 8, !tbaa !56
  store i64 %290, ptr %281, align 8, !tbaa !57
  %292 = shl i64 %286, 32
  %293 = ashr exact i64 %292, 32
  %294 = getelementptr inbounds i8, ptr %291, i64 %293
  store ptr %294, ptr %273, align 8, !tbaa !55
  %295 = getelementptr inbounds i8, ptr %291, i64 %290
  store ptr %295, ptr %276, align 8, !tbaa !58
  br label %296

296:                                              ; preds = %279, %272
  %297 = load ptr, ptr %273, align 8, !tbaa !55
  %298 = ptrtoint ptr %297 to i64
  %299 = and i64 %298, 3
  %300 = icmp eq i64 %299, 0
  %301 = load i32, ptr %5, align 4
  br i1 %300, label %302, label %303

302:                                              ; preds = %296
  store i32 %301, ptr %297, align 4, !tbaa !43
  br label %304

303:                                              ; preds = %296
  store i32 %301, ptr %297, align 1
  br label %304

304:                                              ; preds = %303, %302
  %305 = load ptr, ptr %273, align 8, !tbaa !55
  %306 = getelementptr inbounds i8, ptr %305, i64 4
  store ptr %306, ptr %273, align 8, !tbaa !55
  br label %310

307:                                              ; preds = %267
  %308 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %270, ptr noundef nonnull %5, i64 noundef 4) #10
  %309 = icmp eq i64 %308, 4
  br i1 %309, label %310, label %311

310:                                              ; preds = %307, %304
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %353

311:                                              ; preds = %307
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %401

312:                                              ; preds = %263
  %313 = load ptr, ptr %231, align 8, !tbaa !69
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %350

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !55
  %318 = getelementptr inbounds i8, ptr %317, i64 4
  %319 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %320 = load ptr, ptr %319, align 8, !tbaa !58
  %321 = icmp ugt ptr %318, %320
  br i1 %321, label %322, label %339

322:                                              ; preds = %315
  %323 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %324 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %325 = load i64, ptr %324, align 8, !tbaa !57
  %326 = load ptr, ptr %323, align 8, !tbaa !56
  %327 = ptrtoint ptr %317 to i64
  %328 = ptrtoint ptr %326 to i64
  %329 = sub i64 %327, %328
  %330 = shl i64 %325, 32
  %331 = add i64 %330, 35197256990720
  %332 = ashr exact i64 %331, 32
  %333 = and i64 %332, -8192
  %334 = tail call ptr @Perl_safesysrealloc(ptr noundef %326, i64 noundef %333) #10
  store ptr %334, ptr %323, align 8, !tbaa !56
  store i64 %333, ptr %324, align 8, !tbaa !57
  %335 = shl i64 %329, 32
  %336 = ashr exact i64 %335, 32
  %337 = getelementptr inbounds i8, ptr %334, i64 %336
  store ptr %337, ptr %316, align 8, !tbaa !55
  %338 = getelementptr inbounds i8, ptr %334, i64 %333
  store ptr %338, ptr %319, align 8, !tbaa !58
  br label %339

339:                                              ; preds = %322, %315
  %340 = load ptr, ptr %316, align 8, !tbaa !55
  %341 = ptrtoint ptr %340 to i64
  %342 = and i64 %341, 3
  %343 = icmp eq i64 %342, 0
  %344 = load i32, ptr %3, align 4
  br i1 %343, label %345, label %346

345:                                              ; preds = %339
  store i32 %344, ptr %340, align 4, !tbaa !43
  br label %347

346:                                              ; preds = %339
  store i32 %344, ptr %340, align 1
  br label %347

347:                                              ; preds = %346, %345
  %348 = load ptr, ptr %316, align 8, !tbaa !55
  %349 = getelementptr inbounds i8, ptr %348, i64 4
  store ptr %349, ptr %316, align 8, !tbaa !55
  br label %353

350:                                              ; preds = %312
  %351 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %313, ptr noundef nonnull %3, i64 noundef 4) #10
  %352 = icmp eq i64 %351, 4
  br i1 %352, label %353, label %401

353:                                              ; preds = %310, %350, %347
  %354 = load ptr, ptr %231, align 8, !tbaa !69
  %355 = icmp eq ptr %354, null
  br i1 %355, label %356, label %387

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %358 = load ptr, ptr %357, align 8, !tbaa !55
  %359 = load i32, ptr %3, align 4, !tbaa !43
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, ptr %358, i64 %360
  %362 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %363 = load ptr, ptr %362, align 8, !tbaa !58
  %364 = icmp ugt ptr %361, %363
  br i1 %364, label %365, label %383

365:                                              ; preds = %356
  %366 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %367 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %368 = load i64, ptr %367, align 8, !tbaa !57
  %369 = trunc i64 %368 to i32
  %370 = add i32 %359, 8191
  %371 = add i32 %370, %369
  %372 = and i32 %371, -8192
  %373 = load ptr, ptr %366, align 8, !tbaa !56
  %374 = ptrtoint ptr %358 to i64
  %375 = ptrtoint ptr %373 to i64
  %376 = sub i64 %374, %375
  %377 = sext i32 %372 to i64
  %378 = call ptr @Perl_safesysrealloc(ptr noundef %373, i64 noundef %377) #10
  store ptr %378, ptr %366, align 8, !tbaa !56
  store i64 %377, ptr %367, align 8, !tbaa !57
  %379 = shl i64 %376, 32
  %380 = ashr exact i64 %379, 32
  %381 = getelementptr inbounds i8, ptr %378, i64 %380
  store ptr %381, ptr %357, align 8, !tbaa !55
  %382 = getelementptr inbounds i8, ptr %378, i64 %377
  store ptr %382, ptr %362, align 8, !tbaa !58
  br label %383

383:                                              ; preds = %365, %356
  %384 = load ptr, ptr %357, align 8, !tbaa !55
  %385 = load i32, ptr %3, align 4, !tbaa !43
  %386 = sext i32 %385 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %384, ptr nonnull align 16 %4, i64 %386, i1 false)
  br label %394

387:                                              ; preds = %353
  %388 = load i32, ptr %3, align 4, !tbaa !43
  %389 = sext i32 %388 to i64
  %390 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %354, ptr noundef nonnull %4, i64 noundef %389) #10
  %391 = load i32, ptr %3, align 4, !tbaa !43
  %392 = sext i32 %391 to i64
  %393 = icmp eq i64 %390, %392
  br i1 %393, label %400, label %401

394:                                              ; preds = %383, %220
  %395 = phi ptr [ %195, %220 ], [ %357, %383 ]
  %396 = load i32, ptr %3, align 4, !tbaa !43
  %397 = load ptr, ptr %395, align 8, !tbaa !55
  %398 = sext i32 %396 to i64
  %399 = getelementptr inbounds i8, ptr %397, i64 %398
  store ptr %399, ptr %395, align 8, !tbaa !55
  br label %400

400:                                              ; preds = %394, %188, %224, %387
  br label %401

401:                                              ; preds = %387, %224, %350, %311, %257, %149, %181, %400
  %402 = phi i32 [ 0, %400 ], [ -1, %311 ], [ -1, %181 ], [ -1, %149 ], [ -1, %257 ], [ -1, %350 ], [ -1, %224 ], [ -1, %387 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %402
}

declare i32 @Perl_Gv_AMupdate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_av_len(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

declare void @Perl_sortsv(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_sv_cmp(ptr noundef, ptr noundef) #2

declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_av_shift(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_bytes_from_utf8(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iterval(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_hv_riter_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_hv_eiter_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_load_module(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVnv(double noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_call_method(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_ptr_table_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @do_retrieve(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !34 {
  %4 = alloca [259 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = load ptr, ptr @Context_ptr, align 8, !tbaa !42
  %9 = or i32 %2, 2
  %10 = getelementptr inbounds %struct.stcxt, ptr %8, i64 0, i32 19
  %11 = load i32, ptr %10, align 8, !tbaa !50
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  tail call fastcc void @clean_context(ptr noundef %8)
  br label %14

14:                                               ; preds = %13, %3
  %15 = load i32, ptr %8, align 8, !tbaa !60
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @allocate_context(ptr noundef nonnull %8)
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %18, %17 ], [ %8, %14 ]
  %21 = load i32, ptr %20, align 8, !tbaa !60
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !96
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = tail call ptr @Perl_safesysmalloc(i64 noundef 128) #10
  store ptr %27, ptr %23, align 8, !tbaa !96
  %28 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 21, i32 1
  store i64 128, ptr %28, align 8, !tbaa !137
  br label %29

29:                                               ; preds = %26, %19
  %30 = icmp eq ptr %0, null
  %31 = icmp ne ptr %1, null
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %111

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !53
  %36 = and i32 %35, 536870912
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %79, label %38

38:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %39 = and i32 %35, 2098176
  %40 = icmp eq i32 %39, 1024
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load ptr, ptr %1, align 8, !tbaa !85
  %43 = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !107
  store i64 %44, ptr %5, align 8, !tbaa !82
  %45 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !41
  br label %49

47:                                               ; preds = %38
  %48 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 2) #10
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi ptr [ %46, %41 ], [ %48, %47 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %51 = load i64, ptr %5, align 8, !tbaa !82
  %52 = add i64 %51, 1
  store i64 %52, ptr %6, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 1, ptr %7, align 1, !tbaa !129
  %53 = call ptr @Perl_bytes_from_utf8(ptr noundef %50, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %54 = load i8, ptr %7, align 1, !tbaa !129, !range !138, !noundef !101
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 19
  store i32 1, ptr %57, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55) #10
  br label %58

58:                                               ; preds = %56, %49
  %59 = icmp eq ptr %53, %50
  br i1 %59, label %77, label %60

60:                                               ; preds = %58
  %61 = call ptr @Perl_sv_newmortal() #10
  %62 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !53
  %64 = and i32 %63, 255
  %65 = icmp ugt i32 %64, 2
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  call void @Perl_sv_upgrade(ptr noundef %61, i32 noundef 3) #10
  br label %67

67:                                               ; preds = %66, %60
  %68 = load i32, ptr %62, align 4, !tbaa !53
  %69 = or i32 %68, 17408
  store i32 %69, ptr %62, align 4, !tbaa !53
  %70 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 3
  store ptr %53, ptr %70, align 8, !tbaa !41
  %71 = load i64, ptr %6, align 8, !tbaa !82
  %72 = load ptr, ptr %61, align 8, !tbaa !85
  %73 = getelementptr inbounds %struct.xpv, ptr %72, i64 0, i32 3
  store i64 %71, ptr %73, align 8, !tbaa !41
  %74 = add i64 %71, -1
  %75 = load ptr, ptr %61, align 8, !tbaa !85
  %76 = getelementptr inbounds %struct.xpv, ptr %75, i64 0, i32 2
  store i64 %74, ptr %76, align 8, !tbaa !107
  br label %77

77:                                               ; preds = %67, %58
  %78 = phi ptr [ %61, %67 ], [ %1, %58 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %79

79:                                               ; preds = %33, %77
  %80 = phi ptr [ %78, %77 ], [ %1, %33 ]
  %81 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 20
  store i32 1, ptr %81, align 4, !tbaa !80
  %82 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 23
  %83 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 8 dereferenceable(32) %83, i64 32, i1 false), !tbaa.struct !81
  %84 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !53
  %86 = and i32 %85, 16384
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 19
  store i32 1, ptr %89, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.56) #10
  br label %90

90:                                               ; preds = %88, %79
  %91 = load i32, ptr %84, align 4, !tbaa !53
  %92 = and i32 %91, 2098176
  %93 = icmp eq i32 %92, 1024
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load ptr, ptr %80, align 8, !tbaa !85
  %96 = getelementptr inbounds %struct.xpv, ptr %95, i64 0, i32 2
  %97 = load i64, ptr %96, align 8, !tbaa !107
  %98 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 1
  store i64 %97, ptr %98, align 8, !tbaa !57
  %99 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !41
  br label %104

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 1
  %103 = call ptr @Perl_sv_2pv_flags(ptr noundef %80, ptr noundef nonnull %102, i32 noundef 2) #10
  br label %104

104:                                              ; preds = %101, %94
  %105 = phi ptr [ %100, %94 ], [ %103, %101 ]
  store ptr %105, ptr %83, align 8, !tbaa !56
  %106 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 2
  store ptr %105, ptr %106, align 8, !tbaa !55
  %107 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !57
  %109 = getelementptr inbounds i8, ptr %105, i64 %108
  %110 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 3
  store ptr %109, ptr %110, align 8, !tbaa !58
  br label %111

111:                                              ; preds = %104, %29
  %112 = phi ptr [ %80, %104 ], [ %1, %29 ]
  %113 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 24
  store ptr %0, ptr %113, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 259, ptr nonnull %4) #10
  %114 = load ptr, ptr %113, align 8, !tbaa !69
  %115 = icmp eq ptr %114, null
  br i1 %115, label %155, label %116

116:                                              ; preds = %111
  %117 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %114, ptr noundef nonnull %4, i64 noundef 5) #10
  %118 = icmp eq i64 %117, 5
  br i1 %118, label %119, label %151

119:                                              ; preds = %116
  %120 = getelementptr inbounds i8, ptr %4, i64 4
  %121 = load i32, ptr %4, align 16
  %122 = icmp eq i32 %121, 812938096
  br i1 %122, label %146, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %113, align 8, !tbaa !69
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !55
  %129 = getelementptr inbounds i8, ptr %128, i64 6
  %130 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !58
  %132 = icmp ugt ptr %129, %131
  br i1 %132, label %151, label %133

133:                                              ; preds = %126
  %134 = getelementptr inbounds i8, ptr %4, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %134, ptr noundef nonnull align 1 dereferenceable(6) %128, i64 6, i1 false)
  store ptr %129, ptr %127, align 8, !tbaa !55
  br label %139

135:                                              ; preds = %123
  %136 = getelementptr inbounds i8, ptr %4, i64 5
  %137 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %124, ptr noundef nonnull %136, i64 noundef 6) #10
  %138 = icmp eq i64 %137, 6
  br i1 %138, label %139, label %151

139:                                              ; preds = %135, %133
  %140 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %4, ptr noundef nonnull dereferenceable(10) @old_magicstr, i64 10)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 19
  store i32 1, ptr %143, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.60) #10
  br label %144

144:                                              ; preds = %142, %139
  %145 = getelementptr inbounds i8, ptr %4, i64 10
  br label %146

146:                                              ; preds = %144, %119
  %147 = phi ptr [ %145, %144 ], [ %120, %119 ]
  %148 = phi i32 [ 1, %144 ], [ 0, %119 ]
  %149 = load i8, ptr %147, align 1, !tbaa !41
  %150 = zext i8 %149 to i32
  br label %151

151:                                              ; preds = %146, %135, %126, %116
  %152 = phi i32 [ %150, %146 ], [ undef, %116 ], [ undef, %126 ], [ undef, %135 ]
  %153 = phi i32 [ %148, %146 ], [ 0, %116 ], [ 0, %126 ], [ 0, %135 ]
  %154 = phi i1 [ true, %146 ], [ false, %116 ], [ false, %126 ], [ false, %135 ]
  br i1 %154, label %165, label %389

155:                                              ; preds = %111
  %156 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !55
  %158 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !58
  %160 = icmp ult ptr %157, %159
  br i1 %160, label %161, label %389

161:                                              ; preds = %155
  %162 = getelementptr inbounds i8, ptr %157, i64 1
  store ptr %162, ptr %156, align 8, !tbaa !55
  %163 = load i8, ptr %157, align 1, !tbaa !41
  %164 = zext i8 %163 to i32
  br label %165

165:                                              ; preds = %161, %151
  %166 = phi i32 [ %152, %151 ], [ %164, %161 ]
  %167 = phi i32 [ %153, %151 ], [ 0, %161 ]
  %168 = icmp ne i32 %167, 0
  %169 = icmp sgt i32 %166, 1
  %170 = select i1 %168, i1 %169, i1 false
  %171 = ashr i32 %166, 1
  %172 = select i1 %170, i32 -1, i32 %171
  %173 = icmp sgt i32 %172, 0
  %174 = select i1 %173, ptr @sv_retrieve, ptr @sv_old_retrieve
  %175 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 27
  store ptr %174, ptr %175, align 8, !tbaa !139
  %176 = icmp sgt i32 %172, 1
  br i1 %176, label %177, label %193

177:                                              ; preds = %165
  %178 = load ptr, ptr %113, align 8, !tbaa !69
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !55
  %183 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !58
  %185 = icmp ult ptr %182, %184
  br i1 %185, label %186, label %389

186:                                              ; preds = %180
  %187 = getelementptr inbounds i8, ptr %182, i64 1
  store ptr %187, ptr %181, align 8, !tbaa !55
  %188 = load i8, ptr %182, align 1, !tbaa !41
  %189 = zext i8 %188 to i32
  br label %193

190:                                              ; preds = %177
  %191 = call i32 @PerlIO_getc(ptr noundef nonnull %178) #10
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %389, label %193

193:                                              ; preds = %190, %186, %165
  %194 = phi i32 [ %191, %190 ], [ %189, %186 ], [ 0, %165 ]
  %195 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 25
  store i32 %172, ptr %195, align 8, !tbaa !140
  %196 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 26
  store i32 %194, ptr %196, align 4, !tbaa !141
  %197 = icmp sgt i32 %172, 2
  br i1 %197, label %202, label %198

198:                                              ; preds = %193
  %199 = icmp eq i32 %172, 2
  %200 = icmp sgt i32 %194, 10
  %201 = select i1 %199, i1 %200, i1 false
  br i1 %201, label %202, label %310

202:                                              ; preds = %198, %193
  %203 = icmp eq i32 %172, 2
  br i1 %203, label %204, label %308

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 18
  %206 = load i32, ptr %205, align 4, !tbaa !65
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %305

208:                                              ; preds = %204
  %209 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %210 = icmp eq ptr %209, null
  br i1 %210, label %302, label %211

211:                                              ; preds = %208
  %212 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %213 = getelementptr inbounds %struct.sv, ptr %212, i64 0, i32 2
  %214 = load i32, ptr %213, align 4, !tbaa !53
  %215 = and i32 %214, 2097152
  %216 = icmp eq i32 %215, 0
  %217 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  br i1 %216, label %220, label %218

218:                                              ; preds = %211
  %219 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %217, i32 noundef 2) #10
  br label %302

220:                                              ; preds = %211
  %221 = getelementptr inbounds %struct.sv, ptr %217, i64 0, i32 2
  %222 = load i32, ptr %221, align 4, !tbaa !53
  %223 = and i32 %222, 65280
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %220
  %226 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %227 = getelementptr inbounds %struct.sv, ptr %226, i64 0, i32 2
  %228 = load i32, ptr %227, align 4, !tbaa !53
  %229 = and i32 %228, 255
  %230 = icmp eq i32 %229, 8
  br i1 %230, label %237, label %231

231:                                              ; preds = %225
  %232 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %233 = getelementptr inbounds %struct.sv, ptr %232, i64 0, i32 2
  %234 = load i32, ptr %233, align 4, !tbaa !53
  %235 = and i32 %234, 16826623
  %236 = icmp eq i32 %235, 16777226
  br i1 %236, label %237, label %302

237:                                              ; preds = %231, %225, %220
  %238 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %239 = getelementptr inbounds %struct.sv, ptr %238, i64 0, i32 2
  %240 = load i32, ptr %239, align 4, !tbaa !53
  %241 = and i32 %240, 1024
  %242 = icmp eq i32 %241, 0
  %243 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  br i1 %242, label %265, label %244

244:                                              ; preds = %237
  %245 = load ptr, ptr %243, align 8, !tbaa !85
  %246 = icmp eq ptr %245, null
  br i1 %246, label %302, label %247

247:                                              ; preds = %244
  %248 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %249 = load ptr, ptr %248, align 8, !tbaa !85
  %250 = getelementptr inbounds %struct.xpv, ptr %249, i64 0, i32 2
  %251 = load i64, ptr %250, align 8, !tbaa !107
  %252 = icmp ugt i64 %251, 1
  br i1 %252, label %302, label %253

253:                                              ; preds = %247
  %254 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %255 = load ptr, ptr %254, align 8, !tbaa !85
  %256 = getelementptr inbounds %struct.xpv, ptr %255, i64 0, i32 2
  %257 = load i64, ptr %256, align 8, !tbaa !107
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %302, label %259

259:                                              ; preds = %253
  %260 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %261 = getelementptr inbounds %struct.sv, ptr %260, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !41
  %263 = load i8, ptr %262, align 1, !tbaa !41
  %264 = icmp ne i8 %263, 48
  br label %302

265:                                              ; preds = %237
  %266 = getelementptr inbounds %struct.sv, ptr %243, i64 0, i32 2
  %267 = load i32, ptr %266, align 4, !tbaa !53
  %268 = and i32 %267, 768
  %269 = icmp eq i32 %268, 0
  %270 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  br i1 %269, label %300, label %271

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.sv, ptr %270, i64 0, i32 2
  %273 = load i32, ptr %272, align 4, !tbaa !53
  %274 = and i32 %273, 256
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %282, label %276

276:                                              ; preds = %271
  %277 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %278 = load ptr, ptr %277, align 8, !tbaa !85
  %279 = getelementptr inbounds %struct.xpviv, ptr %278, i64 0, i32 4
  %280 = load i64, ptr %279, align 8, !tbaa !41
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %302

282:                                              ; preds = %276, %271
  %283 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %284 = getelementptr inbounds %struct.sv, ptr %283, i64 0, i32 2
  %285 = load i32, ptr %284, align 4, !tbaa !53
  %286 = and i32 %285, 512
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %302, label %288

288:                                              ; preds = %282
  %289 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %290 = load ptr, ptr %289, align 8, !tbaa !85
  %291 = getelementptr inbounds %struct.xpvnv, ptr %290, i64 0, i32 5
  %292 = load double, ptr %291, align 8, !tbaa !41
  %293 = fcmp uno double %292, 0.000000e+00
  br i1 %293, label %302, label %294

294:                                              ; preds = %288
  %295 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %296 = load ptr, ptr %295, align 8, !tbaa !85
  %297 = getelementptr inbounds %struct.xpvnv, ptr %296, i64 0, i32 5
  %298 = load double, ptr %297, align 8, !tbaa !41
  %299 = fcmp une double %298, 0.000000e+00
  br label %302

300:                                              ; preds = %265
  %301 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %270, i32 noundef 0) #10
  br label %302

302:                                              ; preds = %288, %300, %294, %282, %276, %259, %253, %247, %244, %231, %218, %208
  %303 = phi i1 [ false, %208 ], [ %219, %218 ], [ false, %231 ], [ %301, %300 ], [ false, %244 ], [ true, %247 ], [ false, %253 ], [ %264, %259 ], [ true, %276 ], [ false, %282 ], [ %299, %294 ], [ true, %288 ]
  %304 = zext i1 %303 to i32
  store i32 %304, ptr %205, align 4, !tbaa !65
  br label %305

305:                                              ; preds = %302, %204
  %306 = load i32, ptr %205, align 4, !tbaa !65
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %310, label %308

308:                                              ; preds = %305, %202
  %309 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 19
  store i32 1, ptr %309, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.62, i32 noundef %172, i32 noundef %194, i32 noundef 2, i32 noundef 10) #10
  br label %310

310:                                              ; preds = %198, %308, %305
  %311 = and i32 %166, 1
  %312 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 12
  store i32 %311, ptr %312, align 8, !tbaa !62
  %313 = icmp eq i32 %311, 0
  br i1 %313, label %314, label %388

314:                                              ; preds = %310
  %315 = icmp sgt i32 %194, 1
  %316 = select i1 %176, i1 %315, i1 false
  %317 = icmp sgt i32 %172, -1
  br i1 %317, label %318, label %334

318:                                              ; preds = %314
  %319 = load ptr, ptr %113, align 8, !tbaa !69
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %331

321:                                              ; preds = %318
  %322 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 2
  %323 = load ptr, ptr %322, align 8, !tbaa !55
  %324 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !58
  %326 = icmp ult ptr %323, %325
  br i1 %326, label %327, label %389

327:                                              ; preds = %321
  %328 = getelementptr inbounds i8, ptr %323, i64 1
  store ptr %328, ptr %322, align 8, !tbaa !55
  %329 = load i8, ptr %323, align 1, !tbaa !41
  %330 = zext i8 %329 to i32
  br label %334

331:                                              ; preds = %318
  %332 = call i32 @PerlIO_getc(ptr noundef nonnull %319) #10
  %333 = icmp eq i32 %332, -1
  br i1 %333, label %389, label %334

334:                                              ; preds = %331, %327, %314
  %335 = phi i32 [ %332, %331 ], [ %330, %327 ], [ %166, %314 ]
  %336 = select i1 %316, i32 4, i32 3
  %337 = add i32 %336, %335
  %338 = load ptr, ptr %113, align 8, !tbaa !69
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %351

340:                                              ; preds = %334
  %341 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !55
  %343 = sext i32 %337 to i64
  %344 = getelementptr inbounds i8, ptr %342, i64 %343
  %345 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !58
  %347 = icmp ugt ptr %344, %346
  br i1 %347, label %389, label %348

348:                                              ; preds = %340
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr align 1 %342, i64 %343, i1 false)
  %349 = load ptr, ptr %341, align 8, !tbaa !55
  %350 = getelementptr inbounds i8, ptr %349, i64 %343
  store ptr %350, ptr %341, align 8, !tbaa !55
  br label %355

351:                                              ; preds = %334
  %352 = sext i32 %337 to i64
  %353 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %338, ptr noundef nonnull %4, i64 noundef %352) #10
  %354 = icmp eq i64 %353, %352
  br i1 %354, label %355, label %389

355:                                              ; preds = %351, %348
  %356 = sext i32 %335 to i64
  %357 = icmp eq i32 %335, 8
  %358 = load i64, ptr %4, align 16
  %359 = icmp eq i64 %358, 4050765991979987505
  %360 = select i1 %357, i1 %359, i1 false
  br i1 %360, label %363, label %361

361:                                              ; preds = %355
  %362 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 19
  store i32 1, ptr %362, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.63) #10
  br label %363

363:                                              ; preds = %361, %355
  %364 = getelementptr inbounds i8, ptr %4, i64 %356
  %365 = getelementptr inbounds i8, ptr %364, i64 1
  %366 = load i8, ptr %364, align 1, !tbaa !41
  %367 = icmp eq i8 %366, 4
  br i1 %367, label %370, label %368

368:                                              ; preds = %363
  %369 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 19
  store i32 1, ptr %369, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.64) #10
  br label %370

370:                                              ; preds = %368, %363
  %371 = getelementptr inbounds i8, ptr %364, i64 2
  %372 = load i8, ptr %365, align 1, !tbaa !41
  %373 = icmp eq i8 %372, 8
  br i1 %373, label %376, label %374

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 19
  store i32 1, ptr %375, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.65) #10
  br label %376

376:                                              ; preds = %374, %370
  %377 = load i8, ptr %371, align 1, !tbaa !41
  %378 = icmp eq i8 %377, 8
  br i1 %378, label %381, label %379

379:                                              ; preds = %376
  %380 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 19
  store i32 1, ptr %380, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.66) #10
  br label %381

381:                                              ; preds = %379, %376
  br i1 %316, label %382, label %388

382:                                              ; preds = %381
  %383 = getelementptr inbounds i8, ptr %364, i64 3
  %384 = load i8, ptr %383, align 1, !tbaa !41
  %385 = icmp eq i8 %384, 8
  br i1 %385, label %388, label %386

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 19
  store i32 1, ptr %387, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67) #10
  br label %388

388:                                              ; preds = %381, %310, %382, %386
  call void @llvm.lifetime.end.p0(i64 259, ptr nonnull %4) #10
  br label %394

389:                                              ; preds = %190, %351, %340, %331, %321, %180, %155, %151
  call void @llvm.lifetime.end.p0(i64 259, ptr nonnull %4) #10
  %390 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 19
  store i32 1, ptr %390, align 8, !tbaa !50
  %391 = load ptr, ptr %113, align 8, !tbaa !69
  %392 = icmp eq ptr %391, null
  %393 = select i1 %392, ptr @.str.59, ptr @.str.58
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.57, ptr noundef nonnull %393) #10
  br label %394

394:                                              ; preds = %388, %389
  br i1 %30, label %395, label %408

395:                                              ; preds = %394
  %396 = icmp eq ptr %112, null
  br i1 %396, label %405, label %397

397:                                              ; preds = %395
  %398 = getelementptr inbounds %struct.sv, ptr %112, i64 0, i32 2
  %399 = load i32, ptr %398, align 4, !tbaa !53
  %400 = and i32 %399, 14680064
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %408, label %402

402:                                              ; preds = %397
  %403 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %112) #10
  %404 = zext i1 %403 to i32
  br label %408

405:                                              ; preds = %395
  %406 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 13
  %407 = load i32, ptr %406, align 4, !tbaa !59
  br label %408

408:                                              ; preds = %397, %402, %405, %394
  %409 = phi i32 [ 1, %394 ], [ %407, %405 ], [ 0, %397 ], [ %404, %402 ]
  %410 = call ptr @Perl_newSV_type(i32 noundef 12) #10
  %411 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 9
  store ptr %410, ptr %411, align 8, !tbaa !77
  %412 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 2
  store ptr null, ptr %412, align 8, !tbaa !70
  %413 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 27
  %414 = load ptr, ptr %413, align 8, !tbaa !139
  %415 = icmp eq ptr %414, @sv_old_retrieve
  br i1 %415, label %416, label %418

416:                                              ; preds = %408
  %417 = call ptr @Perl_newSV_type(i32 noundef 12) #10
  br label %418

418:                                              ; preds = %408, %416
  %419 = phi ptr [ %417, %416 ], [ null, %408 ]
  %420 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 3
  store ptr %419, ptr %420, align 8, !tbaa !71
  %421 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  %422 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 5
  store ptr %421, ptr %422, align 8, !tbaa !92
  %423 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 6
  store i64 -1, ptr %423, align 8, !tbaa !93
  %424 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  %425 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 8
  store ptr %424, ptr %425, align 8, !tbaa !94
  %426 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 10
  %427 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %426, i8 0, i64 16, i1 false)
  store i32 %9, ptr %427, align 4, !tbaa !61
  %428 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 13
  store i32 %409, ptr %428, align 4, !tbaa !59
  store i32 1, ptr %20, align 8, !tbaa !60
  %429 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 18
  store i32 -1, ptr %429, align 4, !tbaa !65
  %430 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 30
  store i32 0, ptr %430, align 8, !tbaa !95
  %431 = call fastcc ptr @retrieve(ptr noundef nonnull %20, ptr noundef null)
  %432 = icmp ne ptr %112, null
  %433 = and i1 %30, %432
  br i1 %433, label %434, label %438

434:                                              ; preds = %418
  %435 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 20
  store i32 0, ptr %435, align 4, !tbaa !80
  %436 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 22
  %437 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %436, ptr noundef nonnull align 8 dereferenceable(32) %437, i64 32, i1 false), !tbaa.struct !81
  br label %438

438:                                              ; preds = %434, %418
  %439 = load ptr, ptr %420, align 8, !tbaa !71
  %440 = icmp eq ptr %439, null
  call fastcc void @clean_retrieve_context(ptr noundef nonnull %20)
  %441 = getelementptr inbounds %struct.stcxt, ptr %20, i64 0, i32 28
  %442 = load ptr, ptr %441, align 8, !tbaa !79
  %443 = icmp eq ptr %442, null
  br i1 %443, label %445, label %444

444:                                              ; preds = %438
  call fastcc void @free_context(ptr noundef nonnull %20)
  br label %445

445:                                              ; preds = %444, %438
  %446 = icmp eq ptr %431, null
  br i1 %446, label %513, label %447

447:                                              ; preds = %445
  br i1 %440, label %460, label %448

448:                                              ; preds = %447
  %449 = call fastcc i32 @sv_type(ptr noundef nonnull %431), !range !84
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %460

451:                                              ; preds = %448
  %452 = getelementptr inbounds %struct.sv, ptr %431, i64 0, i32 3
  %453 = load ptr, ptr %452, align 8, !tbaa !41
  %454 = icmp eq ptr %453, null
  br i1 %454, label %460, label %455

455:                                              ; preds = %451
  %456 = getelementptr inbounds %struct.sv, ptr %453, i64 0, i32 2
  %457 = load i32, ptr %456, align 4, !tbaa !53
  %458 = and i32 %457, 1048576
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %513

460:                                              ; preds = %448, %451, %455, %447
  %461 = getelementptr inbounds %struct.sv, ptr %431, i64 0, i32 2
  %462 = load i32, ptr %461, align 4, !tbaa !53
  %463 = and i32 %462, 1048576
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %511, label %465

465:                                              ; preds = %460
  %466 = load ptr, ptr %431, align 8, !tbaa !85
  %467 = load ptr, ptr %466, align 8, !tbaa !86
  %468 = call ptr @Perl_newRV_noinc(ptr noundef nonnull %431) #10
  %469 = icmp eq ptr %467, null
  br i1 %469, label %513, label %470

470:                                              ; preds = %465
  %471 = getelementptr inbounds %struct.hv, ptr %467, i64 0, i32 2
  %472 = load i32, ptr %471, align 4, !tbaa !98
  %473 = and i32 %472, 33554432
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %495, label %475

475:                                              ; preds = %470
  %476 = getelementptr inbounds %struct.hv, ptr %467, i64 0, i32 3
  %477 = load ptr, ptr %476, align 8, !tbaa !41
  %478 = load ptr, ptr %467, align 8, !tbaa !73
  %479 = getelementptr inbounds %struct.xpvhv, ptr %478, i64 0, i32 3
  %480 = load i64, ptr %479, align 8, !tbaa !75
  %481 = getelementptr ptr, ptr %477, i64 %480
  %482 = getelementptr ptr, ptr %481, i64 1
  %483 = load ptr, ptr %482, align 8, !tbaa !41
  %484 = icmp eq ptr %483, null
  br i1 %484, label %495, label %485

485:                                              ; preds = %475
  %486 = getelementptr i8, ptr %481, i64 36
  %487 = load i32, ptr %486, align 4, !tbaa !99
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %492, label %489

489:                                              ; preds = %485
  %490 = load ptr, ptr %483, align 8, !tbaa !42
  %491 = icmp eq ptr %490, null
  br i1 %491, label %495, label %492

492:                                              ; preds = %485, %489
  %493 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %467, i1 noundef zeroext false) #10
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %498

495:                                              ; preds = %489, %470, %475, %492
  %496 = load i32, ptr %471, align 4, !tbaa !98
  %497 = and i32 %496, -268435457
  store i32 %497, ptr %471, align 4, !tbaa !98
  br label %513

498:                                              ; preds = %492
  %499 = getelementptr inbounds %struct.sv, ptr %468, i64 0, i32 3
  %500 = load ptr, ptr %499, align 8, !tbaa !41
  %501 = getelementptr inbounds %struct.sv, ptr %500, i64 0, i32 2
  %502 = load i32, ptr %501, align 4, !tbaa !53
  %503 = and i32 %502, 1048576
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %513, label %505

505:                                              ; preds = %498
  %506 = load ptr, ptr %500, align 8, !tbaa !85
  %507 = load ptr, ptr %506, align 8, !tbaa !86
  %508 = getelementptr inbounds %struct.hv, ptr %507, i64 0, i32 2
  %509 = load i32, ptr %508, align 4, !tbaa !98
  %510 = or i32 %509, 268435456
  store i32 %510, ptr %508, align 4, !tbaa !98
  br label %513

511:                                              ; preds = %460
  %512 = call ptr @Perl_newRV_noinc(ptr noundef nonnull %431) #10
  br label %513

513:                                              ; preds = %505, %498, %465, %495, %455, %445, %511
  %514 = phi ptr [ %512, %511 ], [ @PL_sv_undef, %445 ], [ %431, %455 ], [ %468, %495 ], [ %468, %465 ], [ %468, %498 ], [ %468, %505 ]
  ret ptr %514
}

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @retrieve(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = icmp eq ptr %8, null
  br i1 %9, label %116, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %15 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = getelementptr inbounds i8, ptr %20, i64 4
  %22 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = icmp ugt ptr %21, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = load i32, ptr %20, align 1
  store i32 %26, ptr %4, align 4
  store ptr %21, ptr %19, align 8, !tbaa !55
  br label %30

27:                                               ; preds = %14
  %28 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %16, ptr noundef nonnull %4, i64 noundef 4) #10
  %29 = icmp eq i64 %28, 4
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %25
  %31 = load i32, ptr %4, align 4, !tbaa !43
  %32 = sext i32 %31 to i64
  store i64 %32, ptr %3, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %50

33:                                               ; preds = %27, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %112

34:                                               ; preds = %10
  %35 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %36 = load ptr, ptr %35, align 8, !tbaa !69
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  %41 = getelementptr inbounds i8, ptr %40, i64 8
  %42 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !58
  %44 = icmp ugt ptr %41, %43
  br i1 %44, label %112, label %45

45:                                               ; preds = %38
  %46 = load i64, ptr %40, align 1
  store i64 %46, ptr %3, align 8
  store ptr %41, ptr %39, align 8, !tbaa !55
  br label %50

47:                                               ; preds = %34
  %48 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %36, ptr noundef nonnull %3, i64 noundef 8) #10
  %49 = icmp eq i64 %48, 8
  br i1 %49, label %50, label %112

50:                                               ; preds = %30, %47, %45
  %51 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %52 = load ptr, ptr %51, align 8, !tbaa !69
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !58
  %59 = icmp ult ptr %56, %58
  br i1 %59, label %60, label %112

60:                                               ; preds = %54
  %61 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %61, ptr %55, align 8, !tbaa !55
  %62 = load i8, ptr %56, align 1, !tbaa !41
  %63 = zext i8 %62 to i32
  br label %67

64:                                               ; preds = %50
  %65 = call i32 @PerlIO_getc(ptr noundef nonnull %52) #10
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %112, label %67

67:                                               ; preds = %64, %60
  %68 = phi i32 [ %65, %64 ], [ %63, %60 ]
  %69 = icmp eq i32 %68, 0
  %70 = load ptr, ptr %7, align 8, !tbaa !71
  br i1 %69, label %71, label %106

71:                                               ; preds = %67
  %72 = call ptr @Perl_hv_common_key_len(ptr noundef %70, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %75, align 8, !tbaa !50
  %76 = load i64, ptr %3, align 8, !tbaa !82
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.87, i64 noundef %76) #10
  br label %77

77:                                               ; preds = %74, %71
  %78 = load ptr, ptr %72, align 8, !tbaa !42
  %79 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !53
  %81 = and i32 %80, 2097408
  %82 = icmp eq i32 %81, 256
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load ptr, ptr %78, align 8, !tbaa !85
  %85 = getelementptr inbounds %struct.xpviv, ptr %84, i64 0, i32 4
  %86 = load i64, ptr %85, align 8, !tbaa !41
  br label %89

87:                                               ; preds = %77
  %88 = call i64 @Perl_sv_2iv_flags(ptr noundef %78, i32 noundef 2) #10
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi i64 [ %86, %83 ], [ %88, %87 ]
  %91 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !92
  %93 = shl i64 %90, 32
  %94 = ashr exact i64 %93, 32
  %95 = call ptr @Perl_av_fetch(ptr noundef %92, i64 noundef %94, i32 noundef 0) #10
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %98, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.69, i64 noundef %94) #10
  br label %99

99:                                               ; preds = %97, %89
  %100 = load ptr, ptr %95, align 8, !tbaa !42
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.sv, ptr %100, i64 0, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !91
  %105 = add i32 %104, 1
  store i32 %105, ptr %103, align 8, !tbaa !91
  br label %112

106:                                              ; preds = %67
  %107 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %108 = load i64, ptr %107, align 8, !tbaa !83
  %109 = call ptr @Perl_newSViv(i64 noundef %108) #10
  %110 = call ptr @Perl_hv_common_key_len(ptr noundef %70, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 36, ptr noundef %109, i32 noundef 0) #10
  %111 = icmp ne ptr %110, null
  br label %112

112:                                              ; preds = %102, %99, %106, %64, %54, %47, %38, %33
  %113 = phi i1 [ false, %33 ], [ false, %38 ], [ false, %47 ], [ false, %54 ], [ false, %64 ], [ %111, %106 ], [ false, %99 ], [ false, %102 ]
  %114 = phi i32 [ undef, %33 ], [ undef, %38 ], [ undef, %47 ], [ undef, %54 ], [ -1, %64 ], [ %68, %106 ], [ 0, %99 ], [ 0, %102 ]
  %115 = phi ptr [ null, %33 ], [ null, %38 ], [ null, %47 ], [ null, %54 ], [ null, %64 ], [ null, %106 ], [ %100, %99 ], [ %100, %102 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br i1 %113, label %287, label %469

116:                                              ; preds = %2
  %117 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %118 = load ptr, ptr %117, align 8, !tbaa !69
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !55
  %123 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !58
  %125 = icmp ult ptr %122, %124
  br i1 %125, label %126, label %469

126:                                              ; preds = %120
  %127 = getelementptr inbounds i8, ptr %122, i64 1
  store ptr %127, ptr %121, align 8, !tbaa !55
  %128 = load i8, ptr %122, align 1, !tbaa !41
  %129 = zext i8 %128 to i32
  br label %133

130:                                              ; preds = %116
  %131 = tail call i32 @PerlIO_getc(ptr noundef nonnull %118) #10
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %469, label %133

133:                                              ; preds = %130, %126
  %134 = phi i32 [ %131, %130 ], [ %129, %126 ]
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %172

136:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %137 = load ptr, ptr %117, align 8, !tbaa !69
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !55
  %142 = getelementptr inbounds i8, ptr %141, i64 4
  %143 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !58
  %145 = icmp ugt ptr %142, %144
  br i1 %145, label %170, label %146

146:                                              ; preds = %139
  %147 = load i32, ptr %141, align 1
  store i32 %147, ptr %5, align 4
  store ptr %142, ptr %140, align 8, !tbaa !55
  br label %151

148:                                              ; preds = %136
  %149 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %137, ptr noundef nonnull %5, i64 noundef 4) #10
  %150 = icmp eq i64 %149, 4
  br i1 %150, label %151, label %170

151:                                              ; preds = %148, %146
  %152 = load i32, ptr %5, align 4, !tbaa !43
  %153 = call i32 @llvm.bswap.i32(i32 %152)
  store i32 %153, ptr %5, align 4, !tbaa !43
  %154 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %155 = load ptr, ptr %154, align 8, !tbaa !92
  %156 = sext i32 %153 to i64
  %157 = call ptr @Perl_av_fetch(ptr noundef %155, i64 noundef %156, i32 noundef 0) #10
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %160, align 8, !tbaa !50
  %161 = load i32, ptr %5, align 4, !tbaa !43
  %162 = sext i32 %161 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.69, i64 noundef %162) #10
  br label %163

163:                                              ; preds = %159, %151
  %164 = load ptr, ptr %157, align 8, !tbaa !42
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.sv, ptr %164, i64 0, i32 1
  %168 = load i32, ptr %167, align 8, !tbaa !91
  %169 = add i32 %168, 1
  store i32 %169, ptr %167, align 8, !tbaa !91
  br label %170

170:                                              ; preds = %163, %166, %148, %139
  %171 = phi ptr [ null, %139 ], [ null, %148 ], [ %164, %166 ], [ %164, %163 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %469

172:                                              ; preds = %133
  %173 = icmp sgt i32 %134, 31
  br i1 %173, label %174, label %287

174:                                              ; preds = %172
  %175 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 26
  %176 = load i32, ptr %175, align 4, !tbaa !141
  %177 = icmp sgt i32 %176, 10
  br i1 %177, label %178, label %287

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 18
  %180 = load i32, ptr %179, align 4, !tbaa !65
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %279

182:                                              ; preds = %178
  %183 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %184 = icmp eq ptr %183, null
  br i1 %184, label %276, label %185

185:                                              ; preds = %182
  %186 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %187 = getelementptr inbounds %struct.sv, ptr %186, i64 0, i32 2
  %188 = load i32, ptr %187, align 4, !tbaa !53
  %189 = and i32 %188, 2097152
  %190 = icmp eq i32 %189, 0
  %191 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  br i1 %190, label %194, label %192

192:                                              ; preds = %185
  %193 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %191, i32 noundef 2) #10
  br label %276

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.sv, ptr %191, i64 0, i32 2
  %196 = load i32, ptr %195, align 4, !tbaa !53
  %197 = and i32 %196, 65280
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %194
  %200 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %201 = getelementptr inbounds %struct.sv, ptr %200, i64 0, i32 2
  %202 = load i32, ptr %201, align 4, !tbaa !53
  %203 = and i32 %202, 255
  %204 = icmp eq i32 %203, 8
  br i1 %204, label %211, label %205

205:                                              ; preds = %199
  %206 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %207 = getelementptr inbounds %struct.sv, ptr %206, i64 0, i32 2
  %208 = load i32, ptr %207, align 4, !tbaa !53
  %209 = and i32 %208, 16826623
  %210 = icmp eq i32 %209, 16777226
  br i1 %210, label %211, label %276

211:                                              ; preds = %205, %199, %194
  %212 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %213 = getelementptr inbounds %struct.sv, ptr %212, i64 0, i32 2
  %214 = load i32, ptr %213, align 4, !tbaa !53
  %215 = and i32 %214, 1024
  %216 = icmp eq i32 %215, 0
  %217 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  br i1 %216, label %239, label %218

218:                                              ; preds = %211
  %219 = load ptr, ptr %217, align 8, !tbaa !85
  %220 = icmp eq ptr %219, null
  br i1 %220, label %276, label %221

221:                                              ; preds = %218
  %222 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %223 = load ptr, ptr %222, align 8, !tbaa !85
  %224 = getelementptr inbounds %struct.xpv, ptr %223, i64 0, i32 2
  %225 = load i64, ptr %224, align 8, !tbaa !107
  %226 = icmp ugt i64 %225, 1
  br i1 %226, label %276, label %227

227:                                              ; preds = %221
  %228 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %229 = load ptr, ptr %228, align 8, !tbaa !85
  %230 = getelementptr inbounds %struct.xpv, ptr %229, i64 0, i32 2
  %231 = load i64, ptr %230, align 8, !tbaa !107
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %276, label %233

233:                                              ; preds = %227
  %234 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %235 = getelementptr inbounds %struct.sv, ptr %234, i64 0, i32 3
  %236 = load ptr, ptr %235, align 8, !tbaa !41
  %237 = load i8, ptr %236, align 1, !tbaa !41
  %238 = icmp ne i8 %237, 48
  br label %276

239:                                              ; preds = %211
  %240 = getelementptr inbounds %struct.sv, ptr %217, i64 0, i32 2
  %241 = load i32, ptr %240, align 4, !tbaa !53
  %242 = and i32 %241, 768
  %243 = icmp eq i32 %242, 0
  %244 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  br i1 %243, label %274, label %245

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.sv, ptr %244, i64 0, i32 2
  %247 = load i32, ptr %246, align 4, !tbaa !53
  %248 = and i32 %247, 256
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %245
  %251 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %252 = load ptr, ptr %251, align 8, !tbaa !85
  %253 = getelementptr inbounds %struct.xpviv, ptr %252, i64 0, i32 4
  %254 = load i64, ptr %253, align 8, !tbaa !41
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %276

256:                                              ; preds = %250, %245
  %257 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %258 = getelementptr inbounds %struct.sv, ptr %257, i64 0, i32 2
  %259 = load i32, ptr %258, align 4, !tbaa !53
  %260 = and i32 %259, 512
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %276, label %262

262:                                              ; preds = %256
  %263 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %264 = load ptr, ptr %263, align 8, !tbaa !85
  %265 = getelementptr inbounds %struct.xpvnv, ptr %264, i64 0, i32 5
  %266 = load double, ptr %265, align 8, !tbaa !41
  %267 = fcmp uno double %266, 0.000000e+00
  br i1 %267, label %276, label %268

268:                                              ; preds = %262
  %269 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #10
  %270 = load ptr, ptr %269, align 8, !tbaa !85
  %271 = getelementptr inbounds %struct.xpvnv, ptr %270, i64 0, i32 5
  %272 = load double, ptr %271, align 8, !tbaa !41
  %273 = fcmp une double %272, 0.000000e+00
  br label %276

274:                                              ; preds = %239
  %275 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %244, i32 noundef 0) #10
  br label %276

276:                                              ; preds = %262, %192, %274, %205, %221, %233, %227, %218, %256, %268, %250, %182
  %277 = phi i1 [ false, %182 ], [ %193, %192 ], [ false, %205 ], [ %275, %274 ], [ false, %218 ], [ true, %221 ], [ false, %227 ], [ %238, %233 ], [ true, %250 ], [ false, %256 ], [ %273, %268 ], [ true, %262 ]
  %278 = zext i1 %277 to i32
  store i32 %278, ptr %179, align 4, !tbaa !65
  br label %279

279:                                              ; preds = %276, %178
  %280 = load i32, ptr %179, align 4, !tbaa !65
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %282, label %287

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %283, align 8, !tbaa !50
  %284 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 25
  %285 = load i32, ptr %284, align 8, !tbaa !140
  %286 = load i32, ptr %175, align 4, !tbaa !141
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.88, i32 noundef %285, i32 noundef %286, i32 noundef %134, i32 noundef 2, i32 noundef 10, i32 noundef 31) #10
  br label %287

287:                                              ; preds = %279, %282, %174, %172, %112
  %288 = phi i32 [ %114, %112 ], [ %134, %282 ], [ %134, %279 ], [ %134, %174 ], [ %134, %172 ]
  %289 = phi ptr [ %115, %112 ], [ undef, %282 ], [ undef, %279 ], [ undef, %174 ], [ undef, %172 ]
  %290 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 27
  %291 = load ptr, ptr %290, align 8, !tbaa !139
  %292 = call i32 @llvm.smin.i32(i32 %288, i32 32)
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds ptr, ptr %291, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !42
  %296 = call ptr %295(ptr noundef %0, ptr noundef %1) #10
  %297 = icmp eq ptr %296, null
  br i1 %297, label %469, label %298

298:                                              ; preds = %287
  %299 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 25
  %300 = load i32, ptr %299, align 8, !tbaa !140
  %301 = icmp slt i32 %300, 2
  br i1 %301, label %302, label %469

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %304 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %305 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %306 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %307 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %308 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %309 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %310 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %311 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21
  %312 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21, i32 1
  %313 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %314 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %315 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  br label %316

316:                                              ; preds = %302, %466
  %317 = phi ptr [ %468, %466 ], [ %289, %302 ]
  %318 = load ptr, ptr %303, align 8, !tbaa !69
  %319 = icmp eq ptr %318, null
  br i1 %319, label %322, label %320

320:                                              ; preds = %316
  %321 = call i32 @PerlIO_getc(ptr noundef nonnull %318) #10
  br label %330

322:                                              ; preds = %316
  %323 = load ptr, ptr %304, align 8, !tbaa !55
  %324 = load ptr, ptr %305, align 8, !tbaa !58
  %325 = icmp ult ptr %323, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %322
  %327 = getelementptr inbounds i8, ptr %323, i64 1
  store ptr %327, ptr %304, align 8, !tbaa !55
  %328 = load i8, ptr %323, align 1, !tbaa !41
  %329 = sext i8 %328 to i32
  br label %330

330:                                              ; preds = %326, %322, %320
  %331 = phi i32 [ %321, %320 ], [ %329, %326 ], [ -1, %322 ]
  %332 = icmp eq i32 %331, 88
  br i1 %332, label %469, label %333

333:                                              ; preds = %330
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  switch i32 %331, label %466 [
    i32 98, label %334
    i32 66, label %348
  ]

334:                                              ; preds = %333
  %335 = load ptr, ptr %303, align 8, !tbaa !69
  %336 = icmp eq ptr %335, null
  br i1 %336, label %337, label %345

337:                                              ; preds = %334
  %338 = load ptr, ptr %309, align 8, !tbaa !55
  %339 = load ptr, ptr %310, align 8, !tbaa !58
  %340 = icmp ult ptr %338, %339
  br i1 %340, label %341, label %466

341:                                              ; preds = %337
  %342 = getelementptr inbounds i8, ptr %338, i64 1
  store ptr %342, ptr %309, align 8, !tbaa !55
  %343 = load i8, ptr %338, align 1, !tbaa !41
  %344 = zext i8 %343 to i32
  store i32 %344, ptr %6, align 4, !tbaa !43
  br label %367

345:                                              ; preds = %334
  %346 = call i32 @PerlIO_getc(ptr noundef nonnull %335) #10
  store i32 %346, ptr %6, align 4, !tbaa !43
  %347 = icmp eq i32 %346, -1
  br i1 %347, label %466, label %367

348:                                              ; preds = %333
  %349 = load ptr, ptr %303, align 8, !tbaa !69
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %358

351:                                              ; preds = %348
  %352 = load ptr, ptr %306, align 8, !tbaa !55
  %353 = getelementptr inbounds i8, ptr %352, i64 4
  %354 = load ptr, ptr %307, align 8, !tbaa !58
  %355 = icmp ugt ptr %353, %354
  br i1 %355, label %466, label %356

356:                                              ; preds = %351
  %357 = load i32, ptr %352, align 1
  store i32 %357, ptr %6, align 4
  store ptr %353, ptr %306, align 8, !tbaa !55
  br label %361

358:                                              ; preds = %348
  %359 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %349, ptr noundef nonnull %6, i64 noundef 4) #10
  %360 = icmp eq i64 %359, 4
  br i1 %360, label %361, label %466

361:                                              ; preds = %358, %356
  %362 = load i32, ptr %308, align 8, !tbaa !62
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %361
  %365 = load i32, ptr %6, align 4, !tbaa !43
  %366 = call i32 @llvm.bswap.i32(i32 %365)
  store i32 %366, ptr %6, align 4, !tbaa !43
  br label %367

367:                                              ; preds = %361, %345, %341, %364
  %368 = load i32, ptr %6, align 4, !tbaa !43
  %369 = sext i32 %368 to i64
  %370 = load i64, ptr %312, align 8, !tbaa !137
  %371 = icmp ugt i64 %370, %369
  br i1 %371, label %379, label %372

372:                                              ; preds = %367
  %373 = load ptr, ptr %311, align 8, !tbaa !96
  %374 = add nsw i64 %369, 1
  %375 = call ptr @Perl_safesysrealloc(ptr noundef %373, i64 noundef %374) #10
  store ptr %375, ptr %311, align 8, !tbaa !96
  %376 = load i32, ptr %6, align 4, !tbaa !43
  %377 = sext i32 %376 to i64
  %378 = add nsw i64 %377, 1
  store i64 %378, ptr %312, align 8, !tbaa !137
  br label %379

379:                                              ; preds = %372, %367
  %380 = load i32, ptr %6, align 4, !tbaa !43
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %403, label %382

382:                                              ; preds = %379
  %383 = load ptr, ptr %303, align 8, !tbaa !69
  %384 = icmp eq ptr %383, null
  %385 = sext i32 %380 to i64
  br i1 %384, label %386, label %397

386:                                              ; preds = %382
  %387 = load ptr, ptr %313, align 8, !tbaa !55
  %388 = getelementptr inbounds i8, ptr %387, i64 %385
  %389 = load ptr, ptr %314, align 8, !tbaa !58
  %390 = icmp ugt ptr %388, %389
  br i1 %390, label %466, label %391

391:                                              ; preds = %386
  %392 = load ptr, ptr %311, align 8, !tbaa !96
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %392, ptr align 1 %387, i64 %385, i1 false)
  %393 = load i32, ptr %6, align 4, !tbaa !43
  %394 = load ptr, ptr %313, align 8, !tbaa !55
  %395 = sext i32 %393 to i64
  %396 = getelementptr inbounds i8, ptr %394, i64 %395
  store ptr %396, ptr %313, align 8, !tbaa !55
  br label %403

397:                                              ; preds = %382
  %398 = load ptr, ptr %311, align 8, !tbaa !96
  %399 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %383, ptr noundef %398, i64 noundef %385) #10
  %400 = load i32, ptr %6, align 4, !tbaa !43
  %401 = sext i32 %400 to i64
  %402 = icmp eq i64 %399, %401
  br i1 %402, label %403, label %466

403:                                              ; preds = %391, %397, %379
  %404 = load ptr, ptr %311, align 8, !tbaa !96
  %405 = load i32, ptr %6, align 4, !tbaa !43
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8, ptr %404, i64 %406
  store i8 0, ptr %407, align 1, !tbaa !41
  %408 = load ptr, ptr %311, align 8, !tbaa !96
  %409 = load i32, ptr %6, align 4, !tbaa !43
  %410 = call ptr @Perl_gv_stashpvn(ptr noundef %408, i32 noundef %409, i32 noundef 1) #10
  %411 = call ptr @Perl_newRV_noinc(ptr noundef nonnull %296) #10
  %412 = load i32, ptr %315, align 8, !tbaa !95
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %455, label %414

414:                                              ; preds = %403
  %415 = getelementptr inbounds %struct.hv, ptr %410, i64 0, i32 2
  %416 = load i32, ptr %415, align 4, !tbaa !98
  %417 = and i32 %416, 33554432
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %439, label %419

419:                                              ; preds = %414
  %420 = getelementptr inbounds %struct.hv, ptr %410, i64 0, i32 3
  %421 = load ptr, ptr %420, align 8, !tbaa !41
  %422 = load ptr, ptr %410, align 8, !tbaa !73
  %423 = getelementptr inbounds %struct.xpvhv, ptr %422, i64 0, i32 3
  %424 = load i64, ptr %423, align 8, !tbaa !75
  %425 = getelementptr ptr, ptr %421, i64 %424
  %426 = getelementptr ptr, ptr %425, i64 1
  %427 = load ptr, ptr %426, align 8, !tbaa !41
  %428 = icmp eq ptr %427, null
  br i1 %428, label %439, label %429

429:                                              ; preds = %419
  %430 = getelementptr i8, ptr %425, i64 36
  %431 = load i32, ptr %430, align 4, !tbaa !99
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %429
  %434 = load ptr, ptr %427, align 8, !tbaa !42
  %435 = icmp eq ptr %434, null
  br i1 %435, label %439, label %436

436:                                              ; preds = %429, %433
  %437 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %410, i1 noundef zeroext false) #10
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %433, %414, %419, %436
  %440 = load i32, ptr %415, align 4, !tbaa !98
  %441 = and i32 %440, -268435457
  store i32 %441, ptr %415, align 4, !tbaa !98
  br label %455

442:                                              ; preds = %436
  store i32 0, ptr %315, align 8, !tbaa !95
  %443 = getelementptr inbounds %struct.sv, ptr %411, i64 0, i32 3
  %444 = load ptr, ptr %443, align 8, !tbaa !41
  %445 = getelementptr inbounds %struct.sv, ptr %444, i64 0, i32 2
  %446 = load i32, ptr %445, align 4, !tbaa !53
  %447 = and i32 %446, 1048576
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %455, label %449

449:                                              ; preds = %442
  %450 = load ptr, ptr %444, align 8, !tbaa !85
  %451 = load ptr, ptr %450, align 8, !tbaa !86
  %452 = getelementptr inbounds %struct.hv, ptr %451, i64 0, i32 2
  %453 = load i32, ptr %452, align 4, !tbaa !98
  %454 = or i32 %453, 268435456
  store i32 %454, ptr %452, align 4, !tbaa !98
  br label %455

455:                                              ; preds = %449, %442, %439, %403
  %456 = call ptr @Perl_sv_bless(ptr noundef %411, ptr noundef %410) #10
  %457 = getelementptr inbounds %struct.sv, ptr %411, i64 0, i32 3
  store ptr null, ptr %457, align 8, !tbaa !41
  %458 = icmp eq ptr %411, null
  br i1 %458, label %466, label %459

459:                                              ; preds = %455
  %460 = getelementptr inbounds %struct.sv, ptr %411, i64 0, i32 1
  %461 = load i32, ptr %460, align 8, !tbaa !91
  %462 = icmp ugt i32 %461, 1
  br i1 %462, label %463, label %465

463:                                              ; preds = %459
  %464 = add i32 %461, -1
  store i32 %464, ptr %460, align 8, !tbaa !91
  br label %466

465:                                              ; preds = %459
  call void @Perl_sv_free2(ptr noundef nonnull %411, i32 noundef %461) #10
  br label %466

466:                                              ; preds = %397, %345, %465, %463, %455, %386, %333, %358, %351, %337
  %467 = phi i1 [ false, %337 ], [ false, %351 ], [ false, %358 ], [ false, %333 ], [ false, %386 ], [ true, %455 ], [ true, %463 ], [ true, %465 ], [ false, %345 ], [ false, %397 ]
  %468 = phi ptr [ null, %337 ], [ null, %351 ], [ null, %358 ], [ null, %333 ], [ null, %386 ], [ %317, %455 ], [ %317, %463 ], [ %317, %465 ], [ null, %345 ], [ null, %397 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br i1 %467, label %316, label %469, !llvm.loop !142

469:                                              ; preds = %466, %330, %287, %298, %130, %120, %112, %170
  %470 = phi ptr [ %115, %112 ], [ %171, %170 ], [ null, %120 ], [ null, %130 ], [ %296, %298 ], [ null, %287 ], [ %296, %330 ], [ %468, %466 ]
  ret ptr %470
}

declare i64 @Perl_PerlIO_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PerlIO_getc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_lscalar(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %160, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %9, align 1
  store i32 %15, ptr %3, align 4
  store ptr %10, ptr %8, align 8, !tbaa !55
  br label %19

16:                                               ; preds = %2
  %17 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 4) #10
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %160

19:                                               ; preds = %16, %14
  %20 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !62
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %3, align 4, !tbaa !43
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  store i32 %25, ptr %3, align 4, !tbaa !43
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, ptr %3, align 4, !tbaa !43
  %28 = sext i32 %27 to i64
  %29 = call ptr @Perl_newSV(i64 noundef %28) #10
  %30 = icmp eq ptr %1, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %33

33:                                               ; preds = %26, %31
  %34 = phi ptr [ %32, %31 ], [ null, %26 ]
  %35 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !92
  %37 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %38 = load i64, ptr %37, align 8, !tbaa !83
  %39 = add nsw i64 %38, 1
  store i64 %39, ptr %37, align 8, !tbaa !83
  %40 = icmp eq ptr %29, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !91
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !91
  br label %45

45:                                               ; preds = %33, %41
  %46 = call ptr @Perl_av_store(ptr noundef %36, i64 noundef %38, ptr noundef %29) #10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %160, label %48

48:                                               ; preds = %45
  %49 = icmp eq ptr %34, null
  br i1 %49, label %107, label %50

50:                                               ; preds = %48
  %51 = call ptr @Perl_newRV_noinc(ptr noundef %29) #10
  %52 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %53 = load i32, ptr %52, align 8, !tbaa !95
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %96, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.hv, ptr %34, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !98
  %58 = and i32 %57, 33554432
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.hv, ptr %34, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !41
  %63 = load ptr, ptr %34, align 8, !tbaa !73
  %64 = getelementptr inbounds %struct.xpvhv, ptr %63, i64 0, i32 3
  %65 = load i64, ptr %64, align 8, !tbaa !75
  %66 = getelementptr ptr, ptr %62, i64 %65
  %67 = getelementptr ptr, ptr %66, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !41
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %60
  %71 = getelementptr i8, ptr %66, i64 36
  %72 = load i32, ptr %71, align 4, !tbaa !99
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %68, align 8, !tbaa !42
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %70, %74
  %78 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %34, i1 noundef zeroext false) #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74, %55, %60, %77
  %81 = load i32, ptr %56, align 4, !tbaa !98
  %82 = and i32 %81, -268435457
  store i32 %82, ptr %56, align 4, !tbaa !98
  br label %96

83:                                               ; preds = %77
  store i32 0, ptr %52, align 8, !tbaa !95
  %84 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !41
  %86 = getelementptr inbounds %struct.sv, ptr %85, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !53
  %88 = and i32 %87, 1048576
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %83
  %91 = load ptr, ptr %85, align 8, !tbaa !85
  %92 = load ptr, ptr %91, align 8, !tbaa !86
  %93 = getelementptr inbounds %struct.hv, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !98
  %95 = or i32 %94, 268435456
  store i32 %95, ptr %93, align 4, !tbaa !98
  br label %96

96:                                               ; preds = %90, %83, %80, %50
  %97 = call ptr @Perl_sv_bless(ptr noundef %51, ptr noundef nonnull %34) #10
  %98 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 3
  store ptr null, ptr %98, align 8, !tbaa !41
  %99 = icmp eq ptr %51, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !91
  %103 = icmp ugt i32 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = add i32 %102, -1
  store i32 %105, ptr %101, align 8, !tbaa !91
  br label %107

106:                                              ; preds = %100
  call void @Perl_sv_free2(ptr noundef nonnull %51, i32 noundef %102) #10
  br label %107

107:                                              ; preds = %106, %104, %96, %48
  %108 = load i32, ptr %3, align 4, !tbaa !43
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  call void @Perl_sv_setpvn(ptr noundef %29, ptr noundef nonnull @.str.3, i64 noundef 0) #10
  br label %160

111:                                              ; preds = %107
  %112 = load ptr, ptr %4, align 8, !tbaa !69
  %113 = icmp eq ptr %112, null
  %114 = sext i32 %108 to i64
  br i1 %113, label %115, label %130

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !55
  %118 = getelementptr inbounds i8, ptr %117, i64 %114
  %119 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !58
  %121 = icmp ugt ptr %118, %120
  br i1 %121, label %129, label %122

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %124, ptr align 1 %117, i64 %114, i1 false)
  %125 = load i32, ptr %3, align 4, !tbaa !43
  %126 = load ptr, ptr %116, align 8, !tbaa !55
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, ptr %126, i64 %127
  store ptr %128, ptr %116, align 8, !tbaa !55
  br label %138

129:                                              ; preds = %115
  call void @Perl_sv_free(ptr noundef %29) #10
  br label %160

130:                                              ; preds = %111
  %131 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !41
  %133 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %112, ptr noundef %132, i64 noundef %114) #10
  %134 = load i32, ptr %3, align 4, !tbaa !43
  %135 = sext i32 %134 to i64
  %136 = icmp eq i64 %133, %135
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  call void @Perl_sv_free(ptr noundef %29) #10
  br label %160

138:                                              ; preds = %122, %130
  %139 = load i32, ptr %3, align 4, !tbaa !43
  %140 = sext i32 %139 to i64
  %141 = load ptr, ptr %29, align 8, !tbaa !85
  %142 = getelementptr inbounds %struct.xpv, ptr %141, i64 0, i32 2
  store i64 %140, ptr %142, align 8, !tbaa !107
  %143 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !41
  %145 = getelementptr inbounds i8, ptr %144, i64 %140
  store i8 0, ptr %145, align 1, !tbaa !41
  %146 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %147 = load i32, ptr %146, align 4, !tbaa !53
  %148 = and i32 %147, 1610547455
  %149 = or disjoint i32 %148, 17408
  store i32 %149, ptr %146, align 4, !tbaa !53
  %150 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 13
  %151 = load i32, ptr %150, align 4, !tbaa !59
  %152 = icmp eq i32 %151, 0
  %153 = load i8, ptr @PL_tainting, align 1, !range !138
  %154 = icmp eq i8 %153, 0
  %155 = select i1 %152, i1 true, i1 %154
  %156 = load i8, ptr @PL_tainted, align 1, !range !138
  %157 = icmp eq i8 %156, 0
  %158 = select i1 %155, i1 true, i1 %157
  br i1 %158, label %160, label %159

159:                                              ; preds = %138
  call void @Perl_sv_magic(ptr noundef nonnull %29, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #10
  br label %160

160:                                              ; preds = %45, %138, %159, %16, %7, %137, %129, %110
  %161 = phi ptr [ %29, %110 ], [ null, %137 ], [ null, %129 ], [ null, %7 ], [ null, %16 ], [ %29, %159 ], [ %29, %138 ], [ null, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %161
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_array(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %139, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %9, align 1
  store i32 %15, ptr %3, align 4
  store ptr %10, ptr %8, align 8, !tbaa !55
  br label %19

16:                                               ; preds = %2
  %17 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 4) #10
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %139

19:                                               ; preds = %16, %14
  %20 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !62
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %3, align 4, !tbaa !43
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  store i32 %25, ptr %3, align 4, !tbaa !43
  br label %26

26:                                               ; preds = %23, %19
  %27 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  %28 = icmp eq ptr %1, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi ptr [ %30, %29 ], [ null, %26 ]
  %33 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !92
  %35 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %36 = load i64, ptr %35, align 8, !tbaa !83
  %37 = add nsw i64 %36, 1
  store i64 %37, ptr %35, align 8, !tbaa !83
  %38 = icmp eq ptr %27, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !91
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !91
  br label %43

43:                                               ; preds = %31, %39
  %44 = call ptr @Perl_av_store(ptr noundef %34, i64 noundef %36, ptr noundef %27) #10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %139, label %46

46:                                               ; preds = %43
  %47 = icmp eq ptr %32, null
  br i1 %47, label %105, label %48

48:                                               ; preds = %46
  %49 = call ptr @Perl_newRV_noinc(ptr noundef %27) #10
  %50 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %51 = load i32, ptr %50, align 8, !tbaa !95
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %94, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.hv, ptr %32, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !98
  %56 = and i32 %55, 33554432
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.hv, ptr %32, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !41
  %61 = load ptr, ptr %32, align 8, !tbaa !73
  %62 = getelementptr inbounds %struct.xpvhv, ptr %61, i64 0, i32 3
  %63 = load i64, ptr %62, align 8, !tbaa !75
  %64 = getelementptr ptr, ptr %60, i64 %63
  %65 = getelementptr ptr, ptr %64, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !41
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %58
  %69 = getelementptr i8, ptr %64, i64 36
  %70 = load i32, ptr %69, align 4, !tbaa !99
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %66, align 8, !tbaa !42
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %68, %72
  %76 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %32, i1 noundef zeroext false) #10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %53, %58, %75
  %79 = load i32, ptr %54, align 4, !tbaa !98
  %80 = and i32 %79, -268435457
  store i32 %80, ptr %54, align 4, !tbaa !98
  br label %94

81:                                               ; preds = %75
  store i32 0, ptr %50, align 8, !tbaa !95
  %82 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !41
  %84 = getelementptr inbounds %struct.sv, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !53
  %86 = and i32 %85, 1048576
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %81
  %89 = load ptr, ptr %83, align 8, !tbaa !85
  %90 = load ptr, ptr %89, align 8, !tbaa !86
  %91 = getelementptr inbounds %struct.hv, ptr %90, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !98
  %93 = or i32 %92, 268435456
  store i32 %93, ptr %91, align 4, !tbaa !98
  br label %94

94:                                               ; preds = %88, %81, %78, %48
  %95 = call ptr @Perl_sv_bless(ptr noundef %49, ptr noundef nonnull %32) #10
  %96 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 3
  store ptr null, ptr %96, align 8, !tbaa !41
  %97 = icmp eq ptr %49, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !91
  %101 = icmp ugt i32 %100, 1
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = add i32 %100, -1
  store i32 %103, ptr %99, align 8, !tbaa !91
  br label %105

104:                                              ; preds = %98
  call void @Perl_sv_free2(ptr noundef nonnull %49, i32 noundef %100) #10
  br label %105

105:                                              ; preds = %104, %102, %94, %46
  %106 = load i32, ptr %3, align 4, !tbaa !43
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %139, label %108

108:                                              ; preds = %105
  %109 = sext i32 %106 to i64
  call void @Perl_av_extend(ptr noundef %27, i64 noundef %109) #10
  %110 = load i32, ptr %3, align 4, !tbaa !43
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %108, %124
  %113 = phi i64 [ %126, %124 ], [ 0, %108 ]
  %114 = phi i8 [ %125, %124 ], [ 0, %108 ]
  %115 = call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %116 = icmp eq ptr %115, null
  br i1 %116, label %139, label %117

117:                                              ; preds = %112
  %118 = icmp eq ptr %115, @PL_sv_undef
  br i1 %118, label %124, label %119

119:                                              ; preds = %117
  %120 = icmp eq ptr %115, @PL_sv_placeholder
  %121 = select i1 %120, ptr @PL_sv_undef, ptr %115
  %122 = call ptr @Perl_av_store(ptr noundef %27, i64 noundef %113, ptr noundef nonnull %121) #10
  %123 = icmp eq ptr %122, null
  br i1 %123, label %139, label %124

124:                                              ; preds = %117, %119
  %125 = phi i8 [ %114, %119 ], [ 1, %117 ]
  %126 = add nuw nsw i64 %113, 1
  %127 = load i32, ptr %3, align 4, !tbaa !43
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %126, %128
  br i1 %129, label %112, label %130, !llvm.loop !143

130:                                              ; preds = %124
  %131 = and i8 %125, 1
  %132 = icmp eq i8 %131, 0
  br label %133

133:                                              ; preds = %130, %108
  %134 = phi i1 [ true, %108 ], [ %132, %130 ]
  %135 = phi i32 [ %110, %108 ], [ %127, %130 ]
  br i1 %134, label %139, label %136

136:                                              ; preds = %133
  %137 = add nsw i32 %135, -1
  %138 = sext i32 %137 to i64
  call void @Perl_av_fill(ptr noundef %27, i64 noundef %138) #10
  br label %139

139:                                              ; preds = %119, %112, %43, %133, %136, %105, %16, %7
  %140 = phi ptr [ null, %7 ], [ null, %16 ], [ %27, %105 ], [ %27, %136 ], [ %27, %133 ], [ null, %43 ], [ null, %112 ], [ null, %119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %140
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_hash(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds i8, ptr %10, i64 4
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = icmp ugt ptr %11, %13
  br i1 %14, label %193, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %10, align 1
  store i32 %16, ptr %3, align 4
  store ptr %11, ptr %9, align 8, !tbaa !55
  br label %20

17:                                               ; preds = %2
  %18 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %6, ptr noundef nonnull %3, i64 noundef 4) #10
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %20, label %193

20:                                               ; preds = %17, %15
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !62
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %3, align 4, !tbaa !43
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  store i32 %26, ptr %3, align 4, !tbaa !43
  br label %27

27:                                               ; preds = %24, %20
  %28 = call ptr @Perl_newSV_type(i32 noundef 12) #10
  %29 = icmp eq ptr %1, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %31, %30 ], [ null, %27 ]
  %34 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  %36 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %37 = load i64, ptr %36, align 8, !tbaa !83
  %38 = add nsw i64 %37, 1
  store i64 %38, ptr %36, align 8, !tbaa !83
  %39 = icmp eq ptr %28, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !91
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 8, !tbaa !91
  br label %44

44:                                               ; preds = %32, %40
  %45 = call ptr @Perl_av_store(ptr noundef %35, i64 noundef %37, ptr noundef %28) #10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %193, label %47

47:                                               ; preds = %44
  %48 = icmp eq ptr %33, null
  br i1 %48, label %106, label %49

49:                                               ; preds = %47
  %50 = call ptr @Perl_newRV_noinc(ptr noundef %28) #10
  %51 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %52 = load i32, ptr %51, align 8, !tbaa !95
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %95, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.hv, ptr %33, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !98
  %57 = and i32 %56, 33554432
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.hv, ptr %33, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !41
  %62 = load ptr, ptr %33, align 8, !tbaa !73
  %63 = getelementptr inbounds %struct.xpvhv, ptr %62, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !75
  %65 = getelementptr ptr, ptr %61, i64 %64
  %66 = getelementptr ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !41
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %59
  %70 = getelementptr i8, ptr %65, i64 36
  %71 = load i32, ptr %70, align 4, !tbaa !99
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %67, align 8, !tbaa !42
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %69, %73
  %77 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %33, i1 noundef zeroext false) #10
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %54, %59, %76
  %80 = load i32, ptr %55, align 4, !tbaa !98
  %81 = and i32 %80, -268435457
  store i32 %81, ptr %55, align 4, !tbaa !98
  br label %95

82:                                               ; preds = %76
  store i32 0, ptr %51, align 8, !tbaa !95
  %83 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !41
  %85 = getelementptr inbounds %struct.sv, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !53
  %87 = and i32 %86, 1048576
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %82
  %90 = load ptr, ptr %84, align 8, !tbaa !85
  %91 = load ptr, ptr %90, align 8, !tbaa !86
  %92 = getelementptr inbounds %struct.hv, ptr %91, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !98
  %94 = or i32 %93, 268435456
  store i32 %94, ptr %92, align 4, !tbaa !98
  br label %95

95:                                               ; preds = %89, %82, %79, %49
  %96 = call ptr @Perl_sv_bless(ptr noundef %50, ptr noundef nonnull %33) #10
  %97 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 3
  store ptr null, ptr %97, align 8, !tbaa !41
  %98 = icmp eq ptr %50, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !91
  %102 = icmp ugt i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = add i32 %101, -1
  store i32 %104, ptr %100, align 8, !tbaa !91
  br label %106

105:                                              ; preds = %99
  call void @Perl_sv_free2(ptr noundef nonnull %50, i32 noundef %101) #10
  br label %106

106:                                              ; preds = %105, %103, %95, %47
  %107 = load i32, ptr %3, align 4, !tbaa !43
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %193, label %109

109:                                              ; preds = %106
  %110 = add nsw i32 %107, 1
  %111 = sext i32 %110 to i64
  call void @Perl_hv_ksplit(ptr noundef %28, i64 noundef %111) #10
  %112 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %113 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %114 = load i32, ptr %3, align 4, !tbaa !43
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %193

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21
  %118 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21, i32 1
  br label %123

119:                                              ; preds = %184
  %120 = add nuw nsw i32 %124, 1
  %121 = load i32, ptr %3, align 4, !tbaa !43
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %193, !llvm.loop !144

123:                                              ; preds = %116, %119
  %124 = phi i32 [ 0, %116 ], [ %120, %119 ]
  %125 = call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %126 = icmp eq ptr %125, null
  br i1 %126, label %193, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %5, align 8, !tbaa !69
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %132 = load ptr, ptr %112, align 8, !tbaa !55
  %133 = getelementptr inbounds i8, ptr %132, i64 4
  %134 = load ptr, ptr %131, align 8, !tbaa !58
  %135 = icmp ugt ptr %133, %134
  br i1 %135, label %193, label %136

136:                                              ; preds = %130
  %137 = load i32, ptr %132, align 1
  store i32 %137, ptr %4, align 4
  store ptr %133, ptr %112, align 8, !tbaa !55
  br label %141

138:                                              ; preds = %127
  %139 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %128, ptr noundef nonnull %4, i64 noundef 4) #10
  %140 = icmp eq i64 %139, 4
  br i1 %140, label %141, label %193

141:                                              ; preds = %138, %136
  %142 = load i32, ptr %21, align 8, !tbaa !62
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, ptr %4, align 4, !tbaa !43
  %146 = call i32 @llvm.bswap.i32(i32 %145)
  store i32 %146, ptr %4, align 4, !tbaa !43
  br label %147

147:                                              ; preds = %141, %144
  %148 = load i32, ptr %4, align 4, !tbaa !43
  %149 = sext i32 %148 to i64
  %150 = load i64, ptr %118, align 8, !tbaa !137
  %151 = icmp ugt i64 %150, %149
  br i1 %151, label %159, label %152

152:                                              ; preds = %147
  %153 = load ptr, ptr %117, align 8, !tbaa !96
  %154 = add nsw i64 %149, 1
  %155 = call ptr @Perl_safesysrealloc(ptr noundef %153, i64 noundef %154) #10
  store ptr %155, ptr %117, align 8, !tbaa !96
  %156 = load i32, ptr %4, align 4, !tbaa !43
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, 1
  store i64 %158, ptr %118, align 8, !tbaa !137
  br label %159

159:                                              ; preds = %152, %147
  %160 = load i32, ptr %4, align 4, !tbaa !43
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %184, label %162

162:                                              ; preds = %159
  %163 = load ptr, ptr %5, align 8, !tbaa !69
  %164 = icmp eq ptr %163, null
  %165 = sext i32 %160 to i64
  br i1 %164, label %166, label %178

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %168 = load ptr, ptr %113, align 8, !tbaa !55
  %169 = getelementptr inbounds i8, ptr %168, i64 %165
  %170 = load ptr, ptr %167, align 8, !tbaa !58
  %171 = icmp ugt ptr %169, %170
  br i1 %171, label %193, label %172

172:                                              ; preds = %166
  %173 = load ptr, ptr %117, align 8, !tbaa !96
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %173, ptr align 1 %168, i64 %165, i1 false)
  %174 = load i32, ptr %4, align 4, !tbaa !43
  %175 = load ptr, ptr %113, align 8, !tbaa !55
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, ptr %175, i64 %176
  store ptr %177, ptr %113, align 8, !tbaa !55
  br label %184

178:                                              ; preds = %162
  %179 = load ptr, ptr %117, align 8, !tbaa !96
  %180 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %163, ptr noundef %179, i64 noundef %165) #10
  %181 = load i32, ptr %4, align 4, !tbaa !43
  %182 = sext i32 %181 to i64
  %183 = icmp eq i64 %180, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %172, %178, %159
  %185 = load ptr, ptr %117, align 8, !tbaa !96
  %186 = load i32, ptr %4, align 4, !tbaa !43
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, ptr %185, i64 %187
  store i8 0, ptr %188, align 1, !tbaa !41
  %189 = load ptr, ptr %117, align 8, !tbaa !96
  %190 = load i32, ptr %4, align 4, !tbaa !43
  %191 = call ptr @Perl_hv_common_key_len(ptr noundef %28, ptr noundef %189, i32 noundef %190, i32 noundef 36, ptr noundef nonnull %125, i32 noundef 0) #10
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %119

193:                                              ; preds = %123, %130, %166, %184, %119, %138, %178, %109, %44, %106, %17, %8
  %194 = phi ptr [ null, %8 ], [ null, %17 ], [ %28, %106 ], [ null, %44 ], [ %28, %109 ], [ null, %178 ], [ null, %138 ], [ %28, %119 ], [ null, %184 ], [ null, %166 ], [ null, %130 ], [ null, %123 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %194
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_ref(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !83
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !83
  %14 = icmp eq ptr %3, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !91
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %7, %15
  %20 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %91, label %22

22:                                               ; preds = %19
  %23 = icmp eq ptr %8, null
  br i1 %23, label %81, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #10
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !95
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !98
  %32 = and i32 %31, 33554432
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !41
  %37 = load ptr, ptr %8, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !75
  %40 = getelementptr ptr, ptr %36, i64 %39
  %41 = getelementptr ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %40, i64 36
  %46 = load i32, ptr %45, align 4, !tbaa !99
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %42, align 8, !tbaa !42
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44, %48
  %52 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %29, %34, %51
  %55 = load i32, ptr %30, align 4, !tbaa !98
  %56 = and i32 %55, -268435457
  store i32 %56, ptr %30, align 4, !tbaa !98
  br label %70

57:                                               ; preds = %51
  store i32 0, ptr %26, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !53
  %62 = and i32 %61, 1048576
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %59, align 8, !tbaa !85
  %66 = load ptr, ptr %65, align 8, !tbaa !86
  %67 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !98
  %69 = or i32 %68, 268435456
  store i32 %69, ptr %67, align 4, !tbaa !98
  br label %70

70:                                               ; preds = %64, %57, %54, %24
  %71 = tail call ptr @Perl_sv_bless(ptr noundef %25, ptr noundef nonnull %8) #10
  %72 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  store ptr null, ptr %72, align 8, !tbaa !41
  %73 = icmp eq ptr %25, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !91
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = add i32 %76, -1
  store i32 %79, ptr %75, align 8, !tbaa !91
  br label %81

80:                                               ; preds = %74
  tail call void @Perl_sv_free2(ptr noundef nonnull %25, i32 noundef %76) #10
  br label %81

81:                                               ; preds = %80, %78, %70, %22
  %82 = tail call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  br i1 %4, label %85, label %86

85:                                               ; preds = %84
  tail call void @Perl_sv_upgrade(ptr noundef %3, i32 noundef 1) #10
  br label %86

86:                                               ; preds = %85, %84
  %87 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  store ptr %82, ptr %87, align 8, !tbaa !41
  %88 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !53
  %90 = or i32 %89, 2048
  store i32 %90, ptr %88, align 4, !tbaa !53
  br label %91

91:                                               ; preds = %81, %19, %86
  %92 = phi ptr [ %3, %86 ], [ null, %19 ], [ null, %81 ]
  ret ptr %92
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_undef(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !83
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !83
  %14 = icmp eq ptr %3, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !91
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %7, %15
  %20 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %81, label %22

22:                                               ; preds = %19
  %23 = icmp eq ptr %8, null
  br i1 %23, label %81, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #10
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !95
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !98
  %32 = and i32 %31, 33554432
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !41
  %37 = load ptr, ptr %8, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !75
  %40 = getelementptr ptr, ptr %36, i64 %39
  %41 = getelementptr ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %40, i64 36
  %46 = load i32, ptr %45, align 4, !tbaa !99
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %42, align 8, !tbaa !42
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44, %48
  %52 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %29, %34, %51
  %55 = load i32, ptr %30, align 4, !tbaa !98
  %56 = and i32 %55, -268435457
  store i32 %56, ptr %30, align 4, !tbaa !98
  br label %70

57:                                               ; preds = %51
  store i32 0, ptr %26, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !53
  %62 = and i32 %61, 1048576
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %59, align 8, !tbaa !85
  %66 = load ptr, ptr %65, align 8, !tbaa !86
  %67 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !98
  %69 = or i32 %68, 268435456
  store i32 %69, ptr %67, align 4, !tbaa !98
  br label %70

70:                                               ; preds = %64, %57, %54, %24
  %71 = tail call ptr @Perl_sv_bless(ptr noundef %25, ptr noundef nonnull %8) #10
  %72 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  store ptr null, ptr %72, align 8, !tbaa !41
  %73 = icmp eq ptr %25, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !91
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = add i32 %76, -1
  store i32 %79, ptr %75, align 8, !tbaa !91
  br label %81

80:                                               ; preds = %74
  tail call void @Perl_sv_free2(ptr noundef nonnull %25, i32 noundef %76) #10
  br label %81

81:                                               ; preds = %80, %78, %70, %22, %19
  %82 = phi ptr [ null, %19 ], [ %3, %22 ], [ %3, %70 ], [ %3, %78 ], [ %3, %80 ]
  ret ptr %82
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_integer(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds i8, ptr %9, i64 8
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %99, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %9, align 1
  store i64 %15, ptr %3, align 8
  store ptr %10, ptr %8, align 8, !tbaa !55
  br label %19

16:                                               ; preds = %2
  %17 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 8) #10
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %19, label %99

19:                                               ; preds = %16, %14
  %20 = load i64, ptr %3, align 8, !tbaa !82
  %21 = call ptr @Perl_newSViv(i64 noundef %20) #10
  %22 = icmp eq ptr %1, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi ptr [ %24, %23 ], [ null, %19 ]
  %27 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !92
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %30 = load i64, ptr %29, align 8, !tbaa !83
  %31 = add nsw i64 %30, 1
  store i64 %31, ptr %29, align 8, !tbaa !83
  %32 = icmp eq ptr %21, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !91
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 8, !tbaa !91
  br label %37

37:                                               ; preds = %25, %33
  %38 = call ptr @Perl_av_store(ptr noundef %28, i64 noundef %30, ptr noundef %21) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %99, label %40

40:                                               ; preds = %37
  %41 = icmp eq ptr %26, null
  br i1 %41, label %99, label %42

42:                                               ; preds = %40
  %43 = call ptr @Perl_newRV_noinc(ptr noundef %21) #10
  %44 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %45 = load i32, ptr %44, align 8, !tbaa !95
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %88, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.hv, ptr %26, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !98
  %50 = and i32 %49, 33554432
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.hv, ptr %26, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !41
  %55 = load ptr, ptr %26, align 8, !tbaa !73
  %56 = getelementptr inbounds %struct.xpvhv, ptr %55, i64 0, i32 3
  %57 = load i64, ptr %56, align 8, !tbaa !75
  %58 = getelementptr ptr, ptr %54, i64 %57
  %59 = getelementptr ptr, ptr %58, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !41
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %52
  %63 = getelementptr i8, ptr %58, i64 36
  %64 = load i32, ptr %63, align 4, !tbaa !99
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %60, align 8, !tbaa !42
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %62, %66
  %70 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %26, i1 noundef zeroext false) #10
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66, %47, %52, %69
  %73 = load i32, ptr %48, align 4, !tbaa !98
  %74 = and i32 %73, -268435457
  store i32 %74, ptr %48, align 4, !tbaa !98
  br label %88

75:                                               ; preds = %69
  store i32 0, ptr %44, align 8, !tbaa !95
  %76 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !41
  %78 = getelementptr inbounds %struct.sv, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !53
  %80 = and i32 %79, 1048576
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = load ptr, ptr %77, align 8, !tbaa !85
  %84 = load ptr, ptr %83, align 8, !tbaa !86
  %85 = getelementptr inbounds %struct.hv, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !98
  %87 = or i32 %86, 268435456
  store i32 %87, ptr %85, align 4, !tbaa !98
  br label %88

88:                                               ; preds = %82, %75, %72, %42
  %89 = call ptr @Perl_sv_bless(ptr noundef %43, ptr noundef nonnull %26) #10
  %90 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 3
  store ptr null, ptr %90, align 8, !tbaa !41
  %91 = icmp eq ptr %43, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !91
  %95 = icmp ugt i32 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = add i32 %94, -1
  store i32 %97, ptr %93, align 8, !tbaa !91
  br label %99

98:                                               ; preds = %92
  call void @Perl_sv_free2(ptr noundef nonnull %43, i32 noundef %94) #10
  br label %99

99:                                               ; preds = %37, %98, %96, %88, %40, %16, %7
  %100 = phi ptr [ null, %7 ], [ null, %16 ], [ %21, %40 ], [ %21, %88 ], [ %21, %96 ], [ %21, %98 ], [ null, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret ptr %100
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_double(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds i8, ptr %9, i64 8
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %99, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %9, align 1
  store i64 %15, ptr %3, align 8
  store ptr %10, ptr %8, align 8, !tbaa !55
  br label %19

16:                                               ; preds = %2
  %17 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 8) #10
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %19, label %99

19:                                               ; preds = %16, %14
  %20 = load double, ptr %3, align 8, !tbaa !119
  %21 = call ptr @Perl_newSVnv(double noundef %20) #10
  %22 = icmp eq ptr %1, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi ptr [ %24, %23 ], [ null, %19 ]
  %27 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !92
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %30 = load i64, ptr %29, align 8, !tbaa !83
  %31 = add nsw i64 %30, 1
  store i64 %31, ptr %29, align 8, !tbaa !83
  %32 = icmp eq ptr %21, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !91
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 8, !tbaa !91
  br label %37

37:                                               ; preds = %25, %33
  %38 = call ptr @Perl_av_store(ptr noundef %28, i64 noundef %30, ptr noundef %21) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %99, label %40

40:                                               ; preds = %37
  %41 = icmp eq ptr %26, null
  br i1 %41, label %99, label %42

42:                                               ; preds = %40
  %43 = call ptr @Perl_newRV_noinc(ptr noundef %21) #10
  %44 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %45 = load i32, ptr %44, align 8, !tbaa !95
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %88, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.hv, ptr %26, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !98
  %50 = and i32 %49, 33554432
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.hv, ptr %26, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !41
  %55 = load ptr, ptr %26, align 8, !tbaa !73
  %56 = getelementptr inbounds %struct.xpvhv, ptr %55, i64 0, i32 3
  %57 = load i64, ptr %56, align 8, !tbaa !75
  %58 = getelementptr ptr, ptr %54, i64 %57
  %59 = getelementptr ptr, ptr %58, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !41
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %52
  %63 = getelementptr i8, ptr %58, i64 36
  %64 = load i32, ptr %63, align 4, !tbaa !99
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %60, align 8, !tbaa !42
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %62, %66
  %70 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %26, i1 noundef zeroext false) #10
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66, %47, %52, %69
  %73 = load i32, ptr %48, align 4, !tbaa !98
  %74 = and i32 %73, -268435457
  store i32 %74, ptr %48, align 4, !tbaa !98
  br label %88

75:                                               ; preds = %69
  store i32 0, ptr %44, align 8, !tbaa !95
  %76 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !41
  %78 = getelementptr inbounds %struct.sv, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !53
  %80 = and i32 %79, 1048576
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = load ptr, ptr %77, align 8, !tbaa !85
  %84 = load ptr, ptr %83, align 8, !tbaa !86
  %85 = getelementptr inbounds %struct.hv, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !98
  %87 = or i32 %86, 268435456
  store i32 %87, ptr %85, align 4, !tbaa !98
  br label %88

88:                                               ; preds = %82, %75, %72, %42
  %89 = call ptr @Perl_sv_bless(ptr noundef %43, ptr noundef nonnull %26) #10
  %90 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 3
  store ptr null, ptr %90, align 8, !tbaa !41
  %91 = icmp eq ptr %43, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !91
  %95 = icmp ugt i32 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = add i32 %94, -1
  store i32 %97, ptr %93, align 8, !tbaa !91
  br label %99

98:                                               ; preds = %92
  call void @Perl_sv_free2(ptr noundef nonnull %43, i32 noundef %94) #10
  br label %99

99:                                               ; preds = %37, %98, %96, %88, %40, %16, %7
  %100 = phi ptr [ null, %7 ], [ null, %16 ], [ %21, %40 ], [ %21, %88 ], [ %21, %96 ], [ %21, %98 ], [ null, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret ptr %100
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_byte(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = icmp ult ptr %8, %10
  br i1 %11, label %12, label %103

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %13, ptr %7, align 8, !tbaa !55
  %14 = load i8, ptr %8, align 1, !tbaa !41
  %15 = zext i8 %14 to i32
  br label %19

16:                                               ; preds = %2
  %17 = tail call i32 @PerlIO_getc(ptr noundef nonnull %4) #10
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %103, label %19

19:                                               ; preds = %16, %12
  %20 = phi i32 [ %17, %16 ], [ %15, %12 ]
  %21 = xor i32 %20, 128
  %22 = zext i32 %21 to i64
  %23 = shl i64 %22, 56
  %24 = ashr exact i64 %23, 56
  %25 = tail call ptr @Perl_newSViv(i64 noundef %24) #10
  %26 = icmp eq ptr %1, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %29

29:                                               ; preds = %19, %27
  %30 = phi ptr [ %28, %27 ], [ null, %19 ]
  %31 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  %33 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %34 = load i64, ptr %33, align 8, !tbaa !83
  %35 = add nsw i64 %34, 1
  store i64 %35, ptr %33, align 8, !tbaa !83
  %36 = icmp eq ptr %25, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !91
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !91
  br label %41

41:                                               ; preds = %29, %37
  %42 = tail call ptr @Perl_av_store(ptr noundef %32, i64 noundef %34, ptr noundef %25) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %103, label %44

44:                                               ; preds = %41
  %45 = icmp eq ptr %30, null
  br i1 %45, label %103, label %46

46:                                               ; preds = %44
  %47 = tail call ptr @Perl_newRV_noinc(ptr noundef %25) #10
  %48 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %49 = load i32, ptr %48, align 8, !tbaa !95
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %92, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.hv, ptr %30, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !98
  %54 = and i32 %53, 33554432
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.hv, ptr %30, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !41
  %59 = load ptr, ptr %30, align 8, !tbaa !73
  %60 = getelementptr inbounds %struct.xpvhv, ptr %59, i64 0, i32 3
  %61 = load i64, ptr %60, align 8, !tbaa !75
  %62 = getelementptr ptr, ptr %58, i64 %61
  %63 = getelementptr ptr, ptr %62, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !41
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %56
  %67 = getelementptr i8, ptr %62, i64 36
  %68 = load i32, ptr %67, align 4, !tbaa !99
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %64, align 8, !tbaa !42
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %66, %70
  %74 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %30, i1 noundef zeroext false) #10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %51, %56, %73
  %77 = load i32, ptr %52, align 4, !tbaa !98
  %78 = and i32 %77, -268435457
  store i32 %78, ptr %52, align 4, !tbaa !98
  br label %92

79:                                               ; preds = %73
  store i32 0, ptr %48, align 8, !tbaa !95
  %80 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !41
  %82 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !53
  %84 = and i32 %83, 1048576
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr %81, align 8, !tbaa !85
  %88 = load ptr, ptr %87, align 8, !tbaa !86
  %89 = getelementptr inbounds %struct.hv, ptr %88, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !98
  %91 = or i32 %90, 268435456
  store i32 %91, ptr %89, align 4, !tbaa !98
  br label %92

92:                                               ; preds = %86, %79, %76, %46
  %93 = tail call ptr @Perl_sv_bless(ptr noundef %47, ptr noundef nonnull %30) #10
  %94 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 3
  store ptr null, ptr %94, align 8, !tbaa !41
  %95 = icmp eq ptr %47, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !91
  %99 = icmp ugt i32 %98, 1
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = add i32 %98, -1
  store i32 %101, ptr %97, align 8, !tbaa !91
  br label %103

102:                                              ; preds = %96
  tail call void @Perl_sv_free2(ptr noundef nonnull %47, i32 noundef %98) #10
  br label %103

103:                                              ; preds = %41, %102, %100, %92, %44, %16, %6
  %104 = phi ptr [ null, %6 ], [ null, %16 ], [ %25, %44 ], [ %25, %92 ], [ %25, %100 ], [ %25, %102 ], [ null, %41 ]
  ret ptr %104
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_netint(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %101, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %9, align 1
  store i32 %15, ptr %3, align 4
  store ptr %10, ptr %8, align 8, !tbaa !55
  br label %19

16:                                               ; preds = %2
  %17 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 4) #10
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %101

19:                                               ; preds = %16, %14
  %20 = load i32, ptr %3, align 4, !tbaa !43
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = call ptr @Perl_newSViv(i64 noundef %22) #10
  %24 = icmp eq ptr %1, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %27

27:                                               ; preds = %19, %25
  %28 = phi ptr [ %26, %25 ], [ null, %19 ]
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !92
  %31 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %32 = load i64, ptr %31, align 8, !tbaa !83
  %33 = add nsw i64 %32, 1
  store i64 %33, ptr %31, align 8, !tbaa !83
  %34 = icmp eq ptr %23, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !91
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 8, !tbaa !91
  br label %39

39:                                               ; preds = %27, %35
  %40 = call ptr @Perl_av_store(ptr noundef %30, i64 noundef %32, ptr noundef %23) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %101, label %42

42:                                               ; preds = %39
  %43 = icmp eq ptr %28, null
  br i1 %43, label %101, label %44

44:                                               ; preds = %42
  %45 = call ptr @Perl_newRV_noinc(ptr noundef %23) #10
  %46 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %47 = load i32, ptr %46, align 8, !tbaa !95
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %90, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.hv, ptr %28, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !98
  %52 = and i32 %51, 33554432
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.hv, ptr %28, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !41
  %57 = load ptr, ptr %28, align 8, !tbaa !73
  %58 = getelementptr inbounds %struct.xpvhv, ptr %57, i64 0, i32 3
  %59 = load i64, ptr %58, align 8, !tbaa !75
  %60 = getelementptr ptr, ptr %56, i64 %59
  %61 = getelementptr ptr, ptr %60, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !41
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %54
  %65 = getelementptr i8, ptr %60, i64 36
  %66 = load i32, ptr %65, align 4, !tbaa !99
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %62, align 8, !tbaa !42
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %64, %68
  %72 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %28, i1 noundef zeroext false) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68, %49, %54, %71
  %75 = load i32, ptr %50, align 4, !tbaa !98
  %76 = and i32 %75, -268435457
  store i32 %76, ptr %50, align 4, !tbaa !98
  br label %90

77:                                               ; preds = %71
  store i32 0, ptr %46, align 8, !tbaa !95
  %78 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !41
  %80 = getelementptr inbounds %struct.sv, ptr %79, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !53
  %82 = and i32 %81, 1048576
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %77
  %85 = load ptr, ptr %79, align 8, !tbaa !85
  %86 = load ptr, ptr %85, align 8, !tbaa !86
  %87 = getelementptr inbounds %struct.hv, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !98
  %89 = or i32 %88, 268435456
  store i32 %89, ptr %87, align 4, !tbaa !98
  br label %90

90:                                               ; preds = %84, %77, %74, %44
  %91 = call ptr @Perl_sv_bless(ptr noundef %45, ptr noundef nonnull %28) #10
  %92 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 3
  store ptr null, ptr %92, align 8, !tbaa !41
  %93 = icmp eq ptr %45, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !91
  %97 = icmp ugt i32 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = add i32 %96, -1
  store i32 %99, ptr %95, align 8, !tbaa !91
  br label %101

100:                                              ; preds = %94
  call void @Perl_sv_free2(ptr noundef nonnull %45, i32 noundef %96) #10
  br label %101

101:                                              ; preds = %39, %100, %98, %90, %42, %16, %7
  %102 = phi ptr [ null, %7 ], [ null, %16 ], [ %23, %42 ], [ %23, %90 ], [ %23, %98 ], [ %23, %100 ], [ null, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %102
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_scalar(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = icmp ult ptr %8, %10
  br i1 %11, label %12, label %170

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %13, ptr %7, align 8, !tbaa !55
  %14 = load i8, ptr %8, align 1, !tbaa !41
  %15 = zext i8 %14 to i32
  br label %19

16:                                               ; preds = %2
  %17 = tail call i32 @PerlIO_getc(ptr noundef nonnull %4) #10
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %170, label %19

19:                                               ; preds = %16, %12
  %20 = phi i32 [ %17, %16 ], [ %15, %12 ]
  %21 = sext i32 %20 to i64
  %22 = tail call ptr @Perl_newSV(i64 noundef %21) #10
  %23 = icmp eq ptr %1, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %26

26:                                               ; preds = %19, %24
  %27 = phi ptr [ %25, %24 ], [ null, %19 ]
  %28 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %31 = load i64, ptr %30, align 8, !tbaa !83
  %32 = add nsw i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !83
  %33 = icmp eq ptr %22, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !91
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !91
  br label %38

38:                                               ; preds = %26, %34
  %39 = tail call ptr @Perl_av_store(ptr noundef %29, i64 noundef %31, ptr noundef %22) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %170, label %41

41:                                               ; preds = %38
  %42 = icmp eq ptr %27, null
  br i1 %42, label %100, label %43

43:                                               ; preds = %41
  %44 = tail call ptr @Perl_newRV_noinc(ptr noundef %22) #10
  %45 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %46 = load i32, ptr %45, align 8, !tbaa !95
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %89, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.hv, ptr %27, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !98
  %51 = and i32 %50, 33554432
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.hv, ptr %27, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !41
  %56 = load ptr, ptr %27, align 8, !tbaa !73
  %57 = getelementptr inbounds %struct.xpvhv, ptr %56, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !75
  %59 = getelementptr ptr, ptr %55, i64 %58
  %60 = getelementptr ptr, ptr %59, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !41
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %53
  %64 = getelementptr i8, ptr %59, i64 36
  %65 = load i32, ptr %64, align 4, !tbaa !99
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %61, align 8, !tbaa !42
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %63, %67
  %71 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %27, i1 noundef zeroext false) #10
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67, %48, %53, %70
  %74 = load i32, ptr %49, align 4, !tbaa !98
  %75 = and i32 %74, -268435457
  store i32 %75, ptr %49, align 4, !tbaa !98
  br label %89

76:                                               ; preds = %70
  store i32 0, ptr %45, align 8, !tbaa !95
  %77 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !41
  %79 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !53
  %81 = and i32 %80, 1048576
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %76
  %84 = load ptr, ptr %78, align 8, !tbaa !85
  %85 = load ptr, ptr %84, align 8, !tbaa !86
  %86 = getelementptr inbounds %struct.hv, ptr %85, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !98
  %88 = or i32 %87, 268435456
  store i32 %88, ptr %86, align 4, !tbaa !98
  br label %89

89:                                               ; preds = %83, %76, %73, %43
  %90 = tail call ptr @Perl_sv_bless(ptr noundef %44, ptr noundef nonnull %27) #10
  %91 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 3
  store ptr null, ptr %91, align 8, !tbaa !41
  %92 = icmp eq ptr %44, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !91
  %96 = icmp ugt i32 %95, 1
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = add i32 %95, -1
  store i32 %98, ptr %94, align 8, !tbaa !91
  br label %100

99:                                               ; preds = %93
  tail call void @Perl_sv_free2(ptr noundef nonnull %44, i32 noundef %95) #10
  br label %100

100:                                              ; preds = %99, %97, %89, %41
  %101 = icmp eq i32 %20, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !53
  %105 = and i32 %104, 252
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  tail call void @Perl_sv_upgrade(ptr noundef %22, i32 noundef 3) #10
  br label %108

108:                                              ; preds = %107, %102
  %109 = load i32, ptr %103, align 4, !tbaa !53
  %110 = and i32 %109, 268435456
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load ptr, ptr %22, align 8, !tbaa !85
  %114 = getelementptr inbounds %struct.xpv, ptr %113, i64 0, i32 3
  %115 = load i64, ptr %114, align 8, !tbaa !41
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112, %108
  %118 = tail call ptr @Perl_sv_grow(ptr noundef %22, i64 noundef 1) #10
  br label %119

119:                                              ; preds = %112, %117
  %120 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !41
  %122 = load ptr, ptr %22, align 8, !tbaa !85
  %123 = getelementptr inbounds %struct.xpv, ptr %122, i64 0, i32 2
  %124 = load i64, ptr %123, align 8, !tbaa !107
  %125 = getelementptr inbounds i8, ptr %121, i64 %124
  br label %154

126:                                              ; preds = %100
  %127 = load ptr, ptr %3, align 8, !tbaa !69
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !55
  %132 = getelementptr inbounds i8, ptr %131, i64 %21
  %133 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !58
  %135 = icmp ugt ptr %132, %134
  br i1 %135, label %141, label %136

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %138, ptr align 1 %131, i64 %21, i1 false)
  %139 = load ptr, ptr %130, align 8, !tbaa !55
  %140 = getelementptr inbounds i8, ptr %139, i64 %21
  store ptr %140, ptr %130, align 8, !tbaa !55
  br label %148

141:                                              ; preds = %129
  tail call void @Perl_sv_free(ptr noundef %22) #10
  br label %170

142:                                              ; preds = %126
  %143 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !41
  %145 = tail call i64 @Perl_PerlIO_read(ptr noundef nonnull %127, ptr noundef %144, i64 noundef %21) #10
  %146 = icmp eq i64 %145, %21
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  tail call void @Perl_sv_free(ptr noundef %22) #10
  br label %170

148:                                              ; preds = %136, %142
  %149 = load ptr, ptr %22, align 8, !tbaa !85
  %150 = getelementptr inbounds %struct.xpv, ptr %149, i64 0, i32 2
  store i64 %21, ptr %150, align 8, !tbaa !107
  %151 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !41
  %153 = getelementptr inbounds i8, ptr %152, i64 %21
  br label %154

154:                                              ; preds = %148, %119
  %155 = phi ptr [ %153, %148 ], [ %125, %119 ]
  store i8 0, ptr %155, align 1, !tbaa !41
  %156 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !53
  %158 = and i32 %157, 1610547455
  %159 = or disjoint i32 %158, 17408
  store i32 %159, ptr %156, align 4, !tbaa !53
  %160 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 13
  %161 = load i32, ptr %160, align 4, !tbaa !59
  %162 = icmp eq i32 %161, 0
  %163 = load i8, ptr @PL_tainting, align 1, !range !138
  %164 = icmp eq i8 %163, 0
  %165 = select i1 %162, i1 true, i1 %164
  %166 = load i8, ptr @PL_tainted, align 1, !range !138
  %167 = icmp eq i8 %166, 0
  %168 = select i1 %165, i1 true, i1 %167
  br i1 %168, label %170, label %169

169:                                              ; preds = %154
  tail call void @Perl_sv_magic(ptr noundef %22, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #10
  br label %170

170:                                              ; preds = %38, %154, %169, %16, %6, %147, %141
  %171 = phi ptr [ null, %147 ], [ null, %141 ], [ null, %6 ], [ null, %16 ], [ %22, %169 ], [ %22, %154 ], [ null, %38 ]
  ret ptr %171
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_tied_array(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !83
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !83
  %14 = icmp eq ptr %3, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !91
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %7, %15
  %20 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %94, label %22

22:                                               ; preds = %19
  %23 = icmp eq ptr %8, null
  br i1 %23, label %81, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #10
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !95
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !98
  %32 = and i32 %31, 33554432
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !41
  %37 = load ptr, ptr %8, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !75
  %40 = getelementptr ptr, ptr %36, i64 %39
  %41 = getelementptr ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %40, i64 36
  %46 = load i32, ptr %45, align 4, !tbaa !99
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %42, align 8, !tbaa !42
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44, %48
  %52 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %29, %34, %51
  %55 = load i32, ptr %30, align 4, !tbaa !98
  %56 = and i32 %55, -268435457
  store i32 %56, ptr %30, align 4, !tbaa !98
  br label %70

57:                                               ; preds = %51
  store i32 0, ptr %26, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !53
  %62 = and i32 %61, 1048576
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %59, align 8, !tbaa !85
  %66 = load ptr, ptr %65, align 8, !tbaa !86
  %67 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !98
  %69 = or i32 %68, 268435456
  store i32 %69, ptr %67, align 4, !tbaa !98
  br label %70

70:                                               ; preds = %64, %57, %54, %24
  %71 = tail call ptr @Perl_sv_bless(ptr noundef %25, ptr noundef nonnull %8) #10
  %72 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  store ptr null, ptr %72, align 8, !tbaa !41
  %73 = icmp eq ptr %25, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !91
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = add i32 %76, -1
  store i32 %79, ptr %75, align 8, !tbaa !91
  br label %81

80:                                               ; preds = %74
  tail call void @Perl_sv_free2(ptr noundef nonnull %25, i32 noundef %76) #10
  br label %81

81:                                               ; preds = %80, %78, %70, %22
  %82 = tail call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %83 = icmp eq ptr %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  tail call void @Perl_sv_upgrade(ptr noundef %3, i32 noundef 11) #10
  %85 = getelementptr inbounds %struct.av, ptr %3, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !145
  %87 = and i32 %86, -1073741825
  store i32 %87, ptr %85, align 4, !tbaa !145
  tail call void @Perl_sv_magic(ptr noundef %3, ptr noundef nonnull %82, i32 noundef 80, ptr noundef null, i32 noundef 0) #10
  %88 = getelementptr inbounds %struct.sv, ptr %82, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !91
  %90 = icmp ugt i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = add i32 %89, -1
  store i32 %92, ptr %88, align 8, !tbaa !91
  br label %94

93:                                               ; preds = %84
  tail call void @Perl_sv_free2(ptr noundef nonnull %82, i32 noundef %89) #10
  br label %94

94:                                               ; preds = %93, %91, %81, %19
  %95 = phi ptr [ null, %19 ], [ null, %81 ], [ %3, %91 ], [ %3, %93 ]
  ret ptr %95
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_tied_hash(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !83
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !83
  %14 = icmp eq ptr %3, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !91
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %7, %15
  %20 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %91, label %22

22:                                               ; preds = %19
  %23 = icmp eq ptr %8, null
  br i1 %23, label %81, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #10
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !95
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !98
  %32 = and i32 %31, 33554432
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !41
  %37 = load ptr, ptr %8, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !75
  %40 = getelementptr ptr, ptr %36, i64 %39
  %41 = getelementptr ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %40, i64 36
  %46 = load i32, ptr %45, align 4, !tbaa !99
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %42, align 8, !tbaa !42
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44, %48
  %52 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %29, %34, %51
  %55 = load i32, ptr %30, align 4, !tbaa !98
  %56 = and i32 %55, -268435457
  store i32 %56, ptr %30, align 4, !tbaa !98
  br label %70

57:                                               ; preds = %51
  store i32 0, ptr %26, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !53
  %62 = and i32 %61, 1048576
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %59, align 8, !tbaa !85
  %66 = load ptr, ptr %65, align 8, !tbaa !86
  %67 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !98
  %69 = or i32 %68, 268435456
  store i32 %69, ptr %67, align 4, !tbaa !98
  br label %70

70:                                               ; preds = %64, %57, %54, %24
  %71 = tail call ptr @Perl_sv_bless(ptr noundef %25, ptr noundef nonnull %8) #10
  %72 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  store ptr null, ptr %72, align 8, !tbaa !41
  %73 = icmp eq ptr %25, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !91
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = add i32 %76, -1
  store i32 %79, ptr %75, align 8, !tbaa !91
  br label %81

80:                                               ; preds = %74
  tail call void @Perl_sv_free2(ptr noundef nonnull %25, i32 noundef %76) #10
  br label %81

81:                                               ; preds = %80, %78, %70, %22
  %82 = tail call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  tail call void @Perl_sv_upgrade(ptr noundef %3, i32 noundef 12) #10
  tail call void @Perl_sv_magic(ptr noundef %3, ptr noundef nonnull %82, i32 noundef 80, ptr noundef null, i32 noundef 0) #10
  %85 = getelementptr inbounds %struct.sv, ptr %82, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !91
  %87 = icmp ugt i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = add i32 %86, -1
  store i32 %89, ptr %85, align 8, !tbaa !91
  br label %91

90:                                               ; preds = %84
  tail call void @Perl_sv_free2(ptr noundef nonnull %82, i32 noundef %86) #10
  br label %91

91:                                               ; preds = %90, %88, %81, %19
  %92 = phi ptr [ null, %19 ], [ null, %81 ], [ %3, %88 ], [ %3, %90 ]
  ret ptr %92
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_tied_scalar(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !83
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !83
  %14 = icmp eq ptr %3, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !91
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %7, %15
  %20 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %97, label %22

22:                                               ; preds = %19
  %23 = icmp eq ptr %8, null
  br i1 %23, label %81, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #10
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !95
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !98
  %32 = and i32 %31, 33554432
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !41
  %37 = load ptr, ptr %8, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !75
  %40 = getelementptr ptr, ptr %36, i64 %39
  %41 = getelementptr ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %40, i64 36
  %46 = load i32, ptr %45, align 4, !tbaa !99
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %42, align 8, !tbaa !42
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44, %48
  %52 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %29, %34, %51
  %55 = load i32, ptr %30, align 4, !tbaa !98
  %56 = and i32 %55, -268435457
  store i32 %56, ptr %30, align 4, !tbaa !98
  br label %70

57:                                               ; preds = %51
  store i32 0, ptr %26, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !53
  %62 = and i32 %61, 1048576
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %59, align 8, !tbaa !85
  %66 = load ptr, ptr %65, align 8, !tbaa !86
  %67 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !98
  %69 = or i32 %68, 268435456
  store i32 %69, ptr %67, align 4, !tbaa !98
  br label %70

70:                                               ; preds = %64, %57, %54, %24
  %71 = tail call ptr @Perl_sv_bless(ptr noundef %25, ptr noundef nonnull %8) #10
  %72 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  store ptr null, ptr %72, align 8, !tbaa !41
  %73 = icmp eq ptr %25, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !91
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = add i32 %76, -1
  store i32 %79, ptr %75, align 8, !tbaa !91
  br label %81

80:                                               ; preds = %74
  tail call void @Perl_sv_free2(ptr noundef nonnull %25, i32 noundef %76) #10
  br label %81

81:                                               ; preds = %80, %78, %70, %22
  %82 = tail call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %83 = icmp eq ptr %82, null
  br i1 %83, label %97, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.sv, ptr %82, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !53
  %87 = and i32 %86, 255
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, ptr null, ptr %82
  tail call void @Perl_sv_upgrade(ptr noundef %3, i32 noundef 7) #10
  tail call void @Perl_sv_magic(ptr noundef %3, ptr noundef %89, i32 noundef 113, ptr noundef null, i32 noundef 0) #10
  br i1 %88, label %97, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.sv, ptr %89, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !91
  %93 = icmp ugt i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = add i32 %92, -1
  store i32 %95, ptr %91, align 8, !tbaa !91
  br label %97

96:                                               ; preds = %90
  tail call void @Perl_sv_free2(ptr noundef nonnull %89, i32 noundef %92) #10
  br label %97

97:                                               ; preds = %96, %94, %84, %81, %19
  %98 = phi ptr [ null, %19 ], [ null, %81 ], [ %3, %84 ], [ %3, %94 ], [ %3, %96 ]
  ret ptr %98
}

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @retrieve_sv_undef(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 6
  %4 = load i64, ptr %3, align 8, !tbaa !93
  %5 = icmp eq i64 %4, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %8 = load i64, ptr %7, align 8, !tbaa !83
  store i64 %8, ptr %3, align 8, !tbaa !93
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %13

13:                                               ; preds = %9, %11
  %14 = phi ptr [ %12, %11 ], [ null, %9 ]
  %15 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %18 = load i64, ptr %17, align 8, !tbaa !83
  %19 = add nsw i64 %18, 1
  store i64 %19, ptr %17, align 8, !tbaa !83
  %20 = tail call ptr @Perl_av_store(ptr noundef %16, i64 noundef %18, ptr noundef nonnull @PL_sv_undef) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %81, label %22

22:                                               ; preds = %13
  %23 = icmp eq ptr %14, null
  br i1 %23, label %81, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @Perl_newRV_noinc(ptr noundef nonnull @PL_sv_undef) #10
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !95
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %14, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !98
  %32 = and i32 %31, 33554432
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.hv, ptr %14, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !41
  %37 = load ptr, ptr %14, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !75
  %40 = getelementptr ptr, ptr %36, i64 %39
  %41 = getelementptr ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %40, i64 36
  %46 = load i32, ptr %45, align 4, !tbaa !99
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %42, align 8, !tbaa !42
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44, %48
  %52 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %14, i1 noundef zeroext false) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %29, %34, %51
  %55 = load i32, ptr %30, align 4, !tbaa !98
  %56 = and i32 %55, -268435457
  store i32 %56, ptr %30, align 4, !tbaa !98
  br label %70

57:                                               ; preds = %51
  store i32 0, ptr %26, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !53
  %62 = and i32 %61, 1048576
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %59, align 8, !tbaa !85
  %66 = load ptr, ptr %65, align 8, !tbaa !86
  %67 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !98
  %69 = or i32 %68, 268435456
  store i32 %69, ptr %67, align 4, !tbaa !98
  br label %70

70:                                               ; preds = %64, %57, %54, %24
  %71 = tail call ptr @Perl_sv_bless(ptr noundef %25, ptr noundef nonnull %14) #10
  %72 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  store ptr null, ptr %72, align 8, !tbaa !41
  %73 = icmp eq ptr %25, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !91
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = add i32 %76, -1
  store i32 %79, ptr %75, align 8, !tbaa !91
  br label %81

80:                                               ; preds = %74
  tail call void @Perl_sv_free2(ptr noundef nonnull %25, i32 noundef %76) #10
  br label %81

81:                                               ; preds = %80, %78, %70, %22, %13
  %82 = phi ptr [ null, %13 ], [ @PL_sv_undef, %22 ], [ @PL_sv_undef, %70 ], [ @PL_sv_undef, %78 ], [ @PL_sv_undef, %80 ]
  ret ptr %82
}

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @retrieve_sv_yes(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %11 = load i64, ptr %10, align 8, !tbaa !83
  %12 = add nsw i64 %11, 1
  store i64 %12, ptr %10, align 8, !tbaa !83
  %13 = tail call ptr @Perl_av_store(ptr noundef %9, i64 noundef %11, ptr noundef nonnull @PL_sv_yes) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %74, label %15

15:                                               ; preds = %6
  %16 = icmp eq ptr %7, null
  br i1 %16, label %74, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @Perl_newRV_noinc(ptr noundef nonnull @PL_sv_yes) #10
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %20 = load i32, ptr %19, align 8, !tbaa !95
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %63, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !98
  %25 = and i32 %24, 33554432
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = load ptr, ptr %7, align 8, !tbaa !73
  %31 = getelementptr inbounds %struct.xpvhv, ptr %30, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !75
  %33 = getelementptr ptr, ptr %29, i64 %32
  %34 = getelementptr ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !41
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %27
  %38 = getelementptr i8, ptr %33, i64 36
  %39 = load i32, ptr %38, align 4, !tbaa !99
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %35, align 8, !tbaa !42
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37, %41
  %45 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %7, i1 noundef zeroext false) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %22, %27, %44
  %48 = load i32, ptr %23, align 4, !tbaa !98
  %49 = and i32 %48, -268435457
  store i32 %49, ptr %23, align 4, !tbaa !98
  br label %63

50:                                               ; preds = %44
  store i32 0, ptr %19, align 8, !tbaa !95
  %51 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !41
  %53 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !53
  %55 = and i32 %54, 1048576
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %52, align 8, !tbaa !85
  %59 = load ptr, ptr %58, align 8, !tbaa !86
  %60 = getelementptr inbounds %struct.hv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !98
  %62 = or i32 %61, 268435456
  store i32 %62, ptr %60, align 4, !tbaa !98
  br label %63

63:                                               ; preds = %57, %50, %47, %17
  %64 = tail call ptr @Perl_sv_bless(ptr noundef %18, ptr noundef nonnull %7) #10
  %65 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  store ptr null, ptr %65, align 8, !tbaa !41
  %66 = icmp eq ptr %18, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !91
  %70 = icmp ugt i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = add i32 %69, -1
  store i32 %72, ptr %68, align 8, !tbaa !91
  br label %74

73:                                               ; preds = %67
  tail call void @Perl_sv_free2(ptr noundef nonnull %18, i32 noundef %69) #10
  br label %74

74:                                               ; preds = %73, %71, %63, %15, %6
  %75 = phi ptr [ null, %6 ], [ @PL_sv_yes, %15 ], [ @PL_sv_yes, %63 ], [ @PL_sv_yes, %71 ], [ @PL_sv_yes, %73 ]
  ret ptr %75
}

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @retrieve_sv_no(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %11 = load i64, ptr %10, align 8, !tbaa !83
  %12 = add nsw i64 %11, 1
  store i64 %12, ptr %10, align 8, !tbaa !83
  %13 = tail call ptr @Perl_av_store(ptr noundef %9, i64 noundef %11, ptr noundef nonnull @PL_sv_no) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %74, label %15

15:                                               ; preds = %6
  %16 = icmp eq ptr %7, null
  br i1 %16, label %74, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @Perl_newRV_noinc(ptr noundef nonnull @PL_sv_no) #10
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %20 = load i32, ptr %19, align 8, !tbaa !95
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %63, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !98
  %25 = and i32 %24, 33554432
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = load ptr, ptr %7, align 8, !tbaa !73
  %31 = getelementptr inbounds %struct.xpvhv, ptr %30, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !75
  %33 = getelementptr ptr, ptr %29, i64 %32
  %34 = getelementptr ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !41
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %27
  %38 = getelementptr i8, ptr %33, i64 36
  %39 = load i32, ptr %38, align 4, !tbaa !99
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %35, align 8, !tbaa !42
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37, %41
  %45 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %7, i1 noundef zeroext false) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %22, %27, %44
  %48 = load i32, ptr %23, align 4, !tbaa !98
  %49 = and i32 %48, -268435457
  store i32 %49, ptr %23, align 4, !tbaa !98
  br label %63

50:                                               ; preds = %44
  store i32 0, ptr %19, align 8, !tbaa !95
  %51 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !41
  %53 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !53
  %55 = and i32 %54, 1048576
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %52, align 8, !tbaa !85
  %59 = load ptr, ptr %58, align 8, !tbaa !86
  %60 = getelementptr inbounds %struct.hv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !98
  %62 = or i32 %61, 268435456
  store i32 %62, ptr %60, align 4, !tbaa !98
  br label %63

63:                                               ; preds = %57, %50, %47, %17
  %64 = tail call ptr @Perl_sv_bless(ptr noundef %18, ptr noundef nonnull %7) #10
  %65 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  store ptr null, ptr %65, align 8, !tbaa !41
  %66 = icmp eq ptr %18, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !91
  %70 = icmp ugt i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = add i32 %69, -1
  store i32 %72, ptr %68, align 8, !tbaa !91
  br label %74

73:                                               ; preds = %67
  tail call void @Perl_sv_free2(ptr noundef nonnull %18, i32 noundef %69) #10
  br label %74

74:                                               ; preds = %73, %71, %63, %15, %6
  %75 = phi ptr [ null, %6 ], [ @PL_sv_no, %15 ], [ @PL_sv_no, %63 ], [ @PL_sv_no, %71 ], [ @PL_sv_no, %73 ]
  ret ptr %75
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_blessed(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp ult ptr %10, %12
  br i1 %13, label %14, label %99

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %15, ptr %9, align 8, !tbaa !55
  %16 = load i8, ptr %10, align 1, !tbaa !41
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %3, align 4, !tbaa !43
  br label %21

18:                                               ; preds = %2
  %19 = tail call i32 @PerlIO_getc(ptr noundef nonnull %6) #10
  store i32 %19, ptr %3, align 4, !tbaa !43
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %99, label %21

21:                                               ; preds = %18, %14
  %22 = load i32, ptr %3, align 4, !tbaa !43
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !69
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = getelementptr inbounds i8, ptr %30, i64 4
  %32 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = icmp ugt ptr %31, %33
  br i1 %34, label %99, label %35

35:                                               ; preds = %28
  %36 = load i32, ptr %30, align 1
  store i32 %36, ptr %3, align 4
  store ptr %31, ptr %29, align 8, !tbaa !55
  br label %40

37:                                               ; preds = %25
  %38 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %26, ptr noundef nonnull %3, i64 noundef 4) #10
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %99

40:                                               ; preds = %37, %35
  %41 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %42 = load i32, ptr %41, align 8, !tbaa !62
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %3, align 4, !tbaa !43
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  store i32 %46, ptr %3, align 4, !tbaa !43
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32, ptr %3, align 4, !tbaa !43
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = call ptr @Perl_safesysmalloc(i64 noundef %50) #10
  br label %52

52:                                               ; preds = %21, %47
  %53 = phi ptr [ %51, %47 ], [ %4, %21 ]
  %54 = phi ptr [ %51, %47 ], [ null, %21 ]
  %55 = load ptr, ptr %5, align 8, !tbaa !69
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !55
  %60 = load i32, ptr %3, align 4, !tbaa !43
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %59, i64 %61
  %63 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !58
  %65 = icmp ugt ptr %62, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 1 %59, i64 %61, i1 false)
  %67 = load i32, ptr %3, align 4, !tbaa !43
  %68 = load ptr, ptr %58, align 8, !tbaa !55
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, ptr %68, i64 %69
  store ptr %70, ptr %58, align 8, !tbaa !55
  br label %80

71:                                               ; preds = %57
  call void @Perl_safesysfree(ptr noundef %54) #10
  br label %99

72:                                               ; preds = %52
  %73 = load i32, ptr %3, align 4, !tbaa !43
  %74 = sext i32 %73 to i64
  %75 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %55, ptr noundef %53, i64 noundef %74) #10
  %76 = load i32, ptr %3, align 4, !tbaa !43
  %77 = sext i32 %76 to i64
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  call void @Perl_safesysfree(ptr noundef %54) #10
  br label %99

80:                                               ; preds = %72, %66
  %81 = load i32, ptr %3, align 4, !tbaa !43
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %53, i64 %82
  store i8 0, ptr %83, align 1, !tbaa !41
  %84 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !94
  %86 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 11
  %87 = load i64, ptr %86, align 8, !tbaa !118
  %88 = add nsw i64 %87, 1
  store i64 %88, ptr %86, align 8, !tbaa !118
  %89 = load i32, ptr %3, align 4, !tbaa !43
  %90 = sext i32 %89 to i64
  %91 = call ptr @Perl_newSVpvn(ptr noundef %53, i64 noundef %90) #10
  %92 = call ptr @Perl_av_store(ptr noundef %85, i64 noundef %87, ptr noundef %91) #10
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  call void @Perl_safesysfree(ptr noundef %54) #10
  br label %99

95:                                               ; preds = %80
  %96 = call fastcc ptr @retrieve(ptr noundef %0, ptr noundef %53)
  %97 = icmp eq ptr %54, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  call void @Perl_safesysfree(ptr noundef nonnull %54) #10
  br label %99

99:                                               ; preds = %95, %98, %37, %28, %18, %8, %94, %79, %71
  %100 = phi ptr [ null, %79 ], [ null, %94 ], [ null, %71 ], [ null, %8 ], [ null, %18 ], [ null, %28 ], [ null, %37 ], [ %96, %98 ], [ %96, %95 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %100
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_idx_blessed(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %13, label %62

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %14, ptr %8, align 8, !tbaa !55
  %15 = load i8, ptr %9, align 1, !tbaa !41
  %16 = zext i8 %15 to i32
  store i32 %16, ptr %3, align 4, !tbaa !43
  br label %20

17:                                               ; preds = %2
  %18 = tail call i32 @PerlIO_getc(ptr noundef nonnull %5) #10
  store i32 %18, ptr %3, align 4, !tbaa !43
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %62, label %20

20:                                               ; preds = %17, %13
  %21 = load i32, ptr %3, align 4, !tbaa !43
  %22 = and i32 %21, 128
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 8, !tbaa !69
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = getelementptr inbounds i8, ptr %29, i64 4
  %31 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !58
  %33 = icmp ugt ptr %30, %32
  br i1 %33, label %62, label %34

34:                                               ; preds = %27
  %35 = load i32, ptr %29, align 1
  store i32 %35, ptr %3, align 4
  store ptr %30, ptr %28, align 8, !tbaa !55
  br label %39

36:                                               ; preds = %24
  %37 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %25, ptr noundef nonnull %3, i64 noundef 4) #10
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %39, label %62

39:                                               ; preds = %36, %34
  %40 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %41 = load i32, ptr %40, align 8, !tbaa !62
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %3, align 4, !tbaa !43
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  store i32 %45, ptr %3, align 4, !tbaa !43
  br label %46

46:                                               ; preds = %39, %43, %20
  %47 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !94
  %49 = load i32, ptr %3, align 4, !tbaa !43
  %50 = sext i32 %49 to i64
  %51 = call ptr @Perl_av_fetch(ptr noundef %48, i64 noundef %50, i32 noundef 0) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %54, align 8, !tbaa !50
  %55 = load i32, ptr %3, align 4, !tbaa !43
  %56 = sext i32 %55 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.68, i64 noundef %56) #10
  br label %57

57:                                               ; preds = %53, %46
  %58 = load ptr, ptr %51, align 8, !tbaa !42
  %59 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !41
  %61 = call fastcc ptr @retrieve(ptr noundef %0, ptr noundef %60)
  br label %62

62:                                               ; preds = %36, %27, %17, %7, %57
  %63 = phi ptr [ %61, %57 ], [ null, %7 ], [ null, %17 ], [ null, %27 ], [ null, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %63
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_hook(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !61
  %12 = and i32 %11, 4
  %13 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %22, label %722

22:                                               ; preds = %16
  %23 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %23, ptr %17, align 8, !tbaa !55
  %24 = load i8, ptr %18, align 1, !tbaa !41
  %25 = zext i8 %24 to i32
  br label %29

26:                                               ; preds = %2
  %27 = tail call i32 @PerlIO_getc(ptr noundef nonnull %14) #10
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %722, label %29

29:                                               ; preds = %26, %22
  %30 = phi i32 [ %27, %26 ], [ %25, %22 ]
  %31 = and i32 %30, 3
  switch i32 %31, label %64 [
    i32 0, label %32
    i32 1, label %34
    i32 2, label %36
    i32 3, label %38
  ]

32:                                               ; preds = %29
  %33 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  br label %65

34:                                               ; preds = %29
  %35 = tail call ptr @Perl_newSV_type(i32 noundef 11) #10
  br label %65

36:                                               ; preds = %29
  %37 = tail call ptr @Perl_newSV_type(i32 noundef 12) #10
  br label %65

38:                                               ; preds = %29
  %39 = load ptr, ptr %13, align 8, !tbaa !69
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !58
  %46 = icmp ult ptr %43, %45
  br i1 %46, label %47, label %722

47:                                               ; preds = %41
  %48 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %48, ptr %42, align 8, !tbaa !55
  %49 = load i8, ptr %43, align 1, !tbaa !41
  %50 = zext i8 %49 to i32
  br label %54

51:                                               ; preds = %38
  %52 = tail call i32 @PerlIO_getc(ptr noundef nonnull %39) #10
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %722, label %54

54:                                               ; preds = %51, %47
  %55 = phi i32 [ %52, %51 ], [ %50, %47 ]
  switch i32 %55, label %62 [
    i32 4, label %56
    i32 5, label %58
    i32 6, label %60
  ]

56:                                               ; preds = %54
  %57 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  br label %65

58:                                               ; preds = %54
  %59 = tail call ptr @Perl_newSV_type(i32 noundef 11) #10
  br label %65

60:                                               ; preds = %54
  %61 = tail call ptr @Perl_newSV_type(i32 noundef 12) #10
  br label %65

62:                                               ; preds = %54
  %63 = tail call ptr @retrieve_other(ptr noundef %0, ptr poison)
  br label %722

64:                                               ; preds = %29
  unreachable

65:                                               ; preds = %32, %34, %36, %60, %58, %56
  %66 = phi ptr [ %61, %60 ], [ %59, %58 ], [ %57, %56 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ]
  %67 = phi i32 [ 80, %60 ], [ 80, %58 ], [ 113, %56 ], [ 0, %36 ], [ 0, %34 ], [ 0, %32 ]
  %68 = phi i1 [ false, %60 ], [ false, %58 ], [ false, %56 ], [ true, %36 ], [ true, %34 ], [ true, %32 ]
  %69 = phi i32 [ 6, %60 ], [ 5, %58 ], [ 4, %56 ], [ 0, %36 ], [ 0, %34 ], [ 0, %32 ]
  %70 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !92
  %72 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %73 = load i64, ptr %72, align 8, !tbaa !83
  %74 = add nsw i64 %73, 1
  store i64 %74, ptr %72, align 8, !tbaa !83
  %75 = icmp eq ptr %66, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !91
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8, !tbaa !91
  br label %80

80:                                               ; preds = %65, %76
  %81 = tail call ptr @Perl_av_store(ptr noundef %71, i64 noundef %73, ptr noundef %66) #10
  %82 = icmp eq ptr %81, null
  br i1 %82, label %722, label %83

83:                                               ; preds = %80
  %84 = and i32 %30, 64
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %116, label %86

86:                                               ; preds = %83, %112
  %87 = tail call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %88 = icmp eq ptr %87, null
  br i1 %88, label %722, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.sv, ptr %87, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !91
  %92 = icmp ugt i32 %91, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = add i32 %91, -1
  store i32 %94, ptr %90, align 8, !tbaa !91
  br label %96

95:                                               ; preds = %89
  tail call void @Perl_sv_free2(ptr noundef nonnull %87, i32 noundef %91) #10
  br label %96

96:                                               ; preds = %93, %95
  %97 = load ptr, ptr %13, align 8, !tbaa !69
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %101 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %102 = load ptr, ptr %100, align 8, !tbaa !55
  %103 = load ptr, ptr %101, align 8, !tbaa !58
  %104 = icmp ult ptr %102, %103
  br i1 %104, label %105, label %722

105:                                              ; preds = %99
  %106 = getelementptr inbounds i8, ptr %102, i64 1
  store ptr %106, ptr %100, align 8, !tbaa !55
  %107 = load i8, ptr %102, align 1, !tbaa !41
  %108 = zext i8 %107 to i32
  br label %112

109:                                              ; preds = %96
  %110 = tail call i32 @PerlIO_getc(ptr noundef nonnull %97) #10
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %722, label %112

112:                                              ; preds = %109, %105
  %113 = phi i32 [ %110, %109 ], [ %108, %105 ]
  %114 = and i32 %113, 64
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %86, !llvm.loop !146

116:                                              ; preds = %112, %83
  %117 = phi i32 [ %30, %83 ], [ %113, %112 ]
  %118 = and i32 %117, 32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %177, label %120

120:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %121 = and i32 %117, 4
  %122 = icmp eq i32 %121, 0
  %123 = load ptr, ptr %13, align 8, !tbaa !69
  %124 = icmp eq ptr %123, null
  br i1 %122, label %145, label %125

125:                                              ; preds = %120
  br i1 %124, label %126, label %135

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !55
  %129 = getelementptr inbounds i8, ptr %128, i64 4
  %130 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !58
  %132 = icmp ugt ptr %129, %131
  br i1 %132, label %174, label %133

133:                                              ; preds = %126
  %134 = load i32, ptr %128, align 1
  store i32 %134, ptr %7, align 4
  store ptr %129, ptr %127, align 8, !tbaa !55
  br label %138

135:                                              ; preds = %125
  %136 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %123, ptr noundef nonnull %7, i64 noundef 4) #10
  %137 = icmp eq i64 %136, 4
  br i1 %137, label %138, label %174

138:                                              ; preds = %135, %133
  %139 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %140 = load i32, ptr %139, align 8, !tbaa !62
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %159, label %142

142:                                              ; preds = %138
  %143 = load i32, ptr %7, align 4, !tbaa !43
  %144 = call i32 @llvm.bswap.i32(i32 %143)
  store i32 %144, ptr %7, align 4, !tbaa !43
  br label %159

145:                                              ; preds = %120
  br i1 %124, label %146, label %156

146:                                              ; preds = %145
  %147 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !55
  %149 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !58
  %151 = icmp ult ptr %148, %150
  br i1 %151, label %152, label %174

152:                                              ; preds = %146
  %153 = getelementptr inbounds i8, ptr %148, i64 1
  store ptr %153, ptr %147, align 8, !tbaa !55
  %154 = load i8, ptr %148, align 1, !tbaa !41
  %155 = zext i8 %154 to i32
  store i32 %155, ptr %7, align 4, !tbaa !43
  br label %159

156:                                              ; preds = %145
  %157 = tail call i32 @PerlIO_getc(ptr noundef nonnull %123) #10
  store i32 %157, ptr %7, align 4, !tbaa !43
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %174, label %159

159:                                              ; preds = %138, %152, %156, %142
  %160 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 8
  %161 = load ptr, ptr %160, align 8, !tbaa !94
  %162 = load i32, ptr %7, align 4, !tbaa !43
  %163 = sext i32 %162 to i64
  %164 = call ptr @Perl_av_fetch(ptr noundef %161, i64 noundef %163, i32 noundef 0) #10
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %167, align 8, !tbaa !50
  %168 = load i32, ptr %7, align 4, !tbaa !43
  %169 = sext i32 %168 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.68, i64 noundef %169) #10
  br label %170

170:                                              ; preds = %166, %159
  %171 = load ptr, ptr %164, align 8, !tbaa !42
  %172 = getelementptr inbounds %struct.sv, ptr %171, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !41
  br label %174

174:                                              ; preds = %156, %146, %135, %126, %170
  %175 = phi i1 [ true, %170 ], [ false, %126 ], [ false, %135 ], [ false, %146 ], [ false, %156 ]
  %176 = phi ptr [ %173, %170 ], [ %4, %126 ], [ %4, %135 ], [ %4, %146 ], [ %4, %156 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br i1 %175, label %267, label %722

177:                                              ; preds = %116
  %178 = and i32 %117, 4
  %179 = icmp eq i32 %178, 0
  %180 = load ptr, ptr %13, align 8, !tbaa !69
  %181 = icmp eq ptr %180, null
  br i1 %179, label %202, label %182

182:                                              ; preds = %177
  br i1 %181, label %183, label %192

183:                                              ; preds = %182
  %184 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !55
  %186 = getelementptr inbounds i8, ptr %185, i64 4
  %187 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !58
  %189 = icmp ugt ptr %186, %188
  br i1 %189, label %264, label %190

190:                                              ; preds = %183
  %191 = load i32, ptr %185, align 1
  store i32 %191, ptr %3, align 4
  store ptr %186, ptr %184, align 8, !tbaa !55
  br label %195

192:                                              ; preds = %182
  %193 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %180, ptr noundef nonnull %3, i64 noundef 4) #10
  %194 = icmp eq i64 %193, 4
  br i1 %194, label %195, label %264

195:                                              ; preds = %192, %190
  %196 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %197 = load i32, ptr %196, align 8, !tbaa !62
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %216, label %199

199:                                              ; preds = %195
  %200 = load i32, ptr %3, align 4, !tbaa !43
  %201 = call i32 @llvm.bswap.i32(i32 %200)
  store i32 %201, ptr %3, align 4, !tbaa !43
  br label %216

202:                                              ; preds = %177
  br i1 %181, label %203, label %213

203:                                              ; preds = %202
  %204 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !55
  %206 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !58
  %208 = icmp ult ptr %205, %207
  br i1 %208, label %209, label %264

209:                                              ; preds = %203
  %210 = getelementptr inbounds i8, ptr %205, i64 1
  store ptr %210, ptr %204, align 8, !tbaa !55
  %211 = load i8, ptr %205, align 1, !tbaa !41
  %212 = zext i8 %211 to i32
  store i32 %212, ptr %3, align 4, !tbaa !43
  br label %216

213:                                              ; preds = %202
  %214 = tail call i32 @PerlIO_getc(ptr noundef nonnull %180) #10
  store i32 %214, ptr %3, align 4, !tbaa !43
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %264, label %216

216:                                              ; preds = %195, %209, %213, %199
  %217 = load i32, ptr %3, align 4, !tbaa !43
  %218 = icmp sgt i32 %217, 127
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = add nuw nsw i32 %217, 1
  %221 = zext nneg i32 %220 to i64
  %222 = call ptr @Perl_safesysmalloc(i64 noundef %221) #10
  br label %223

223:                                              ; preds = %216, %219
  %224 = phi ptr [ %222, %219 ], [ null, %216 ]
  %225 = phi ptr [ %222, %219 ], [ %4, %216 ]
  %226 = load ptr, ptr %13, align 8, !tbaa !69
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %242

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !55
  %231 = load i32, ptr %3, align 4, !tbaa !43
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, ptr %230, i64 %232
  %234 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !58
  %236 = icmp ugt ptr %233, %235
  br i1 %236, label %263, label %237

237:                                              ; preds = %228
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %225, ptr align 1 %230, i64 %232, i1 false)
  %238 = load i32, ptr %3, align 4, !tbaa !43
  %239 = load ptr, ptr %229, align 8, !tbaa !55
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i8, ptr %239, i64 %240
  store ptr %241, ptr %229, align 8, !tbaa !55
  br label %249

242:                                              ; preds = %223
  %243 = load i32, ptr %3, align 4, !tbaa !43
  %244 = sext i32 %243 to i64
  %245 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %226, ptr noundef %225, i64 noundef %244) #10
  %246 = load i32, ptr %3, align 4, !tbaa !43
  %247 = sext i32 %246 to i64
  %248 = icmp eq i64 %245, %247
  br i1 %248, label %249, label %263

249:                                              ; preds = %242, %237
  %250 = load i32, ptr %3, align 4, !tbaa !43
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, ptr %225, i64 %251
  store i8 0, ptr %252, align 1, !tbaa !41
  %253 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 8
  %254 = load ptr, ptr %253, align 8, !tbaa !94
  %255 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 11
  %256 = load i64, ptr %255, align 8, !tbaa !118
  %257 = add nsw i64 %256, 1
  store i64 %257, ptr %255, align 8, !tbaa !118
  %258 = load i32, ptr %3, align 4, !tbaa !43
  %259 = sext i32 %258 to i64
  %260 = call ptr @Perl_newSVpvn(ptr noundef %225, i64 noundef %259) #10
  %261 = call ptr @Perl_av_store(ptr noundef %254, i64 noundef %256, ptr noundef %260) #10
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %264

263:                                              ; preds = %249, %242, %228
  call void @Perl_safesysfree(ptr noundef %224) #10
  br label %264

264:                                              ; preds = %263, %249, %213, %203, %192, %183
  %265 = phi i1 [ false, %183 ], [ false, %192 ], [ false, %203 ], [ false, %213 ], [ true, %249 ], [ false, %263 ]
  %266 = phi ptr [ %4, %183 ], [ %4, %192 ], [ %4, %203 ], [ %4, %213 ], [ %225, %249 ], [ %225, %263 ]
  br i1 %265, label %267, label %722

267:                                              ; preds = %264, %174
  %268 = phi ptr [ %176, %174 ], [ %266, %264 ]
  %269 = and i32 %117, 8
  %270 = icmp eq i32 %269, 0
  %271 = load ptr, ptr %13, align 8, !tbaa !69
  %272 = icmp eq ptr %271, null
  br i1 %270, label %293, label %273

273:                                              ; preds = %267
  br i1 %272, label %274, label %283

274:                                              ; preds = %273
  %275 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !55
  %277 = getelementptr inbounds i8, ptr %276, i64 4
  %278 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %279 = load ptr, ptr %278, align 8, !tbaa !58
  %280 = icmp ugt ptr %277, %279
  br i1 %280, label %722, label %281

281:                                              ; preds = %274
  %282 = load i32, ptr %276, align 1
  store i32 %282, ptr %5, align 4
  store ptr %277, ptr %275, align 8, !tbaa !55
  br label %286

283:                                              ; preds = %273
  %284 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %271, ptr noundef nonnull %5, i64 noundef 4) #10
  %285 = icmp eq i64 %284, 4
  br i1 %285, label %286, label %722

286:                                              ; preds = %283, %281
  %287 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %288 = load i32, ptr %287, align 8, !tbaa !62
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %307, label %290

290:                                              ; preds = %286
  %291 = load i32, ptr %5, align 4, !tbaa !43
  %292 = call i32 @llvm.bswap.i32(i32 %291)
  store i32 %292, ptr %5, align 4, !tbaa !43
  br label %307

293:                                              ; preds = %267
  br i1 %272, label %294, label %304

294:                                              ; preds = %293
  %295 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !55
  %297 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %298 = load ptr, ptr %297, align 8, !tbaa !58
  %299 = icmp ult ptr %296, %298
  br i1 %299, label %300, label %722

300:                                              ; preds = %294
  %301 = getelementptr inbounds i8, ptr %296, i64 1
  store ptr %301, ptr %295, align 8, !tbaa !55
  %302 = load i8, ptr %296, align 1, !tbaa !41
  %303 = zext i8 %302 to i32
  store i32 %303, ptr %5, align 4, !tbaa !43
  br label %307

304:                                              ; preds = %293
  %305 = call i32 @PerlIO_getc(ptr noundef nonnull %271) #10
  store i32 %305, ptr %5, align 4, !tbaa !43
  %306 = icmp eq i32 %305, -1
  br i1 %306, label %722, label %307

307:                                              ; preds = %286, %300, %304, %290
  %308 = load i32, ptr %5, align 4, !tbaa !43
  %309 = sext i32 %308 to i64
  %310 = call ptr @Perl_newSV(i64 noundef %309) #10
  %311 = load i32, ptr %5, align 4, !tbaa !43
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %348, label %313

313:                                              ; preds = %307
  %314 = load ptr, ptr %13, align 8, !tbaa !69
  %315 = icmp eq ptr %314, null
  %316 = sext i32 %311 to i64
  br i1 %315, label %317, label %332

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !55
  %320 = getelementptr inbounds i8, ptr %319, i64 %316
  %321 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !58
  %323 = icmp ugt ptr %320, %322
  br i1 %323, label %331, label %324

324:                                              ; preds = %317
  %325 = getelementptr inbounds %struct.sv, ptr %310, i64 0, i32 3
  %326 = load ptr, ptr %325, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %326, ptr align 1 %319, i64 %316, i1 false)
  %327 = load i32, ptr %5, align 4, !tbaa !43
  %328 = load ptr, ptr %318, align 8, !tbaa !55
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds i8, ptr %328, i64 %329
  store ptr %330, ptr %318, align 8, !tbaa !55
  br label %340

331:                                              ; preds = %317
  call void @Perl_sv_free(ptr noundef %310) #10
  br label %722

332:                                              ; preds = %313
  %333 = getelementptr inbounds %struct.sv, ptr %310, i64 0, i32 3
  %334 = load ptr, ptr %333, align 8, !tbaa !41
  %335 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %314, ptr noundef %334, i64 noundef %316) #10
  %336 = load i32, ptr %5, align 4, !tbaa !43
  %337 = sext i32 %336 to i64
  %338 = icmp eq i64 %335, %337
  br i1 %338, label %340, label %339

339:                                              ; preds = %332
  call void @Perl_sv_free(ptr noundef %310) #10
  br label %722

340:                                              ; preds = %324, %332
  %341 = load i32, ptr %5, align 4, !tbaa !43
  %342 = sext i32 %341 to i64
  %343 = load ptr, ptr %310, align 8, !tbaa !85
  %344 = getelementptr inbounds %struct.xpv, ptr %343, i64 0, i32 2
  store i64 %342, ptr %344, align 8, !tbaa !107
  %345 = getelementptr inbounds %struct.sv, ptr %310, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !41
  %347 = getelementptr inbounds i8, ptr %346, i64 %342
  store i8 0, ptr %347, align 1, !tbaa !41
  br label %348

348:                                              ; preds = %340, %307
  %349 = getelementptr inbounds %struct.sv, ptr %310, i64 0, i32 2
  %350 = load i32, ptr %349, align 4, !tbaa !53
  %351 = and i32 %350, 1610547455
  %352 = or disjoint i32 %351, 17408
  store i32 %352, ptr %349, align 4, !tbaa !53
  %353 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 13
  %354 = load i32, ptr %353, align 4, !tbaa !59
  %355 = icmp eq i32 %354, 0
  %356 = load i8, ptr @PL_tainting, align 1, !range !138
  %357 = icmp eq i8 %356, 0
  %358 = select i1 %355, i1 true, i1 %357
  %359 = load i8, ptr @PL_tainted, align 1, !range !138
  %360 = icmp eq i8 %359, 0
  %361 = select i1 %358, i1 true, i1 %360
  br i1 %361, label %363, label %362

362:                                              ; preds = %348
  call void @Perl_sv_magic(ptr noundef %310, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #10
  br label %363

363:                                              ; preds = %362, %348
  %364 = and i32 %117, 128
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %417, label %366

366:                                              ; preds = %363
  %367 = and i32 %117, 16
  %368 = icmp eq i32 %367, 0
  %369 = load ptr, ptr %13, align 8, !tbaa !69
  %370 = icmp eq ptr %369, null
  br i1 %368, label %391, label %371

371:                                              ; preds = %366
  br i1 %370, label %372, label %381

372:                                              ; preds = %371
  %373 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %374 = load ptr, ptr %373, align 8, !tbaa !55
  %375 = getelementptr inbounds i8, ptr %374, i64 4
  %376 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %377 = load ptr, ptr %376, align 8, !tbaa !58
  %378 = icmp ugt ptr %375, %377
  br i1 %378, label %722, label %379

379:                                              ; preds = %372
  %380 = load i32, ptr %374, align 1
  store i32 %380, ptr %6, align 4
  store ptr %375, ptr %373, align 8, !tbaa !55
  br label %384

381:                                              ; preds = %371
  %382 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %369, ptr noundef nonnull %6, i64 noundef 4) #10
  %383 = icmp eq i64 %382, 4
  br i1 %383, label %384, label %722

384:                                              ; preds = %381, %379
  %385 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %386 = load i32, ptr %385, align 8, !tbaa !62
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %405, label %388

388:                                              ; preds = %384
  %389 = load i32, ptr %6, align 4, !tbaa !43
  %390 = call i32 @llvm.bswap.i32(i32 %389)
  store i32 %390, ptr %6, align 4, !tbaa !43
  br label %405

391:                                              ; preds = %366
  br i1 %370, label %392, label %402

392:                                              ; preds = %391
  %393 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %394 = load ptr, ptr %393, align 8, !tbaa !55
  %395 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %396 = load ptr, ptr %395, align 8, !tbaa !58
  %397 = icmp ult ptr %394, %396
  br i1 %397, label %398, label %722

398:                                              ; preds = %392
  %399 = getelementptr inbounds i8, ptr %394, i64 1
  store ptr %399, ptr %393, align 8, !tbaa !55
  %400 = load i8, ptr %394, align 1, !tbaa !41
  %401 = zext i8 %400 to i32
  store i32 %401, ptr %6, align 4, !tbaa !43
  br label %405

402:                                              ; preds = %391
  %403 = call i32 @PerlIO_getc(ptr noundef nonnull %369) #10
  store i32 %403, ptr %6, align 4, !tbaa !43
  %404 = icmp eq i32 %403, -1
  br i1 %404, label %722, label %405

405:                                              ; preds = %384, %398, %402, %388
  %406 = load i32, ptr %6, align 4, !tbaa !43
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %417, label %408

408:                                              ; preds = %405
  %409 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  %410 = load i32, ptr %6, align 4, !tbaa !43
  %411 = add nsw i32 %410, 1
  %412 = sext i32 %411 to i64
  call void @Perl_av_extend(ptr noundef %409, i64 noundef %412) #10
  %413 = load i32, ptr %6, align 4, !tbaa !43
  %414 = sext i32 %413 to i64
  %415 = load ptr, ptr %409, align 8, !tbaa !103
  %416 = getelementptr inbounds %struct.xpvav, ptr %415, i64 0, i32 2
  store i64 %414, ptr %416, align 8, !tbaa !105
  br label %417

417:                                              ; preds = %405, %408, %363
  %418 = phi ptr [ %409, %408 ], [ null, %405 ], [ null, %363 ]
  %419 = icmp eq ptr %418, null
  br i1 %419, label %473, label %420

420:                                              ; preds = %417
  %421 = getelementptr inbounds %struct.av, ptr %418, i64 0, i32 3
  %422 = load ptr, ptr %421, align 8, !tbaa !41
  %423 = load i32, ptr %6, align 4, !tbaa !43
  %424 = icmp slt i32 %423, 1
  br i1 %424, label %473, label %425

425:                                              ; preds = %420
  %426 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %427 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %428 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 6
  br label %429

429:                                              ; preds = %425, %466
  %430 = phi i64 [ 1, %425 ], [ %468, %466 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9)
  %431 = load ptr, ptr %13, align 8, !tbaa !69
  %432 = icmp eq ptr %431, null
  br i1 %432, label %433, label %440

433:                                              ; preds = %429
  %434 = load ptr, ptr %426, align 8, !tbaa !55
  %435 = getelementptr inbounds i8, ptr %434, i64 4
  %436 = load ptr, ptr %427, align 8, !tbaa !58
  %437 = icmp ugt ptr %435, %436
  br i1 %437, label %472, label %438

438:                                              ; preds = %433
  %439 = load i32, ptr %434, align 1
  store i32 %439, ptr %8, align 4
  store ptr %435, ptr %426, align 8, !tbaa !55
  br label %443

440:                                              ; preds = %429
  %441 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %431, ptr noundef nonnull %8, i64 noundef 4) #10
  %442 = icmp eq i64 %441, 4
  br i1 %442, label %443, label %472

443:                                              ; preds = %440, %438
  %444 = load i32, ptr %8, align 4, !tbaa !43
  %445 = call i32 @llvm.bswap.i32(i32 %444)
  store i32 %445, ptr %8, align 4, !tbaa !43
  %446 = load ptr, ptr %70, align 8, !tbaa !92
  %447 = sext i32 %445 to i64
  %448 = call ptr @Perl_av_fetch(ptr noundef %446, i64 noundef %447, i32 noundef 0) #10
  %449 = icmp eq ptr %448, null
  br i1 %449, label %450, label %458

450:                                              ; preds = %443
  %451 = load i32, ptr %8, align 4, !tbaa !43
  %452 = sext i32 %451 to i64
  %453 = load i64, ptr %428, align 8, !tbaa !93
  %454 = icmp eq i64 %453, %452
  br i1 %454, label %455, label %456

455:                                              ; preds = %450
  store ptr @PL_sv_undef, ptr %9, align 8, !tbaa !42
  br label %458

456:                                              ; preds = %450
  %457 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %457, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.69, i64 noundef %452) #10
  unreachable

458:                                              ; preds = %455, %443
  %459 = phi ptr [ %448, %443 ], [ %9, %455 ]
  %460 = load ptr, ptr %459, align 8, !tbaa !42
  store ptr %460, ptr %9, align 8, !tbaa !42
  %461 = icmp eq ptr %460, null
  br i1 %461, label %466, label %462

462:                                              ; preds = %458
  %463 = getelementptr inbounds %struct.sv, ptr %460, i64 0, i32 1
  %464 = load i32, ptr %463, align 8, !tbaa !91
  %465 = add i32 %464, 1
  store i32 %465, ptr %463, align 8, !tbaa !91
  br label %466

466:                                              ; preds = %458, %462
  %467 = getelementptr inbounds ptr, ptr %422, i64 %430
  store ptr %460, ptr %467, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  %468 = add nuw nsw i64 %430, 1
  %469 = load i32, ptr %6, align 4, !tbaa !43
  %470 = sext i32 %469 to i64
  %471 = icmp slt i64 %430, %470
  br i1 %471, label %429, label %473, !llvm.loop !147

472:                                              ; preds = %440, %433
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  br label %722

473:                                              ; preds = %466, %420, %417
  %474 = call ptr @Perl_gv_stashpv(ptr noundef %268, i32 noundef 1) #10
  %475 = call ptr @Perl_gv_fetchmethod_autoload(ptr noundef %474, ptr noundef nonnull @.str.28, i32 noundef 0) #10
  %476 = icmp eq ptr %475, null
  br i1 %476, label %587, label %477

477:                                              ; preds = %473
  %478 = getelementptr inbounds %struct.gv, ptr %475, i64 0, i32 2
  %479 = load i32, ptr %478, align 4, !tbaa !109
  %480 = and i32 %479, 255
  %481 = icmp eq i32 %480, 9
  br i1 %481, label %482, label %587

482:                                              ; preds = %477
  %483 = getelementptr inbounds %struct.gv, ptr %475, i64 0, i32 3
  %484 = load ptr, ptr %483, align 8, !tbaa !41
  %485 = getelementptr inbounds %struct.gp, ptr %484, i64 0, i32 2
  %486 = load ptr, ptr %485, align 8, !tbaa !116
  %487 = call ptr @Perl_newRV(ptr noundef %486) #10
  br i1 %419, label %490, label %488

488:                                              ; preds = %482
  %489 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %489, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.70) #10
  br label %490

490:                                              ; preds = %488, %482
  %491 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  call void @Perl_av_extend(ptr noundef %491, i64 noundef 1) #10
  %492 = load ptr, ptr %491, align 8, !tbaa !103
  %493 = getelementptr inbounds %struct.xpvav, ptr %492, i64 0, i32 2
  store i64 0, ptr %493, align 8, !tbaa !105
  %494 = icmp eq ptr %310, null
  br i1 %494, label %499, label %495

495:                                              ; preds = %490
  %496 = getelementptr inbounds %struct.sv, ptr %310, i64 0, i32 1
  %497 = load i32, ptr %496, align 8, !tbaa !91
  %498 = add i32 %497, 1
  store i32 %498, ptr %496, align 8, !tbaa !91
  br label %499

499:                                              ; preds = %490, %495
  %500 = getelementptr inbounds %struct.av, ptr %491, i64 0, i32 3
  %501 = load ptr, ptr %500, align 8, !tbaa !41
  store ptr %310, ptr %501, align 8, !tbaa !42
  %502 = call ptr @Perl_newSVpv(ptr noundef %268, i64 noundef 0) #10
  %503 = call fastcc ptr @scalar_call(ptr noundef %502, ptr noundef %487, i32 noundef %12, ptr noundef nonnull %491, i32 noundef 2)
  %504 = icmp eq ptr %502, null
  br i1 %504, label %512, label %505

505:                                              ; preds = %499
  %506 = getelementptr inbounds %struct.sv, ptr %502, i64 0, i32 1
  %507 = load i32, ptr %506, align 8, !tbaa !91
  %508 = icmp ugt i32 %507, 1
  br i1 %508, label %509, label %511

509:                                              ; preds = %505
  %510 = add i32 %507, -1
  store i32 %510, ptr %506, align 8, !tbaa !91
  br label %512

511:                                              ; preds = %505
  call void @Perl_sv_free2(ptr noundef nonnull %502, i32 noundef %507) #10
  br label %512

512:                                              ; preds = %499, %509, %511
  br i1 %494, label %520, label %513

513:                                              ; preds = %512
  %514 = getelementptr inbounds %struct.sv, ptr %310, i64 0, i32 1
  %515 = load i32, ptr %514, align 8, !tbaa !91
  %516 = icmp ugt i32 %515, 1
  br i1 %516, label %517, label %519

517:                                              ; preds = %513
  %518 = add i32 %515, -1
  store i32 %518, ptr %514, align 8, !tbaa !91
  br label %520

519:                                              ; preds = %513
  call void @Perl_sv_free2(ptr noundef nonnull %310, i32 noundef %515) #10
  br label %520

520:                                              ; preds = %512, %517, %519
  call void @Perl_av_undef(ptr noundef nonnull %491) #10
  call void @Perl_sv_free(ptr noundef nonnull %491) #10
  %521 = icmp eq ptr %487, null
  br i1 %521, label %529, label %522

522:                                              ; preds = %520
  %523 = getelementptr inbounds %struct.sv, ptr %487, i64 0, i32 1
  %524 = load i32, ptr %523, align 8, !tbaa !91
  %525 = icmp ugt i32 %524, 1
  br i1 %525, label %526, label %528

526:                                              ; preds = %522
  %527 = add i32 %524, -1
  store i32 %527, ptr %523, align 8, !tbaa !91
  br label %529

528:                                              ; preds = %522
  call void @Perl_sv_free2(ptr noundef nonnull %487, i32 noundef %524) #10
  br label %529

529:                                              ; preds = %520, %526, %528
  %530 = icmp eq ptr %503, null
  br i1 %530, label %581, label %531

531:                                              ; preds = %529
  %532 = getelementptr inbounds %struct.sv, ptr %503, i64 0, i32 2
  %533 = load i32, ptr %532, align 4, !tbaa !53
  %534 = and i32 %533, 2048
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %581, label %536

536:                                              ; preds = %531
  %537 = call zeroext i1 @Perl_sv_derived_from(ptr noundef nonnull %503, ptr noundef %268) #10
  br i1 %537, label %538, label %581

538:                                              ; preds = %536
  %539 = load ptr, ptr %70, align 8, !tbaa !92
  %540 = call ptr @Perl_av_pop(ptr noundef %539) #10
  %541 = load i64, ptr %72, align 8, !tbaa !83
  %542 = add nsw i64 %541, -1
  store i64 %542, ptr %72, align 8, !tbaa !83
  br i1 %75, label %556, label %543

543:                                              ; preds = %538
  %544 = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 1
  %545 = load i32, ptr %544, align 8, !tbaa !91
  %546 = icmp ugt i32 %545, 1
  br i1 %546, label %547, label %549

547:                                              ; preds = %543
  %548 = add i32 %545, -1
  store i32 %548, ptr %544, align 8, !tbaa !91
  br label %550

549:                                              ; preds = %543
  call void @Perl_sv_free2(ptr noundef nonnull %66, i32 noundef %545) #10
  br label %550

550:                                              ; preds = %549, %547
  %551 = load i32, ptr %544, align 8, !tbaa !91
  %552 = icmp ugt i32 %551, 1
  br i1 %552, label %553, label %555

553:                                              ; preds = %550
  %554 = add i32 %551, -1
  store i32 %554, ptr %544, align 8, !tbaa !91
  br label %556

555:                                              ; preds = %550
  call void @Perl_sv_free2(ptr noundef nonnull %66, i32 noundef %551) #10
  br label %556

556:                                              ; preds = %538, %553, %555
  %557 = getelementptr inbounds %struct.sv, ptr %503, i64 0, i32 3
  %558 = load ptr, ptr %557, align 8, !tbaa !41
  %559 = load ptr, ptr %70, align 8, !tbaa !92
  %560 = load i64, ptr %72, align 8, !tbaa !83
  %561 = add nsw i64 %560, 1
  store i64 %561, ptr %72, align 8, !tbaa !83
  %562 = icmp eq ptr %558, null
  br i1 %562, label %567, label %563

563:                                              ; preds = %556
  %564 = getelementptr inbounds %struct.sv, ptr %558, i64 0, i32 1
  %565 = load i32, ptr %564, align 8, !tbaa !91
  %566 = add i32 %565, 1
  store i32 %566, ptr %564, align 8, !tbaa !91
  br label %567

567:                                              ; preds = %556, %563
  %568 = call ptr @Perl_av_store(ptr noundef %559, i64 noundef %560, ptr noundef %558) #10
  %569 = icmp eq ptr %568, null
  br i1 %569, label %583, label %570

570:                                              ; preds = %567
  store ptr null, ptr %557, align 8, !tbaa !41
  %571 = getelementptr inbounds %struct.sv, ptr %503, i64 0, i32 1
  %572 = load i32, ptr %571, align 8, !tbaa !91
  %573 = icmp ugt i32 %572, 1
  br i1 %573, label %574, label %576

574:                                              ; preds = %570
  %575 = add i32 %572, -1
  store i32 %575, ptr %571, align 8, !tbaa !91
  br label %577

576:                                              ; preds = %570
  call void @Perl_sv_free2(ptr noundef nonnull %503, i32 noundef %572) #10
  br label %577

577:                                              ; preds = %574, %576
  %578 = icmp ne ptr %268, %4
  %579 = select i1 %119, i1 %578, i1 false
  br i1 %579, label %580, label %583

580:                                              ; preds = %577
  call void @Perl_safesysfree(ptr noundef %268) #10
  br label %583

581:                                              ; preds = %529, %531, %536
  %582 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %582, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.71, ptr noundef %268) #10
  br label %583

583:                                              ; preds = %577, %580, %567, %581
  %584 = phi ptr [ %66, %581 ], [ %558, %567 ], [ %558, %580 ], [ %558, %577 ]
  %585 = phi i1 [ true, %581 ], [ false, %567 ], [ false, %580 ], [ false, %577 ]
  %586 = phi ptr [ null, %581 ], [ null, %567 ], [ %558, %580 ], [ %558, %577 ]
  br i1 %585, label %587, label %722

587:                                              ; preds = %473, %477, %583
  %588 = phi ptr [ %584, %583 ], [ %66, %477 ], [ %66, %473 ]
  %589 = phi ptr [ %491, %583 ], [ %418, %477 ], [ %418, %473 ]
  %590 = call ptr @Perl_newRV_noinc(ptr noundef %588) #10
  %591 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %592 = load i32, ptr %591, align 8, !tbaa !95
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %635, label %594

594:                                              ; preds = %587
  %595 = getelementptr inbounds %struct.hv, ptr %474, i64 0, i32 2
  %596 = load i32, ptr %595, align 4, !tbaa !98
  %597 = and i32 %596, 33554432
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %619, label %599

599:                                              ; preds = %594
  %600 = getelementptr inbounds %struct.hv, ptr %474, i64 0, i32 3
  %601 = load ptr, ptr %600, align 8, !tbaa !41
  %602 = load ptr, ptr %474, align 8, !tbaa !73
  %603 = getelementptr inbounds %struct.xpvhv, ptr %602, i64 0, i32 3
  %604 = load i64, ptr %603, align 8, !tbaa !75
  %605 = getelementptr ptr, ptr %601, i64 %604
  %606 = getelementptr ptr, ptr %605, i64 1
  %607 = load ptr, ptr %606, align 8, !tbaa !41
  %608 = icmp eq ptr %607, null
  br i1 %608, label %619, label %609

609:                                              ; preds = %599
  %610 = getelementptr i8, ptr %605, i64 36
  %611 = load i32, ptr %610, align 4, !tbaa !99
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %616, label %613

613:                                              ; preds = %609
  %614 = load ptr, ptr %607, align 8, !tbaa !42
  %615 = icmp eq ptr %614, null
  br i1 %615, label %619, label %616

616:                                              ; preds = %609, %613
  %617 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %474, i1 noundef zeroext false) #10
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %622

619:                                              ; preds = %613, %594, %599, %616
  %620 = load i32, ptr %595, align 4, !tbaa !98
  %621 = and i32 %620, -268435457
  store i32 %621, ptr %595, align 4, !tbaa !98
  br label %635

622:                                              ; preds = %616
  store i32 0, ptr %591, align 8, !tbaa !95
  %623 = getelementptr inbounds %struct.sv, ptr %590, i64 0, i32 3
  %624 = load ptr, ptr %623, align 8, !tbaa !41
  %625 = getelementptr inbounds %struct.sv, ptr %624, i64 0, i32 2
  %626 = load i32, ptr %625, align 4, !tbaa !53
  %627 = and i32 %626, 1048576
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %635, label %629

629:                                              ; preds = %622
  %630 = load ptr, ptr %624, align 8, !tbaa !85
  %631 = load ptr, ptr %630, align 8, !tbaa !86
  %632 = getelementptr inbounds %struct.hv, ptr %631, i64 0, i32 2
  %633 = load i32, ptr %632, align 4, !tbaa !98
  %634 = or i32 %633, 268435456
  store i32 %634, ptr %632, align 4, !tbaa !98
  br label %635

635:                                              ; preds = %629, %622, %619, %587
  %636 = call ptr @Perl_sv_bless(ptr noundef %590, ptr noundef %474) #10
  %637 = getelementptr inbounds %struct.sv, ptr %590, i64 0, i32 3
  store ptr null, ptr %637, align 8, !tbaa !41
  %638 = icmp eq ptr %590, null
  br i1 %638, label %646, label %639

639:                                              ; preds = %635
  %640 = getelementptr inbounds %struct.sv, ptr %590, i64 0, i32 1
  %641 = load i32, ptr %640, align 8, !tbaa !91
  %642 = icmp ugt i32 %641, 1
  br i1 %642, label %643, label %645

643:                                              ; preds = %639
  %644 = add i32 %641, -1
  store i32 %644, ptr %640, align 8, !tbaa !91
  br label %646

645:                                              ; preds = %639
  call void @Perl_sv_free2(ptr noundef nonnull %590, i32 noundef %641) #10
  br label %646

646:                                              ; preds = %635, %643, %645
  %647 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 9
  %648 = load ptr, ptr %647, align 8, !tbaa !77
  %649 = call fastcc ptr @pkg_can(ptr noundef %648, ptr noundef %474, ptr noundef nonnull @.str.72)
  %650 = icmp eq ptr %649, null
  br i1 %650, label %651, label %663

651:                                              ; preds = %646
  %652 = call ptr @Perl_newSVpv(ptr noundef %268, i64 noundef 0) #10
  call void (i32, ptr, ptr, ...) @Perl_load_module(i32 noundef 2, ptr noundef %652, ptr noundef null) #10
  %653 = load ptr, ptr %647, align 8, !tbaa !77
  %654 = load ptr, ptr %588, align 8, !tbaa !85
  %655 = load ptr, ptr %654, align 8, !tbaa !86
  call fastcc void @pkg_uncache(ptr noundef %653, ptr noundef %655)
  %656 = load ptr, ptr %647, align 8, !tbaa !77
  %657 = load ptr, ptr %588, align 8, !tbaa !85
  %658 = load ptr, ptr %657, align 8, !tbaa !86
  %659 = call fastcc ptr @pkg_can(ptr noundef %656, ptr noundef %658, ptr noundef nonnull @.str.72)
  %660 = icmp eq ptr %659, null
  br i1 %660, label %661, label %663

661:                                              ; preds = %651
  %662 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %662, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.73, ptr noundef %268, ptr noundef %268) #10
  br label %663

663:                                              ; preds = %651, %661, %646
  %664 = phi ptr [ %649, %646 ], [ %659, %651 ], [ null, %661 ]
  %665 = icmp eq ptr %589, null
  br i1 %665, label %666, label %670

666:                                              ; preds = %663
  %667 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  call void @Perl_av_extend(ptr noundef %667, i64 noundef 1) #10
  %668 = load ptr, ptr %667, align 8, !tbaa !103
  %669 = getelementptr inbounds %struct.xpvav, ptr %668, i64 0, i32 2
  store i64 0, ptr %669, align 8, !tbaa !105
  br label %670

670:                                              ; preds = %666, %663
  %671 = phi ptr [ %589, %663 ], [ %667, %666 ]
  %672 = icmp eq ptr %310, null
  br i1 %672, label %677, label %673

673:                                              ; preds = %670
  %674 = getelementptr inbounds %struct.sv, ptr %310, i64 0, i32 1
  %675 = load i32, ptr %674, align 8, !tbaa !91
  %676 = add i32 %675, 1
  store i32 %676, ptr %674, align 8, !tbaa !91
  br label %677

677:                                              ; preds = %670, %673
  %678 = getelementptr inbounds %struct.av, ptr %671, i64 0, i32 3
  %679 = load ptr, ptr %678, align 8, !tbaa !41
  store ptr %310, ptr %679, align 8, !tbaa !42
  %680 = call ptr @Perl_newRV(ptr noundef %588) #10
  %681 = call fastcc ptr @scalar_call(ptr noundef %680, ptr noundef %664, i32 noundef %12, ptr noundef nonnull %671, i32 noundef 6)
  %682 = icmp eq ptr %680, null
  br i1 %682, label %690, label %683

683:                                              ; preds = %677
  %684 = getelementptr inbounds %struct.sv, ptr %680, i64 0, i32 1
  %685 = load i32, ptr %684, align 8, !tbaa !91
  %686 = icmp ugt i32 %685, 1
  br i1 %686, label %687, label %689

687:                                              ; preds = %683
  %688 = add i32 %685, -1
  store i32 %688, ptr %684, align 8, !tbaa !91
  br label %690

689:                                              ; preds = %683
  call void @Perl_sv_free2(ptr noundef nonnull %680, i32 noundef %685) #10
  br label %690

690:                                              ; preds = %677, %687, %689
  br i1 %672, label %698, label %691

691:                                              ; preds = %690
  %692 = getelementptr inbounds %struct.sv, ptr %310, i64 0, i32 1
  %693 = load i32, ptr %692, align 8, !tbaa !91
  %694 = icmp ugt i32 %693, 1
  br i1 %694, label %695, label %697

695:                                              ; preds = %691
  %696 = add i32 %693, -1
  store i32 %696, ptr %692, align 8, !tbaa !91
  br label %698

697:                                              ; preds = %691
  call void @Perl_sv_free2(ptr noundef nonnull %310, i32 noundef %693) #10
  br label %698

698:                                              ; preds = %690, %695, %697
  call void @Perl_av_undef(ptr noundef nonnull %671) #10
  call void @Perl_sv_free(ptr noundef nonnull %671) #10
  %699 = icmp ne ptr %268, %4
  %700 = select i1 %119, i1 %699, i1 false
  br i1 %700, label %701, label %702

701:                                              ; preds = %698
  call void @Perl_safesysfree(ptr noundef %268) #10
  br label %702

702:                                              ; preds = %701, %698
  br i1 %68, label %722, label %703

703:                                              ; preds = %702
  %704 = call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  switch i32 %69, label %711 [
    i32 4, label %705
    i32 5, label %706
    i32 6, label %710
  ]

705:                                              ; preds = %703
  call void @Perl_sv_upgrade(ptr noundef %588, i32 noundef 7) #10
  br label %713

706:                                              ; preds = %703
  call void @Perl_sv_upgrade(ptr noundef %588, i32 noundef 11) #10
  %707 = getelementptr inbounds %struct.av, ptr %588, i64 0, i32 2
  %708 = load i32, ptr %707, align 4, !tbaa !145
  %709 = and i32 %708, -1073741825
  store i32 %709, ptr %707, align 4, !tbaa !145
  br label %713

710:                                              ; preds = %703
  call void @Perl_sv_upgrade(ptr noundef %588, i32 noundef 12) #10
  br label %713

711:                                              ; preds = %703
  %712 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %712, align 8, !tbaa !50
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.74, i32 noundef %69) #10
  br label %713

713:                                              ; preds = %711, %710, %706, %705
  call void @Perl_sv_magic(ptr noundef %588, ptr noundef %704, i32 noundef %67, ptr noundef null, i32 noundef 0) #10
  %714 = icmp eq ptr %704, null
  br i1 %714, label %722, label %715

715:                                              ; preds = %713
  %716 = getelementptr inbounds %struct.sv, ptr %704, i64 0, i32 1
  %717 = load i32, ptr %716, align 8, !tbaa !91
  %718 = icmp ugt i32 %717, 1
  br i1 %718, label %719, label %721

719:                                              ; preds = %715
  %720 = add i32 %717, -1
  store i32 %720, ptr %716, align 8, !tbaa !91
  br label %722

721:                                              ; preds = %715
  call void @Perl_sv_free2(ptr noundef nonnull %704, i32 noundef %717) #10
  br label %722

722:                                              ; preds = %109, %99, %86, %583, %402, %264, %721, %719, %713, %472, %702, %392, %381, %372, %304, %294, %283, %274, %80, %51, %41, %26, %16, %174, %339, %331, %62
  %723 = phi ptr [ null, %62 ], [ null, %339 ], [ null, %472 ], [ null, %331 ], [ null, %174 ], [ null, %16 ], [ null, %26 ], [ null, %41 ], [ null, %51 ], [ null, %80 ], [ null, %274 ], [ null, %283 ], [ null, %294 ], [ null, %304 ], [ null, %372 ], [ null, %381 ], [ null, %392 ], [ %588, %702 ], [ %588, %713 ], [ %588, %719 ], [ %588, %721 ], [ null, %264 ], [ null, %402 ], [ %586, %583 ], [ null, %86 ], [ null, %99 ], [ null, %109 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %723
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_overloaded(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !83
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !83
  %14 = icmp eq ptr %3, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !91
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %7, %15
  %20 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %204, label %22

22:                                               ; preds = %19
  %23 = icmp eq ptr %8, null
  br i1 %23, label %81, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #10
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !95
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !98
  %32 = and i32 %31, 33554432
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !41
  %37 = load ptr, ptr %8, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !75
  %40 = getelementptr ptr, ptr %36, i64 %39
  %41 = getelementptr ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %40, i64 36
  %46 = load i32, ptr %45, align 4, !tbaa !99
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %42, align 8, !tbaa !42
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44, %48
  %52 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %29, %34, %51
  %55 = load i32, ptr %30, align 4, !tbaa !98
  %56 = and i32 %55, -268435457
  store i32 %56, ptr %30, align 4, !tbaa !98
  br label %70

57:                                               ; preds = %51
  store i32 0, ptr %26, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !53
  %62 = and i32 %61, 1048576
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %59, align 8, !tbaa !85
  %66 = load ptr, ptr %65, align 8, !tbaa !86
  %67 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !98
  %69 = or i32 %68, 268435456
  store i32 %69, ptr %67, align 4, !tbaa !98
  br label %70

70:                                               ; preds = %64, %57, %54, %24
  %71 = tail call ptr @Perl_sv_bless(ptr noundef %25, ptr noundef nonnull %8) #10
  %72 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  store ptr null, ptr %72, align 8, !tbaa !41
  %73 = icmp eq ptr %25, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !91
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = add i32 %76, -1
  store i32 %79, ptr %75, align 8, !tbaa !91
  br label %81

80:                                               ; preds = %74
  tail call void @Perl_sv_free2(ptr noundef nonnull %25, i32 noundef %76) #10
  br label %81

81:                                               ; preds = %80, %78, %70, %22
  %82 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  store i32 1, ptr %82, align 8, !tbaa !95
  %83 = tail call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  store i32 0, ptr %82, align 8, !tbaa !95
  %84 = icmp eq ptr %83, null
  br i1 %84, label %204, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !53
  %88 = and i32 %87, 255
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  tail call void @Perl_sv_upgrade(ptr noundef %3, i32 noundef 1) #10
  br label %91

91:                                               ; preds = %90, %85
  %92 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  store ptr %83, ptr %92, align 8, !tbaa !41
  %93 = load i32, ptr %86, align 4, !tbaa !53
  %94 = or i32 %93, 2048
  store i32 %94, ptr %86, align 4, !tbaa !53
  %95 = getelementptr inbounds %struct.sv, ptr %83, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !53
  %97 = and i32 %96, 255
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %91
  %100 = load ptr, ptr %83, align 8, !tbaa !85
  %101 = load ptr, ptr %100, align 8, !tbaa !86
  br label %102

102:                                              ; preds = %91, %99
  %103 = phi ptr [ %101, %99 ], [ null, %91 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %106, align 8, !tbaa !50
  %107 = tail call ptr @Perl_sv_reftype(ptr noundef nonnull %83, i32 noundef 0) #10
  %108 = ptrtoint ptr %83 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.75, ptr noundef %107, i64 noundef %108) #10
  br label %109

109:                                              ; preds = %105, %102
  %110 = getelementptr inbounds %struct.hv, ptr %103, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !98
  %112 = and i32 %111, 33554432
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %134, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.hv, ptr %103, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !41
  %117 = load ptr, ptr %103, align 8, !tbaa !73
  %118 = getelementptr inbounds %struct.xpvhv, ptr %117, i64 0, i32 3
  %119 = load i64, ptr %118, align 8, !tbaa !75
  %120 = getelementptr ptr, ptr %116, i64 %119
  %121 = getelementptr ptr, ptr %120, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !41
  %123 = icmp eq ptr %122, null
  br i1 %123, label %134, label %124

124:                                              ; preds = %114
  %125 = getelementptr i8, ptr %120, i64 36
  %126 = load i32, ptr %125, align 4, !tbaa !99
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %122, align 8, !tbaa !42
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %124, %128
  %132 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %103, i1 noundef zeroext false) #10
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %192

134:                                              ; preds = %128, %109, %114, %131
  %135 = load i32, ptr %110, align 4, !tbaa !98
  %136 = and i32 %135, -268435457
  store i32 %136, ptr %110, align 4, !tbaa !98
  %137 = and i32 %135, 33554432
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %160, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.hv, ptr %103, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !41
  %142 = load ptr, ptr %103, align 8, !tbaa !73
  %143 = getelementptr inbounds %struct.xpvhv, ptr %142, i64 0, i32 3
  %144 = load i64, ptr %143, align 8, !tbaa !75
  %145 = getelementptr ptr, ptr %141, i64 %144
  %146 = getelementptr ptr, ptr %145, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !41
  %148 = icmp eq ptr %147, null
  br i1 %148, label %160, label %149

149:                                              ; preds = %139
  %150 = getelementptr i8, ptr %145, i64 36
  %151 = load i32, ptr %150, align 4, !tbaa !99
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr %147, align 8, !tbaa !42
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %149, %153
  %157 = phi ptr [ %146, %149 ], [ %147, %153 ]
  %158 = load ptr, ptr %157, align 8, !tbaa !41
  %159 = getelementptr inbounds %struct.hek, ptr %158, i64 0, i32 2
  br label %160

160:                                              ; preds = %134, %139, %153, %156
  %161 = phi ptr [ %159, %156 ], [ null, %153 ], [ null, %139 ], [ null, %134 ]
  %162 = tail call ptr @Perl_newSVpv(ptr noundef %161, i64 noundef 0) #10
  tail call void (i32, ptr, ptr, ...) @Perl_load_module(i32 noundef 2, ptr noundef %162, ptr noundef null) #10
  %163 = load i32, ptr %110, align 4, !tbaa !98
  %164 = and i32 %163, 33554432
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %186, label %166

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.hv, ptr %103, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !41
  %169 = load ptr, ptr %103, align 8, !tbaa !73
  %170 = getelementptr inbounds %struct.xpvhv, ptr %169, i64 0, i32 3
  %171 = load i64, ptr %170, align 8, !tbaa !75
  %172 = getelementptr ptr, ptr %168, i64 %171
  %173 = getelementptr ptr, ptr %172, i64 1
  %174 = load ptr, ptr %173, align 8, !tbaa !41
  %175 = icmp eq ptr %174, null
  br i1 %175, label %186, label %176

176:                                              ; preds = %166
  %177 = getelementptr i8, ptr %172, i64 36
  %178 = load i32, ptr %177, align 4, !tbaa !99
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = load ptr, ptr %174, align 8, !tbaa !42
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %176, %180
  %184 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %103, i1 noundef zeroext false) #10
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %183, %180, %160, %166
  %187 = load i32, ptr %110, align 4, !tbaa !98
  %188 = and i32 %187, -268435457
  store i32 %188, ptr %110, align 4, !tbaa !98
  %189 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %189, align 8, !tbaa !50
  %190 = tail call ptr @Perl_sv_reftype(ptr noundef nonnull %83, i32 noundef 0) #10
  %191 = ptrtoint ptr %83 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.76, ptr noundef %190, i64 noundef %191, ptr noundef %161, ptr noundef %161) #10
  br label %192

192:                                              ; preds = %186, %183, %131
  %193 = load ptr, ptr %92, align 8, !tbaa !41
  %194 = getelementptr inbounds %struct.sv, ptr %193, i64 0, i32 2
  %195 = load i32, ptr %194, align 4, !tbaa !53
  %196 = and i32 %195, 1048576
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %192
  %199 = load ptr, ptr %193, align 8, !tbaa !85
  %200 = load ptr, ptr %199, align 8, !tbaa !86
  %201 = getelementptr inbounds %struct.hv, ptr %200, i64 0, i32 2
  %202 = load i32, ptr %201, align 4, !tbaa !98
  %203 = or i32 %202, 268435456
  store i32 %203, ptr %201, align 4, !tbaa !98
  br label %204

204:                                              ; preds = %198, %192, %81, %19
  %205 = phi ptr [ null, %19 ], [ null, %81 ], [ %3, %192 ], [ %3, %198 ]
  ret ptr %205
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_tied_key(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !83
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !83
  %14 = icmp eq ptr %3, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !91
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %7, %15
  %20 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %101, label %22

22:                                               ; preds = %19
  %23 = icmp eq ptr %8, null
  br i1 %23, label %81, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #10
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !95
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !98
  %32 = and i32 %31, 33554432
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !41
  %37 = load ptr, ptr %8, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !75
  %40 = getelementptr ptr, ptr %36, i64 %39
  %41 = getelementptr ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %40, i64 36
  %46 = load i32, ptr %45, align 4, !tbaa !99
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %42, align 8, !tbaa !42
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44, %48
  %52 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %29, %34, %51
  %55 = load i32, ptr %30, align 4, !tbaa !98
  %56 = and i32 %55, -268435457
  store i32 %56, ptr %30, align 4, !tbaa !98
  br label %70

57:                                               ; preds = %51
  store i32 0, ptr %26, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !53
  %62 = and i32 %61, 1048576
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %59, align 8, !tbaa !85
  %66 = load ptr, ptr %65, align 8, !tbaa !86
  %67 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !98
  %69 = or i32 %68, 268435456
  store i32 %69, ptr %67, align 4, !tbaa !98
  br label %70

70:                                               ; preds = %64, %57, %54, %24
  %71 = tail call ptr @Perl_sv_bless(ptr noundef %25, ptr noundef nonnull %8) #10
  %72 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  store ptr null, ptr %72, align 8, !tbaa !41
  %73 = icmp eq ptr %25, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !91
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = add i32 %76, -1
  store i32 %79, ptr %75, align 8, !tbaa !91
  br label %81

80:                                               ; preds = %74
  tail call void @Perl_sv_free2(ptr noundef nonnull %25, i32 noundef %76) #10
  br label %81

81:                                               ; preds = %80, %78, %70, %22
  %82 = tail call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %83 = icmp eq ptr %82, null
  br i1 %83, label %101, label %84

84:                                               ; preds = %81
  %85 = tail call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %86 = icmp eq ptr %85, null
  br i1 %86, label %101, label %87

87:                                               ; preds = %84
  tail call void @Perl_sv_upgrade(ptr noundef %3, i32 noundef 7) #10
  tail call void @Perl_sv_magic(ptr noundef %3, ptr noundef nonnull %82, i32 noundef 112, ptr noundef nonnull %85, i32 noundef -2) #10
  %88 = getelementptr inbounds %struct.sv, ptr %85, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !91
  %90 = icmp ugt i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = add i32 %89, -1
  store i32 %92, ptr %88, align 8, !tbaa !91
  br label %94

93:                                               ; preds = %87
  tail call void @Perl_sv_free2(ptr noundef nonnull %85, i32 noundef %89) #10
  br label %94

94:                                               ; preds = %93, %91
  %95 = getelementptr inbounds %struct.sv, ptr %82, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !91
  %97 = icmp ugt i32 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = add i32 %96, -1
  store i32 %99, ptr %95, align 8, !tbaa !91
  br label %101

100:                                              ; preds = %94
  tail call void @Perl_sv_free2(ptr noundef nonnull %82, i32 noundef %96) #10
  br label %101

101:                                              ; preds = %100, %98, %84, %81, %19
  %102 = phi ptr [ null, %19 ], [ null, %81 ], [ null, %84 ], [ %3, %98 ], [ %3, %100 ]
  ret ptr %102
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_tied_idx(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %13 = load i64, ptr %12, align 8, !tbaa !83
  %14 = add nsw i64 %13, 1
  store i64 %14, ptr %12, align 8, !tbaa !83
  %15 = icmp eq ptr %4, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !91
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !91
  br label %20

20:                                               ; preds = %8, %16
  %21 = tail call ptr @Perl_av_store(ptr noundef %11, i64 noundef %13, ptr noundef %4) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %116, label %23

23:                                               ; preds = %20
  %24 = icmp eq ptr %9, null
  br i1 %24, label %82, label %25

25:                                               ; preds = %23
  %26 = tail call ptr @Perl_newRV_noinc(ptr noundef %4) #10
  %27 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %28 = load i32, ptr %27, align 8, !tbaa !95
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %71, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hv, ptr %9, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !98
  %33 = and i32 %32, 33554432
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.hv, ptr %9, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !41
  %38 = load ptr, ptr %9, align 8, !tbaa !73
  %39 = getelementptr inbounds %struct.xpvhv, ptr %38, i64 0, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !75
  %41 = getelementptr ptr, ptr %37, i64 %40
  %42 = getelementptr ptr, ptr %41, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !41
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %35
  %46 = getelementptr i8, ptr %41, i64 36
  %47 = load i32, ptr %46, align 4, !tbaa !99
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %43, align 8, !tbaa !42
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45, %49
  %53 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %9, i1 noundef zeroext false) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %30, %35, %52
  %56 = load i32, ptr %31, align 4, !tbaa !98
  %57 = and i32 %56, -268435457
  store i32 %57, ptr %31, align 4, !tbaa !98
  br label %71

58:                                               ; preds = %52
  store i32 0, ptr %27, align 8, !tbaa !95
  %59 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !41
  %61 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !53
  %63 = and i32 %62, 1048576
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = load ptr, ptr %60, align 8, !tbaa !85
  %67 = load ptr, ptr %66, align 8, !tbaa !86
  %68 = getelementptr inbounds %struct.hv, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !98
  %70 = or i32 %69, 268435456
  store i32 %70, ptr %68, align 4, !tbaa !98
  br label %71

71:                                               ; preds = %65, %58, %55, %25
  %72 = tail call ptr @Perl_sv_bless(ptr noundef %26, ptr noundef nonnull %9) #10
  %73 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  store ptr null, ptr %73, align 8, !tbaa !41
  %74 = icmp eq ptr %26, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !91
  %78 = icmp ugt i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = add i32 %77, -1
  store i32 %80, ptr %76, align 8, !tbaa !91
  br label %82

81:                                               ; preds = %75
  tail call void @Perl_sv_free2(ptr noundef nonnull %26, i32 noundef %77) #10
  br label %82

82:                                               ; preds = %81, %79, %71, %23
  %83 = tail call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %84 = icmp eq ptr %83, null
  br i1 %84, label %116, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %87 = load ptr, ptr %86, align 8, !tbaa !69
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !55
  %92 = getelementptr inbounds i8, ptr %91, i64 4
  %93 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !58
  %95 = icmp ugt ptr %92, %94
  br i1 %95, label %116, label %96

96:                                               ; preds = %89
  %97 = load i32, ptr %91, align 1
  store i32 %97, ptr %3, align 4
  store ptr %92, ptr %90, align 8, !tbaa !55
  br label %101

98:                                               ; preds = %85
  %99 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %87, ptr noundef nonnull %3, i64 noundef 4) #10
  %100 = icmp eq i64 %99, 4
  br i1 %100, label %101, label %116

101:                                              ; preds = %98, %96
  %102 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %103 = load i32, ptr %102, align 8, !tbaa !62
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load i32, ptr %3, align 4, !tbaa !43
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  store i32 %107, ptr %3, align 4, !tbaa !43
  br label %108

108:                                              ; preds = %105, %101
  call void @Perl_sv_upgrade(ptr noundef %4, i32 noundef 7) #10
  %109 = load i32, ptr %3, align 4, !tbaa !43
  call void @Perl_sv_magic(ptr noundef %4, ptr noundef nonnull %83, i32 noundef 112, ptr noundef null, i32 noundef %109) #10
  %110 = getelementptr inbounds %struct.sv, ptr %83, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !91
  %112 = icmp ugt i32 %111, 1
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = add i32 %111, -1
  store i32 %114, ptr %110, align 8, !tbaa !91
  br label %116

115:                                              ; preds = %108
  call void @Perl_sv_free2(ptr noundef nonnull %83, i32 noundef %111) #10
  br label %116

116:                                              ; preds = %115, %113, %98, %89, %82, %20
  %117 = phi ptr [ null, %20 ], [ null, %82 ], [ null, %89 ], [ null, %98 ], [ %4, %113 ], [ %4, %115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %117
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_utf8str(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @retrieve_scalar(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = or i32 %7, 536870912
  store i32 %8, ptr %6, align 4, !tbaa !53
  br label %9

9:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_lutf8str(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @retrieve_lscalar(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = or i32 %7, 536870912
  store i32 %8, ptr %6, align 4, !tbaa !53
  br label %9

9:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_flag_hash(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp ult ptr %10, %12
  br i1 %13, label %14, label %268

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %15, ptr %9, align 8, !tbaa !55
  %16 = load i8, ptr %10, align 1, !tbaa !41
  %17 = zext i8 %16 to i32
  br label %21

18:                                               ; preds = %2
  %19 = tail call i32 @PerlIO_getc(ptr noundef nonnull %6) #10
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %268, label %21

21:                                               ; preds = %14, %18
  %22 = phi i32 [ %19, %18 ], [ %17, %14 ]
  %23 = load ptr, ptr %5, align 8, !tbaa !69
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  %28 = getelementptr inbounds i8, ptr %27, i64 4
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = icmp ugt ptr %28, %30
  br i1 %31, label %268, label %32

32:                                               ; preds = %25
  %33 = load i32, ptr %27, align 1
  store i32 %33, ptr %3, align 4
  store ptr %28, ptr %26, align 8, !tbaa !55
  br label %37

34:                                               ; preds = %21
  %35 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %23, ptr noundef nonnull %3, i64 noundef 4) #10
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %37, label %268

37:                                               ; preds = %34, %32
  %38 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %39 = load i32, ptr %38, align 8, !tbaa !62
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %3, align 4, !tbaa !43
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  store i32 %43, ptr %3, align 4, !tbaa !43
  br label %44

44:                                               ; preds = %41, %37
  %45 = call ptr @Perl_newSV_type(i32 noundef 12) #10
  %46 = icmp eq ptr %1, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %49

49:                                               ; preds = %44, %47
  %50 = phi ptr [ %48, %47 ], [ null, %44 ]
  %51 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !92
  %53 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %54 = load i64, ptr %53, align 8, !tbaa !83
  %55 = add nsw i64 %54, 1
  store i64 %55, ptr %53, align 8, !tbaa !83
  %56 = icmp eq ptr %45, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !91
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !91
  br label %61

61:                                               ; preds = %49, %57
  %62 = call ptr @Perl_av_store(ptr noundef %52, i64 noundef %54, ptr noundef %45) #10
  %63 = icmp eq ptr %62, null
  br i1 %63, label %268, label %64

64:                                               ; preds = %61
  %65 = icmp eq ptr %50, null
  br i1 %65, label %123, label %66

66:                                               ; preds = %64
  %67 = call ptr @Perl_newRV_noinc(ptr noundef %45) #10
  %68 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %69 = load i32, ptr %68, align 8, !tbaa !95
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %112, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.hv, ptr %50, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !98
  %74 = and i32 %73, 33554432
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.hv, ptr %50, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !41
  %79 = load ptr, ptr %50, align 8, !tbaa !73
  %80 = getelementptr inbounds %struct.xpvhv, ptr %79, i64 0, i32 3
  %81 = load i64, ptr %80, align 8, !tbaa !75
  %82 = getelementptr ptr, ptr %78, i64 %81
  %83 = getelementptr ptr, ptr %82, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !41
  %85 = icmp eq ptr %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %76
  %87 = getelementptr i8, ptr %82, i64 36
  %88 = load i32, ptr %87, align 4, !tbaa !99
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %84, align 8, !tbaa !42
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %86, %90
  %94 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %50, i1 noundef zeroext false) #10
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90, %71, %76, %93
  %97 = load i32, ptr %72, align 4, !tbaa !98
  %98 = and i32 %97, -268435457
  store i32 %98, ptr %72, align 4, !tbaa !98
  br label %112

99:                                               ; preds = %93
  store i32 0, ptr %68, align 8, !tbaa !95
  %100 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !41
  %102 = getelementptr inbounds %struct.sv, ptr %101, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !53
  %104 = and i32 %103, 1048576
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %99
  %107 = load ptr, ptr %101, align 8, !tbaa !85
  %108 = load ptr, ptr %107, align 8, !tbaa !86
  %109 = getelementptr inbounds %struct.hv, ptr %108, i64 0, i32 2
  %110 = load i32, ptr %109, align 4, !tbaa !98
  %111 = or i32 %110, 268435456
  store i32 %111, ptr %109, align 4, !tbaa !98
  br label %112

112:                                              ; preds = %106, %99, %96, %66
  %113 = call ptr @Perl_sv_bless(ptr noundef %67, ptr noundef nonnull %50) #10
  %114 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 3
  store ptr null, ptr %114, align 8, !tbaa !41
  %115 = icmp eq ptr %67, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !91
  %119 = icmp ugt i32 %118, 1
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = add i32 %118, -1
  store i32 %121, ptr %117, align 8, !tbaa !91
  br label %123

122:                                              ; preds = %116
  call void @Perl_sv_free2(ptr noundef nonnull %67, i32 noundef %118) #10
  br label %123

123:                                              ; preds = %122, %120, %112, %64
  %124 = load i32, ptr %3, align 4, !tbaa !43
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %268, label %126

126:                                              ; preds = %123
  %127 = add nsw i32 %124, 1
  %128 = sext i32 %127 to i64
  call void @Perl_hv_ksplit(ptr noundef %45, i64 noundef %128) #10
  %129 = load i32, ptr %3, align 4, !tbaa !43
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %261

131:                                              ; preds = %126
  %132 = and i32 %22, 1
  %133 = icmp eq i32 %132, 0
  %134 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21
  %135 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21, i32 1
  br label %136

136:                                              ; preds = %131, %257
  %137 = phi i32 [ 0, %131 ], [ %258, %257 ]
  %138 = call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %139 = icmp eq ptr %138, null
  br i1 %139, label %268, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %5, align 8, !tbaa !69
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %153

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %145 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %146 = load ptr, ptr %144, align 8, !tbaa !55
  %147 = load ptr, ptr %145, align 8, !tbaa !58
  %148 = icmp ult ptr %146, %147
  br i1 %148, label %149, label %268

149:                                              ; preds = %143
  %150 = getelementptr inbounds i8, ptr %146, i64 1
  store ptr %150, ptr %144, align 8, !tbaa !55
  %151 = load i8, ptr %146, align 1, !tbaa !41
  %152 = zext i8 %151 to i32
  br label %156

153:                                              ; preds = %140
  %154 = call i32 @PerlIO_getc(ptr noundef nonnull %141) #10
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %268, label %156

156:                                              ; preds = %153, %149
  %157 = phi i32 [ %154, %153 ], [ %152, %149 ]
  %158 = and i32 %157, 4
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %133, i1 true, i1 %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.sv, ptr %138, i64 0, i32 2
  %163 = load i32, ptr %162, align 4, !tbaa !53
  %164 = or i32 %163, 134217728
  store i32 %164, ptr %162, align 4, !tbaa !53
  br label %165

165:                                              ; preds = %161, %156
  %166 = and i32 %157, 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %170 = icmp eq ptr %169, null
  br i1 %170, label %268, label %171

171:                                              ; preds = %168
  %172 = call ptr @Perl_hv_common(ptr noundef %45, ptr noundef nonnull %169, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %138, i32 noundef 0) #10
  %173 = icmp eq ptr %172, null
  br i1 %173, label %268, label %257

174:                                              ; preds = %165
  %175 = and i32 %157, 16
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.sv, ptr %138, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !91
  %180 = icmp ugt i32 %179, 1
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = add i32 %179, -1
  store i32 %182, ptr %178, align 8, !tbaa !91
  br label %184

183:                                              ; preds = %177
  call void @Perl_sv_free2(ptr noundef nonnull %138, i32 noundef %179) #10
  br label %184

184:                                              ; preds = %183, %181, %174
  %185 = phi ptr [ %138, %174 ], [ @PL_sv_placeholder, %181 ], [ @PL_sv_placeholder, %183 ]
  %186 = phi i32 [ 0, %174 ], [ 512, %181 ], [ 512, %183 ]
  %187 = and i32 %157, 3
  %188 = or disjoint i32 %186, %187
  %189 = load ptr, ptr %5, align 8, !tbaa !69
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %200

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %193 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %194 = load ptr, ptr %192, align 8, !tbaa !55
  %195 = getelementptr inbounds i8, ptr %194, i64 4
  %196 = load ptr, ptr %193, align 8, !tbaa !58
  %197 = icmp ugt ptr %195, %196
  br i1 %197, label %268, label %198

198:                                              ; preds = %191
  %199 = load i32, ptr %194, align 1
  store i32 %199, ptr %4, align 4
  store ptr %195, ptr %192, align 8, !tbaa !55
  br label %203

200:                                              ; preds = %184
  %201 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %189, ptr noundef nonnull %4, i64 noundef 4) #10
  %202 = icmp eq i64 %201, 4
  br i1 %202, label %203, label %268

203:                                              ; preds = %200, %198
  %204 = load i32, ptr %38, align 8, !tbaa !62
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load i32, ptr %4, align 4, !tbaa !43
  %208 = call i32 @llvm.bswap.i32(i32 %207)
  store i32 %208, ptr %4, align 4, !tbaa !43
  br label %209

209:                                              ; preds = %203, %206
  %210 = load i32, ptr %4, align 4, !tbaa !43
  %211 = sext i32 %210 to i64
  %212 = load i64, ptr %135, align 8, !tbaa !137
  %213 = icmp ugt i64 %212, %211
  br i1 %213, label %221, label %214

214:                                              ; preds = %209
  %215 = load ptr, ptr %134, align 8, !tbaa !96
  %216 = add nsw i64 %211, 1
  %217 = call ptr @Perl_safesysrealloc(ptr noundef %215, i64 noundef %216) #10
  store ptr %217, ptr %134, align 8, !tbaa !96
  %218 = load i32, ptr %4, align 4, !tbaa !43
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, 1
  store i64 %220, ptr %135, align 8, !tbaa !137
  br label %221

221:                                              ; preds = %214, %209
  %222 = load i32, ptr %4, align 4, !tbaa !43
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %247, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %5, align 8, !tbaa !69
  %226 = icmp eq ptr %225, null
  %227 = sext i32 %222 to i64
  br i1 %226, label %228, label %241

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %230 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %231 = load ptr, ptr %229, align 8, !tbaa !55
  %232 = getelementptr inbounds i8, ptr %231, i64 %227
  %233 = load ptr, ptr %230, align 8, !tbaa !58
  %234 = icmp ugt ptr %232, %233
  br i1 %234, label %268, label %235

235:                                              ; preds = %228
  %236 = load ptr, ptr %134, align 8, !tbaa !96
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %236, ptr align 1 %231, i64 %227, i1 false)
  %237 = load i32, ptr %4, align 4, !tbaa !43
  %238 = load ptr, ptr %229, align 8, !tbaa !55
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, ptr %238, i64 %239
  store ptr %240, ptr %229, align 8, !tbaa !55
  br label %247

241:                                              ; preds = %224
  %242 = load ptr, ptr %134, align 8, !tbaa !96
  %243 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %225, ptr noundef %242, i64 noundef %227) #10
  %244 = load i32, ptr %4, align 4, !tbaa !43
  %245 = sext i32 %244 to i64
  %246 = icmp eq i64 %243, %245
  br i1 %246, label %247, label %268

247:                                              ; preds = %235, %241, %221
  %248 = load ptr, ptr %134, align 8, !tbaa !96
  %249 = load i32, ptr %4, align 4, !tbaa !43
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, ptr %248, i64 %250
  store i8 0, ptr %251, align 1, !tbaa !41
  %252 = load ptr, ptr %134, align 8, !tbaa !96
  %253 = load i32, ptr %4, align 4, !tbaa !43
  %254 = sext i32 %253 to i64
  %255 = call ptr @Perl_hv_common(ptr noundef %45, ptr noundef null, ptr noundef %252, i64 noundef %254, i32 noundef %188, i32 noundef 36, ptr noundef nonnull %185, i32 noundef 0) #10
  %256 = icmp eq ptr %255, null
  br i1 %256, label %268, label %257

257:                                              ; preds = %247, %171
  %258 = add nuw nsw i32 %137, 1
  %259 = load i32, ptr %3, align 4, !tbaa !43
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %136, label %261, !llvm.loop !148

261:                                              ; preds = %257, %126
  %262 = and i32 %22, 1
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.hv, ptr %45, i64 0, i32 2
  %266 = load i32, ptr %265, align 4, !tbaa !98
  %267 = or i32 %266, 134217728
  store i32 %267, ptr %265, align 4, !tbaa !98
  br label %268

268:                                              ; preds = %247, %241, %200, %171, %136, %143, %153, %191, %228, %168, %61, %261, %264, %123, %34, %25, %18, %8
  %269 = phi ptr [ null, %8 ], [ null, %18 ], [ null, %25 ], [ null, %34 ], [ %45, %123 ], [ %45, %264 ], [ %45, %261 ], [ null, %61 ], [ null, %168 ], [ null, %228 ], [ null, %191 ], [ null, %153 ], [ null, %143 ], [ null, %136 ], [ null, %171 ], [ null, %200 ], [ null, %241 ], [ null, %247 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %269
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_code(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %5 = load i64, ptr %4, align 8, !tbaa !83
  %6 = tail call ptr @Perl_newSViv(i64 noundef 0) #10
  %7 = icmp eq ptr %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = load i64, ptr %4, align 8, !tbaa !83
  %15 = add nsw i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !83
  %16 = icmp eq ptr %6, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !91
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !91
  br label %21

21:                                               ; preds = %10, %17
  %22 = tail call ptr @Perl_av_store(ptr noundef %13, i64 noundef %14, ptr noundef %6) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %527, label %24

24:                                               ; preds = %21
  %25 = icmp eq ptr %11, null
  br i1 %25, label %83, label %26

26:                                               ; preds = %24
  %27 = tail call ptr @Perl_newRV_noinc(ptr noundef %6) #10
  %28 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %29 = load i32, ptr %28, align 8, !tbaa !95
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %72, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !98
  %34 = and i32 %33, 33554432
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  %39 = load ptr, ptr %11, align 8, !tbaa !73
  %40 = getelementptr inbounds %struct.xpvhv, ptr %39, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !75
  %42 = getelementptr ptr, ptr %38, i64 %41
  %43 = getelementptr ptr, ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = getelementptr i8, ptr %42, i64 36
  %48 = load i32, ptr %47, align 4, !tbaa !99
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %44, align 8, !tbaa !42
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46, %50
  %54 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %11, i1 noundef zeroext false) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %31, %36, %53
  %57 = load i32, ptr %32, align 4, !tbaa !98
  %58 = and i32 %57, -268435457
  store i32 %58, ptr %32, align 4, !tbaa !98
  br label %72

59:                                               ; preds = %53
  store i32 0, ptr %28, align 8, !tbaa !95
  %60 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !41
  %62 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !53
  %64 = and i32 %63, 1048576
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = load ptr, ptr %61, align 8, !tbaa !85
  %68 = load ptr, ptr %67, align 8, !tbaa !86
  %69 = getelementptr inbounds %struct.hv, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !98
  %71 = or i32 %70, 268435456
  store i32 %71, ptr %69, align 4, !tbaa !98
  br label %72

72:                                               ; preds = %66, %59, %56, %26
  %73 = tail call ptr @Perl_sv_bless(ptr noundef %27, ptr noundef nonnull %11) #10
  %74 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  store ptr null, ptr %74, align 8, !tbaa !41
  %75 = icmp eq ptr %27, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !91
  %79 = icmp ugt i32 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = add i32 %78, -1
  store i32 %81, ptr %77, align 8, !tbaa !91
  br label %83

82:                                               ; preds = %76
  tail call void @Perl_sv_free2(ptr noundef nonnull %27, i32 noundef %78) #10
  br label %83

83:                                               ; preds = %82, %80, %72, %24
  %84 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %85 = load ptr, ptr %84, align 8, !tbaa !69
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !55
  %90 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !58
  %92 = icmp ult ptr %89, %91
  br i1 %92, label %93, label %527

93:                                               ; preds = %87
  %94 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %94, ptr %88, align 8, !tbaa !55
  %95 = load i8, ptr %89, align 1, !tbaa !41
  %96 = zext i8 %95 to i32
  br label %100

97:                                               ; preds = %83
  %98 = tail call i32 @PerlIO_getc(ptr noundef nonnull %85) #10
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %527, label %100

100:                                              ; preds = %97, %93
  %101 = phi i32 [ %98, %97 ], [ %96, %93 ]
  switch i32 %101, label %120 [
    i32 10, label %102
    i32 1, label %104
    i32 23, label %106
    i32 24, label %113
  ]

102:                                              ; preds = %100
  %103 = tail call ptr @retrieve_scalar(ptr noundef %0, ptr noundef %1)
  br label %122

104:                                              ; preds = %100
  %105 = tail call ptr @retrieve_lscalar(ptr noundef %0, ptr noundef %1)
  br label %122

106:                                              ; preds = %100
  %107 = tail call ptr @retrieve_scalar(ptr noundef %0, ptr noundef %1)
  %108 = icmp eq ptr %107, null
  br i1 %108, label %122, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !53
  %112 = or i32 %111, 536870912
  store i32 %112, ptr %110, align 4, !tbaa !53
  br label %122

113:                                              ; preds = %100
  %114 = tail call ptr @retrieve_lscalar(ptr noundef %0, ptr noundef %1)
  %115 = icmp eq ptr %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 2
  %118 = load i32, ptr %117, align 4, !tbaa !53
  %119 = or i32 %118, 536870912
  store i32 %119, ptr %117, align 4, !tbaa !53
  br label %122

120:                                              ; preds = %100
  %121 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %121, align 8, !tbaa !50
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.77, i32 noundef %101) #10
  br label %122

122:                                              ; preds = %116, %113, %109, %106, %120, %104, %102
  %123 = phi ptr [ null, %120 ], [ %105, %104 ], [ %103, %102 ], [ %107, %106 ], [ %107, %109 ], [ %114, %113 ], [ %114, %116 ]
  %124 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.78, i64 noundef 4) #10
  %125 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !53
  %127 = and i32 %126, 536870912
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 2
  %131 = load i32, ptr %130, align 4, !tbaa !53
  %132 = or i32 %131, 536870912
  store i32 %132, ptr %130, align 4, !tbaa !53
  br label %133

133:                                              ; preds = %129, %122
  %134 = load i32, ptr %125, align 4, !tbaa !53
  %135 = and i32 %134, 2098176
  %136 = icmp eq i32 %135, 1024
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !41
  br label %142

140:                                              ; preds = %133
  %141 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %123, ptr noundef null, i32 noundef 2) #10
  br label %142

142:                                              ; preds = %140, %137
  %143 = phi ptr [ %139, %137 ], [ %141, %140 ]
  tail call void @Perl_sv_catpv(ptr noundef %124, ptr noundef %143) #10
  %144 = icmp eq ptr %123, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 1
  %147 = load i32, ptr %146, align 8, !tbaa !91
  %148 = icmp ugt i32 %147, 1
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = add i32 %147, -1
  store i32 %150, ptr %146, align 8, !tbaa !91
  br label %152

151:                                              ; preds = %145
  tail call void @Perl_sv_free2(ptr noundef nonnull %123, i32 noundef %147) #10
  br label %152

152:                                              ; preds = %142, %149, %151
  %153 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 16
  %154 = load ptr, ptr %153, align 8, !tbaa !67
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.79, i32 noundef 1) #10
  store ptr %157, ptr %153, align 8, !tbaa !67
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.sv, ptr %157, i64 0, i32 1
  %161 = load i32, ptr %160, align 8, !tbaa !91
  %162 = add i32 %161, 1
  store i32 %162, ptr %160, align 8, !tbaa !91
  br label %163

163:                                              ; preds = %159, %156, %152
  %164 = load ptr, ptr %153, align 8, !tbaa !67
  %165 = icmp eq ptr %164, null
  br i1 %165, label %220, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.sv, ptr %164, i64 0, i32 2
  %168 = load i32, ptr %167, align 4, !tbaa !53
  %169 = and i32 %168, 2097152
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %166
  %172 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %164, i32 noundef 2) #10
  br i1 %172, label %339, label %220

173:                                              ; preds = %166
  %174 = and i32 %168, 65280
  %175 = icmp ne i32 %174, 0
  %176 = and i32 %168, 255
  %177 = icmp eq i32 %176, 8
  %178 = or i1 %175, %177
  %179 = and i32 %168, 16777471
  %180 = icmp eq i32 %179, 16777226
  %181 = or i1 %180, %178
  br i1 %181, label %182, label %220

182:                                              ; preds = %173
  %183 = and i32 %168, 1024
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %199, label %185

185:                                              ; preds = %182
  %186 = load ptr, ptr %164, align 8, !tbaa !85
  %187 = icmp eq ptr %186, null
  br i1 %187, label %220, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.xpv, ptr %186, i64 0, i32 2
  %190 = load i64, ptr %189, align 8, !tbaa !107
  %191 = icmp ugt i64 %190, 1
  br i1 %191, label %339, label %192

192:                                              ; preds = %188
  %193 = icmp eq i64 %190, 0
  br i1 %193, label %220, label %194

194:                                              ; preds = %192
  %195 = getelementptr inbounds %struct.sv, ptr %164, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !41
  %197 = load i8, ptr %196, align 1, !tbaa !41
  %198 = icmp eq i8 %197, 48
  br i1 %198, label %220, label %339

199:                                              ; preds = %182
  %200 = and i32 %168, 768
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %218, label %202

202:                                              ; preds = %199
  %203 = and i32 %168, 256
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  %206 = load ptr, ptr %164, align 8, !tbaa !85
  %207 = getelementptr inbounds %struct.xpviv, ptr %206, i64 0, i32 4
  %208 = load i64, ptr %207, align 8, !tbaa !41
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %339

210:                                              ; preds = %205, %202
  %211 = and i32 %168, 512
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr %164, align 8, !tbaa !85
  %215 = getelementptr inbounds %struct.xpvnv, ptr %214, i64 0, i32 5
  %216 = load double, ptr %215, align 8, !tbaa !41
  %217 = fcmp une double %216, 0.000000e+00
  br i1 %217, label %339, label %220

218:                                              ; preds = %199
  %219 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %164, i32 noundef 0) #10
  br i1 %219, label %339, label %220

220:                                              ; preds = %218, %213, %173, %163, %210, %194, %192, %185, %171
  %221 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 14
  %222 = load i32, ptr %221, align 8, !tbaa !64
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %324, label %224

224:                                              ; preds = %220
  %225 = icmp slt i32 %222, 0
  br i1 %225, label %226, label %327

226:                                              ; preds = %224
  %227 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %228 = icmp eq ptr %227, null
  br i1 %228, label %323, label %229

229:                                              ; preds = %226
  %230 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %231 = getelementptr inbounds %struct.sv, ptr %230, i64 0, i32 2
  %232 = load i32, ptr %231, align 4, !tbaa !53
  %233 = and i32 %232, 2097152
  %234 = icmp eq i32 %233, 0
  %235 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  br i1 %234, label %238, label %236

236:                                              ; preds = %229
  %237 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %235, i32 noundef 2) #10
  br label %320

238:                                              ; preds = %229
  %239 = getelementptr inbounds %struct.sv, ptr %235, i64 0, i32 2
  %240 = load i32, ptr %239, align 4, !tbaa !53
  %241 = and i32 %240, 65280
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %255

243:                                              ; preds = %238
  %244 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %245 = getelementptr inbounds %struct.sv, ptr %244, i64 0, i32 2
  %246 = load i32, ptr %245, align 4, !tbaa !53
  %247 = and i32 %246, 255
  %248 = icmp eq i32 %247, 8
  br i1 %248, label %255, label %249

249:                                              ; preds = %243
  %250 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %251 = getelementptr inbounds %struct.sv, ptr %250, i64 0, i32 2
  %252 = load i32, ptr %251, align 4, !tbaa !53
  %253 = and i32 %252, 16826623
  %254 = icmp eq i32 %253, 16777226
  br i1 %254, label %255, label %323

255:                                              ; preds = %249, %243, %238
  %256 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %257 = getelementptr inbounds %struct.sv, ptr %256, i64 0, i32 2
  %258 = load i32, ptr %257, align 4, !tbaa !53
  %259 = and i32 %258, 1024
  %260 = icmp eq i32 %259, 0
  %261 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  br i1 %260, label %283, label %262

262:                                              ; preds = %255
  %263 = load ptr, ptr %261, align 8, !tbaa !85
  %264 = icmp eq ptr %263, null
  br i1 %264, label %323, label %265

265:                                              ; preds = %262
  %266 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %267 = load ptr, ptr %266, align 8, !tbaa !85
  %268 = getelementptr inbounds %struct.xpv, ptr %267, i64 0, i32 2
  %269 = load i64, ptr %268, align 8, !tbaa !107
  %270 = icmp ugt i64 %269, 1
  br i1 %270, label %326, label %271

271:                                              ; preds = %265
  %272 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %273 = load ptr, ptr %272, align 8, !tbaa !85
  %274 = getelementptr inbounds %struct.xpv, ptr %273, i64 0, i32 2
  %275 = load i64, ptr %274, align 8, !tbaa !107
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %323, label %277

277:                                              ; preds = %271
  %278 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %279 = getelementptr inbounds %struct.sv, ptr %278, i64 0, i32 3
  %280 = load ptr, ptr %279, align 8, !tbaa !41
  %281 = load i8, ptr %280, align 1, !tbaa !41
  %282 = icmp ne i8 %281, 48
  br label %320

283:                                              ; preds = %255
  %284 = getelementptr inbounds %struct.sv, ptr %261, i64 0, i32 2
  %285 = load i32, ptr %284, align 4, !tbaa !53
  %286 = and i32 %285, 768
  %287 = icmp eq i32 %286, 0
  %288 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  br i1 %287, label %318, label %289

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.sv, ptr %288, i64 0, i32 2
  %291 = load i32, ptr %290, align 4, !tbaa !53
  %292 = and i32 %291, 256
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %300, label %294

294:                                              ; preds = %289
  %295 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %296 = load ptr, ptr %295, align 8, !tbaa !85
  %297 = getelementptr inbounds %struct.xpviv, ptr %296, i64 0, i32 4
  %298 = load i64, ptr %297, align 8, !tbaa !41
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %326

300:                                              ; preds = %294, %289
  %301 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %302 = getelementptr inbounds %struct.sv, ptr %301, i64 0, i32 2
  %303 = load i32, ptr %302, align 4, !tbaa !53
  %304 = and i32 %303, 512
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %323, label %306

306:                                              ; preds = %300
  %307 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %308 = load ptr, ptr %307, align 8, !tbaa !85
  %309 = getelementptr inbounds %struct.xpvnv, ptr %308, i64 0, i32 5
  %310 = load double, ptr %309, align 8, !tbaa !41
  %311 = fcmp uno double %310, 0.000000e+00
  br i1 %311, label %326, label %312

312:                                              ; preds = %306
  %313 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %314 = load ptr, ptr %313, align 8, !tbaa !85
  %315 = getelementptr inbounds %struct.xpvnv, ptr %314, i64 0, i32 5
  %316 = load double, ptr %315, align 8, !tbaa !41
  %317 = fcmp une double %316, 0.000000e+00
  br label %320

318:                                              ; preds = %283
  %319 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %288, i32 noundef 0) #10
  br label %320

320:                                              ; preds = %236, %318, %277, %312
  %321 = phi i1 [ %237, %236 ], [ %319, %318 ], [ %282, %277 ], [ %317, %312 ]
  %322 = zext i1 %321 to i32
  store i32 %322, ptr %221, align 8, !tbaa !64
  br i1 %321, label %327, label %324

323:                                              ; preds = %300, %271, %262, %249, %226
  store i32 0, ptr %221, align 8, !tbaa !64
  br label %324

324:                                              ; preds = %323, %220, %320
  %325 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %325, align 8, !tbaa !50
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.80) #10
  br label %339

326:                                              ; preds = %306, %294, %265
  store i32 1, ptr %221, align 8, !tbaa !64
  br label %327

327:                                              ; preds = %326, %320, %224
  %328 = tail call ptr @Perl_newSVsv(ptr noundef %124) #10
  %329 = load ptr, ptr %12, align 8, !tbaa !92
  %330 = shl i64 %5, 32
  %331 = ashr exact i64 %330, 32
  %332 = icmp eq ptr %328, null
  br i1 %332, label %337, label %333

333:                                              ; preds = %327
  %334 = getelementptr inbounds %struct.sv, ptr %328, i64 0, i32 1
  %335 = load i32, ptr %334, align 8, !tbaa !91
  %336 = add i32 %335, 1
  store i32 %336, ptr %334, align 8, !tbaa !91
  br label %337

337:                                              ; preds = %327, %333
  %338 = tail call ptr @Perl_av_store(ptr noundef %329, i64 noundef %331, ptr noundef %328) #10
  br label %527

339:                                              ; preds = %194, %324, %218, %213, %205, %188, %171
  tail call void @Perl_push_scope() #10
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #10
  %340 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !82
  store i64 %340, ptr @PL_tmps_floor, align 8, !tbaa !82
  %341 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.81, i32 noundef 1) #10
  tail call void @Perl_sv_setpvn(ptr noundef %341, ptr noundef nonnull @.str.3, i64 noundef 0) #10
  %342 = load ptr, ptr %153, align 8, !tbaa !67
  %343 = getelementptr inbounds %struct.sv, ptr %342, i64 0, i32 2
  %344 = load i32, ptr %343, align 4, !tbaa !53
  %345 = and i32 %344, 2048
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %385, label %347

347:                                              ; preds = %339
  %348 = getelementptr inbounds %struct.sv, ptr %342, i64 0, i32 3
  %349 = load ptr, ptr %348, align 8, !tbaa !41
  %350 = getelementptr inbounds %struct.sv, ptr %349, i64 0, i32 2
  %351 = load i32, ptr %350, align 4, !tbaa !53
  %352 = and i32 %351, 255
  %353 = icmp eq i32 %352, 13
  br i1 %353, label %354, label %385

354:                                              ; preds = %347
  %355 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %356 = getelementptr inbounds i32, ptr %355, i64 1
  store ptr %356, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %357 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !42
  %358 = icmp eq ptr %356, %357
  br i1 %358, label %359, label %361

359:                                              ; preds = %354
  %360 = tail call ptr @Perl_markstack_grow() #10
  br label %361

361:                                              ; preds = %354, %359
  %362 = phi ptr [ %360, %359 ], [ %356, %354 ]
  %363 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %364 = ptrtoint ptr %3 to i64
  %365 = ptrtoint ptr %363 to i64
  %366 = sub i64 %364, %365
  %367 = lshr exact i64 %366, 3
  %368 = trunc i64 %367 to i32
  store i32 %368, ptr %362, align 4, !tbaa !43
  %369 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %370 = ptrtoint ptr %369 to i64
  %371 = sub i64 %370, %364
  %372 = icmp slt i64 %371, 8
  br i1 %372, label %373, label %375

373:                                              ; preds = %361
  %374 = tail call ptr @Perl_stack_grow(ptr noundef %3, ptr noundef %3, i64 noundef 1) #10
  br label %375

375:                                              ; preds = %361, %373
  %376 = phi ptr [ %374, %373 ], [ %3, %361 ]
  %377 = tail call ptr @Perl_newSVsv(ptr noundef %124) #10
  %378 = tail call ptr @Perl_sv_2mortal(ptr noundef %377) #10
  %379 = getelementptr inbounds ptr, ptr %376, i64 1
  store ptr %378, ptr %379, align 8, !tbaa !42
  store ptr %379, ptr @PL_stack_sp, align 8, !tbaa !42
  %380 = load ptr, ptr %153, align 8, !tbaa !67
  %381 = tail call i32 @Perl_call_sv(ptr noundef %380, i32 noundef 2) #10
  %382 = icmp eq i32 %381, 1
  br i1 %382, label %387, label %383

383:                                              ; preds = %375
  %384 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %384, align 8, !tbaa !50
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.82) #10
  br label %387

385:                                              ; preds = %347, %339
  %386 = tail call i32 @Perl_eval_sv(ptr noundef %124, i32 noundef 2) #10
  br label %387

387:                                              ; preds = %375, %383, %385
  %388 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %389 = getelementptr inbounds ptr, ptr %388, i64 -1
  %390 = load ptr, ptr %388, align 8, !tbaa !42
  store ptr %389, ptr @PL_stack_sp, align 8, !tbaa !42
  %391 = icmp eq ptr %341, null
  br i1 %391, label %469, label %392

392:                                              ; preds = %387
  %393 = getelementptr inbounds %struct.sv, ptr %341, i64 0, i32 2
  %394 = load i32, ptr %393, align 4, !tbaa !53
  %395 = and i32 %394, 2097152
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %399, label %397

397:                                              ; preds = %392
  %398 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %341, i32 noundef 2) #10
  br i1 %398, label %446, label %469

399:                                              ; preds = %392
  %400 = and i32 %394, 65280
  %401 = icmp ne i32 %400, 0
  %402 = and i32 %394, 255
  %403 = icmp eq i32 %402, 8
  %404 = or i1 %401, %403
  %405 = and i32 %394, 16777471
  %406 = icmp eq i32 %405, 16777226
  %407 = or i1 %406, %404
  br i1 %407, label %408, label %469

408:                                              ; preds = %399
  %409 = and i32 %394, 1024
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %425, label %411

411:                                              ; preds = %408
  %412 = load ptr, ptr %341, align 8, !tbaa !85
  %413 = icmp eq ptr %412, null
  br i1 %413, label %469, label %414

414:                                              ; preds = %411
  %415 = getelementptr inbounds %struct.xpv, ptr %412, i64 0, i32 2
  %416 = load i64, ptr %415, align 8, !tbaa !107
  %417 = icmp ugt i64 %416, 1
  br i1 %417, label %446, label %418

418:                                              ; preds = %414
  %419 = icmp eq i64 %416, 0
  br i1 %419, label %469, label %420

420:                                              ; preds = %418
  %421 = getelementptr inbounds %struct.sv, ptr %341, i64 0, i32 3
  %422 = load ptr, ptr %421, align 8, !tbaa !41
  %423 = load i8, ptr %422, align 1, !tbaa !41
  %424 = icmp eq i8 %423, 48
  br i1 %424, label %469, label %446

425:                                              ; preds = %408
  %426 = and i32 %394, 768
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %444, label %428

428:                                              ; preds = %425
  %429 = and i32 %394, 256
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %436, label %431

431:                                              ; preds = %428
  %432 = load ptr, ptr %341, align 8, !tbaa !85
  %433 = getelementptr inbounds %struct.xpviv, ptr %432, i64 0, i32 4
  %434 = load i64, ptr %433, align 8, !tbaa !41
  %435 = icmp eq i64 %434, 0
  br i1 %435, label %436, label %446

436:                                              ; preds = %431, %428
  %437 = and i32 %394, 512
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %469, label %439

439:                                              ; preds = %436
  %440 = load ptr, ptr %341, align 8, !tbaa !85
  %441 = getelementptr inbounds %struct.xpvnv, ptr %440, i64 0, i32 5
  %442 = load double, ptr %441, align 8, !tbaa !41
  %443 = fcmp une double %442, 0.000000e+00
  br i1 %443, label %446, label %469

444:                                              ; preds = %425
  %445 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %341, i32 noundef 0) #10
  br i1 %445, label %446, label %469

446:                                              ; preds = %420, %397, %414, %431, %439, %444
  %447 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %447, align 8, !tbaa !50
  %448 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 2
  %449 = load i32, ptr %448, align 4, !tbaa !53
  %450 = and i32 %449, 2098176
  %451 = icmp eq i32 %450, 1024
  br i1 %451, label %452, label %455

452:                                              ; preds = %446
  %453 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 3
  %454 = load ptr, ptr %453, align 8, !tbaa !41
  br label %457

455:                                              ; preds = %446
  %456 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %124, ptr noundef null, i32 noundef 2) #10
  br label %457

457:                                              ; preds = %455, %452
  %458 = phi ptr [ %454, %452 ], [ %456, %455 ]
  %459 = load i32, ptr %393, align 4, !tbaa !53
  %460 = and i32 %459, 2098176
  %461 = icmp eq i32 %460, 1024
  br i1 %461, label %462, label %465

462:                                              ; preds = %457
  %463 = getelementptr inbounds %struct.sv, ptr %341, i64 0, i32 3
  %464 = load ptr, ptr %463, align 8, !tbaa !41
  br label %467

465:                                              ; preds = %457
  %466 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %341, ptr noundef null, i32 noundef 2) #10
  br label %467

467:                                              ; preds = %465, %462
  %468 = phi ptr [ %464, %462 ], [ %466, %465 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.83, ptr noundef %458, ptr noundef %468) #10
  br label %469

469:                                              ; preds = %444, %439, %399, %387, %467, %436, %420, %418, %411, %397
  %470 = icmp eq ptr %390, null
  br i1 %470, label %483, label %471

471:                                              ; preds = %469
  %472 = getelementptr inbounds %struct.sv, ptr %390, i64 0, i32 2
  %473 = load i32, ptr %472, align 4, !tbaa !53
  %474 = and i32 %473, 2048
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %483, label %476

476:                                              ; preds = %471
  %477 = getelementptr inbounds %struct.sv, ptr %390, i64 0, i32 3
  %478 = load ptr, ptr %477, align 8, !tbaa !41
  %479 = getelementptr inbounds %struct.sv, ptr %478, i64 0, i32 2
  %480 = load i32, ptr %479, align 4, !tbaa !53
  %481 = and i32 %480, 255
  %482 = icmp eq i32 %481, 13
  br i1 %482, label %496, label %483

483:                                              ; preds = %469, %471, %476
  %484 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %484, align 8, !tbaa !50
  %485 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 2
  %486 = load i32, ptr %485, align 4, !tbaa !53
  %487 = and i32 %486, 2098176
  %488 = icmp eq i32 %487, 1024
  br i1 %488, label %489, label %492

489:                                              ; preds = %483
  %490 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 3
  %491 = load ptr, ptr %490, align 8, !tbaa !41
  br label %494

492:                                              ; preds = %483
  %493 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %124, ptr noundef null, i32 noundef 2) #10
  br label %494

494:                                              ; preds = %492, %489
  %495 = phi ptr [ %491, %489 ], [ %493, %492 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.84, ptr noundef %495) #10
  br label %496

496:                                              ; preds = %476, %494
  %497 = phi ptr [ %6, %494 ], [ %478, %476 ]
  %498 = icmp eq ptr %497, null
  br i1 %498, label %503, label %499

499:                                              ; preds = %496
  %500 = getelementptr inbounds %struct.sv, ptr %497, i64 0, i32 1
  %501 = load i32, ptr %500, align 8, !tbaa !91
  %502 = add i32 %501, 1
  store i32 %502, ptr %500, align 8, !tbaa !91
  br label %503

503:                                              ; preds = %496, %499
  %504 = icmp eq ptr %124, null
  br i1 %504, label %512, label %505

505:                                              ; preds = %503
  %506 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 1
  %507 = load i32, ptr %506, align 8, !tbaa !91
  %508 = icmp ugt i32 %507, 1
  br i1 %508, label %509, label %511

509:                                              ; preds = %505
  %510 = add i32 %507, -1
  store i32 %510, ptr %506, align 8, !tbaa !91
  br label %512

511:                                              ; preds = %505
  tail call void @Perl_sv_free2(ptr noundef nonnull %124, i32 noundef %507) #10
  br label %512

512:                                              ; preds = %503, %509, %511
  %513 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !82
  %514 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !82
  %515 = icmp sgt i64 %513, %514
  br i1 %515, label %516, label %517

516:                                              ; preds = %512
  tail call void @Perl_free_tmps() #10
  br label %517

517:                                              ; preds = %516, %512
  tail call void @Perl_pop_scope() #10
  %518 = load ptr, ptr %12, align 8, !tbaa !92
  %519 = shl i64 %5, 32
  %520 = ashr exact i64 %519, 32
  br i1 %498, label %525, label %521

521:                                              ; preds = %517
  %522 = getelementptr inbounds %struct.sv, ptr %497, i64 0, i32 1
  %523 = load i32, ptr %522, align 8, !tbaa !91
  %524 = add i32 %523, 1
  store i32 %524, ptr %522, align 8, !tbaa !91
  br label %525

525:                                              ; preds = %517, %521
  %526 = tail call ptr @Perl_av_store(ptr noundef %518, i64 noundef %520, ptr noundef %497) #10
  br label %527

527:                                              ; preds = %97, %87, %21, %525, %337
  %528 = phi ptr [ %497, %525 ], [ %328, %337 ], [ null, %21 ], [ null, %87 ], [ null, %97 ]
  ret ptr %528
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_weakref(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @retrieve_ref(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_sv_rvweaken(ptr noundef nonnull %3) #10
  br label %7

7:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define internal ptr @retrieve_weakoverloaded(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @retrieve_overloaded(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_sv_rvweaken(ptr noundef nonnull %3) #10
  br label %7

7:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @retrieve_vstring(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %14, ptr %8, align 8, !tbaa !55
  %15 = load i8, ptr %9, align 1, !tbaa !41
  %16 = zext i8 %15 to i32
  br label %20

17:                                               ; preds = %2
  %18 = tail call i32 @PerlIO_getc(ptr noundef nonnull %5) #10
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %42, label %20

20:                                               ; preds = %13, %17
  %21 = phi i32 [ %18, %17 ], [ %16, %13 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !69
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  %27 = sext i32 %21 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = icmp ugt ptr %28, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr align 1 %26, i64 %27, i1 false)
  store ptr %28, ptr %25, align 8, !tbaa !55
  br label %37

33:                                               ; preds = %20
  %34 = sext i32 %21 to i64
  %35 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %22, ptr noundef nonnull %3, i64 noundef %34) #10
  %36 = icmp eq i64 %35, %34
  br i1 %36, label %37, label %42

37:                                               ; preds = %33, %32
  %38 = call fastcc ptr @retrieve(ptr noundef %0, ptr noundef %1)
  call void @Perl_sv_magic(ptr noundef %38, ptr noundef null, i32 noundef 86, ptr noundef nonnull %3, i32 noundef %21) #10
  %39 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !53
  %41 = or i32 %40, 8388608
  store i32 %41, ptr %39, align 4, !tbaa !53
  br label %42

42:                                               ; preds = %33, %24, %17, %7, %37
  %43 = phi ptr [ %38, %37 ], [ null, %7 ], [ null, %17 ], [ null, %24 ], [ null, %33 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #10
  ret ptr %43
}

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @retrieve_lvstring(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %62, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %9, align 1
  store i32 %15, ptr %3, align 4
  store ptr %10, ptr %8, align 8, !tbaa !55
  br label %19

16:                                               ; preds = %2
  %17 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 4) #10
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %62

19:                                               ; preds = %16, %14
  %20 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !62
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %3, align 4, !tbaa !43
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  store i32 %25, ptr %3, align 4, !tbaa !43
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, ptr %3, align 4, !tbaa !43
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = call ptr @Perl_safesysmalloc(i64 noundef %29) #10
  %31 = load ptr, ptr %4, align 8, !tbaa !69
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  %36 = load i32, ptr %3, align 4, !tbaa !43
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  %39 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = icmp ugt ptr %38, %40
  br i1 %41, label %60, label %42

42:                                               ; preds = %33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %35, i64 %37, i1 false)
  %43 = load i32, ptr %3, align 4, !tbaa !43
  %44 = load ptr, ptr %34, align 8, !tbaa !55
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  store ptr %46, ptr %34, align 8, !tbaa !55
  br label %54

47:                                               ; preds = %26
  %48 = load i32, ptr %3, align 4, !tbaa !43
  %49 = sext i32 %48 to i64
  %50 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %31, ptr noundef %30, i64 noundef %49) #10
  %51 = load i32, ptr %3, align 4, !tbaa !43
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47, %42
  %55 = call fastcc ptr @retrieve(ptr noundef %0, ptr noundef %1)
  %56 = load i32, ptr %3, align 4, !tbaa !43
  call void @Perl_sv_magic(ptr noundef %55, ptr noundef null, i32 noundef 86, ptr noundef %30, i32 noundef %56) #10
  %57 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !53
  %59 = or i32 %58, 8388608
  store i32 %59, ptr %57, align 4, !tbaa !53
  br label %60

60:                                               ; preds = %47, %33, %54
  %61 = phi ptr [ %55, %54 ], [ null, %33 ], [ null, %47 ]
  call void @Perl_safesysfree(ptr noundef %30) #10
  br label %62

62:                                               ; preds = %60, %16, %7
  %63 = phi ptr [ null, %7 ], [ null, %16 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %63
}

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @retrieve_svundef_elem(ptr nocapture noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %6 = load i64, ptr %5, align 8, !tbaa !83
  %7 = add nsw i64 %6, 1
  store i64 %7, ptr %5, align 8, !tbaa !83
  %8 = tail call ptr @Perl_av_store(ptr noundef %4, i64 noundef %6, ptr noundef nonnull @PL_sv_undef) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %69, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %69, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @Perl_newRV_noinc(ptr noundef nonnull @PL_sv_undef) #10
  %14 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %15 = load i32, ptr %14, align 8, !tbaa !95
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %58, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !98
  %20 = and i32 %19, 33554432
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = load ptr, ptr %1, align 8, !tbaa !73
  %26 = getelementptr inbounds %struct.xpvhv, ptr %25, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !75
  %28 = getelementptr ptr, ptr %24, i64 %27
  %29 = getelementptr ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !41
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %22
  %33 = getelementptr i8, ptr %28, i64 36
  %34 = load i32, ptr %33, align 4, !tbaa !99
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %30, align 8, !tbaa !42
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32, %36
  %40 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %1, i1 noundef zeroext false) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %17, %22, %39
  %43 = load i32, ptr %18, align 4, !tbaa !98
  %44 = and i32 %43, -268435457
  store i32 %44, ptr %18, align 4, !tbaa !98
  br label %58

45:                                               ; preds = %39
  store i32 0, ptr %14, align 8, !tbaa !95
  %46 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !41
  %48 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !53
  %50 = and i32 %49, 1048576
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %47, align 8, !tbaa !85
  %54 = load ptr, ptr %53, align 8, !tbaa !86
  %55 = getelementptr inbounds %struct.hv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !98
  %57 = or i32 %56, 268435456
  store i32 %57, ptr %55, align 4, !tbaa !98
  br label %58

58:                                               ; preds = %52, %45, %42, %12
  %59 = tail call ptr @Perl_sv_bless(ptr noundef %13, ptr noundef nonnull %1) #10
  %60 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3
  store ptr null, ptr %60, align 8, !tbaa !41
  %61 = icmp eq ptr %13, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !91
  %65 = icmp ugt i32 %64, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = add i32 %64, -1
  store i32 %67, ptr %63, align 8, !tbaa !91
  br label %69

68:                                               ; preds = %62
  tail call void @Perl_sv_free2(ptr noundef nonnull %13, i32 noundef %64) #10
  br label %69

69:                                               ; preds = %68, %66, %58, %10, %2
  %70 = phi ptr [ null, %2 ], [ @PL_sv_placeholder, %10 ], [ @PL_sv_placeholder, %58 ], [ @PL_sv_placeholder, %66 ], [ @PL_sv_placeholder, %68 ]
  ret ptr %70
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @retrieve_other(ptr nocapture noundef %0, ptr nocapture readnone %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 25
  %4 = load i32, ptr %3, align 8, !tbaa !140
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 26
  %8 = load i32, ptr %7, align 4, !tbaa !141
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %11, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str.59, ptr @.str.58
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.85, ptr noundef nonnull %15, i32 noundef %4, i32 noundef %8, i32 noundef 2, i32 noundef 10) #10
  br label %24

16:                                               ; preds = %2, %6
  %17 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %17, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr @.str.59, ptr @.str.58
  %22 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 26
  %23 = load i32, ptr %22, align 4, !tbaa !141
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.86, ptr noundef nonnull %21, i32 noundef %4, i32 noundef %23) #10
  br label %24

24:                                               ; preds = %16, %10
  ret ptr null
}

declare ptr @Perl_gv_stashpv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_av_fill(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_hv_ksplit(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @scalar_call(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4) unnamed_addr #0 !prof !34 {
  %6 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  tail call void @Perl_push_scope() #10
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #10
  %7 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !82
  store i64 %7, ptr @PL_tmps_floor, align 8, !tbaa !82
  %8 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %9 = getelementptr inbounds i32, ptr %8, i64 1
  store ptr %9, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %10 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !42
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call ptr @Perl_markstack_grow() #10
  br label %14

14:                                               ; preds = %5, %12
  %15 = phi ptr [ %13, %12 ], [ %9, %5 ]
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %17 = ptrtoint ptr %6 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 3
  %21 = trunc i64 %20 to i32
  store i32 %21, ptr %15, align 4, !tbaa !43
  %22 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %23 = ptrtoint ptr %22 to i64
  %24 = sub i64 %23, %17
  %25 = icmp slt i64 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = tail call ptr @Perl_stack_grow(ptr noundef %6, ptr noundef %6, i64 noundef 1) #10
  br label %28

28:                                               ; preds = %14, %26
  %29 = phi ptr [ %27, %26 ], [ %6, %14 ]
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  store ptr %0, ptr %30, align 8, !tbaa !42
  %31 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %32 = ptrtoint ptr %31 to i64
  %33 = ptrtoint ptr %30 to i64
  %34 = sub i64 %32, %33
  %35 = icmp slt i64 %34, 8
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %30, ptr noundef nonnull %30, i64 noundef 1) #10
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi ptr [ %37, %36 ], [ %30, %28 ]
  %40 = zext nneg i32 %2 to i64
  %41 = tail call ptr @Perl_newSViv(i64 noundef %40) #10
  %42 = tail call ptr @Perl_sv_2mortal(ptr noundef %41) #10
  %43 = getelementptr inbounds ptr, ptr %39, i64 1
  store ptr %42, ptr %43, align 8, !tbaa !42
  %44 = icmp eq ptr %3, null
  br i1 %44, label %86, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.av, ptr %3, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !41
  %48 = load ptr, ptr %3, align 8, !tbaa !103
  %49 = getelementptr inbounds %struct.xpvav, ptr %48, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !105
  %51 = trunc i64 %50 to i32
  %52 = add i32 %51, 1
  %53 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %54 = ptrtoint ptr %53 to i64
  %55 = ptrtoint ptr %43 to i64
  %56 = sub i64 %54, %55
  %57 = icmp slt i64 %56, 8
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %43, ptr noundef nonnull %43, i64 noundef 1) #10
  br label %60

60:                                               ; preds = %45, %58
  %61 = phi ptr [ %59, %58 ], [ %43, %45 ]
  %62 = load ptr, ptr %47, align 8, !tbaa !42
  %63 = getelementptr inbounds ptr, ptr %61, i64 1
  store ptr %62, ptr %63, align 8, !tbaa !42
  %64 = icmp sgt i32 %52, 1
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = zext nneg i32 %52 to i64
  br label %67

67:                                               ; preds = %65, %77
  %68 = phi i64 [ 1, %65 ], [ %84, %77 ]
  %69 = phi ptr [ %63, %65 ], [ %83, %77 ]
  %70 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %71 = ptrtoint ptr %70 to i64
  %72 = ptrtoint ptr %69 to i64
  %73 = sub i64 %71, %72
  %74 = icmp slt i64 %73, 8
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %69, ptr noundef nonnull %69, i64 noundef 1) #10
  br label %77

77:                                               ; preds = %67, %75
  %78 = phi ptr [ %76, %75 ], [ %69, %67 ]
  %79 = getelementptr inbounds ptr, ptr %47, i64 %68
  %80 = load ptr, ptr %79, align 8, !tbaa !42
  %81 = tail call ptr @Perl_newRV(ptr noundef %80) #10
  %82 = tail call ptr @Perl_sv_2mortal(ptr noundef %81) #10
  %83 = getelementptr inbounds ptr, ptr %78, i64 1
  store ptr %82, ptr %83, align 8, !tbaa !42
  %84 = add nuw nsw i64 %68, 1
  %85 = icmp eq i64 %84, %66
  br i1 %85, label %86, label %67, !llvm.loop !149

86:                                               ; preds = %77, %60, %38
  %87 = phi ptr [ %43, %38 ], [ %63, %60 ], [ %83, %77 ]
  store ptr %87, ptr @PL_stack_sp, align 8, !tbaa !42
  %88 = tail call i32 @Perl_call_sv(ptr noundef %1, i32 noundef %4) #10
  %89 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %90 = icmp eq i32 %88, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds ptr, ptr %89, i64 -1
  %93 = load ptr, ptr %89, align 8, !tbaa !42
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !91
  %98 = add i32 %97, 1
  store i32 %98, ptr %96, align 8, !tbaa !91
  br label %99

99:                                               ; preds = %95, %91, %86
  %100 = phi ptr [ null, %86 ], [ %93, %91 ], [ %93, %95 ]
  %101 = phi ptr [ %89, %86 ], [ %92, %91 ], [ %92, %95 ]
  store ptr %101, ptr @PL_stack_sp, align 8, !tbaa !42
  %102 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !82
  %103 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !82
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  tail call void @Perl_free_tmps() #10
  br label %106

106:                                              ; preds = %105, %99
  tail call void @Perl_pop_scope() #10
  ret ptr %100
}

declare zeroext i1 @Perl_sv_derived_from(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_av_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pkg_uncache(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !98
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = load ptr, ptr %1, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !75
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %7
  %18 = getelementptr i8, ptr %13, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !99
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %15, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17, %21
  %25 = phi ptr [ %14, %17 ], [ %15, %21 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct.hek, ptr %26, i64 0, i32 2
  br label %28

28:                                               ; preds = %2, %7, %21, %24
  %29 = phi ptr [ %27, %24 ], [ null, %21 ], [ null, %7 ], [ null, %2 ]
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #11
  %31 = trunc i64 %30 to i32
  %32 = tail call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef %29, i32 noundef %31, i32 noundef 68, ptr noundef null, i32 noundef 0) #10
  ret void
}

declare void @Perl_sv_catpv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_eval_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_rvweaken(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal ptr @old_retrieve_array(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %81, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %9, align 1
  store i32 %15, ptr %3, align 4
  store ptr %10, ptr %8, align 8, !tbaa !55
  br label %19

16:                                               ; preds = %2
  %17 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 4) #10
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %81

19:                                               ; preds = %16, %14
  %20 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !62
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %3, align 4, !tbaa !43
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  store i32 %25, ptr %3, align 4, !tbaa !43
  br label %26

26:                                               ; preds = %23, %19
  %27 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  %28 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %31 = load i64, ptr %30, align 8, !tbaa !83
  %32 = add nsw i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !83
  %33 = icmp eq ptr %27, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !91
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !91
  br label %38

38:                                               ; preds = %26, %34
  %39 = call ptr @Perl_av_store(ptr noundef %29, i64 noundef %31, ptr noundef %27) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %81, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %3, align 4, !tbaa !43
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %81, label %44

44:                                               ; preds = %41
  %45 = sext i32 %42 to i64
  call void @Perl_av_extend(ptr noundef %27, i64 noundef %45) #10
  %46 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %47 = load i32, ptr %3, align 4, !tbaa !43
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  br label %51

51:                                               ; preds = %49, %76
  %52 = phi i64 [ 0, %49 ], [ %77, %76 ]
  %53 = load ptr, ptr %4, align 8, !tbaa !69
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load ptr, ptr %46, align 8, !tbaa !55
  %57 = load ptr, ptr %50, align 8, !tbaa !58
  %58 = icmp ult ptr %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %60, ptr %46, align 8, !tbaa !55
  %61 = load i8, ptr %56, align 1, !tbaa !41
  %62 = zext i8 %61 to i32
  br label %66

63:                                               ; preds = %51
  %64 = call i32 @PerlIO_getc(ptr noundef nonnull %53) #10
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %81, label %66

66:                                               ; preds = %63, %59
  %67 = phi i32 [ %64, %63 ], [ %62, %59 ]
  switch i32 %67, label %68 [
    i32 73, label %76
    i32 105, label %70
  ]

68:                                               ; preds = %66
  %69 = call ptr @retrieve_other(ptr noundef null, ptr poison)
  br label %70

70:                                               ; preds = %66, %68
  %71 = call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %72 = icmp eq ptr %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = call ptr @Perl_av_store(ptr noundef %27, i64 noundef %52, ptr noundef nonnull %71) #10
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %66, %73
  %77 = add nuw nsw i64 %52, 1
  %78 = load i32, ptr %3, align 4, !tbaa !43
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %51, label %81, !llvm.loop !150

81:                                               ; preds = %55, %70, %76, %63, %73, %44, %38, %41, %16, %7
  %82 = phi ptr [ null, %7 ], [ null, %16 ], [ %27, %41 ], [ null, %38 ], [ %27, %44 ], [ null, %73 ], [ null, %63 ], [ %27, %76 ], [ null, %70 ], [ null, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %82
}

; Function Attrs: cold nounwind uwtable
define internal ptr @old_retrieve_hash(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds i8, ptr %10, i64 4
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = icmp ugt ptr %11, %13
  br i1 %14, label %185, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %10, align 1
  store i32 %16, ptr %3, align 4
  store ptr %11, ptr %9, align 8, !tbaa !55
  br label %20

17:                                               ; preds = %2
  %18 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %6, ptr noundef nonnull %3, i64 noundef 4) #10
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %20, label %185

20:                                               ; preds = %17, %15
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !62
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %3, align 4, !tbaa !43
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  store i32 %26, ptr %3, align 4, !tbaa !43
  br label %27

27:                                               ; preds = %24, %20
  %28 = call ptr @Perl_newSV_type(i32 noundef 12) #10
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !92
  %31 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %32 = load i64, ptr %31, align 8, !tbaa !83
  %33 = add nsw i64 %32, 1
  store i64 %33, ptr %31, align 8, !tbaa !83
  %34 = icmp eq ptr %28, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !91
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 8, !tbaa !91
  br label %39

39:                                               ; preds = %27, %35
  %40 = call ptr @Perl_av_store(ptr noundef %30, i64 noundef %32, ptr noundef %28) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %185, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %3, align 4, !tbaa !43
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %185, label %45

45:                                               ; preds = %42
  %46 = add nsw i32 %43, 1
  %47 = sext i32 %46 to i64
  call void @Perl_hv_ksplit(ptr noundef %28, i64 noundef %47) #10
  %48 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %49 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %50 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %51 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %52 = load i32, ptr %3, align 4, !tbaa !43
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %185

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %56 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %57 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %58 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21
  %59 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21, i32 1
  %60 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  br label %65

61:                                               ; preds = %176
  %62 = add nuw nsw i32 %68, 1
  %63 = load i32, ptr %3, align 4, !tbaa !43
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %185, !llvm.loop !151

65:                                               ; preds = %54, %61
  %66 = phi ptr [ null, %54 ], [ %102, %61 ]
  %67 = phi ptr [ null, %54 ], [ %101, %61 ]
  %68 = phi i32 [ 0, %54 ], [ %62, %61 ]
  %69 = load ptr, ptr %5, align 8, !tbaa !69
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load ptr, ptr %48, align 8, !tbaa !55
  %73 = load ptr, ptr %55, align 8, !tbaa !58
  %74 = icmp ult ptr %72, %73
  br i1 %74, label %75, label %185

75:                                               ; preds = %71
  %76 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %76, ptr %48, align 8, !tbaa !55
  %77 = load i8, ptr %72, align 1, !tbaa !41
  %78 = zext i8 %77 to i32
  br label %82

79:                                               ; preds = %65
  %80 = call i32 @PerlIO_getc(ptr noundef nonnull %69) #10
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %185, label %82

82:                                               ; preds = %79, %75
  %83 = phi i32 [ %80, %79 ], [ %78, %75 ]
  switch i32 %83, label %98 [
    i32 86, label %84
    i32 118, label %95
  ]

84:                                               ; preds = %82
  %85 = icmp eq ptr %66, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = call ptr @Perl_newSVsv(ptr noundef nonnull @PL_sv_undef) #10
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi ptr [ %66, %84 ], [ %87, %86 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %100, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.sv, ptr %89, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !91
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 8, !tbaa !91
  br label %100

95:                                               ; preds = %82
  %96 = call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null)
  %97 = icmp eq ptr %96, null
  br i1 %97, label %185, label %100

98:                                               ; preds = %82
  %99 = call ptr @retrieve_other(ptr noundef null, ptr poison)
  br label %100

100:                                              ; preds = %91, %88, %95, %98
  %101 = phi ptr [ %96, %95 ], [ %67, %98 ], [ %89, %88 ], [ %89, %91 ]
  %102 = phi ptr [ %66, %95 ], [ %66, %98 ], [ %89, %88 ], [ %89, %91 ]
  %103 = load ptr, ptr %5, align 8, !tbaa !69
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load ptr, ptr %49, align 8, !tbaa !55
  %107 = load ptr, ptr %56, align 8, !tbaa !58
  %108 = icmp ult ptr %106, %107
  br i1 %108, label %109, label %185

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, ptr %106, i64 1
  store ptr %110, ptr %49, align 8, !tbaa !55
  %111 = load i8, ptr %106, align 1, !tbaa !41
  %112 = zext i8 %111 to i32
  br label %116

113:                                              ; preds = %100
  %114 = call i32 @PerlIO_getc(ptr noundef nonnull %103) #10
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %185, label %116

116:                                              ; preds = %113, %109
  %117 = phi i32 [ %114, %113 ], [ %112, %109 ]
  %118 = icmp eq i32 %117, 107
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = call ptr @retrieve_other(ptr noundef null, ptr poison)
  br label %121

121:                                              ; preds = %116, %119
  %122 = load ptr, ptr %5, align 8, !tbaa !69
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load ptr, ptr %50, align 8, !tbaa !55
  %126 = getelementptr inbounds i8, ptr %125, i64 4
  %127 = load ptr, ptr %57, align 8, !tbaa !58
  %128 = icmp ugt ptr %126, %127
  br i1 %128, label %185, label %129

129:                                              ; preds = %124
  %130 = load i32, ptr %125, align 1
  store i32 %130, ptr %4, align 4
  store ptr %126, ptr %50, align 8, !tbaa !55
  br label %134

131:                                              ; preds = %121
  %132 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %122, ptr noundef nonnull %4, i64 noundef 4) #10
  %133 = icmp eq i64 %132, 4
  br i1 %133, label %134, label %185

134:                                              ; preds = %131, %129
  %135 = load i32, ptr %21, align 8, !tbaa !62
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, ptr %4, align 4, !tbaa !43
  %139 = call i32 @llvm.bswap.i32(i32 %138)
  store i32 %139, ptr %4, align 4, !tbaa !43
  br label %140

140:                                              ; preds = %134, %137
  %141 = load i32, ptr %4, align 4, !tbaa !43
  %142 = sext i32 %141 to i64
  %143 = load i64, ptr %59, align 8, !tbaa !137
  %144 = icmp ugt i64 %143, %142
  br i1 %144, label %152, label %145

145:                                              ; preds = %140
  %146 = load ptr, ptr %58, align 8, !tbaa !96
  %147 = add nsw i64 %142, 1
  %148 = call ptr @Perl_safesysrealloc(ptr noundef %146, i64 noundef %147) #10
  store ptr %148, ptr %58, align 8, !tbaa !96
  %149 = load i32, ptr %4, align 4, !tbaa !43
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, 1
  store i64 %151, ptr %59, align 8, !tbaa !137
  br label %152

152:                                              ; preds = %145, %140
  %153 = load i32, ptr %4, align 4, !tbaa !43
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %176, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr %5, align 8, !tbaa !69
  %157 = icmp eq ptr %156, null
  %158 = sext i32 %153 to i64
  br i1 %157, label %159, label %170

159:                                              ; preds = %155
  %160 = load ptr, ptr %51, align 8, !tbaa !55
  %161 = getelementptr inbounds i8, ptr %160, i64 %158
  %162 = load ptr, ptr %60, align 8, !tbaa !58
  %163 = icmp ugt ptr %161, %162
  br i1 %163, label %185, label %164

164:                                              ; preds = %159
  %165 = load ptr, ptr %58, align 8, !tbaa !96
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %165, ptr align 1 %160, i64 %158, i1 false)
  %166 = load i32, ptr %4, align 4, !tbaa !43
  %167 = load ptr, ptr %51, align 8, !tbaa !55
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, ptr %167, i64 %168
  store ptr %169, ptr %51, align 8, !tbaa !55
  br label %176

170:                                              ; preds = %155
  %171 = load ptr, ptr %58, align 8, !tbaa !96
  %172 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %156, ptr noundef %171, i64 noundef %158) #10
  %173 = load i32, ptr %4, align 4, !tbaa !43
  %174 = sext i32 %173 to i64
  %175 = icmp eq i64 %172, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %164, %170, %152
  %177 = load ptr, ptr %58, align 8, !tbaa !96
  %178 = load i32, ptr %4, align 4, !tbaa !43
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, ptr %177, i64 %179
  store i8 0, ptr %180, align 1, !tbaa !41
  %181 = load ptr, ptr %58, align 8, !tbaa !96
  %182 = load i32, ptr %4, align 4, !tbaa !43
  %183 = call ptr @Perl_hv_common_key_len(ptr noundef %28, ptr noundef %181, i32 noundef %182, i32 noundef 36, ptr noundef %101, i32 noundef 0) #10
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %61

185:                                              ; preds = %71, %79, %95, %105, %113, %124, %159, %176, %61, %131, %170, %45, %39, %42, %17, %8
  %186 = phi ptr [ null, %8 ], [ null, %17 ], [ %28, %42 ], [ null, %39 ], [ %28, %45 ], [ null, %170 ], [ null, %131 ], [ %28, %61 ], [ null, %176 ], [ null, %159 ], [ null, %124 ], [ null, %113 ], [ null, %105 ], [ null, %95 ], [ null, %79 ], [ null, %71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %186
}

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"cv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!38, !38, i64 0}
!42 = !{!37, !37, i64 0}
!43 = !{!40, !40, i64 0}
!44 = !{!45, !37, i64 0}
!45 = !{!"io", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!46 = !{!47, !37, i64 40}
!47 = !{!"xpvio", !37, i64 0, !38, i64 8, !48, i64 16, !38, i64 24, !38, i64 32, !37, i64 40, !38, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !38, i64 128, !38, i64 129}
!48 = !{!"long", !38, i64 0}
!49 = !{i32 0, i32 2}
!50 = !{!51, !40, i64 120}
!51 = !{!"stcxt", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !48, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !48, i64 72, !48, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !37, i64 104, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !52, i64 128, !52, i64 160, !52, i64 192, !37, i64 224, !40, i64 232, !40, i64 236, !37, i64 240, !37, i64 248, !37, i64 256, !40, i64 264}
!52 = !{!"extendable", !37, i64 0, !48, i64 8, !37, i64 16, !37, i64 24}
!53 = !{!54, !40, i64 12}
!54 = !{!"sv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!55 = !{!51, !37, i64 176}
!56 = !{!51, !37, i64 160}
!57 = !{!51, !48, i64 168}
!58 = !{!51, !37, i64 184}
!59 = !{!51, !40, i64 92}
!60 = !{!51, !40, i64 0}
!61 = !{!51, !40, i64 4}
!62 = !{!51, !40, i64 88}
!63 = !{!51, !37, i64 256}
!64 = !{!51, !40, i64 96}
!65 = !{!51, !40, i64 116}
!66 = !{!51, !40, i64 100}
!67 = !{!51, !37, i64 104}
!68 = !{!51, !40, i64 112}
!69 = !{!51, !37, i64 224}
!70 = !{!51, !37, i64 8}
!71 = !{!51, !37, i64 16}
!72 = !{!51, !37, i64 48}
!73 = !{!74, !37, i64 0}
!74 = !{!"hv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!75 = !{!76, !48, i64 24}
!76 = !{!"xpvhv", !37, i64 0, !38, i64 8, !48, i64 16, !48, i64 24}
!77 = !{!51, !37, i64 64}
!78 = !{!51, !37, i64 24}
!79 = !{!51, !37, i64 248}
!80 = !{!51, !40, i64 124}
!81 = !{i64 0, i64 8, !42, i64 8, i64 8, !82, i64 16, i64 8, !42, i64 24, i64 8, !42}
!82 = !{!48, !48, i64 0}
!83 = !{!51, !48, i64 72}
!84 = !{i32 0, i32 8}
!85 = !{!54, !37, i64 0}
!86 = !{!87, !37, i64 0}
!87 = !{!"xpvmg", !37, i64 0, !38, i64 8, !48, i64 16, !38, i64 24, !38, i64 32, !38, i64 40}
!88 = distinct !{!88, !89, !90}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !{!54, !40, i64 8}
!92 = !{!51, !37, i64 32}
!93 = !{!51, !48, i64 40}
!94 = !{!51, !37, i64 56}
!95 = !{!51, !40, i64 264}
!96 = !{!51, !37, i64 128}
!97 = !{!51, !37, i64 192}
!98 = !{!74, !40, i64 12}
!99 = !{!100, !40, i64 28}
!100 = !{!"xpvhv_aux", !38, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 28, !37, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52}
!101 = !{}
!102 = distinct !{!102, !89, !90}
!103 = !{!104, !37, i64 0}
!104 = !{!"av", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!105 = !{!106, !48, i64 16}
!106 = !{!"xpvav", !37, i64 0, !38, i64 8, !48, i64 16, !48, i64 24, !37, i64 32}
!107 = !{!108, !48, i64 16}
!108 = !{!"xpv", !37, i64 0, !38, i64 8, !48, i64 16, !38, i64 24}
!109 = !{!110, !40, i64 12}
!110 = !{!"gv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!111 = distinct !{!111, !89, !90}
!112 = distinct !{!112, !89, !90}
!113 = !{!114, !37, i64 32}
!114 = !{!"magic", !37, i64 0, !37, i64 8, !115, i64 16, !38, i64 18, !38, i64 19, !48, i64 24, !37, i64 32, !37, i64 40}
!115 = !{!"short", !38, i64 0}
!116 = !{!117, !37, i64 16}
!117 = !{!"gp", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 28, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !40, i64 64, !40, i64 67, !37, i64 72}
!118 = !{!51, !48, i64 80}
!119 = !{!120, !120, i64 0}
!120 = !{!"double", !38, i64 0}
!121 = !{!114, !48, i64 24}
!122 = !{!114, !37, i64 40}
!123 = distinct !{!123, !89, !90}
!124 = !{!76, !48, i64 16}
!125 = !{!100, !40, i64 24}
!126 = !{!100, !37, i64 16}
!127 = distinct !{!127, !89, !90}
!128 = distinct !{!128, !89, !90}
!129 = !{!130, !130, i64 0}
!130 = !{!"_Bool", !38, i64 0}
!131 = !{!132, !37, i64 8}
!132 = !{!"he", !37, i64 0, !37, i64 8, !38, i64 16}
!133 = !{!134, !40, i64 4}
!134 = !{!"hek", !40, i64 0, !40, i64 4, !38, i64 8}
!135 = distinct !{!135, !89, !90}
!136 = !{i32 -1, i32 1}
!137 = !{!51, !48, i64 136}
!138 = !{i8 0, i8 2}
!139 = !{!51, !37, i64 240}
!140 = !{!51, !40, i64 232}
!141 = !{!51, !40, i64 236}
!142 = distinct !{!142, !89, !90}
!143 = distinct !{!143, !89, !90}
!144 = distinct !{!144, !89, !90}
!145 = !{!104, !40, i64 12}
!146 = distinct !{!146, !89, !90}
!147 = distinct !{!147, !89, !90}
!148 = distinct !{!148, !89, !90}
!149 = distinct !{!149, !89, !90}
!150 = distinct !{!150, !89, !90}
!151 = distinct !{!151, !89, !90}
