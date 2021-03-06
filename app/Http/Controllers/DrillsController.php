<?php

namespace App\Http\Controllers;

use App\Drill;
use Illuminate\Http\Request;

class DrillsController extends Controller
{
    public function index()
    {
        $drills = Drill::all();
        return view('drills.index', compact('drills'));
    }

    public function new()
    {
        return view('drills.new');
    }

    public function create(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'category_name' => 'required|string|max:255',
            'problem0' => 'required|string|max:255',
            'problem1' => 'string|nullable|max:255',
            'problem2' => 'string|nullable|max:255',
            'problem3' => 'string|nullable|max:255',
            'problem4' => 'string|nullable|max:255',
            'problem5' => 'string|nullable|max:255',
            'problem6' => 'string|nullable|max:255',
            'problem7' => 'string|nullable|max:255',
            'problem8' => 'string|nullable|max:255',
            'problem9' => 'string|nullable|max:255',
        ]);

        $drill = new Drill;

        $drill->fill($request->all())->save();

        return redirect('drills/new')->with('flash_message', __('Registered.'));
    }

    function show($id)
    {
        if (!ctype_digit($id)) {
            return redirect('/drills/new')->with('flash_message', __('Invalid operation was performed.'));
        }

        $drill = Drill::find($id);
        return view('drills.show', compact('drill'));
    }

    function edit($id)
    {
        if (!ctype_digit($id)) {
            return redirect('/drills/new')->with('flash_message', __('Invalid operation was performed.'));
        }
        $drill = Drill::find($id);
        return view('drills.edit', compact('drill'));
    }

    function update(Request $request, $id)
    {
        if (!ctype_digit($id)) {
            return redirect('/drills/new')->with('flash_message', __('Invalid operation was performed.'));
        }
        $drill = Drill::find($id);
        $drill->fill($request->all())->save();

        return redirect('/drills')->with('flash_message', __('Registered.'));
    }

    public function destroy($id)
    {
        if (!ctype_digit($id)) {
            return redirect('/drills/new')->with('flash_message', __('Invalid operation was performed.'));
        }

        Drill::find($id)->delete();

        return redirect('/drills')->with('flash_message', __('Deleted.'));
    }
}
