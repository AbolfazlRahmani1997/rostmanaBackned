<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Contracts\Broadcasting\ShouldBroadcastNow;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class MyEvent implements ShouldBroadcastNow
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $id;
    public $data;
    public $message;
//public $type;

    public function __construct($message,$id)
    {
        $this->data = $message;
        $this->id=$id;
    }

    public function broadcastOn()
    {

//dd('sasd');
        return ['my-Channel'];
//        return new Channel('my-Channel');
    }

    public function broadcastAs()
    {

        return "$this->id";
    }
}
